# 任务拆解清单

> 本文档由 `gdf-split` 指令自动生成
> **保存路径**: `.gdf/tasks/{module_name}.md`

## 文档信息

| 项目 | 内容 |
|------|------|
| 需求名称 | {requirement_name} |
| 功能数量 | {feature_count} |
| 涉及数据表 | {table_count} |
| 预估工作量 | {estimated_hours} |
| 文档版本 | {version} |
| 创建日期 | {created_date} |

---

## 一、任务概览

### 1.1 复杂度评估
- **复杂度等级**: {complexity_level}
- **任务总数**: {total_tasks}
- **预估总时间**: {total_hours}

### 1.2 任务清单

| 编号 | 任务名称 | 任务类型 | 预估时间 | 依赖任务 | 状态 |
|------|----------|----------|----------|----------|------|
| T{index} | {task_name} | {task_type} | {hours}h | {dependencies} | {status} |

**任务类型说明:**
- DB: 数据库设计
- Backend: 后端开发
- Frontend: 前端开发
- Test: 测试
- Deploy: 部署
- Docs: 文档

**状态说明:**
- 待开始
- 进行中
- 已完成
- 已验证

---

## 二、里程碑规划

### 2.1 里程碑列表

| 里程碑 | 名称 | 包含任务 | 预计完成时间 | 状态 |
|--------|------|----------|--------------|------|
| M{index} | {milestone_name} | T{task_list} | {completion_time} | {status} |

### 2.2 里程碑进度

```
已完成: [{completed_count}/{total_tasks}]
进度: [{progress_bar}]
```

---

## 三、任务依赖关系

### 3.1 依赖关系图

```mermaid
flowchart LR
    {dependency_graph_code}
```

### 3.2 并行建议

以下任务可以并行开发：

| 并行组 | 任务列表 | 依赖条件 |
|--------|----------|----------|
| {parallel_group} | {parallel_tasks} | {dependency_condition} |

---

## 四、详细任务说明

### T{index}: {task_name}

**任务类型**: {task_type}
**预估时间**: {hours}h
**依赖任务**: {dependencies}

**任务内容**:
- {task_content_1}
- {task_content_2}

**完成标准**:
- [ ] {completion_criteria_1}
- [ ] {completion_criteria_2}

**注意事项**:
{notes}

---

## 五、开发建议

### 5.1 节奏建议
{development_rhythm_suggestions}

### 5.2 风险提示
{risk_warnings}

### 5.3 检查点
{checkpoints}

---

## 六、确认

请确认任务清单：
- 输入 `确认` - 锁定任务清单，开始执行
- 输入 `修改 T{index} 改为 xxx` - 修改指定任务
- 输入 `拆分 T{index}` - 拆分任务
- 输入 `合并 T{index} 和 T{index}` - 合并任务
- 输入 `取消` - 取消任务拆解