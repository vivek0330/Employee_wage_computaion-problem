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

#CHECK WORKING HOUR PER DAY OF AN EMPLOYEE
function workingHoursPerDay()
{
	case $1 in
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
	echo $hoursPerDay
}

#CALCULATING TOTAL WORKING HOURS
while [[ $workingHours<$WORKING_HOURS_LIMIT && $days<$WORKING_DAYS_PER_MONTH ]]
do
	(( days++ ))
	hoursPerDay=$( workingHoursPerDay $(( RANDOM%3 )) )
	workingHours=$(($workingHours+$hoursPerDay))
done

#DISPLAY TOTAL WORKING HOURS
echo "Total working hours: "
echo "$workingHours hours. "

#CALCULATE THE TOTAL SALARY 
salary=$(($workingHours*$WAGE_PER_HOUR))
