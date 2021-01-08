#!/bin/bash

isparttime=1;
isfulltime=2;
max_Hrs_Mon=10;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;

while [[ $totalEmpHr -lt $max_Hrs_Mon &&
	 $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
	empcheck=$(( RANDOM%3 ))
        case $empcheck in
                $isfulltime)
                        echo "Employee is Full Time"
                        empHrs=8
                                ;;
                $isparttime)
                        echo "Employee is Part Time"
                        empHrs=4
                                ;;
                *)
                        echo "Employee is Absent"
                        empHrs=0
                                ;;
        esac
	totalEmpHr=$(($totalEmpHr*$empHrs))
done

totalSalary=$(($totalEmpHr*$emprateperHr))
echo "Total Salary is: "$totalSalary
