@echo off
echo 构建优品电商网站发布版本...

REM 创建发布目录
if exist "dist" rmdir /s /q "dist"
mkdir dist

REM 复制所有必要文件
echo 复制HTML文件...
copy "*.html" "dist\"

echo 复制CSS文件...
xcopy "css" "dist\css\" /e /i /y

echo 复制JS文件...
xcopy "js" "dist\js\" /e /i /y

echo 复制图片文件...
xcopy "images" "dist\images\" /e /i /y

echo 复制字体文件...
xcopy "fonts" "dist\fonts\" /e /i /y

echo 构建完成！发布文件在 dist 目录中
pause 