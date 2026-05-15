# GDF Claude Code 安装

## 安装脚本

运行以下命令安装 GDF 命令：

```powershell
powershell -ExecutionPolicy Bypass -File "e:\gooledown\GDF\install-gdf.ps1"
```

### 安装选项

| 参数 | 说明 |
|------|------|
| 无参数 | 首次安装，只安装新命令，跳过已存在的命令 |
| `-Update` | 检测版本变化，自动更新有变化的命令（推荐） |
| `-Force` | 强制覆盖所有已安装的命令 |

### 版本号说明

每个指令文件头部包含版本号 `version: x.x.x`，安装脚本会自动检测：
- 首次安装：版本号为 `0.0.0`
- 版本更新：修改指令文件后，执行 `-Update` 参数会自动检测并更新

**更新示例：**
```powershell
# 改动 gdf-init.md 后，执行以下命令更新
powershell -ExecutionPolicy Bypass -File "e:\gooledown\GDF\install-gdf.ps1" -Update
```

## 手动安装

复制 `command/` 目录下的所有 `.md` 文件到：
```
%USERPROFILE%\.claude\commands\
```

## 已安装的命令

| 命令 | 说明 |
|------|------|
| `/gdf-init` | 项目初始化：分析代码样本，建立规范和模板 |
| `/gdf-analyze` | 项目分析：分析模块完成情况，生成报告 |
| `/gdf-need` | 需求录入：描述需求，QA 澄清，生成需求文档 |
| `/gdf-split` | 任务拆解：将需求拆分为可执行的任务清单 |
| `/gdf-new` | 执行任务：按任务清单逐个开发代码 |
| `/gdf-test` | 测试验证：测试 AI 开发的代码，生成测试报告 |
| `/gdf-add` | 添加功能：为已有模块增加新功能 |
| `/gdf-refactor` | 代码优化：一致性检查，提炼公共代码 |
| `/gdf-status` | 项目状态：查看当前进度和待办事项 |

## 使用方法

1. 重启 VSCode
2. 在 Claude Code 聊天框输入 `/gdf-init` 开始使用