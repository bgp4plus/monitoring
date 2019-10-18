#!/bin/sh
export PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin"
export LANG=C

access_token="LINEアクセストークン"
subject=$1
body=$2

# LINE Notify 実行
curl -X POST -H "Authorization: Bearer ${access_token}" \
-F "message=${subject}: ${body}" \
https://notify-api.line.me/api/notify

exit 0
