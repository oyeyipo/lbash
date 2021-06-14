#! /bin/bash

# Conditional Statements
count=9

if (( $count > 9 ))
then
    echo "the condition is true Ola!"
elif (( $count <= 9 ))
then
    echo "The condition is true"
else
    echo "the condition is FALSE Ola!"
fi

age=15

: '
[[ "$age" -gt 18 || "$age" -lt 40 ]]
[ "$age" -gt 18 ] || [ "$age" -lt 40 ]
'

if [ "$age" -gt 18 -o "$age" -lt 40 ]
then
    echo "Age is correct" # print("Age is correct")
else
    echo "Age is not correct"
fi


# Loop Statements
number=1
while [ $number -le 10 ]
do
    echo "number is $number"
    number=$(( number+1 ))
done


number=1
until [ $number -ge 10 ]
do
    echo "number is $number in until"
    number=$(( number+1 ))
done

# first way
for i in {0..20..2}
do
    echo "For loop $i"
done

# farmiliar way
for (( i=0; i<5; i++ ))
do
    echo $i
done

# Break and continue statement
for (( i=0; i<10; i++ ))
do
    if [ $i -eq 5 ] || [ $i -eq 3 ]
    then
        continue
    fi
    echo "Break not on $i"
done

: '
where to pick up the lecture from in video lesson:
    - Bash scripting full course

    stop time: 45:35
    next topic: Script input
'