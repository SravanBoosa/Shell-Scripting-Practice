#!/bin/bash
#1.Linux administrator checking a shell script before execution
#Conditions
#1.File exists AND is executable
#2.File exists but is not executable

#file_path=/home/sravan/backup.sh
#if [ -f "$file_path" ] && [ -x "$file_path" ]; #Exists and executable
#then
#     echo "SUCCESS: Backup script is ready to execute"
#elif [ -f "$file_path" ] && [ ! -x "$file_path" ]; #Exists but not executable use ! before x(execute)
#then
#     echo "WARNING: Backup script is not executable"
#else
#    echo "ERROR: Backup script not found"	
#fi 

#2.Linux administrator checking backup file availability.

#backup_file=/home/sravan/backup.tar
#if [ -f "$backup_file" ] && [ -s "$backup_file" ]; #Checks whether the file is empty or contains data using -s
#then
#     echo "SUCCESS: Backup file exists and contains data"
#
#elif [ -f "$backup_file" ] && [ ! -s "$backup_file" ];
#then
#    echo "WARNING: Backup file is empty"
#
#else
#     echo "ERROR: Backup file not found"
#fi     
#-s --  File exists and size is greater than zero
#! -s -- File is empty or does not satisfy the size test
#Remember: -s checks file size, not whether the contents form a valid TAR archive


#3.You are a Linux administrator troubleshooting an application. You need to search an application log file and check whether it contains any ERROR messages.
# *************** if -nested if-else statements ***************
##grep -q searches silently for the text ERROR.
#grep returns an exit status of 0 when a match is found, and a non-zero status when no match is found.

#log_file=/home/sravan/application.log
#if [ -f "$log_file" ]; 
#then 
#    echo "log file exists"	
#    if  grep -q "ERROR" "$log_file";  
#    then 
#         echo "ALERT: Error messages found in application log"
#    else
#    	 echo "OK: No error messages found"	
#    fi	 
#else 
#     echo "ERROR: Log file not found"
#fi     

#4.Log analysis using tail and wc

LOG_FILE="/home/sravan/application.log"

if [ -f "$LOG_FILE" ]; 
then

    COUNT=$(wc -l < "$LOG_FILE")  #Counts the number of lines.

    if [ "$COUNT" -gt 50 ]; 
    then
        echo "WARNING: Application log contains more than 50 lines"

    elif [ "$COUNT" -le 50 ]; 
    then
        echo "OK: Application log size is within expected limits"

    fi

else
    echo "ERROR: Log file not found"

fi


     	     



























