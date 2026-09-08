#!/bin/bash
while true; do
  curl -s "wttr.in/Kiev?format=%t" >~/.cache/weather.txt
  sleep 1800
done
