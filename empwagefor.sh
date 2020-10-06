#!/bin/bash -x

parttime=1;
fulltime=2;
totalsalary=0;
rateperhr=20;
numworkingdays=20;

for (( day=1; day<=$numworkingdays; day++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
			$fulltime)
				emphrs=8
				;;
			$parttime)
				emphrs=4
				;;
			*)
				emphrs=0
				;;
		esac
		salary=$(($emphrs*$rateperhr));
		totalsalary=$(($totalsalary+$salary));
done
