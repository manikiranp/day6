#!/bin/bash -x

part_time=1;
full_time=2;
max_hrs_in_month=100;
rate_per_hr=20;
working_days_in_month=20;

totalemphr=0;
totalworkingdays=0;

while [[ $totalemphr -lt $max_hrs_in_month && $totalworkingdays -lt $working_days_in_month ]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3))
	case $empcheck in
		$part_time)
			emphrs=4
			;;
		$full_time)
			emphrs=8
			;;
		*)
			emphrs=0
			;;
	esac

	 totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$rate_per_hr))

