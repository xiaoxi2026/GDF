# 项目编码规范

> 本文档由 `gdf-init` 指令自动生成，定义项目的编码规范和代码模板
> **保存路径**: `.gdf/standards.md`

## 文档信息

| 项目 | 内容 |
|------|------|
| 项目名称 | {project_name} |
| 技术栈 | {tech_stack} |
| 文档版本 | {version} |
| 创建日期 | {created_date} |
| 最后更新 | {updated_date} |

---

## 一、技术栈概览

### 1.1 后端技术

| 项目 | 技术 | 说明 |
|------|------|------|
| 编程语言 | {language} | {language_description} |
| 框架 | {framework} | {framework_description} |
| API模式 | {api_pattern} | RESTful/Handler/Controller |
| 数据库访问 | {db_access} | ORM/原生SQL/Query Builder |
| 日志框架 | {logging} | {logging_description} |

### 1.2 前端技术

| 项目 | 技术 | 说明 |
|------|------|------|
| 框架 | {frontend_framework} | {frontend_description} |
| UI库 | {ui_library} | {ui_library_description} |
| HTTP请求 | {http_client} | axios/fetch/jquery.ajax |
| 路由 | {routing} | {routing_description} |

### 1.3 数据格式规范

| 项目 | 格式 | 示例 |
|------|------|------|
| 请求格式 | {request_format} | {request_example} |
| 响应格式 | {response_format} | {response_example} |
| 分页参数 | {pagination_params} | {pagination_example} |
| 日期格式 | {date_format} | {date_example} |

---

## 二、后端规范

### 2.1 文件结构模板

```
{backend_structure}
```

### 2.2 请求处理模式

```
{request_handler_pattern}
```

### 2.3 返回值格式

**成功响应：**
```json
{success_response_example}
```

**失败响应：**
```json
{error_response_example}
```

### 2.4 错误处理规范

{error_handling_rules}

---

## 三、前端规范

### 3.1 页面结构模板

```
{frontend_structure}
```

### 3.2 数据获取模式

```javascript
{ajax_pattern_example}
```

### 3.3 组件命名规范

| 类型 | 命名规则 | 示例 |
|------|----------|------|
| 页面组件 | {PageName}Page | UserPage |
| 业务组件 | {Feature}Panel | UserPanel |
| 公共组件 | {ComponentName} | DataTable |

---

## 四、命名规范

### 4.1 数据库命名

| 类型 | 规则 | 示例 |
|------|------|------|
| 表名 | {table_naming} | {table_example} |
| 字段名 | {column_naming} | {column_example} |

### 4.2 代码命名

| 类型 | 规则 | 示例 |
|------|------|------|
| 变量 | {variable_naming} | {variable_example} |
| 函数 | {function_naming} | {function_example} |
| 类名 | {class_naming} | {class_example} |
| 常量 | {constant_naming} | {constant_example} |

---

## 五、代码模板

### 5.1 后端处理程序模板

```{language}
{backend_template_code}
```

### 5.2 前端列表页模板

```{language}
{frontend_template_code}
```

### 5.3 公共函数库（如适用）

```{language}
{common_library_code}
```

---

## 六、变更历史

| 日期 | 版本 | 变更内容 | 修改人 |
|------|------|----------|--------|
| {date} | {version} | {change_content} | {modifier} |