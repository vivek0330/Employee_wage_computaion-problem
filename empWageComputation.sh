#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#INITIALIZE THE VARIABLES AND CONSTANTS
WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
WORKING_DAYS_PER_MONTH=20
salary=0

#CHECK THE CONDITION - EMPLOYEE IS A PART TIME OR FULL TIME EMPLOYEE 
for((days=1; days<=20; days++))
do

	#CHECK EMPLOYEE WORKS FOR FULL TIME OR PART TIME IN A DAY
	checkEmp=$(( RANDOM%3 ))
	
	case $checkEmp in	
		$IS_FULL_TIME)
			hoursPerDay=8
			;;
		$IS_PART_TIME)
			hoursPerDay=4
			;;
		*)
			hoursPerDay=0
			;;
	esac

	#CALCULATE EMPLOYEE WAGES FOR A MONTH
	dailyEmployeeWage=$(($WAGE_PER_HOUR*$hoursPerDay)) 
	salary=$(( $salary+$dailyEmployeeWage ))
done

#DISPLAY EMPLOYEE'S WAGES FOR A MONTH
echo "Employee's wages for a month :"
echo "$salary rs. per month"
