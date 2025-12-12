# Notes 9

## GREP
* **Definition:** 
  * Grep is used to **search text in given file**. Grep works or search in a line by line basis.
* **Usage:**
  * `grep + option + search criteria + file(s)`
* **Common Options:**
  * `-i`: Enables case insensitivity (matches regardless of case).
  * `-n`: Displays line number for every line matched.
  * `-E`: Treats the pattern as an extended regular expression.
  * `-G`: Treats the pattern as a basic regular expression.
  * `-v`: Inverts the search (finds lines that do not match the pattern).
  * `-o`: Only displays the matched string.
  * `-c`: Displays the total number of times a pattern is matched.
  * `-w`: Matches only the whole word (exact pattern).
  * `-r` or `-R`: Searches recursively through directories.
* **Examples:** 
  * **Search** any line that contains the word **"dracula" in the given file**.
    * `grep 'dracula' ~/Documents/sample_files/Txt/dracula.txt`
  * Search any line that contains the word "dracula" **regardless of the case**.
    * `grep -i 'dracula' ~/Documents/sample_files/Txt/dracula.txt`
  * Display how many **lines** contain the **matched string**.
    * `grep -c 'Dracula' ~/Documents/sample_files/Txt/dracula.txt`
  * Search any line that contains the word "dracula" **regardless of case and with number line**
    * `grep -in 'dracula' ~/Documents/sample_files/Txt/dracula.txt`
  * Search for all the lines that **do not contain the word 'war'**
    * `grep -v 'war' ~/Documents/sample_files/Txt/war-and-peace.txt`
  * Search and display **only the matched string** (pattern)
    * `grep -o 'pride' ~/Documents/sample_files/Txt/war-and-peace.txt`
  * Display a **list of users** with the **/bin/bash login shell**
    * `grep -i "/bin/bash" /etc/passwd`
  * Display your **user's information** as stored in the **/etc/passwd**
    * `grep -i $USER /etc/passwd`
  * Search for a **given strings** inside files in a given directory
    * `grep -iR 'conf' /etc/`
  * Search and display the **total number of times a given word appears** in a file
    * `grep -wc '/bin/bash' /etc/passwd`
  * The **^ (caret) symbol** matches the empty string at the beginning of a line. Search for all the **lines that start with a given word**
    * `grep -ni '^dracula' ~/Documents/sample_files/Txt/dracula.txt`
  * Search for all the **lines** that ends with the **string "nologin"**
    * `grep -n 'nologin$' /etc/passwd`
  * Search for all the **lines** that **start with a capital letter**
    * `grep -n '^[A-Z]' ~/Documents/sample_files/Txt/dracula.txt`
  * Search for **more than one word per line**
    * `grep -Ewn 'horror|love|scare' ~/Documents/sample_files/Txt/dracula.txt`
  * Match only lines containing **IPv4 addresses**
    * `grep -E '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}' ~/Documents/sample_files/Txt/practice.txt`
  * Search all lines that contain a **character repeated 3 times**
    * `grep -E "A{3}" file.txt`
  * Search all lines that contain a **phone number** of the **format 973-111-2222**
    * `grep "[[:digit:]]\{3\}[-][[:digit:]]\{3\}[-][[:digit:]]\{4\}" ~/Documents/sample_files/Csv/contacts.csv`
  * Display only the options of any **command from its man page**
    * `man ls | grep "^[[:space:]]*[[:punct:]]"`
  * Search for all the **lines** that contain a **single word "linux"** in all the **files in the system**
    * `grep -niR '^linux$' /`
  * The **period (.) symbol** is a meta-character that **matches any single character**. It searches for all lines that contain a word starting with the letter "d" followed by any 4 characters
    * `grep -n '^d....' ~/Documents/sample_files/Txt/dracula.txt`
  * **Bracket expressions** allows match a **group of characters** by enclosing them in bracket []. It matches all lines that contain the words **"list", "last", or "lost"**
    * `grep -n 'l[aio]st' ~/Documents/sample_files/Txt/dracula.txt`

![](grep.ex1.png)

![](grep.ex2.png)

![](grep.ex3.png)

## AWK
* **Definition:** 
  * Awk is a scripting language used for **processing and displaying text files**. Awk can work with a text file or from standard output.
  * There are several implementations of Awk: nawk, mawk, gwak, and busybox.
  * Awk performs operations line by line.
* **Usage:**
  * `awk + options + {awk command} + file + file to save (optional)`
* **Awk Variables:**

| Variable     |    Description  |
|--------------|----------------------------------|
| $0           | Whole line                                        |
| \$1,\$2...$NF| First, second... last field                       |
| NR           | Total Number of Records                           |
| NF           | N number of Fields                                |
| OFS          | Output Field Separator (default " ")              |
| FS           | Input Field Separator (default " ")               |
| ORS          | Output Record Separator (default "\n")            |
| RS           | Input Record Separator (default "\n")             |
| FILENAME     | Name of the file                                  |
| ARGC         | Number of arguments                               |
| ARGV         | Array of arguments                                |
| FNR          | File Number of Records                            |
| OFMT         | Format for numbers (default "%.6g")               |
| RSTART       | Location in the string                            |
| RLENGTH      | Length of match                                   |
| SUBSEP       | Multi-dimensional array separator (default "\034")|
| ARGIND       | Argument Index                                    |
| ENVIRON      | Environment variables                             |
| IGNORECASE   | Ignore case                                       |
| CONVFMT      | Conversion format                                 |
| ERRNO        | System errors                                     |
| FIELDWIDTHS  | Fixed width fields                                |

* **Examples:** 
  * **Print** the **first column** of every line of a file.
    * `awk '{print $1}' ~/Documents/sample_files/Csv/cars.csv`
  * Print **first field** of /etc/passwd file
    * `awk -F: '{print $1}' /etc/passwd`
  * Print the **last field** of the /etc/passwd file 
    * `awk -F: '{print $NF}' /etc/passwd`
  * Print the **first and last field** of the /etc/passwd
    * `awk -F: '{print $1," = ",$NF}' /etc/passwd`
  * Print the **first and 3 field** with line numbers
    * `awk -F: '{print NR,$1,$3}' /etc/passwd`
  * Print the **first and 4th field** with a **different field separator**
    * `awk -F: '{OFS="="}{print $1,$4}' /etc/passwd`
  * **Start printing** a file **from a given line** (exclude the first 2 lines)
    * `awk 'NR > 3 { print }' /etc/passwd`
  * **Convert** the first field **to upper/lower case**
    * `awk -F: '{print toupper($1)}' /etc/passwd`
  * Prints the **length of a line**(record)
    * `awk '{print length($0)}' /etc/passwd`
  * Print **specific fields based on a command output**. For example, the size and file name
    * `ls -lhF Documents/ | awk 'BEGIN { printf "%s\t%s\n", "Size","Name"} {print $5,"\t",$9}'`
      * BEGIN block is executed once at the start
  * Print **specific fields with a head** of the /etc/passwd file
    * `awk -F: 'BEGIN { printf "%s\t\t%s\n","User", "Shell" } {print $1,"\t",$7}' /etc/passwd`

![](awk.ex1.png)

![](awk.ex2.png)

## SED
* **Definition:** 
  * Sed is a **stream editor** that perform operations on **files and standard output**. For instance it can **search, find and replace,insert and deletion**.
  * By using Sed we can edit files without opening them.
* **Usage:**
  * `sed options + sed script + file`
* **Examples:**
  * **Replacing a string** in given file **globally**(replace false for true)
    * `sed 's/false/true/g' ~/Documents/sample_files/Json/joke.json`
  * Replacing only the **fourth occurrence** per line in a file
    * `sed 's/false/true/4' ~/Documents/sample_files/Json/joke.json`
  * Replacing from the **given number occurrence to the rest occurrences** in a file. Start at the second time the word appears and continue to till the end of the file
    * `sed 's/false/true/3g' ~/Documents/sample_files/Json/joke.json`
  * Replacing string on a **specific line number**
    * `sed '8 s/false/true/' ~/Documents/sample_files/Json/joke.json`
  * Replacing string on a **range of lines**
    * `sed '9,10 s/false/true/' ~/Documents/sample_files/Json/joke.json`
  * **To delete** a **particular line** (line 3)
    * `sed '3d' ~/Documents/sample_files/Code/helloWorld.py`
  * To delete the **last line**
    * `sed '$d' ~/Documents/sample_files/Code/helloWorld.py`
  * To delete line from **range x to y**
    * `sed '2,4d' ~/Documents/sample_files/Code/helloWorld.py`
  * To delete from a **given number to last line**
    * `sed '3,$d' ~/Documents/sample_files/Code/helloWorld.py`
  * To delete **pattern matching line** in a file
    * `sed '/fav/d' ~/Documents/sample_files/Code/helloWorld.py`
  * **To insert** one **blank line** after each line
    * `sed G ~/Documents/sample_files/Code/helloWorld.c`
  * To insert **two blank lines**
    * `sed 'G;G' ~/Documents/sample_files/Code/helloWorld.c`
  * **To delete** blank lines **and insert** one blank line after each line
    * `sed '/^$/d;G' ~/Documents/sample_files/Code/helloWorld.c`
  * **Insert 5 spaces** to the left of every lines
    * `sed 's/^/     /' ~/Documents/sample_files/Code/helloWorld.c`

![](sed.ex1.png)

![](sed.ex2.png)

## 1. Explain how to use the pipe (|) for redirecting the output of a command to another.
* **Definition:** 
  * The pipe allows us to **redirect** the standard output of a command to the standard input of another. 
* **Usage:**
  * `command_1 | command_2 | command_3 | ----- | command_N`
* **Examples:**
  * Use **grep** to look for a string in a **particular man page**
    * `man ls | grep "human-readable"`
  * **Display** only the options of the of **any command from its man page**
    * `man ls | grep "^[[:space:]]*[[:punct:]]"`
  * Display only the **IP addresses** from the output of the ip command
    * `ip addr | grep -Eo '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}'`
  * Display only the **2nd line in a file**
    * `head -2 ~/Documents/sample_files/Lst/users.lst | tail -1`
  * **Parse** a file with grep **and replace** a string in the output
    * `grep -i "honda" ~/Documents/sample_files/Csv/cars.csv | sed 's/Honda/tesla/g'`

![](pipe.ex.png)

## 2. Explain how to save the output of a command to a file (>).
* **Definition:** 
  * It **redirects or save** the output of a command to a file.
* **Usage:**
  * `command output + > + file`
* **Common Options:**
  * `>`: saves standard output
  * `2>`: saves standard error
  * `&>`: savesboth output and error
* **Examples:**
  * **Save** the **output of a command** to a file
    * `ls -lA ~ > all-files-in-home.txt`
  * **Save the error** generated by a command to a file
    * `ls -lA downloads/ 2> error-of-ls`
  * Save the **error to a file** and the **success to another**
    * `ls -lA downloads/ Pictures > success.txt 2> error.txt`
  * Save the **error and success** to the **same file**
    * `ls -lA downloads/ Pictures &> alloutput.txt`
  * **Do not display errors**. Send errors to the black hole
    * `ls -lA downloads/ 2> /dev/null`

![](save.ex.png)

## 3. Explain how to append the output of a command to a file.
* **Definition:**
  * Append means to **add more to a file instead of overwriting its content**. We use **">>"** to append.
  * When we use `>` on a file that already exist and contains data, we overwrite whatever is already inside the file. For example:
    * `ls -la > allmyfiles.lst`
  * In this example, if the file allmyfiles.lst had any data prior executing the command, that data will be overwritten by the output of `ls -la`.
  * So, if we want to keep the old data? Then we use `>>`. For example:
    * `ls -la >> allmyfiles.lst`
  * This will add the output of `ls -la` to the end of the file `allmyfiles.lst`.
* **Usage:**
  * `command output + >> + file`
* **Examples:**
  * **Appends** the current directory list to the end of a file (append-example.txt).
    * `ls >> append-example.txt`
  * Appends error messages from list command to the end of a file (append-example.txt).
    * `ls Docu . 2>> append-example.txt`
  * Appends lines 1-6 from the last 7 lines of a file to another file.
    * `tail -7 append-example.txt | head -6 >> files-list.txt`

![](append.ex.png)