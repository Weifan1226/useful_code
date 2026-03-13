git add -all
git commit -m "update from local"
git push origin main

# 切换到main分支
git checkout main

git branch -M main

# 拉取最新代码
git pull origin main

# 切换到dev分支
git checkout dev

