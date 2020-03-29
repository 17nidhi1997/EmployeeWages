#! /bin/bash

#Welcome Message
echo "Welcome to Employee Wage Computation Programme on Master Branch"

#UC 1
---------------------
attendance=$(( RANDOM % 2 ))
if(( $attendance == 1 ))
then
echo "Employee is present "
else
echo "Employee is absent"
fi

#UC 1
---------------------
PER_HOUR=20
dailyEmployeeWage()
{
day_hour=8
daily_wage=$(( $PER_HOUR * $day_hour |bc -l ))
echo "Hours of Full day Employee is : $day_hour"
echo "Dialy Wage of the Employee  is: $daily_wage"
}
dailyEmployeeWage

#UC 3
---------------------
partDailyEmployeeWage()
{
day_hour=4
daily_wage=$(( $PER_HOUR * $day_hour |bc -l ))
echo "Hours of Full day Employee is : $day_hour"
echo "Dialy Wage for Part Time Employee  is: $daily_wage"
}
partDailyEmployeeWage

#UC 4
---------------------
echo "From here solving using caseStatment"

#UC 5
---------------------
FULLTIME=160
PARTTIME=80
month()
{
a=$1
for (( days=1;days<=20;days++ ))
do
dayss=$(($a * $days |bc -l))
echo "$dayss"
done
}
day=1
case "$day" in
$day) echo "Full time wage of total working days of a month is :"
      month $FULLTIME
      echo "Part time wage of total working days of a month is :"
      month $PARTTIME
       ;;

esac

#UC 6
---------------------
case "1" in
1) echo "Full time wage of total working days of a month is :"
           months=$(($PER_HOUR * $FULLTIME |bc -l))
           echo " $months"
           echo "Part time wage of total working days of a month is :"
           months=$(($PER_HOUR * $PARTTIME |bc -l))
           echo " $months"
          ;;
esac

#UC 7
---------------------
workHours()
{
workHrs=$(( $FULLTIME / $PER_HOUR |bc -l))
echo "$workHrs: hrs for Full Time Working Hours"
workHrs=$(( $PARTTIME / $PER_HOUR |bc -l))
echo "$workHrs: hrs for Part Time Working Hours"
}
workHours
