## Basic commands
echo
whoami

## File and directory
ls
cd
pwd
cat

## Search and filtering
find
grep

--------------------------------
echo

What it’s for:
Printing text or variables to the terminal, usually to check values or create quick output.

Common usage:
echo "hello"
echo $USER
echo $PATH

Useful flags:
- -n : print without a new line
- -e : enable interpretation of escape characters

Notes:
Very useful in scripts, debugging, and quickly checking environment variables.

--------------------------------
whoami

What it’s for:
Showing which user you are currently logged in as.

Common usage:
whoami

Useful flags:
None

Notes:
Extremely useful after switching users, using sudo, or during privilege escalation checks.

--------------------------------
ls

What it’s for:
Listing files and directories in the current or specified path.

Common usage:
ls
ls -la
ls /etc

Useful flags:
- -l : long listing with details
- -a : show hidden files
- -h : human readable sizes

Notes:
Often combined with grep to quickly filter files or search for suspicious names.

--------------------------------
cd

What it’s for:
Changing the current working directory.

Common usage:
cd /var/log
cd ..
cd ~

Useful flags:
None

Notes:
Knowing where you are in the filesystem is critical when working with logs, configs, or scripts.

--------------------------------
pwd

What it’s for:
Showing the full path of the current working directory.

Common usage:
pwd

Useful flags:
None

Notes:
Very useful when you are deep inside directories or working in scripts to confirm paths.

--------------------------------
cat

What it’s for:
Displaying the contents of a file directly in the terminal.

Common usage:
cat file.txt
cat /etc/passwd

Useful flags:
- -n : show line numbers
- -A : show hidden characters

Notes:
Good for small files, but avoid using it on large logs. Use less instead.

--------------------------------
find

What it’s for:
Searching for files and directories based on name, type, size, or other conditions.

Common usage:
find / -name "config.php"
find . -type f
find /var/log -size +10M

Useful flags:
- -name : search by file name
- -type : specify file type
- -size : search by file size
- -mtime : search by modification time

Notes:
Very powerful during investigations. Often combined with grep to search inside found files.

--------------------------------
grep

What it’s for:
Searching for specific text patterns inside files or command output.

Common usage:
grep "password" file.txt
grep -i "error" /var/log/syslog
grep -r "token" .

Useful flags:
- -i : ignore case
- -r : recursive search
- -n : show line numbers

Notes:
One of the most important commands for log analysis and incident response.

--------------------------------
