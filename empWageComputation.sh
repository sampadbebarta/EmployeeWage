#!/bin/bash

echo "Welcome to Employee Wage Program"


isPresent=1
isPartTime=2
wagePerHour=20
noOfHours=8
noOfPartTimeHours=4
checkAttendance=$((RANDOM%3))

if [ $isPresent -eq $checkAttendance ]
then
   echo "Employee Present"
   payment=$(($wagePerHour*$noOfHours))
   echo "Payment is: "$payment
elif [ $isPartTime -eq $checkAttendance ]
then
	echo "Employee is Part Time"
	payment=$(($wagePerHour*$noOfPartTimeHours))
	echo "Payment is: "$payment
else
   echo "Employee Absent"
   echo "Payment is 0"
fi
