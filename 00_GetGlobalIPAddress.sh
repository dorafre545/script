#!/bin/sh
########################################################
# グローバルIP を取得し Discord にメッセージで送信します。 #
########################################################

# Get Global IP Addr
IPADDR=`curl ifconfig.io/ip`
echo $IPADDR

# POST Message TO Discord
# https://birdie0.github.io/discord-webhooks-guide/tools/curl.html

# CREATE MESSAGE CONTENTS
MSG='アパート RPI3B+グローバルIP：'$IPADDR

DISCORD_POST_URL='https://discord.com/api/webhooks/859778309679611956/LEfytgvVKQ6S9xLvc4gxI6nJRKzArHbsL6cagNH8nT4iJha2I9o8iB5bJZ94zgZP8Umr'
curl -H "Content-Type: application/json" -d '{"content":"'$MSG'"}' "$DISCORD_POST_URL"