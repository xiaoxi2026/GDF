# GDF Claude Code 安装脚本
# 将GDF指令安装为Claude Code的slash命令

param(
    [string]$SourceDir = $PSScriptRoot,
    [switch]$Force
)

# Claude Code commands目录
$commandsDir = "$env:USERPROFILE\.claude\commands"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GDF Claude Code 安装脚本" -ForegroundColor Cyan
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
    "gdf-need"     = "需求录入：描述需求，QA澄清，生成需求文档"
    "gdf-split"    = "任务拆解：将需求拆分为可执行的任务清单"
    "gdf-new"      = "执行任务：按任务清单逐个开发代码"
    "gdf-add"      = "添加功能：为已有模块增加新功能"
    "gdf-refactor" = "代码优化：一致性检查，提炼公共代码"
    "gdf-status"   = "项目状态：查看当前进度和待办事项"
}

$sourceCmdDir = Join-Path $SourceDir "command"
$installedCount = 0

foreach ($cmdName in $commands.Keys) {
    $sourceFile = Join-Path $sourceCmdDir "$cmdName.md"
    $targetFile = Join-Path $commandsDir "$cmdName.md"

    # 检查源文件是否存在
    if (-not (Test-Path $sourceFile)) {
        Write-Host "[跳过] $cmdName - 源文件不存在 ($sourceFile)" -ForegroundColor Yellow
        continue
    }

    # 检查是否已安装（除非使用Force）
    if ((-not $Force) -and (Test-Path $targetFile)) {
        Write-Host "[已安装] $cmdName" -ForegroundColor Gray
        continue
    }

    # 读取源文件内容
    $content = Get-Content $sourceFile -Raw -Encoding UTF8

    # 添加命令说明头部（Claude Code格式）
    $header = "---\nname: $cmdName\ndescription: $($commands[$cmdName])\n---\n\n"

    # 移除原有的# 标题（避免重复）
    $content = $content -replace '^# \S+.*\r?\n', ''
    $content = $content -replace '^---\r?\nname:.*\r?\n', '---' -replace '---(\r?\n)+', "---`n"

    $fullContent = $header + $content

    # 写入目标文件
    $fullContent | Out-File -FilePath $targetFile -Encoding UTF8 -Force

    Write-Host "[安装] /$cmdName -> $targetFile" -ForegroundColor Green
    $installedCount++
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "安装完成！" -ForegroundColor Green
Write-Host "已安装 $installedCount 个命令" -ForegroundColor Cyan
Write-Host ""
Write-Host "使用方法：" -ForegroundColor White
Write-Host "1. 重启 VSCode" -ForegroundColor White
Write-Host "2. 在 Claude Code 聊天框输入 /gdf-init 开始使用" -ForegroundColor White
Write-Host ""
Write-Host "可用命令：" -ForegroundColor White
foreach ($cmd in $commands.Keys) {
    Write-Host "  /$cmd" -ForegroundColor Yellow
}
Write-Host "========================================" -ForegroundColor Cyan