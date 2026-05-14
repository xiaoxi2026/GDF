# $init - 项目初始化指令

## 触发条件
用户输入 `$init`

## 执行流程

### 第1步：请求代码样本

输出：

```
请提供现有项目中的代码样本（2-5个文件），我会进行分析。

要求：

- 选择功能完整的文件（包含增删改查更好）
- 覆盖前后端/不同模块类型

请逐个粘贴文件内容。
```

### 第2步：技术栈识别

收到代码后，分析并输出：

```
## 技术栈识别结果

### 后端技术
- 语言：[C#/Java/Python/Go/Node.js/PHP]
- 框架：[.NET/Spring Boot/Express/Laravel]
- API模式：[RESTful/Handler/Controller]
- 数据库访问：[ORM/原生SQL/Query Builder]

### 前端技术
- 框架：[React/Vue/Angular/jQuery/原生JS]
- UI库：[Element UI/Ant Design/EasyUI/Bootstrap]
- HTTP请求：[axios/fetch/jquery.ajax]

### 数据格式
- 请求格式：[JSON/FormData/XML]
- 响应格式：[统一结构/非统一]
- 分页参数：[page/pageSize/page/rows/offset/limit]
- 日期格式：[ISO/时间戳/自定义]

请确认以上识别是否正确？
```

### 第3步：生成规范文档

用户确认后，参考模板 `../templates/coding-standards.md` 生成项目编码规范文档（CODING_STANDARDS.md）。

### 第4步：生成代码模板

基于规范生成模板文件：
- 后端处理程序模板
- 前端列表页模板
- 公共函数库（如适用）

### 第5步：完成提示

```
✅ 初始化完成！

后续使用：
- $need - 录入需求
- $status - 查看状态
```

---

## 注意事项

1. 代码样本选择要有代表性，覆盖不同模块类型
2. 识别的技术栈需要用户确认后才能生成规范
3. 规范文档生成后需要用户确认
4. 模板文件应保存到项目目录供后续使用