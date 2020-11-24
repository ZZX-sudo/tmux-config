#!/usr/bin/bash
weather=`curl -s -H "Accept-Language: zh" "wttr.in/深圳?format=3"`
loc=$(echo $weather | gawk -F ':' '{print $1}')
wea=$(echo $weather | gawk '{print $2}')
pretem=$(echo $weather | gawk '{print $3}')
tem=${pretem#+}
echo "$loc $wea$tem"
