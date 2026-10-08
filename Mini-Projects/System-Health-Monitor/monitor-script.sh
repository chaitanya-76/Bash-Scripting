#!/usr/bin/bash

while true
do
	cpu=$(bc <<< "100 - $(top -b -n 1 | awk 'NR > 2 && NR < 4 {print $8}')")
	mem=$(bc <<< "scale=1; 100 * $(top -b -n 1 | awk 'NR > 3 && NR < 5 {print $8}') / $(top -b -n 1 | awk 'NR > 3 && NR < 5 {print $4}')")
	disk=$(df -h / | awk 'NR==2 {print $5}')
	if [[ "$(bc <<< "$cpu > 10.0")" -eq 1 ]];then
		echo -e "Memory:$mem%"
		echo -e "\033[0;31mCPU percentage is high: $cpu%"
		echo -e "Disk: $disk"
	elif [[ "$(bc <<< "$mem > 70.0")" -eq 1 ]];then	
		echo -e "CPU: $cpu%"
		echo -e "\033[0;31mMemory usage is high: $mem%"
		echo -e "Disk: $disk"
	elif [[ "${disk%\%}" -ge 80 ]];then	
		echo -e "CPU: $cpu%"
		echo -e "Memory usage is high: $mem%"
		echo -e "\033[0;31mDisk usage is high: $disk"
	else
		echo -e "CPU: $cpu%\nMemory: $mem%\nDisk: $disk"
	fi
	echo "----------------------------"
	sleep 1
done

