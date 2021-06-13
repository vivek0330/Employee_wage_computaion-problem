#!/bin/bash -x
#welcome comment for employee Wage computation problem"
echo "Welcome to Employee Wage Computation Problem"

#initialize veriables
isFull_time=1
isPart_time=2
wage_per_hour=20

#check condition and show employee full time  or  part time and show wage
if [ $((RANDOM%3)) -eq $isFull_time ]
then

	echo "Employee is working a full time"
	hours_perday=8

elif [ $((RANDOM%3)) -eq $isPart_time ]
then

        echo "Employee is working a Part time"
        hours_perday=4
else

	echo "Employee is Absent"
	hours_perday=0
fi

#calculate daily employee wage
echo "Daily employee wage per hours is 20"
Daily_employee_wage=$(($wage_per_hour*$hours_perday))
echo "$Daily_employee_wage rs. per day"


