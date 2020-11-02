#!/bin/bash

echo "Part Time Employee Wage Calculation...."


isPresent=1
isAbsent=0
empWagePerHr=20
isFullTime=1
isPartime=2
fullTimeEmpHrs=16
partTimeEmpHrs=8
Attendance=$(( RANDOM % 2 ))

if [ $Attendance -eq $isPresent ]
then
	echo "Employee is Present"

	empCheck=$(( RANDOM % 2 ))

	if [ $empCheck -eq $isFullTime ]
	then
		salary=$(( $empWagePerHr * $fullTimeEmpHrs ))
		echo "Full time Employee salary is : $salary"

	else
		salary=$(( $empWagePerHr * $partTimeEmpHrs ))
		echo "Part time Employee salary is : $salary"

	fi

elif [ $Attendance -eq $isAbsent ]
then
	echo "Employee is Absent"
else
	exit
fi
