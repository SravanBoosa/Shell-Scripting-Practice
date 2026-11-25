#!/bin/bash
#1.Check whether a Linux configuration file exists
#file_path="/etc/ssh/ssh_config"
#if [ -f "$file_path" ];
#then
#     echo "SSH configuration file is available"
#else
#     echo "ERROR: SSH configuration file not found"
#fi

#2.Check whether an application log directory exists

#log_dir="/var/log/myapp"
#if [ -d "$log_dir" ];
#then
#     echo "Application log directory is available"
#else
#     echo "ERROR: Application log directory not found"
#fi

#3.Check Linux root partition disk usage
#disk_usage=88
#if [ "$disk_usage" -ge 85 ];
#then
#     echo "WARNING: Root filesystem disk usage is high"
#else
#     echo "OK: Root filesystem disk usage is normal"
#fi     

#4.Retrieve actual disk usage using df
#disk_usage=$(df -h / | awk 'NR==2 {gsub("%", "", $5); print $5}')
#if [ "$disk_usage" -ge 85 ];
#then
#     echo "WARNING: Root filesystem disk usage is high"
#else
#     echo "OK: Root filesystem disk usage is normal"
#fi     
#df -h / | awk  # First, execute df -h /
#Then, send its output to awk  and awk processes that output.
#awk 'NR==2'means = 
#NR==1 means the first line.
#NR==2 means the second line.Because the first line contains column headings, and the second line contains the actual disk information.
#Line 1: Filesystem      Size  Used Avail Use% Mounted on
#Line 2: /dev/sda1        50G   35G   15G  70% /
#~$ represents a column (field) which is 70% 
#print $5
#gsub("%", "", $5)   gsub("what to find", "replace with", column)

#5.: Check whether the Apache service is active
#service_status=$(systemctl is-active apache2)
#if [ "$service_status" = "active" ];
#then
#     echo "Apache service is running"
#else
#     echo "ALERT: Apache service is not running"
#fi    
#6.: Monitor the SSH service on a Linux server
#ssh_status=$(systemctl is-active ssh)
#if [ "$ssh_status" = "active" ];
#then
#    echo "SSH service is running"
#elif [ "$ssh_status" = "inactive" ];
#then
#     echo "WARNING: SSH service is inactive"
#else
#   echo "ALERT: SSH service status is unknown"
#fi 
#7.  Check whether the Apache process is running
#Instead of using a simulated process_count, you will retrieve the process count dynamically.
#A Linux administrator wants to verify whether the Apache web server process is running
#Use pgrep -c apache2 to retrieve the number of matching processes.
#pgrep -search for running process
#-c - Count matching processes instead of displaying their PIDs

#process_count=$(pgrep -c apache2)
#if [ "$process_count" -gt 0 ];
#then
#    echo "Apache process is running"
#else
#    echo "ALERT: Apache process is not running"
#fi
 #8.Monitor the Nginx web server process.
#nginx_count=$(pgrep -c nginx)
#if [ "$nginx_count" -ge 1 ];
#then
#    echo "Nginx process is running"
#else
#    echo "ALERT: Nginx process is not running"
#fi
#9.Combined Linux Monitoring Script
#1.Check whether Apache service is active using systemctl
#2.Check whether Apache process count is greater than zero using pgrep.
#process_name="apache2"
#process_count=$(pgrep -c "$process_name")
#service_status=$(systemctl is-active "$process_name")
#if [ "$service_status" = "active" ] && [ "$process_count" -gt 0 ];
#then
#    echo "Apache service is running and process count is $process_count"
#elif [ "$service_status" = "inactive" ] && [ "$process_count" -eq 0 ];
#then
#    echo "ALERT: Apache service is inactive and process count is zero"
#else
#    echo "WARNING: Apache service status is $service_status and process count is $process_count"
#fi

#10. disk usage, Apache service status, and Apache process count.
#disk_usage=$(df -h / | awk 'NR==2 {gsub("%", "", $5); print $5}')
#process_name="apache2"
#service_status=$(systemctl is-active "$process_name")
#process_count=$(pgrep -c "$process_name")
#process_count=${process_count:-0} (Add it after the pgrep command. This helps if the variable is empty.)
#if [ "$disk_usage" -ge 85 ];
#then 
#    echo "WARNING: Disk usage is high"
#elif [ "$service_status" = "active" ] && [ "$process_count" -gt 0  ];
#then
#     echo "OK: Apache is running"	
#elif [ "$service_status" = "inactive" ] && [ "$process_count" -eq 0 ];
#then
#     echo "ALERT: Apache is stopped"	
#else
#    echo "WARNING: Server health needs investigation"
#fi 

  	

