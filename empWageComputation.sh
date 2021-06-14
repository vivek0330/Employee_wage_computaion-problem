#!/bin/bash -x 

echo "Welcome to Employee Wage Computation."

#INITIALIZE THE VARIABLES AND CONSTANTS
WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
WORKING_DAYS_PER_MONTH=20
days=0
WORKING_HOURS_LIMIT=100
workingHours=0

#CHECK THE CONDITION AND CALCULATE EMPLOYEES'S WORKING HOURS  
while(( $days<$WORKING_DAYS_PER_MONTH && $workingHours<$WORKING_HOURS_LIMIT ))
do
 	#INCREMENT OF DAYS
	(( days++ ))

	#RANDOM CHECK
	checkEmp=$(( RANDOM%3 ))
	
	#CHECK THE CONDITION - EMPLOYEE IS A PART TIME OR FULL TIME 
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
	
	#CALCULATING TOTAL WORKING HOURS OF EMPLOYEE IN A MONTH
	workingHours=$(( $hoursPerDay + $workingHours ))
done

#CALCULATE EMPLOYEE WAGES FOR A MONTH
salary=$(( $WAGE_PER_HOUR * $workingHours )) 
	
#DISPLAY TOTAL WAGES RAECHED AT THE END OF THE MONTH
echo "Total salary of an employee at the end of the month :"
echo "$salary rs. per month"
