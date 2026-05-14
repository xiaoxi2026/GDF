# 文档模板索引

> 本文件夹存放 AI 辅助开发指令生成的文档模板

## 模板列表

| 模板文件 | 关联指令 | 用途 |
|----------|----------|------|
| [requirement.md](requirement.md) | `$need` | 需求分析文档 |
| [task-breakdown.md](task-breakdown.md) | `$split` | 任务拆解清单 |
| [incremental-requirement.md](incremental-requirement.md) | `$add` | 增量需求文档 |
| [code-analysis.md](code-analysis.md) | `$refactor` | 代码分析报告 |
| [project-status.md](project-status.md) | `$status` | 项目状态报告 |
| [coding-standards.md](coding-standards.md) | `$init` | 项目编码规范 |

---

## 使用说明

### 模板变量说明

每个模板使用 `{variable}` 格式的占位符，生成文档时需要替换为实际内容：

| 变量 | 说明 | 示例 |
|------|------|------|
| `{module_name}` | 模块名称 | 用户管理 |
| `{requirement_type}` | 需求类型 | 新模块/增加功能 |
| `{target_user}` | 目标用户 | 管理员 |
| `{core_goal}` | 核心目标 | 实现用户增删改查 |
| `{version}` | 文档版本 | v1.0 |
| `{created_date}` | 创建日期 | 2024-01-01 |
| `{feature_count}` | 功能数量 | 5 |
| `{estimated_effort}` | 预估工作量 | 4h |

### 自定义模板

如需自定义模板：
1. 参考现有模板格式
2. 保持文档信息表格在开头
3. 使用 `{variable}` 作为占位符
4. 建议保持统一的标题层级

---

## 模板更新日志

| 日期 | 版本 | 变更 |
|------|------|------|
| 2024-01-01 | v1.0 | 初始版本，创建6个模板 |