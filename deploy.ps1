# 机蛋儿 - Hugo 自动部署脚本
# 构建并推送到 helailai666.github.io

Write-Host "🚀 机蛋儿开始部署..." -ForegroundColor Cyan

# 1. 构建 Hugo 站点
Write-Host "📦 正在构建 Hugo 站点..." -ForegroundColor Yellow
hugo

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Hugo 构建失败！" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Hugo 构建成功！" -ForegroundColor Green

# 2. 进入 public 目录并推送到 GitHub Pages
Write-Host "📤 正在推送到 GitHub Pages..." -ForegroundColor Yellow
cd public

# 如果 public 还没有 git 仓库则初始化
if (-not (Test-Path ".git")) {
    git init
    git remote add origin git@github.com:helailai666/helailai666.github.io.git
}

git add -A
git commit -m "每日更新 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push -f origin master

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ 部署成功！https://helailai666.github.io" -ForegroundColor Green
} else {
    Write-Host "❌ 推送失败，请检查 SSH 密钥和网络连接" -ForegroundColor Red
    exit 1
}

cd ..
