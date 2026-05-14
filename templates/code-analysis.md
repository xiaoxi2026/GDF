# 代码分析报告

> 本文档由 `$refactor` 指令自动生成，用于代码质量分析与优化建议

## 文档信息

| 项目 | 内容 |
|------|------|
| 分析模块 | {module_name} |
| 代码行数 | {code_lines} |
| 分析日期 | {analysis_date} |
| 文档版本 | {version} |

---

## 一、分析概览

### 1.1 总体评分

| 维度 | 得分 | 等级 |
|------|------|------|
| 代码规范 | {score}/100 | {level} |
| 可维护性 | {score}/100 | {level} |
| 性能表现 | {score}/100 | {level} |
| 安全性 | {score}/100 | {level} |
| 总体评分 | {score}/100 | {level} |

### 1.2 问题统计

| 严重程度 | 数量 |
|----------|------|
| 🔴 严重问题 | {critical_count} |
| 🟠 警告问题 | {warning_count} |
| 🔵 建议优化 | {suggestion_count} |

---

## 二、一致性检查

### 2.1 检查结果

| 检查项 | 状态 | 说明 |
|--------|------|------|
| 命名规范 | {status} | {description} |
| 代码结构 | {status} | {description} |
| 注释规范 | {status} | {description} |
| 错误处理 | {status} | {description} |
| 日志记录 | {status} | {description} |
| 缩进格式 | {status} | {description} |

### 2.2 命名规范详情

| 问题类型 | 示例 | 位置 | 建议 |
|----------|------|------|------|
| {issue_type} | {example} | {location} | {suggestion} |

---

## 三、重复代码识别

### 3.1 重复代码列表

| 编号 | 位置 | 重复内容 | 出现次数 | 建议处理 |
|------|------|----------|----------|----------|
| R-{index} | {location} | {content} | {count} | {suggestion} |

### 3.2 代码片段对比

**位置A**: `{location_a}`
```{language}
{code_snippet_a}
```

**位置B**: `{location_b}`
```{language}
{code_snippet_b}
```

---

## 四、可提炼的公共逻辑

### 4.1 公共逻辑列表

| 逻辑描述 | 当前位置 | 建议抽取到 | 预估收益 |
|----------|----------|------------|----------|
| {logic_description} | {current_location} | {suggested_location} | {estimated_benefit} |

### 4.2 提炼方案

#### {logic_name}

**当前实现** (在 {files} 中):
```{language}
{current_implementation}
```

**建议抽取**:
```{language}
{suggested_implementation}
```

---

## 五、代码质量分析

### 5.1 函数/方法分析

| 名称 | 行数 | 参数数量 | 圈复杂度 | 评价 |
|------|------|----------|----------|------|
| {function_name} | {lines} | {params} | {complexity} | {evaluation} |

### 5.2 问题函数

#### {function_name} (问题类型: {issue_type})

**位置**: {file_path}:{line}

**问题描述**:
{problem_description}

**建议优化**:
{suggested_fix}

---

## 六、安全性检查

### 6.1 检查结果

| 检查项 | 状态 | 说明 |
|--------|------|------|
| SQL注入风险 | {status} | {description} |
| XSS风险 | {status} | {description} |
| 敏感信息暴露 | {status} | {description} |
| 权限控制 | {status} | {description} |

### 6.2 风险详情

| 风险类型 | 位置 | 严重程度 | 建议 |
|----------|------|----------|------|
| {risk_type} | {location} | {severity} | {suggestion} |

---

## 七、性能分析

### 7.1 性能问题

| 问题 | 位置 | 影响 | 建议 |
|------|------|------|------|
| {issue} | {location} | {impact} | {suggestion} |

### 7.2 优化建议

{performance_suggestions}

---

## 八、优化建议汇总

### 8.1 高优先级（建议立即处理）

| 编号 | 问题 | 位置 | 优化方案 | 预期收益 |
|------|------|------|----------|----------|
| P-{index} | {problem} | {location} | {solution} | {benefit} |

### 8.2 中优先级（建议下次迭代处理）

| 编号 | 问题 | 位置 | 优化方案 | 预期收益 |
|------|------|------|----------|----------|
| M-{index} | {problem} | {location} | {solution} | {benefit} |

### 8.3 低优先级（可选优化）

| 编号 | 问题 | 位置 | 优化方案 | 预期收益 |
|------|------|------|----------|----------|
| L-{index} | {problem} | {location} | {solution} | {benefit} |

---

## 九、确认

需要生成优化代码吗？
- 输入 `优化 P-{index}` - 生成指定问题的优化代码
- 输入 `优化 all` - 生成所有问题的优化代码
- 输入 `跳过` - 稍后处理