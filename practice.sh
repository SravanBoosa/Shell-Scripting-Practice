#!/bin/bash
#a=$1
#b=$2
#sum=$((a + b))
#echo "Sum is: $sum"

#name=$1
#age=$2
#echo "Heello $name ! You are $age years old"

#Servername=$1
#IPaddress=$2
#environement=$3
#echo "Server name:  $Servername"
#echo "Ipaddress : $IPaddress"
#echo "Env : $environement"


#read -p "Projectname : " Project_name
#read -p "AWS-Region : " AWS_Region
#echo "-------------"
#echo "Deployment configuration"
#echo "-------------"
#echo "Project details are $Project_name and $AWS_Region"
#echo "Deployment strated..."


#read -p "Application: " Application
#read -p "Environement : " Env
#read -p "Region : " Region
#echo "-------------"
#echo "Application : $Application
#echo "Environement : $Env"
#echo "Region : $Region"
#echo "Start Deployment....."




read -p "Source Directory : " Sourcedirectory
read -p "Backup Directory : " BackupDirectory
read -p "Backup Filename : " BackupFilename

echo "=============================="
echo "Backup Configuration"
echo "=============================="
echo "Source Directory : $Sourcedirectory"
echo "Backup Directory : $BackupDirectory"
echo "Backup Filename  : $BackupFilename"
echo "Backup details recorded successfully!"
