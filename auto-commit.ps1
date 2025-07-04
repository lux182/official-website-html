# 自动Git提交脚本
# 使用方法：每次修改文件后运行此脚本

Write-Host "开始自动提交Git更改..." -ForegroundColor Green

# 检查是否有更改
$status = git status --porcelain
if ([string]::IsNullOrEmpty($status)) {
    Write-Host "没有检测到文件更改，跳过提交。" -ForegroundColor Yellow
    exit 0
}

# 添加所有更改
Write-Host "添加文件到暂存区..." -ForegroundColor Blue
git add .

# 生成提交信息
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$commitMessage = "自动提交 - $timestamp"

# 提交更改
Write-Host "提交更改..." -ForegroundColor Blue
git commit -m $commitMessage

# 显示提交结果
Write-Host "提交完成！" -ForegroundColor Green
Write-Host "提交信息: $commitMessage" -ForegroundColor Cyan

# 显示当前状态
Write-Host "`n当前Git状态:" -ForegroundColor Yellow
git status 