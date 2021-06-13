#!/bin/bash -x
#welcome comment for employee Wage computation problem"
echo "Welcome to Employee Wage Computation Problem"

#initialize veriables
WAGE_PER_HOUR=20
isPart_Time=1
isFull_Time=2
checkEmp=$((RANDOM%3))

#CHECK THE CONDITIONS - IF AN EMPLOYEE IS A PART TIME OR FULL TIME EMPLOYEE
case $checkEmp in
	$isFull_Time)
		echo "This is a Full time Employee."
		hoursPerDay=8
		;;
	$isPart_Time)
		echo "This is a Part time Employee."
		hoursPerDay=4
		;;
	*)
		echo "This is neither a Full time nor a Part time Employee."
		hoursPerDay=0
		;;
esac

#CALCULATE AND DISPLAY DAILY EMPLOYEE WAGE
dailyEmployeeWage=$(($WAGE_PER_HOUR*$hoursPerDay))
echo "$dailyEmployeeWage rs. per day"
