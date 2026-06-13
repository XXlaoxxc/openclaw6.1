#!/bin/bash
# GitHub 自动同步脚本
# 用途：每次学习更新后自动 commit + push

WORKSPACE="/root/.openclaw/workspace-learner"
cd "$WORKSPACE" || exit 1

# 检查是否有变更
if git diff --quiet && git diff --cached --quiet; then
    echo "📭 没有新的变更需要同步"
    exit 0
fi

# 获取当前时间
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")

# 添加所有变更
git add .

# 提交
git commit -m "📚 学习更新 - $TIMESTAMP"

# 推送
git push origin main

echo "✅ 同步完成：$TIMESTAMP"
