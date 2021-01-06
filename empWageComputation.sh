#!/bin/bash

echo "Welcome to Employee Wage Program"


isPresent=1
wagePerHour=20
noOfHours=8
checkAttendance=$((RANDOM%2))

if [ $isPresent -eq $checkAttendance ]
then
   echo "Employee Present"
   payment=$(($wagePerHour*$noOfHours))
   echo "Payment is: "$payment
else
   echo "Employee Absent"
   echo "Payment is 0"
fi

