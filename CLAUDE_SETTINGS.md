# GDF Claude Code 集成配置

> 本文件定义 GDF 各指令的 slash command 配置

## 在 VSCode settings.json 中配置

打开 VSCode 设置 (Ctrl+,)，添加以下配置：

```json
{
  // GDF 工具路径（指向 GDF 目录）
  "gdf.basePath": "e:\\\\gooledown\\\\GDF",

  // 自定义 slash commands
  "claudeCode.commands": {
    "init-gdf": "请将 GDF 工具安装到当前项目。首先读取 ${gdf.basePath} 路径下的 gdf-install.js 脚本并执行。",

    "gdf-need": "请执行需求录入。参考 ${gdf.basePath}\\\\command\\\\$need.md 文件的流程。",

    "gdf-split": "请执行任务拆解。参考 ${gdf.basePath}\\\\command\\\\$split.md 文件的流程。",

    "gdf-new": "请执行任务开发。参考 ${gdf.basePath}\\\\command\\\\$new.md 文件的流程。",

    "gdf-add": "请执行功能添加。参考 ${gdf.basePath}\\\\command\\\\$add.md 文件的流程。",

    "gdf-refactor": "请执行代码优化。参考 ${gdf.basePath}\\\\command\\\\$refactor.md 文件的流程。",

    "gdf-status": "请查看项目状态。参考 ${gdf.basePath}\\\\command\\\\$status.md 文件的流程。"
  }
}
```

---

## 安装脚本

创建 `gdf-install.js` 用于复制文件：

```javascript
const fs = require('fs');
const path = require('path');

// 配置
const gdfBasePath = 'e:\\\\gooledown\\\\GDF';
const targetPath = process.cwd();

// 需要复制的文件夹
const foldersToCopy = ['command', 'templates'];

function copyFolder(src, dest) {
  if (!fs.existsSync(src)) {
    console.error(`源目录不存在: ${src}`);
    return false;
  }

  // 创建目标目录
  if (!fs.existsSync(dest)) {
    fs.mkdirSync(dest, { recursive: true });
  }

  const entries = fs.readdirSync(src, { withFileTypes: true });

  for (const entry of entries) {
    const srcPath = path.join(src, entry.name);
    const destPath = path.join(dest, entry.name);

    if (entry.isDirectory()) {
      copyFolder(srcPath, destPath);
    } else {
      fs.copyFileSync(srcPath, destPath);
      console.log(`复制: ${srcPath} -> ${destPath}`);
    }
  }
  return true;
}

// 执行复制
let success = true;
for (const folder of foldersToCopy) {
  const src = path.join(gdfBasePath, folder);
  const dest = path.join(targetPath, folder);
  
  console.log(`\\n正在复制 ${folder}...`);
  if (!copyFolder(src, dest)) {
    success = false;
  }
}

if (success) {
  console.log('\\n✅ GDF 工具安装完成！');
} else {
  console.log('\\n⚠️ 安装过程中有错误，请检查');
}
```

---

## 使用方式

配置完成后，在任意项目中：

1. 输入 `/init-gdf` - 安装 GDF 到当前项目
2. 输入 `/gdf-need` - 录入需求
3. 输入 `/gdf-split` - 任务拆解
4. 输入 `/gdf-status` - 查看状态
5. 等等...

---

## 说明

- `gdf.basePath` 需要改为你的 GDF 实际存放路径
- 首次使用 `/init-gdf` 会将 command 和 templates 复制到当前项目
- 之后每次使用其他 gdf 命令，会动态读取 GDF 目录下的指令文件