#!/bin/bash
if [ "${1}" = "start" ]; then
  while true; do
    sleep 2
  done
fi
controllers=1
while [ ${controllers} -gt 0 ]; do
  controllers=`echo 'Turnoff.' | /usr/bin/nc -w1 -U ~/.config/scc/daemon.socket | grep "Controller Count: " | awk 'END{print $3}'`
  echo Another ${controllers} present
done
