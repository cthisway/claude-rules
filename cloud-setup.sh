#!/bin/bash
# 雲端環境 setup script：把 claude-rules repo 的 CLAUDE.md 放到使用者層級
# 用法：把 cthisway 換掉後，貼到 claude.ai/code → 環境設定 → Setup script
# 注意：這是 public repo 的寫法；private repo 的 raw 網址會回 404，需改用 gh 或 token

mkdir -p ~/.claude
curl -fsSL https://raw.githubusercontent.com/cthisway/claude-rules/main/CLAUDE.md \
  -o ~/.claude/CLAUDE.md \
  || echo "⚠️ claude-rules 下載失敗，本次 session 沒有使用者層級規則"
