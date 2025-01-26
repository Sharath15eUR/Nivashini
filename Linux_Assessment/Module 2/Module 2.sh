Q1.Use the appropriate command to list all files larger than 1 MB in the current directory and save the output to a file.

nivashini@nivashini-VirtualBox:~$ cd Downloads
nivashini@nivashini-VirtualBox:~/Downloads$ ls
'Linux Sample PDF.pdf'
nivashini@nivashini-VirtualBox:~/Downloads$ find . -type f -size +1M > large_files.txt
nivashini@nivashini-VirtualBox:~/Downloads$ ls
 large_files.txt  'Linux Sample PDF.pdf'
nivashini@nivashini-VirtualBox:~/Downloads$ cat large_files.txt
./Linux Sample PDF.pdf

Q2.Replace all occurrences of "localhost" with "127.0.0.1" in a configuration file named config.txt, and save the updated file as updated_config.txt.

nivashini@nivashini-VirtualBox:~$ cd Downloads
nivashini@nivashini-VirtualBox:~/Downloads$ ls
 config.txt   large_files.txt  'Linux Sample PDF.pdf'
nivashini@nivashini-VirtualBox:~/Downloads$ cat config.txt
server=localhost
database=localhost
port=5432
username=admin
password=secret
host=localhost
nivashini@nivashini-VirtualBox:~/Downloads$ sed 's/localhost/127.0.0.1/g' config.txt > updated_config.txt
nivashini@nivashini-VirtualBox:~/Downloads$ cat updated_config.txt
server=127.0.0.1
database=127.0.0.1
port=5432
username=admin
password=secret
host=127.0.0.1

Q3.Use the appropriate command to search for lines containing the word "ERROR" in a log file but exclude lines containing "DEBUG". Save the results to a file named filtered_log.txt.

nivashini@nivashini-VirtualBox:~$ cd Downloads
nivashini@nivashini-VirtualBox:~/Downloads$ vi log.txt
nivashini@nivashini-VirtualBox:~/Downloads$ cat log.txt
DEBUG: Starting the application initialization.
ERROR: Unable to connect to the database.
INFO: User 'admin' logged in successfully.
DEBUG: Fetching configuration settings from the server.
ERROR: DEBUG - Configuration settings could not be applied.
INFO: Scheduled job 'backup' completed successfully.
DEBUG: Connection to server timed out. Retrying...
ERROR: Failed to fetch data from API endpoint '/users'.
INFO: Maintenance mode activated.
ERROR: DEBUG - Query execution failed due to a syntax error.
DEBUG: Reloading application modules.
ERROR: Missing required parameter in the request.
INFO: Shutting down the system gracefully.
DEBUG: Closing unused network connections.
ERROR: DEBUG - Unexpected server response received.
nivashini@nivashini-VirtualBox:~/Downloads$ grep 'ERROR' log.txt | grep -v 'DEBUG' > filtered_log.txt
nivashini@nivashini-VirtualBox:~/Downloads$ cat filtered_log.txt
ERROR: Unable to connect to the database.
ERROR: Failed to fetch data from API endpoint '/users'.
ERROR: Missing required parameter in the request.

Q4.Write a code to identify the process with the highest memory usage and then terminate it.

kill -9 $(ps aux --sort=-%mem | awk 'NR==2 {print $2}')

Q5.Use the networking tool command and print all the gateway available in a sorted manner

nivashini@nivashini-VirtualBox:~/Downloads$ netstat -rn | awk 'NR>2{print $2}' |sort
0.0.0.0
10.0.2.2