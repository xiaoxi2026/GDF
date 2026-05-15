# GDF Claude Code 安装

## 安装脚本

运行以下命令安装 GDF 命令：

```powershell
powershell -ExecutionPolicy Bypass -File "e:\gooledown\GDF\install-gdf.ps1"
```

## 手动安装

复制 `command/` 目录下的所有 `.md` 文件到：
```
%USERPROFILE%\.claude\commands\
```

## 已安装的命令

| 命令 | 说明 |
|------|------|
| `/gdf-init` | 项目初始化 |
| `/gdf-need` | 需求录入 |
| `/gdf-split` | 任务拆解 |
| `/gdf-new` | 执行任务 |
| `/gdf-add` | 添加新功能 |
| `/gdf-refactor` | 代码优化 |
| `/gdf-status` | 查看项目状态 |

## 使用方法

1. 重启 VSCode
2. 在 Claude Code 聊天框输入 `/gdf-init` 开始使用