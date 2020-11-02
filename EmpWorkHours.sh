#!/bin/bash

isFullTime=1
isPartTime=0
empWagePerHr=20
totalWorkingDays=1
isPresent=1
isAbsent=0
empWorkHrs=0

function TotalSalary() {
	salary=$(( $empWagePerHr * $empWorkHrs ))
	echo "Employee Salary for the Month: Rs.$salary"
}

function TotalWorkingHrs() {
	totalWorkHrs=$((empWorkHrs))
	echo "Total No. of Working Hours for the Month: $totalWorkHrs Hours"
}

empCheck=$(( RANDOM%3 ))
	case $empCheck in
	$isFullTime)
		while [[ $totalWorkingDays -le 20 ]]
		do
			present_emp=$((RANDOM%2))

			if [ $present_emp -eq $isPresent ]
				then
						empTotalHrs=8
				else
						empTotalHrs=0
			fi 
				empWorkHrs=$(($empTotalHrs + $empWorkHrs ))
				((totalWorkingDays++))
		done
  	;;

	$isPartTime)
     	while [ $totalWorkingDays -le 20 ]
		do
           	present_emp=$((RANDOM%2))

        if [ $present_emp -eq $isPresent ]
           	then
                empTotalHrs=4
           	else
                empTotalHrs=0
        fi
           	empWorkHrs=$(($empTotalHrs + $empWorkHrs ))
      		((totalWorkingDays++))
		done
	;;
	*)
			empTotalHrs=0
	esac

TotalWorkingHrs
TotalSalary
