#!/bin/bash

echo "Welcome to Employee Wage Program"


isPresent=1
checkAttendance=$((RANDOM%2))

if [ $isPresent -eq $checkAttendance ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
