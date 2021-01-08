#!/bin/bash

echo "Welcome to Employee Wage Program"

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
case $empCheck in
 	$isFullTime)
		echo "Employee is Full Time"
		empHrs=8;
			;;
	$isPartTime)
		echo "Employee is Part Time"
 		empHrs=4;
			;;
		*)
		echo "Emplyee is Absent"
		empHrs=0;
			;;
esac
salary=$(($empHrs*$empRatePerHr));
echo "Salary is: "$salary
