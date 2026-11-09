a=6
b=5

if [[ $a -gt $b && $a -ne $b ]];then echo "both are right";fi
if [[ $a -ge $b || $b -lt $a ]];then echo "one condition is right";fi

