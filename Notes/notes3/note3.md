# Notes 3

## What is a graphical user interface (GUI)?
A **graphical user interface** (GUI) is a set of programs that allow a user to interact with the computer system via icons, windows, and various other visual elements.

## What is a desktop environment?
A **desktop environment** is an implementation of the desktop metaphor made of a bundle of programs running on top of a computer operating system, which shares a common GUI, sometimes described as a graphical shell.

## What is the command line interface (CLI)?
The **command line interface** is a text-based interface where the user interacts with the computer by inputting commands instead of using mouse or graphical icons.

## How do I access the command line interface (CLI)?
There are two ways to access the CLI:
* **Terminal Emulator:** A **terminal emulator** is a software program that allows us to access the Linux Command Line Interface (CLI) when using the Graphical User Interface (GUI). 
<br>
* **Linux Console:** The **linux console** is a text based interface that does not require the desktop or graphics at all.

## What is a virtual console?
A **virtual console** is a terminal session that runs in Linux system memory.

## What is a terminal emulator?
A **terminal emulator** is a software program that allows us to access the Linux Command Line Interface (CLI) when using the Graphical User Interface (GUI).

**Some terminal emulators are:**
* GNOME
* Konsole
* Terminology
* RXVT-Unicode
* TILIX
* Kitty

## What is bash?
The **bash shell** is a program that provides interactive access to the Linux system which runs as a regular program and is started whenever a user logs in.

## What is the shell prompt?
A **shell prompt** is the text that appears in a command-line interface(CLI) indicating that the system is ready to accept a command from user. 
It includes the **username@machinename**, followed by the current working directory and a dollar sign.
<hr>

## Basic Commands: 
### clear
* **Definition**:
  clears the terminal screen
* **Usage**:
  `clear`
* **Examples**:
  * To clear the screen:
    * `clear`
<hr>

### echo
* **Definition**: 
  Displays or prints text on the screen
* **Usage**: 
  `echo` + `options` + `string to display`
* **Examples**:
  * To display **a line** of text:
    * `echo "Hello!"`
  * To display **two lines** of text:
    * `echo -e "Hello\nWorld"`
  * To display a line of text **without the new line**:
    * `echo -n "Hello There!"`
<hr> 

### date
* **Definition**: 
  Prints current date and time
* **Usage**: 
  `date`+ `options`
* **Examples**:
  * To display current date
    * `date` 
  * To display current time in rfc 5322 format
    * `date -R`  
<hr>

### free
* **Definition**:
  Displays amount of free and used memory in the system
* **Usage**:
  `free` + `options`
* **Examples**:
  * To display memory utilization
    * `free`
  * To display memory utilization in **human readable** format
    * `free -h`
<hr>

### uname
* **Definition**:
  Prints system information
* **Usage**:
  `uname` + `options`
* **Examples**:
  * To print **all** information
    * `uname -a`
  * To print **kernel** information
    * `uname -s`
  * To print **hostname**
    * `uname -n`
<hr>

### history
* **Definition**:
  Shows command line history
* **Usage**:
  `history` + `options`
* **Examples**:
  * To display session history
    * `history`
  * To clear session history
    * `history -c`
<hr>

### man
* **Definition**:
  Shows or displays the manual page for a given command
* **Usage**:
  `man` + `options` + `command` 
* **Examples**:
  * To open the man page of echo command
    * `man echo`
  * To open a specific man page
    * `man 5 passwd`
  * To show all available man page
    * `man -f passwd`
<hr>

### tldr
* **Definition**:
  Shows simplified and community-contributed examples for commands
* **Usage**:
  `tldr` + `options` + `command`
  
* **Examples**:
  * To update the tldr local cache
    * `tldr -u`
  * To view the simplified documentation of echo command
    * `tldr echo`
<hr>

### cheat
* **Definition**:
  Shows cheat sheets for commands
* **Usage**:
  `cheat` + `options` + `command`
* **Examples**:
  * To view cheat sheets for the git command
    * `cheat git`
  * To view the cheat sheets of find command in **colorize** mode
    * `cheat --colorize find`
<hr>

### hostname
* **Definition**:
  Shows or set the system's hostname or computer name 
* **Usage**:
  `hostname` + `options`
* **Examples**:
  * To view current host name
    * `hostname`
  * To display **all addresses** for the host
    * `hostname -I`
<hr>

### df
* **Definition**:
  Displays the amount of disk space available/used on entire file systems/partitions
* **Usage**:
  `df` + `options`
* **Examples**:
  * To show disk usage
    * `df`
  * To display the amount of disk space in **human readable** format
      * `df -h`
<hr>

### du
* **Definition**:
  Displays the amount of space used by specific files or directories
* **Usage**:
  `du` + `options` + `file/directory`
* **Examples**:
  * To display or **summarize** the size of current directory in **human-readable** form
    * `du -sh`
  * To display the size of a specific file in **human-readable** form
    * `du -h wr3.png`
<hr>

### figlet
* **Definition**:
  Displays text in large ASCII letters
* **Usage**:
  `figlet` + `text`
* **Examples**:
  * To display or create ASCII letters
    * `figlet Hello!`
