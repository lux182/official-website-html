const fs = require('fs');
const path = require('path');

console.log('构建优品电商网站发布版本...');

// 创建发布目录
const distDir = 'dist';
if (fs.existsSync(distDir)) {
    fs.rmSync(distDir, { recursive: true });
}
fs.mkdirSync(distDir);

// 复制文件的函数
function copyFile(src, dest) {
    const destDir = path.dirname(dest);
    if (!fs.existsSync(destDir)) {
        fs.mkdirSync(destDir, { recursive: true });
    }
    fs.copyFileSync(src, dest);
}

function copyDir(src, dest) {
    if (!fs.existsSync(dest)) {
        fs.mkdirSync(dest, { recursive: true });
    }
    
    const files = fs.readdirSync(src);
    files.forEach(file => {
        const srcPath = path.join(src, file);
        const destPath = path.join(dest, file);
        
        if (fs.statSync(srcPath).isDirectory()) {
            copyDir(srcPath, destPath);
        } else {
            copyFile(srcPath, destPath);
        }
    });
}

// 复制文件
console.log('复制HTML文件...');
const htmlFiles = fs.readdirSync('.').filter(file => file.endsWith('.html'));
htmlFiles.forEach(file => {
    copyFile(file, path.join(distDir, file));
});

console.log('复制CSS文件...');
if (fs.existsSync('css')) {
    copyDir('css', path.join(distDir, 'css'));
}

console.log('复制JS文件...');
if (fs.existsSync('js')) {
    copyDir('js', path.join(distDir, 'js'));
}

console.log('复制图片文件...');
if (fs.existsSync('images')) {
    copyDir('images', path.join(distDir, 'images'));
}

console.log('复制字体文件...');
if (fs.existsSync('fonts')) {
    copyDir('fonts', path.join(distDir, 'fonts'));
}

console.log('构建完成！发布文件在 dist 目录中'); 