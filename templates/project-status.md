# 项目状态报告

> 本文档由 `$status` 指令自动生成

## 文档信息

| 项目 | 内容 |
|------|------|
| 项目名称 | {project_name} |
| 报告日期 | {report_date} |
| 文档版本 | {version} |

---

## 一、初始化状态

| 检查项 | 状态 | 完成时间 |
|--------|------|----------|
| $init 已完成 | {status} | {completion_date} |
| 测试模块验证 | {status} | - |

---

## 二、需求状态

| 需求 | 状态 | 确认时间 | 开发状态 |
|------|------|----------|----------|
| {requirement_name} | {status} | {confirm_date} | {development_status} |

**状态说明：**
- 待录入
- 待确认
- 已确认
- 进行中
- 已完成

---

## 三、任务进度

| ID | 任务名称 | 任务类型 | 状态 | 完成时间 |
|----|----------|----------|------|----------|
| T{index} | {task_name} | {task_type} | {status} | {completion_date} |

**任务类型：** DB / Backend / Frontend / Test / Deploy / Docs

**状态说明：**
- ⏳ 待开始
- 🔄 进行中
- ✅ 已完成
- ❌ 已阻塞

---

## 四、里程碑进度

| 里程碑 | 状态 | 完成度 |
|--------|------|--------|
| {milestone_name} | {status} | {progress}% |

---

## 五、整体进度

```
已完成：{completed_tasks}/{total_tasks} 任务 ({progress}%)
```

### 进度条

```
[{progress_bar}] {progress}%
```

---

## 六、待办事项

### 6.1 紧急
- [ ] {urgent_item}

### 6.2 重要
- [ ] {important_item}

### 6.3 一般
- [ ] {normal_item}

---

## 七、下一步建议

{next_suggestions}

---

## 八、快捷命令

| 命令 | 说明 |
|------|------|
| `$new` | 继续开发下一个任务 |
| `$status` | 刷新项目状态 |
| `$add` | 为当前模块添加功能 |