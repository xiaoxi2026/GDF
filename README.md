# GDF - AI 辅助开发框架

> 基于 Claude Code 的 AI 辅助开发流程管理工具

## 概述

GDF（Goole Down Framework）是一个 AI 辅助开发框架，通过标准化流程帮助团队高效使用 AI 进行软件开发。它将开发过程分解为可管理的步骤，确保需求清晰、任务明确、代码质量可控。

## 核心命令

| 命令 | 说明 | 使用时机 |
|------|------|----------|
| `gdf-init` | 项目初始化 | 第一次使用，或新项目开始时 |
| `gdf-analyze` | 项目分析 | 半路接入项目，分析模块完成情况 |
| `gdf-need` | 需求录入 | 每个新功能/模块开始前 |
| `gdf-split` | 任务拆解 | 需求确认后，开发开始前 |
| `gdf-new` | 执行任务 | 开发过程中 |
| `gdf-test` | 测试验证 | 开发完成后验证功能 |
| `gdf-add` | 添加功能 | 为已有模块增加新功能时 |
| `gdf-refactor` | 代码优化 | 定期检查代码质量时 |
| `gdf-status` | 查看状态 | 随时查看进度 |

## 完整流程

```
gdf-init → gdf-analyze → gdf-need → gdf-split → gdf-new → gdf-test → (gdf-add) → (gdf-refactor) → gdf-status
```

**说明：**
- `gdf-init` 只需要执行一次
- `gdf-analyze` 可选，用于半路接入项目时分析模块完成情况
- 每个功能模块需要走 `gdf-need → gdf-split → gdf-new → gdf-test`
- `gdf-add` 和 `gdf-refactor` 是可选的，按需执行

## 快速开始

### 1. 安装

```powershell
powershell -ExecutionPolicy Bypass -File "X:\XXX\GDF\install-gdf.ps1"
```

详细安装说明请参考 [README-install.md](README-install.md)

### 2. 使用

1. 重启 VSCode
2. 在 Claude Code 聊天框输入 `/gdf-init` 开始使用

## 项目结构

```
GDF/
├── command/              # 指令文件
│   ├── gdf-master.md    # 主指令
│   ├── gdf-init.md      # 项目初始化
│   ├── gdf-analyze.md   # 项目分析
│   ├── gdf-need.md      # 需求录入
│   ├── gdf-split.md     # 任务拆解
│   ├── gdf-new.md       # 任务执行
│   ├── gdf-test.md      # 测试验证
│   ├── gdf-add.md       # 添加功能
│   ├── gdf-refactor.md  # 代码优化
│   └── gdf-status.md    # 项目状态
├── templates/           # 模板文件
│   ├── project-analysis.md
│   ├── test-report.md
│   ├── requirement.md
│   ├── task-breakdown.md
│   └── ...
├── install-gdf.ps1      # 安装脚本
├── README-install.md    # 安装说明
└── CLAUDE.md            # Claude Code 入口指令
```

## 指令说明

### gdf-init - 项目初始化
分析代码样本，建立规范和模板。首次使用或新项目开始时执行。

### gdf-analyze - 项目分析
分析模块完成情况，生成报告。半路接入项目时使用。

### gdf-need - 需求录入
描述需求，QA 澄清，生成需求文档。每个新功能/模块开始前执行。

### gdf-split - 任务拆解
将需求拆分为可执行的任务清单。需求确认后执行。

### gdf-new - 执行任务
按任务清单逐个开发代码。开发过程中执行。

### gdf-test - 测试验证
测试 AI 开发的代码，生成测试报告。开发完成后执行。

### gdf-add - 添加功能
为已有模块增加新功能。可选命令。

### gdf-refactor - 代码优化
一致性检查，提炼公共代码。定期执行。

### gdf-status - 项目状态
查看当前进度和待办事项。随时可用。

## 版本管理

每个指令文件包含版本号 `version: x.x.x`，安装脚本会自动检测版本变化。

```powershell
# 检测版本变化并更新
powershell -ExecutionPolicy Bypass -File "X:\XXX\GDF\install-gdf.ps1" -Update
```

## 贡献

欢迎提交 Issue 和 Pull Request！

## 许可证

MIT License