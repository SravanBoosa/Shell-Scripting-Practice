#!/bin/bash
#a=4
#b=3

read -p "value of a  : " a
echo "value of a is $a"

read -p "value of b : " b
echo "value of b is $b"

if [ $a -eq $b ];then echo "a is equal to b";fi
if [ $a -ne $b ];then echo "a is not equal to b";fi
if [ $a -lt $b ];then echo "a is leaathan b";fi
if [ $a -gt $b ];then echo "a is greaterthan b";fi 
if [ $a -ge $b ];then echo "a is greaterthan or equal to b";fi
if [ $a -le $b ];then echo "a is lessthan or equal to b";fi 
