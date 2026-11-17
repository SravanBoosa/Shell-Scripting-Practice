#!/bin/bash
#1.
#username="admin"
#if [ "$username" = "admin" ];
#then
#     echo "Admin user detected"
#else
#     echo "Regular user detected"
#fi     
#2
#username="sravan"
#user_group="developers"
#if [ "$user_group" = "admin" ];
#then 
#     echo "User has admin group access"
#else
#     echo "User does not have admin group access"
#fi

#3.Scenario: Check whether a Linux username is empty.

#username=""
#if [ -z  "$username" ];
#then
#     echo "Username is missing"
#else
#    echo "Username is available"
#fi    

#4.Check whether a configuration file exists.
#file_path="/etc/ssh/sshd_config" #-f "$file_path" checks whether the specified path exists as a regular file
#if [ -f "$file_path" ];
#then
#     echo "SSH configuration file exists"
#else
#     echo "SSH configuration file not found"
#fi

#5.Check whether an application log directory exists
#directory_path="/var/log/myapp"
#if [ -d "$directory_path" ]; #-d checks whether the given path is a directory.If the directory exists, the condition is TRUE.
#then
#     echo "Application log directory exists"
#else
#     echo "Application log directory not found"
#fi     
#This depends on whether /var/log/myapp actually exists on your Linux system. If it doesn't:

#7.Scenario: Monitor Linux disk usage.
#disk_usage=88
#if [ "$disk_usage" -ge 85 ];
#then
#    echo "WARNING: Disk usage is high"
#else
#    echo "OK: Disk usage is normal"
#fi    
 #7.Check whether the Apache web server is running.

#server_status="running"
#if [ "$server_status" = "running" ];
#then
#    echo "Apache service is running"	
#else
#    echo "Apache service is stopped"
#fi

#8. Monitor the Nginx service
#A Linux administrator wants to check whether Nginx is running or stopped.
#nginx_status="failed"
#if [ "$nginx_status" = "running" ];
#then
#     echo "Nginx service is running"	
#elif [ "$nginx_status" = "failed" ];     
#then
#     echo "Nginx service has failed"
#else     
#     echo "Nginx service status is unknown"
#fi

#9.Running Processes Check whether the Apache process is running.
#process_count=0
#if [ "$process_count" -gt 0 ];
#then
#     echo "Apache process is running"
#else
#     echo "ALERT: Apache process is not running"
#fi 

#10.Monitor server CPU utilization
cpu_usage=92
if [ "$cpu_usage" -ge 90 ];
then
     echo "CRITICAL: CPU usage is very high"
elif [ "$cpu_usage" -ge 70 ];
then
     echo "WARNING: CPU usage is high"
else
     echo "OK: CPU usage is normal"
fi 
