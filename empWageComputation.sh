#!/bin/bash -x
#welcome comment for employee Wage computation problem"
echo "Welcome to Employee Wage Computation Problem"

#initialize veriables
isPresent=1
wage_per_hour=20

#check condition and show employee present or not
if [ $((RANDOM%2)) -eq $isPresent ]
then 
	echo "Employee is present"
	hours_perday=8
else
	echo "Employee is Absent"
	hours_perday=0
fi

#calculate daily employee wage
echo "Daily employee wage per hours is 20"
Daily_employee_wage=$(($wage_per_hour*$hours_perday))
echo "$Daily_employee_wage rs. per day"
