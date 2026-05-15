# GDF 安装使用说明

## 安装方式

### 方式一：安装脚本（推荐）

```powershell
powershell -ExecutionPolicy Bypass -File "e:\gooledown\GDF\install-gdf.ps1"
```

安装完成后重启 VSCode，然后使用 `/gdf-init` 开始。

---

### 方式二：手动复制

1. 创建目录：`%USERPROFILE%\.claude\commands`
2. 复制 `command/` 下的所有 `.md` 文件到该目录
3. 重启 VSCode

---

## 命令说明

| 命令 | 说明 | 前置条件 |
|------|------|----------|
| `/gdf-init` | 项目初始化 | 无 |
| `/gdf-need` | 需求录入 | 已初始化 |
| `/gdf-split` | 任务拆解 | 需求已确认 |
| `/gdf-new` | 执行任务 | 任务清单已确认 |
| `/gdf-add` | 添加新功能 | 已完成至少一个模块 |
| `/gdf-refactor` | 代码优化 | 已完成至少一个模块 |
| `/gdf-status` | 查看项目状态 | 无 |

---

## 完整工作流程

```
gdf-init     → 项目初始化（一次性）
    │
    ▼
gdf-need     → 录入需求
    │
    ▼
gdf-split    → 任务拆解
    │
    ▼
gdf-new      → 执行任务（可循环）
    │
    ▼
gdf-add      → 添加新功能（可选）
    │
    ▼
gdf-refactor → 代码优化（可选）
    │
    ▼
gdf-status   → 查看状态
```

---

## 常见问题

**Q: 安装后命令不生效？**
A: 请确保重启 VSCode。

**Q: 如何更新命令？**
A: 重新运行 `install-gdf.ps1 -Force`

**Q: 安装路径在哪里？**
A: `C:\Users\Administrator\.claude\commands\`

**Q: 如何卸载？**
A: 删除 `%USERPROFILE%\.claude\commands\gdf-*.md` 文件

---

## 原理说明

GDF 工具本质是 Markdown 格式的指令文件，通过 Claude Code 的 `/command` 功能实现调用。

- `command/*.md` - 定义各指令的执行流程
- `templates/*.md` - 生成的文档模板