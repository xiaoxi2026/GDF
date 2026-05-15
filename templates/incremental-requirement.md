# 增量需求文档

> 本文档由 `gdf-add` 指令自动生成，用于为已有模块添加新功能
> **保存路径**: `.gdf/increments/{module_name}-{feature}.md`

## 文档信息

| 项目 | 内容 |
|------|------|
| 目标模块 | {target_module} |
| 新增功能 | {new_feature} |
| 功能类型 | {feature_type} |
| 文档版本 | {version} |
| 创建日期 | {created_date} |
| 关联需求 | {parent_requirement} |

---

## 一、基础信息

### 1.1 模块现状
| 项目 | 内容 |
|------|------|
| 模块名称 | {module_name} |
| 当前功能数量 | {feature_count} |
| 当前状态 | {module_status} |
| 最后更新 | {last_updated} |

### 1.2 新增功能概述
| 项目 | 内容 |
|------|------|
| 功能名称 | {feature_name} |
| 功能类型 | {feature_type} |
| 优先级 | P{priority} |
| 预估工作量 | {estimated_effort} |

---

## 二、功能详情

### 2.1 功能描述
{feature_description}

### 2.2 功能目标
{feature_objectives}

### 2.3 用户场景
| 场景 | 描述 | 预期结果 |
|------|------|----------|
| {scene_name} | {scene_description} | {expected_result} |

---

## 三、确认项

| 问题 | 回答 | 备注 |
|------|------|------|
| {question} | {answer} | {note} |

---

## 四、影响范围

### 4.1 需要修改的文件
| 文件路径 | 修改类型 | 说明 |
|----------|----------|------|
| {file_path} | {modify_type} | {modification_description} |

### 4.2 需要新增的文件
| 文件路径 | 文件类型 | 说明 |
|----------|----------|------|
| {file_path} | {file_type} | {file_description} |

### 4.3 关联模块
| 模块名称 | 影响说明 |
|----------|----------|
| {module_name} | {impact_description} |

### 4.4 数据变更
| 表名 | 变更类型 | 字段 | 说明 |
|------|----------|------|------|
| {table_name} | {change_type} | {field_name} | {description} |

---

## 五、接口设计

### 5.1 新增接口
| 接口名称 | 方法 | 路径 | 说明 |
|----------|------|------|------|
| {api_name} | {method} | {path} | {description} |

### 5.2 接口详情
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

## 六、验证标准

### 6.1 功能验证
- [ ] {test_case_1}
- [ ] {test_case_2}

### 6.2 兼容性验证
- [ ] {compatibility_test_1}
- [ ] {compatibility_test_2}

### 6.3 边界条件
{boundary_conditions}

---

## 七、确认

请确认增量需求：
- 输入 `确认` - 开始生成增量代码
- 输入 `修改 [内容]` - 修改需求
- 输入 `取消` - 取消操作