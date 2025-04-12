#!/bin/bash

# =====================================================
# Script Name: multiplication_table.sh
# Purpose: Generate a multiplication table (partial or full)
# Author: Ivang Silas Onda
# Description:
#   - User selects between partial or full table
#   - Script validates input (positive integers only)
#   - Demonstrates Bash scripting: if-else, for loop, input handling
# =====================================================

# Function to validate if input is a positive integer
validate_positive_integer() {
    if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
        echo "❌ Error: '$1' is not a valid positive number."
        exit 1
    fi
}

# Welcome message
echo "📌 Welcome to the Multiplication Table Generator!"

# Prompt the user to choose table type
echo "Would you like to see:"
echo "1. Partial table"
echo "2. Full table (1 to 10)"
read -p "Enter your choice (1 or 2): " choice

# Handle partial or full table
if [ "$choice" == "1" ]; then
    read -p "Enter the number of rows to display: " rows
    validate_positive_integer "$rows"

    read -p "Enter the base number for the table: " number
    validate_positive_integer "$number"

    echo "🔢 Generating partial multiplication table for $number (up to $rows rows)..."
    for i in $(seq 1 "$rows"); do
        echo "$number x $i = $((number * i))"
    done

elif [ "$choice" == "2" ]; then
    read -p "Enter the base number for the table: " number
    validate_positive_integer "$number"

    echo "🔢 Generating full multiplication table for $number (1 to 10)..."
    for i in {1..10}; do
        echo "$number x $i = $((number * i))"
    done

else
    echo "⚠️ Invalid choice. Please run the script again and choose 1 or 2."
    exit 1
fi

# End of script
echo "✅ Done! Thank you for using the Multiplication Table Generator."
