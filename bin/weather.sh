#!/bin/bash
while true; do
  curl -s "wttr.in/?format=%t" >~/.cache/weather.txt
  sleep 1800
done
