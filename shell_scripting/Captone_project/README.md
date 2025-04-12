🧮 Multiplication Table Generator – Bash Script
📌 Overview
This Bash script allows users to generate a multiplication table for any number they choose. It gives users the flexibility to generate either a partial or full multiplication table.

It demonstrates interactive scripting, conditional logic (if-else), looping with for and seq, and basic user input handling—core concepts in shell scripting.

🛠️ Features
Accepts user input for a number.

Prompts for partial or full multiplication table.

Uses if-else conditionals to branch based on user choice.

Uses for loop to iterate and print results.

Basic error handling for invalid choices.

Demonstrates real-world command-line interactivity.

📂 Script Contents
#!/bin/bash

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
🔄 How It Works
The script welcomes the user and prompts them to choose between:

1 for Partial Table

2 for Full Table

If Partial, user is asked to enter:

Number of rows (e.g., 5)

Base number (e.g., 3)

Output: multiplication table up to 5 rows (3 x 1 to 3 x 5)

If Full, user is asked for the base number:

Output: multiplication table up to 10 rows

Any other input exits the script with a message.

A final full multiplication table prompt runs at the end (this might be redundant).

✅ Example Usage
bash
Copy
Edit
$ ./multiplication_table.sh
Welcome to the multiplication table generator!
Would you like to see a partial or full table?
1. Partial
2. Full
1
Enter the number of rows you want to see:
4
Enter a number:
6
6 x 1 = 6
6 x 2 = 12
6 x 3 = 18
6 x 4 = 24

Consider using read -p "Prompt message" variable for more compact prompts.

🧪 Skills Demonstrated
Concept	Demonstrated
if-else conditions	✅
for loops with seq and range	✅
read command for user input	✅
$(( )) for arithmetic	✅
Error handling (exit 1)	✅
🚀 Run the Script
Make the script executable:
chmod +x multiplication_table.sh
Then run:

