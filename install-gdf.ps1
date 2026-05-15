# GDF Claude Code 安装脚本
# 将GDF指令安装为Claude Code的slash命令
# 支持版本号校验，源文件版本更新时会自动更新已安装的命令

param(
    [string]$SourceDir = $PSScriptRoot,
    [switch]$Force,
    [switch]$Update
)

# Claude Code commands目录
$commandsDir = "$env:USERPROFILE\.claude\commands"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GDF Claude Code 安装脚本 v1.1" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 创建命令目录
if (-not (Test-Path $commandsDir)) {
    New-Item -ItemType Directory -Path $commandsDir -Force | Out-Null
    Write-Host "[创建] $commandsDir" -ForegroundColor Green
}

# GDF命令列表
$commands = @{
    "gdf-init"     = "项目初始化：分析代码样本，建立规范和模板"
    "gdf-analyze"  = "项目分析：分析模块完成情况，生成报告"
    "gdf-need"     = "需求录入：描述需求，QA澄清，生成需求文档"
    "gdf-split"    = "任务拆解：将需求拆分为可执行的任务清单"
    "gdf-new"      = "执行任务：按任务清单逐个开发代码"
    "gdf-test"     = "测试验证：测试AI开发的代码，生成测试报告"
    "gdf-add"      = "添加功能：为已有模块增加新功能"
    "gdf-refactor" = "代码优化：一致性检查，提炼公共代码"
    "gdf-status"   = "项目状态：查看当前进度和待办事项"
}

# 从文件头部提取版本号
function Get-CommandVersion {
    param([string]$FilePath)

    if (-not (Test-Path $FilePath)) {
        return "0.0.0"
    }

    $content = Get-Content $FilePath -Raw -Encoding UTF8

    # 匹配 version: x.x.x 格式
    if ($content -match '(?m)^version:\s*(\d+\.\d+\.\d+)') {
        return $matches[1]
    }

    return "0.0.0"
}

$sourceCmdDir = Join-Path $SourceDir "command"
$installedCount = 0
$updatedCount = 0

foreach ($cmdName in $commands.Keys) {
    $sourceFile = Join-Path $sourceCmdDir "$cmdName.md"
    $targetFile = Join-Path $commandsDir "$cmdName.md"

    # 检查源文件是否存在
    if (-not (Test-Path $sourceFile)) {
        Write-Host "[跳过] $cmdName - 源文件不存在 ($sourceFile)" -ForegroundColor Yellow
        continue
    }

    # 获取源文件和目标文件的版本号
    $sourceVersion = Get-CommandVersion -FilePath $sourceFile
    $targetVersion = "0.0.0"
    if (Test-Path $targetFile) {
        $targetVersion = Get-CommandVersion -FilePath $targetFile
    }

    # 强制安装模式 - 跳过版本检查
    if ($Force) {
        # 检查是否已安装
        if (Test-Path $targetFile) {
            Write-Host "[强制] $cmdName (v$sourceVersion) -> 已存在，强制覆盖" -ForegroundColor Yellow
        } else {
            Write-Host "[强制] $cmdName (v$sourceVersion) -> 新建" -ForegroundColor Yellow
        }
    }
    # 检查是否需要更新 (版本号变化或有新文件)
    elseif ((-not (Test-Path $targetFile)) -or ($sourceVersion -ne $targetVersion)) {
        $reason = if (-not (Test-Path $targetFile)) { "新命令" } else { "版本更新 v$targetVersion -> v$sourceVersion" }
        Write-Host "[更新] $cmdName ($reason)" -ForegroundColor Cyan
    }
    # 已安装且版本相同
    else {
        Write-Host "[已安装] $cmdName (v$sourceVersion)" -ForegroundColor Gray
        continue
    }

    # 检查是否使用 -Force 或 -Update，或者需要更新
    $shouldInstall = $Force -or $Update -or ((-not (Test-Path $targetFile)) -or ($sourceVersion -ne $targetVersion))

    if (-not $shouldInstall) {
        continue
    }

    # 读取源文件内容
    $content = Get-Content $sourceFile -Raw -Encoding UTF8

    # 移除原有的# 标题和version (避免重复)
    $content = $content -replace '^# \S+.*\r?\n', ''
    $content = $content -replace '(?m)^version:\s*.*\r?\n', ''
    $content = $content -replace '^---\r?\nname:.*\r?\n', '---' -replace '---(\r?\n)+', "---`n"

    # 添加命令说明头部（Claude Code格式）+ 版本号
    $header = "---\nname: $cmdName\ndescription: $($commands[$cmdName])\nversion: $sourceVersion\n---\n\n"

    $fullContent = $header + $content

    # 写入目标文件
    $fullContent | Out-File -FilePath $targetFile -Encoding UTF8 -Force

    if ($Force -or (-not (Test-Path $targetFile))) {
        Write-Host "[安装] /$cmdName (v$sourceVersion)" -ForegroundColor Green
        $installedCount++
    } else {
        Write-Host "[更新] /$cmdName (v$sourceVersion)" -ForegroundColor Green
        $updatedCount++
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
if ($Update) {
    Write-Host "更新完成！" -ForegroundColor Green
} elseif ($Force) {
    Write-Host "强制安装完成！" -ForegroundColor Green
} else {
    Write-Host "安装完成！" -ForegroundColor Green
}
Write-Host "新增: $installedCount 个, 更新: $updatedCount 个" -ForegroundColor Cyan
Write-Host ""
Write-Host "使用方法：" -ForegroundColor White
Write-Host "1. 重启 VSCode" -ForegroundColor White
Write-Host "2. 在 Claude Code 聊天框输入 /gdf-init 开始使用" -ForegroundColor White
Write-Host ""
Write-Host "命令说明：" -ForegroundColor White
Write-Host "  直接运行    - 只安装新命令，不更新已有命令" -ForegroundColor White
Write-Host "  -Update     - 更新所有有版本变化的命令（推荐）" -ForegroundColor White
Write-Host "  -Force      - 强制覆盖所有命令" -ForegroundColor White
Write-Host ""
Write-Host "可用命令：" -ForegroundColor White
foreach ($cmd in $commands.Keys) {
    Write-Host "  /$cmd" -ForegroundColor Yellow
}
Write-Host "========================================" -ForegroundColor Cyan