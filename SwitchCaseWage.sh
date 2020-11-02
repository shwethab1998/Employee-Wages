#!/bin/bash

empWagePerHr=20
isFullTime=1
isPartime=2
empWorkHrs=0
arr_salary=()
totalWorkingDays=1
isPresent=1
isAbsent=0

empWage=$(( RANDOM % 3 ))

	case $empWage in
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
				salary=$(( $empWagePerHr * $empWorkHrs ))
				arr_salary[$totalWorkingDays]=$salary
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
      		salary=$(( $empWagePerHr * $empWorkHrs ))
		arr_salary[$totalWorkingDays]=$salary
		((totalWorkingDays++))

	done

	;;
	*)
			empTotalHrs=0
	esac
arr_salary[$totalWorkingDays]=$(( $empTotalHrs * $empWagePerHr ))
echo "Daily Wage"
for i in ${!arr_salary[@]}
do
echo "${arr_salary[i]}"
((i++))
done
