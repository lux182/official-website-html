@echo off
echo 启动文件监控和自动提交...
echo 按 Ctrl+C 停止监控
powershell -ExecutionPolicy Bypass -File "watch-and-commit.ps1"
pause 