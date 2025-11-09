# Notes 6

## MKDIR
* **Usage:**
  * **mkdir** is used for creating a single directory or multiple directories (folders) **by separating each directory name with a space**.

* **Formula:** 
  * `mkdir + option + the name of the directory`

  **Where directory name can be:**
  * Just the name of the directory if we want to create them in the **current working directory**
  * **Absolute** or **relative path** if we want to create the directory in a different location


* **Examples:**
  * Create a directory in the present working directory called wallpapers
    * `mkdir wallpapers`
  * Create a directory in a different directory using **relative path**
    * `mkdir wallpapers/ocean`
  * Create a directory in a different directory using **absolute path**
    * `mkdir ~/wallpapers/forest`
  * Create a directory with a space in the name
    * `mkdir wallpapers/new\cars`
    * `mkdir wallpapers/'cities usa'`
  * Create a directory with a single quote in the name
    * `mkdir wallpapers/"major's mask"`
  * Create multiple directories
    * `mkdir wallpapers/cars wallpapers/cities wallpapers/forest`
  * Create a directory with a parent directory at the same time.
    * `mkdir -p wallpapers_others/movies`
  * Create a directory and display a message confirming the directory creation (**verbose output**)
    * `mkdir -pv wallpapers_others/movies`
<hr>

## TOUCH
* **Usage:** 
  * **touch** is used for creating files an empty file or to update the timestamp of an existing file..

* **Formula:**
  * `touch + name of the file`

  **Where directory name can be:**
  * Just the name of the directory if we want to create them in the **current working directory**
  * **Absolute** or **relative path** if we want to create the directory in a different location

* **Examples:** 
  * Create a file called list
    * `touch list`
  * Create multiple files
    * `touch list_of_cars.txt script.py names.csv`
  * Create a file using **absolute path**
    * `touch ~/Downloads/games.txt`
  * Create a file using **relative path** (assuming you pwd your home directory)
    * `touch Downloads/games2.txt`
  * Create a file with a space in its name
    * `touch "list of foods.txt"`
<hr>

## RM
* **Usage:** 
  * **rm** is used to remove files and directories.
  * It is a powerful command that **can permanently delete files**, so it should be used with caution.
  * To remove directories use the `-r` option.

* **Formula:**
  * `rm + option + name of the file or directory to remove`

  **Where file/directory name can be:**
  * Just the name of the files/directories if they are located in the current working directory
  * Absolute or relative path if they are located in a different location
  
  **Common Options:**

  * `-f`: Force removal without prompting for confirmation.
  * `-r` or `-R`: Recursively remove directories and their contents.
  * `-i`: Prompt before each removal.
  * `-v`: Verbose mode, showing the files as they are removed.

* **Examples:** 
  * Remove a file called list
    * `rm list`
  * Remove a file and prompt confirmation before removal
    * `rm -i list`
  * Remove all the files inside a directory and ask before removing more than 3 files
    * `rm -I Downloads/games/*`
  * Remove an empty directory
    * `rmdir Downloads/games`
  * Remove an non-empty directory
    * `rm -r Downloads/games`
  * Remove files and directories but prompt for confirmation before removing and display removal message when done
    * `rm -vir games/program.py ~/ProjectDelta`
  * Remove a **non empty directory** forcing the removal
    * `rm -rf games/`
<hr>

## CP
* **Usage:** 
  * **cp** is used to copy files/directories from a source to a destination 
  * Must use the `-r` option to copy directories

* **Formula:**
  * `cp + option + file/ directories to copy + destination`
  * `cp -r + directory to copy + destination`

  **Common Options:**
  * `-r` or `-R`: Recursively copy directories and their contents.
  * `-i`: Prompt before overwriting an existing file.
  * `-u`: Copy only when the source file is newer than the destination file or when the destination file is missing.
  * `-v`: Verbose mode, showing the files as they are copied.
  * `-a`: Copy files and directories, preserving attributes like timestamps and permissions.

* **Examples:** 
  * To copy a file
    * `cp Downloads/wallpapers.zip Pictures/`
  * To copy a directory with **absolute path**
    * `cp -r ~/Downloads/wallpapers ~/Pictures/`
  * To copy the content of directory to another directory
    * `cp Downloads/wallpapers/* ~/Pictures/`
  * To copy multiple files in a single command
    * `sudo cp -r script.sh program.py home.html assets/ /var/www/html/`
  * To copy a directory with verbose output
    * `cp -rv ~/projectOrion/ ~/Documents/`
<hr>

## MV
* **Usage:** 
  * **mv** is used to move and rename files and directories.
  * **mv** cannot rename more than 1 file at the time
  * **mv** can move and rename a file at the same time
  * **mv** will set the last argument as the destination or file new name

* **Formula:**
  * **Move:** `mv + option + file,directories to move + destination`
  * **Rename :** `mv + option + file/directory to rename + new name`

  **Common options of the mv command:**
  * `-i`: Prompt before overwriting an existing file.
  * `-u`: Move only when the source file is newer than the destination file or when the destination file is missing.
  * `-v`: Verbose mode, showing the files as they are moved or renamed.

* **Examples:** 
  * To **move** a file from a directory to another using **relative path**
    * `mv Downloads/homework.pdf Documents/`
  * To **move** a directory from one directory to another using **absolute path**
    * `sudo mv ~/Downloads/theme /usr/share/themes`
  * To **move** a file from one directory to another combining **absolute path** and **relative path**
    * `mv Downloads/english_homework.docx /media/student/flashdrive/`
  * To **move** multiple directories/files to a different directory
    * `mv games/ wallpapers/ rockmusic/ /media/student/flashdrdive/`

  * To **rename** a file
    * ` mv homework.docx cis106homework.docx`
  * To **rename** a file using **absolute path**
    * `mv ~/Downloads/homework.docx ~/Downloads/cis106homework.docx`

  * To **move and rename** a file in the same command
    * `mv Downloads/cis106homework.docx Documents/new_cis106homework.docx`
<hr>
