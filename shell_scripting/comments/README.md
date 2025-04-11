📝 Commented Bash Script Project
📌 Objective
This project fulfills the instructor's specific requirement to create a single, well-commented Bash script named commented_script.sh. The focus is on readability through the use of inline and multi-line comments, while demonstrating a meaningful and functional Bash script.

📂 File Included
commented_script.sh – The main script file with comprehensive commenting.

🛠️ Script Functionality
The script performs the following tasks:

Greets the user based on the current time.

Displays the current system date and time.

Lists all files in the user's home directory.

Shows the current disk usage of the system.

Summarizes the number of running processes.

Each section includes comments explaining what the code does and why it's included.

📄 Example: Inside commented_script.sh

# --------------------------------------------
# commented_script.sh
# Author: Ivang Silas Onda
# Description: A sample Bash script that uses
# inline and block comments for readability.
# --------------------------------------------

# Greet the user depending on the time of day
HOUR=$(date +"%H")

if [ $HOUR -lt 12 ]; then
  echo "Good morning!"
elif [ $HOUR -lt 18 ]; then
  echo "Good afternoon!"
else
  echo "Good evening!"
fi

# Display the current date and time
echo "Current date and time: $(date)"

# List all files in the user's home directory
echo "Listing files in your home directory:"
ls -la ~ # using -la to show hidden files and detailed view

# Show current disk usage
echo "Disk usage information:"
df -h # -h for human-readable format

# Count the number of running processes
echo "Number of running processes:"
ps -e | wc -l
💬 Commenting Strategy
Multi-line comments are used at the top of the script to describe its overall purpose and author.

Inline comments are placed throughout the script to explain individual commands and logic blocks.

This ensures the script is easy to understand, maintain, and extend by others.

🚀 How to Run the Script
Step 1: Give Execution Permission
bash
Copy
Edit
chmod +x commented_script.sh
Step 2: Run the Script
bash
Copy
Edit
./commented_script.sh
📷 Output Example

Good afternoon!
Current date and time: Fri Apr 11 14:26:15 UTC 2025
Listing files in your home directory:
total 48
drwxr-xr-x 6 user user 4096 Apr 10 19:20 .
drwxr-xr-x 3 root root 4096 Apr  8 10:00 ..
-rw------- 1 user user   53 Apr 10 19:18 .bash_history
...
Disk usage information:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /
...
Number of running processes:
142
✅ Project Requirements Checklist
Requirement	Status
Single Bash script named commented_script.sh	✅
Multi-line comment block at the top of the script	✅
Inline comments within the script	✅
Functional and structured Bash logic	✅
Clear instructions on running the script	✅
Demonstration of output	✅
🧠 Why This Matters
Writing readable and maintainable scripts is a core skill in Linux system administration and DevOps. Proper commenting ensures that others (and your future self) can easily understand and reuse your work.



