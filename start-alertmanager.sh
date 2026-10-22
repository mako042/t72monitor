#!/bin/sh
set -eu
umask 077
printf '%s' "$TELEGRAM_BOT_TOKEN" > /tmp/telegram_bot_token
exec /bin/alertmanager --config.file=/etc/alertmanager/alertmanager.yml
