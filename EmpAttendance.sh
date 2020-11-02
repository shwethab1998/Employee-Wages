#!/bin/bash

echo "Check Employee is Present or Absent......."

isPresent=1;
isAbsent=0

Attendance=$(( RANDOM % 2 ))

if [ $Attendance -eq $isPresent ]
then
	echo "Employee is Present"
elif [ $Attendance -eq $isAbsent ]
then
	echo "Employee is Absent"
else
	exit
fi
