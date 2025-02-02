nivashini@nivashini-VirtualBox:~$ cd Downloads
nivashini@nivashini-VirtualBox:~/Downloads$ ls
 backup                  filtered_log.txt        Module_4.sh
'backup_manager(1).sh'   input.txt               output.txt
 backup_manager.sh       large_files.txt         source
 config.txt             'Linux Sample PDF.pdf'   test_directory
 file_analyzer.sh        log.txt                 updated_config.txt
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh --help
Usage: ./file_analyzer.sh [OPTION]...
Search for files containing a specific keyword.

Options:
  -d <directory>   Search recursively in the specified directory.
  -k <keyword>     Specify the keyword to search for.
  -f <file>        Search for the keyword in the specified file.
  --help           Display this help menu.

Examples:
  ./file_analyzer.sh -d logs -k error         # Recursively search 'logs' directory for 'error'
  ./file_analyzer.sh -f log.txt -k warning    # Search 'log.txt' for 'warning'
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -d test_directory -k "test"
Searching recursively for 'test' in directory: test_directory
test_directory/sub_test_directory/test_file2.txt:1:Test keyword inside sub directory
test_directory/test_file1.txt:1:This is a test keyword
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -d test_directory -k "invalid"
Searching recursively for 'invalid' in directory: test_directory
No matches found.
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -f test_directory/test_file1.txt -k "test"
1:This is a test keyword
Found 'test' in test_directory/test_file1.txt
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -f test_directory/empty_test_file.txt -k "test"
No matches found in test_directory/empty_test_file.txt.
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -d invalid_directory -k "invalid"
Error: Directory 'invalid_directory' not found!
nivashini@nivashini-VirtualBox:~/Downloads$ ls
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -d invalid1_directory -k "invalid"
Error: Directory 'invalid1_directory' not found!
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -d invalid1_directory -k 
Error: Option -k requires an argument.
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -f test_directory/non_existent_file -k "test"
Error: File 'test_directory/non_existent_file' not found!
nivashini@nivashini-VirtualBox:~/Downloads$ ./file_analyzer.sh -n invalid1_directory -k 
Error: Invalid option: -n
Usage: ./file_analyzer.sh [OPTION]...
Search for files containing a specific keyword.

Options:
  -d <directory>   Search recursively in the specified directory.
  -k <keyword>     Specify the keyword to search for.
  -f <file>        Search for the keyword in the specified file.
  --help           Display this help menu.

Examples:
  ./file_analyzer.sh -d logs -k error         # Recursively search 'logs' directory for 'error'
  ./file_analyzer.sh -f log.txt -k warning    # Search 'log.txt' for 'warning'
nivashini@nivashini-VirtualBox:~/Downloads$ cat errors.log
Error: Directory 'invalid_directory' not found!
Error: Directory 'invalid1_directory' not found!
Error: Option -k requires an argument.
Error: File 'test_directory/non_existent_file' not found!
Error: Invalid option: -n