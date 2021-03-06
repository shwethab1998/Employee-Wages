#!/bin/bash

isFullTime=1
isPartTime=0
empWagePerHr=20
totalWorkingDays=1
isPresent=1
isAbsent=0
empWorkHrs=0

function totalSalary() {
	salary=$(( $empWagePerHr * $empWorkHrs ))
	arr_salary[$totalWorkingDays]=$salary
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
				totalSalary
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
		totalSalary
		((totalWorkingDays++))

	done

	;;
	*)
			empTotalHrs=0
	esac

totalSalary
echo "Day      Daily Wage      Total Wage"
total_wage=0
for i in ${!arr_salary[@]}
do
	total_wage=`expr ${arr_salary[i]} + $total_wage`
	echo " $i          ${arr_salary[i]}              $total_wage"
	((i++))
done
