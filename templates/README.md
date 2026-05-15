# 文档模板索引

> 本文件夹存放 AI 辅助开发指令生成的文档模板

## 模板列表

| 模板文件 | 关联指令 | 用途 | 保存路径 |
|----------|----------|------|----------|
| [requirement.md](requirement.md) | `gdf-need` | 需求分析文档 | `.gdf/requirements/{module}.md` |
| [task-breakdown.md](task-breakdown.md) | `gdf-split` | 任务拆解清单 | `.gdf/tasks/{module}.md` |
| [incremental-requirement.md](incremental-requirement.md) | `gdf-add` | 增量需求文档 | `.gdf/increments/{module}-{feature}.md` |
| [code-analysis.md](code-analysis.md) | `gdf-refactor` | 代码分析报告 | `.gdf/analysis/{module}-analysis.md` |
| [project-status.md](project-status.md) | `gdf-status` | 项目状态报告 | `.gdf/status.md` |
| [coding-standards.md](coding-standards.md) | `gdf-init` | 项目编码规范 | `.gdf/standards.md` |

---

## 文档目录结构

```
项目根目录/
└─ .gdf/
   ├─ status.md              # 项目状态报告
   ├─ standards.md           # 项目编码规范
   ├─ requirements/          # 需求文档
   │  └─ {module}.md
   ├─ tasks/                 # 任务清单
   │  └─ {module}.md
   ├─ increments/            # 增量需求
   │  └─ {module}-{feature}.md
   └─ analysis/              # 代码分析
      └─ {module}-analysis.md
```

---

## 模板变量说明

每个模板使用 `{variable}` 格式的占位符，生成文档时需要替换为实际内容：

| 变量 | 说明 | 示例 |
|------|------|------|
| `{module_name}` | 模块名称 | 用户管理 |
| `{requirement_type}` | 需求类型 | 新模块/增加功能 |
| `{version}` | 文档版本 | v1.0 |
| `{created_date}` | 创建日期 | 2024-01-01 |

---

## 模板更新日志

| 日期 | 版本 | 变更 |
|------|------|------|
| 2024-01-01 | v1.0 | 初始版本 |
| 2026-05-15 | v1.1 | 添加保存路径，统一存放到 .gdf 目录 |