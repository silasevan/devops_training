Linux Text Editors: Vim and Nano – A Comparative Exploration
✅ Project Objective
This project fulfills the instructor's assignment requirements centered around:

Defining Linux text editors

Exploring and comparing Vim and Nano

Demonstrating the ability to create, edit, and manage text files using these editors

⚠️ Note: This README supersedes the previous submission, which incorrectly focused on GitHub collaboration. This updated documentation strictly follows the assignment brief.

🖥️ What Are Linux Text Editors?
A Linux text editor is a program used to create and modify plain text files directly from the command line. These editors are essential for system administration, programming, configuration file editing, and shell scripting.

✍️ Overview of Vim and Nano
Feature	Vim	Nano
Type	Modal text editor	Modeless text editor
Interface	Keyboard-driven, minimal GUI	Simple, beginner-friendly terminal interface
Learning Curve	Steep	Shallow
Navigation	Efficient, but requires memorizing keys	Arrow keys and shortcuts
Usage	Ideal for advanced users and coding	Great for quick edits and new users
Customization	Highly customizable via .vimrc	Limited customization
🔧 Getting Started with Vim and Nano
➕ Installation
Most Linux distributions come with Vim and Nano pre-installed. If not:

bash
Copy
Edit
sudo apt install vim nano       # For Debian/Ubuntu
sudo yum install vim nano       # For CentOS/RHEL
📘 Using Nano
✅ Create or Edit a File
bash
Copy
Edit
nano myfile.txt
✅ Basic Commands
CTRL + O – Write out (save)

CTRL + X – Exit

CTRL + K – Cut a line

CTRL + U – Paste a line

CTRL + W – Search

📸 Screenshot: Nano Editing Example

📗 Using Vim
✅ Launch Vim with a File
bash
Copy
Edit
vim myfile.txt
✅ Modes in Vim
Normal Mode – Navigation and commands

Insert Mode – Typing text (i, a, etc.)

Visual Mode – Selecting text

Command Mode – Execute commands (:)

✅ Common Commands
Action	Vim Command
Enter Insert Mode	i
Save File	:w
Quit Vim	:q
Save and Quit	:wq or ZZ
Search for text	/text
Delete a line	dd
Undo	u
Redo	CTRL + r
📸 Screenshot: Vim Editing Example
<img src="./img/insert mode.png">
<img src="./img/inserting text.png">
<img src="./img/vim interface.png">
🧠 Summary of Key Differences
Vim is powerful but requires learning.

Nano is beginner-friendly but less feature-rich.

Vim is preferred for development; Nano is great for quick changes.

📝 Demonstrated Tasks
Created text files with nano and vim

Navigated within each editor

Edited content and saved changes

Explored editor features like cut/paste/search in Nano, and modes/commands in Vim

🔗 Repository Structure
markdown
Copy
Edit
.
├── README.md
├── demo/
│   ├── nano_demo.txt
│   └── vim_demo.txt
└── screenshots/
    ├── nano_editing.png
    └── vim_editing.png
👨‍🏫 Instructor's Requirements Addressed
 Define Linux text editors ✔️

 Compare Vim and Nano ✔️

 Demonstrate file creation and editing using both editors ✔️

 Include screenshots of editing sessions ✔️

🙋 Authors
Tom – Worked on Nano research, demo, and documentation

Jerry – Worked on Vim exploration, demo, and screenshots

