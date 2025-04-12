#!/bin/bash

# creating a bash script that generate multiplication table base on user input number
# the script will ask the user to enter a number and then generate the multiplication table for that number
# ask if they want partial or full table
# if partial, ask them to enter the number of rows they want to see
# if full, generate the full table
# if they enter anything else, exit the script
# if they enter a number, generate the full table

echo "Welcome to the multiplication table generator!"
echo "Would you like to see a partial or full table?"
echo "1. Partial"
echo "2. Full"
read choice

if [ $choice == 1 ]
then
    echo "Enter the number of rows you want to see: "
    read rows
    echo "Enter a number: "
    read number
    for i in $(seq 1 $rows)
    do
        echo "$number x $i = $(($number * $i))"
    done
elif [ $choice == 2 ]
then
    echo "Enter a number: "
    read number
    for i in {1..10}
    do
        echo "$number x $i = $(($number * $i))"
    done
else
    echo "Invalid choice. Exiting script."
    exit 1
fi
echo "Enter a number: "
read number

for i in {1..10}
do
    echo "$number x $i = $(($number * $i))"
done