#!/bin/bash
echo "构建优品电商网站发布版本..."

# 创建发布目录
rm -rf dist
mkdir dist

# 复制所有必要文件
echo "复制HTML文件..."
cp *.html dist/

echo "复制CSS文件..."
cp -r css dist/

echo "复制JS文件..."
cp -r js dist/

echo "复制图片文件..."
cp -r images dist/

echo "复制字体文件..."
cp -r fonts dist/

echo "构建完成！发布文件在 dist 目录中" 