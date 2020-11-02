#!/bin/bash

isFullTime=1
isPartTime=0
empWagePerHr=20
totalWorkingDays=20
isPresent=1
isAbsent=0
empWorkHrs=0

empCheck=$(( RANDOM%3 ))
	case $empCheck in
	$isFullTime)
		for (( day=1; day<=$totalWorkingDays; day++ ))
		do
			present_emp=$((RANDOM%2))

			if [ $present_emp -eq $isPresent ]
				then
						empTotalHrs=8
				else
						empTotalHrs=0
			fi
				empWorkHrs=$(($empTotalHrs + $empWorkHrs ))
		done
  	;;
	$isPartTime)
		for (( day=1; day<=$totalWorkingDays; day++ ))
     		do
            		present_emp=$((RANDOM%2))

		         if [ $present_emp -eq $isPresent ]
        		 then
                	  	empTotalHrs=4
            		 else
            			empTotalHrs=0
         		  fi
        	        empWorkHrs=$(($empTotalHrs + $empWorkHrs ))
      		done
	;;
	*)
					empTotalHrs=0
	esac

salary=$(( $empWagePerHr * $empWorkHrs ))
echo "Employee Salary for a Month: Rs."$salary
