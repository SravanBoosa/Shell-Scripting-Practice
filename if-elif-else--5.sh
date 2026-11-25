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
#3.
