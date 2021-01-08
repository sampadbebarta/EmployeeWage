#!/bin/bash -x
isparttime=1;
isfulltime=2;
totalsalary=0;
emprateperHr=20;
numworkingdays=20;
for (( day=1; day<=$numworkingdays; day++ ))
do
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
        salary=$(( $empHrs*$emprateperHr ));
        totalsalary=$(( $totalsalary+$salary ));
done
echo "Salary is: "$salary
echo "Total Salary is: "$totalsalary
