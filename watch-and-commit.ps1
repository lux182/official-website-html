# 文件监控和自动提交脚本
# 使用方法：运行此脚本后，它会监控文件变化并自动提交

param(
    [int]$Interval = 30,  # 检查间隔（秒）
    [switch]$Help
)

if ($Help) {
    Write-Host "文件监控和自动提交脚本" -ForegroundColor Green
    Write-Host "用法: .\watch-and-commit.ps1 [-Interval 30] [-Help]" -ForegroundColor Yellow
    Write-Host "参数:" -ForegroundColor Yellow
    Write-Host "  -Interval: 检查间隔（秒），默认30秒" -ForegroundColor White
    Write-Host "  -Help: 显示帮助信息" -ForegroundColor White
    Write-Host "示例:" -ForegroundColor Yellow
    Write-Host "  .\watch-and-commit.ps1" -ForegroundColor White
    Write-Host "  .\watch-and-commit.ps1 -Interval 60" -ForegroundColor White
    exit 0
}

Write-Host "开始监控文件变化..." -ForegroundColor Green
Write-Host "检查间隔: $Interval 秒" -ForegroundColor Cyan
Write-Host "按 Ctrl+C 停止监控" -ForegroundColor Yellow
Write-Host ""

# 记录初始状态
$lastStatus = git status --porcelain

while ($true) {
    try {
        # 检查当前状态
        $currentStatus = git status --porcelain
        
        # 如果有变化
        if ($currentStatus -ne $lastStatus) {
            Write-Host "检测到文件变化！" -ForegroundColor Green
            Write-Host "变化时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
            
            # 等待一小段时间确保文件写入完成
            Start-Sleep -Seconds 2
            
            # 添加所有更改
            Write-Host "添加文件到暂存区..." -ForegroundColor Blue
            git add .
            
            # 生成提交信息
            $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
            $commitMessage = "自动提交 - $timestamp"
            
            # 提交更改
            Write-Host "提交更改..." -ForegroundColor Blue
            git commit -m $commitMessage
            
            Write-Host "提交完成！" -ForegroundColor Green
            Write-Host "提交信息: $commitMessage" -ForegroundColor Cyan
            Write-Host ""
            
            # 更新状态
            $lastStatus = git status --porcelain
        }
        
        # 等待下次检查
        Start-Sleep -Seconds $Interval
        
    } catch {
        Write-Host "发生错误: $($_.Exception.Message)" -ForegroundColor Red
        Start-Sleep -Seconds $Interval
    }
} 