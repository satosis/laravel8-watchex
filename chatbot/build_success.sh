#!/bin/bash
cd /var/www/laravel8-watchex
TELEGRAM_BOT_TOKEN="6434708723:AAEK3eWhfe7gOc9F2g0w2sokk6TumvYEeAk"
CHAT_ID="6434708723"

# Run git command
GIT_OUTPUT=$(git diff --name-only HEAD HEAD~1)
GIT_AUTHOR=$(git log -2 --max-count=1 --skip=1 --pretty="%an")
GIT_MESSAGE=$(git log -1 --pretty=format:"%s")
# Send the output to Telegram
curl -s -X POST https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="Build nhánh<b>master</b> thành công. <b>Author: <b>$GIT_AUTHOR</b>%0ACommit:%0A<i>$GIT_MESSAGE</i>%0A%0ACác file đã thay đổi:%0A$GIT_OUTPUT%0A******************************%0A`date`" -d parse_mode="html" > /dev/null