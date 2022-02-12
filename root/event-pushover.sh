#!/bin/sh

# syslog
logger -t $0 "1=$1 2=$2 3=$3"

# pushover
curl -s \
  --form-string "token=`uci get security-pushover.api.api_key`" \
  --form-string "user=`uci get security-pushover.api.user_key`" \
  --form-string "message=$3" \
https://api.pushover.net/1/messages.json >/dev/null &
