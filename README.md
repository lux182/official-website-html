# 优品电商官网项目

这是一个专业的电商解决方案提供商官网项目，模仿超琦电商网站风格设计。

## 项目结构

```
official-website-html/
├── index.html          # 首页
├── product.html        # 商品详情页
├── products.html       # 商品列表页
├── css/               # 样式文件
├── js/                # JavaScript文件
├── images/            # 图片资源
├── auto-commit.ps1    # 自动提交脚本
├── watch-and-commit.ps1 # 文件监控脚本
├── commit.bat         # 快速提交批处理
├── watch.bat          # 启动监控批处理
└── README.md          # 项目说明
```

## Git 使用方法

### 1. 初始化Git仓库
```bash
git init
git add .
git commit -m "初始化项目"
```

### 2. 手动提交更改
```bash
git add .
git commit -m "提交信息"
```

### 3. 使用自动提交脚本

#### 方法一：手动执行提交
双击运行 `commit.bat` 或在PowerShell中执行：
```powershell
.\auto-commit.ps1
```

#### 方法二：启动文件监控（推荐）
双击运行 `watch.bat` 或在PowerShell中执行：
```powershell
.\watch-and-commit.ps1
```

监控脚本会每30秒检查一次文件变化，自动提交更改。

#### 自定义监控间隔
```powershell
.\watch-and-commit.ps1 -Interval 60  # 60秒检查一次
```

### 4. 查看Git状态
```bash
git status
git log --oneline
```

## 开发说明

### 本地测试
1. 直接用浏览器打开 `index.html`
2. 或使用本地服务器：
   ```bash
   # Python 3
   python -m http.server 8000
   
   # 然后访问 http://localhost:8000
   ```

### 文件修改后
- 如果使用监控脚本，会自动提交
- 如果手动开发，运行 `commit.bat` 或手动执行Git命令

## 注意事项

1. 确保PowerShell执行策略允许运行脚本
2. 监控脚本会持续运行，按 `Ctrl+C` 停止
3. 自动提交信息包含时间戳，便于追踪
4. 建议在开发前先测试脚本是否正常工作

## 技术栈

- HTML5
- CSS3
- Bootstrap 3
- jQuery
- Font Awesome
- WOW.js (动画效果)

## 浏览器兼容性

- Chrome (推荐)
- Firefox
- Safari
- Edge
- IE 11+
