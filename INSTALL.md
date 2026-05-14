# GDF 快速安装指南

## 方式一：使用 /init-gdf 命令（推荐）

当你在任意项目中使用 Claude Code 时：

1. 告诉 Claude：`GDF 工具位于 [GDF文件夹路径]`
2. 输入 `/init-gdf` 
3. Claude 会自动将 command 和 templates 复制到当前项目

## 方式二：手动复制

```bash
# 复制命令文件夹
cp -r [GDF路径]/command ./command

# 复制模板文件夹  
cp -r [GDF路径]/templates ./templates
```

## 方式三：VSCode Settings 配置

在当前项目的 `.vscode/settings.json` 中添加：

```json
{
  "claudeCode.commands": {
    "init-gdf": "请将 GDF 工具导入到当前项目...",
    "gdf-need": "请执行需求录入...",
    "gdf-split": "请执行任务拆解...",
    "gdf-status": "请输出项目状态..."
  }
}
```

---

## 使用方式

安装完成后，在当前项目中使用：

| 命令 | 说明 |
|------|------|
| `/gdf-need` | 录入新需求 |
| `/gdf-split` | 任务拆解 |
| `/gdf-add` | 添加功能 |
| `/gdf-refactor` | 代码优化 |
| `/gdf-status` | 查看状态 |

---

## 原理说明

GDF 工具本质是 Markdown 格式的指令文件，通过 Claude Code 的 `/command` 功能实现调用。

- `command/*.md` - 定义各指令的执行流程
- `templates/*.md` - 生成的文档模板