#!/bin/bash -x
#welcome comment for employee Wage computation problem"
echo "Welcome to Employee Wage Computation Problem"

#initialize veriables
isPresent=1

#check condition and show employee present or not
if [ $((RANDOM%2)) -eq $isPresent ]
then 
	echo "Employee is present"
else
	echo "Employee is Absent"
fi
