# 需求分析文档

> 本文档由 `$need` 指令自动生成

## 文档信息

| 项目 | 内容 |
|------|------|
| 模块名称 | {module_name} |
| 需求类型 | {requirement_type} |
| 使用者 | {target_user} |
| 核心目标 | {core_goal} |
| 预估工作量 | {estimated_effort} |
| 文档版本 | {version} |
| 创建日期 | {created_date} |
| 最后更新 | {updated_date} |

---

## 一、需求概述

### 1.1 背景说明
{background_description}

### 1.2 核心目标
{core_objective}

### 1.3 成功标准
- [ ] {success_criteria_1}
- [ ] {success_criteria_2}
- [ ] {success_criteria_3}

---

## 二、功能清单

| 编号 | 功能名称 | 功能类型 | 优先级 | 说明 |
|------|----------|----------|--------|------|
| F-01 | {feature_name} | {feature_type} | P{priority} | {feature_description} |

---

## 三、数据模型

### 3.1 数据表设计
{table_name}

| 字段 | 字段名 | 类型 | 必填 | 默认值 | 说明 |
|------|--------|------|------|--------|------|
| {field_index} | {field_name} | {field_type} | {required} | {default_value} | {field_description} |

### 3.2 关联关系
{relationship_description}

---

## 四、界面设计

### 4.1 列表页面
- **显示字段**: {list_fields}
- **排序方式**: {sorting}
- **默认排序**: {default_sort}
- **分页设置**: 每页 {page_size} 条

### 4.2 搜索/筛选
| 筛选字段 | 筛选类型 | 说明 |
|----------|----------|------|
| {filter_field} | {filter_type} | {filter_description} |

### 4.3 操作按钮
| 按钮 | 权限 | 说明 |
|------|------|------|
| {button_name} | {permission} | {button_description} |

### 4.4 表单字段
| 字段 | 控件类型 | 验证规则 | 说明 |
|------|----------|----------|------|
| {form_field} | {control_type} | {validation} | {form_description} |

---

## 五、业务规则

### 5.1 数据规则
{rules_description}

### 5.2 流程规则
{process_rules}

### 5.3 权限规则
{permission_rules}

### 5.4 异常处理
{exception_handling}

---

## 六、接口设计

### 6.1 API 列表
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| {api_name} | {method} | {path} | {api_description} |

### 6.2 接口详情
#### {api_name}
**请求**
```json
{request_example}
```

**响应**
```json
{response_example}
```

---

## 七、QA 记录

| 轮次 | 问题 | 回答 | 备注 |
|------|------|------|------|
| {round} | {question} | {answer} | {note} |

---

## 八、待确认事项

- [ ] {pending_item_1}
- [ ] {pending_item_2}

---

## 九、变更历史

| 日期 | 版本 | 变更内容 | 修改人 |
|------|------|----------|--------|
| {date} | {version} | {change_content} | {modifier} |

---

## 十、确认

请确认以上需求是否正确：

- 输入 `确认` - 锁定需求，进入任务拆解
- 输入 `修改 [内容]` - 修改指定内容
- 输入 `补充 [内容]` - 补充额外信息