📘 Multiplication Table Generator - Bash Script
🎯 Purpose
This Bash script generates a multiplication table based on user input. It showcases fundamental Bash scripting concepts like:

if-else conditional logic

for loops

Input validation

Script interactivity and automation

The user can choose to generate a partial or full multiplication table by providing input through the terminal.

🛠️ Features
✅ Interactive menu: choose between partial or full table

✅ Input validation to ensure positive integer entries

✅ Efficient looping and branching logic

✅ Clean prompts using read -p

✅ Error handling and graceful exit on invalid inputs

✅ Follows best practices for Bash scripting


🚀 How to Run
Make the script executable:
chmod +x multiplication_table.sh
Run the script:
./multiplication_table.sh
🧪 Example Usage
📌 Welcome to the Multiplication Table Generator!
Would you like to see:
1. Partial table
2. Full table (1 to 10)
Enter your choice (1 or 2): 1
Enter the number of rows to display: 5
Enter the base number for the table: 3
🔢 Generating partial multiplication table for 3 (up to 5 rows)...
3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
3 x 4 = 12
3 x 5 = 15
✅ Done! Thank you for using the Multiplication Table Generator.
🧠 Concepts Demonstrated
Concept	Explanation
if-else	Controls user path (partial vs full)
for loop	Iterates through numbers in the table
read	Accepts user input
exit	Exits script on error
Regular Expressions	Validates positive integer input
Exit status $?	Used in input validation to exit on failure
❗ Error Handling Examples
Handles invalid menu options

Rejects non-integer or negative input (e.g., letters, decimals, 0, -1)

Gracefully exits on error with user-friendly messages

📁 File Structure
multiplication_table.sh
README.md
📈 Future Improvements
Add logging to file (e.g., table.log)

Allow custom range (e.g., 5 to 20)

Add GUI version using zenity (Linux)

👨‍💻 Author
Ivang Silas Onda

