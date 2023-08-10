#!/bin/bash
# exercise on bash script on cpu usage
#script now on github repository
#nadi
cpu_threshold=5
email_address=fomenkykelly21@gmail.com
email_subject="report on cpu usage"
cpu_usage_percentage=$(top -bn1 | awk '/Cpu/ { print $2 }')  
echo $cpu_usage_percentage
 
if [[ $cpu_threshold <  $cpu_usage_percentage ]]
then
echo "threshold excedded"
mail -s "$email_subject " [$email_address] <<< "CPU usage has exceeded.email sent  "
else
echo "threshold not exceeded"
fi

