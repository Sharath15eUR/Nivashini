Scenario: Automating file backup and Reporting to the system. Create a shell script called "backup_manager.sh" that performs the following tasks incorporating the concepts suggested.


nivashini@nivashini-VirtualBox:~$ cd Downloads
nivashini@nivashini-VirtualBox:~/Downloads$ mkdir source
nivashini@nivashini-VirtualBox:~/Downloads$ cd source
nivashini@nivashini-VirtualBox:~/Downloads/source$ touch test_file1.txt
nivashini@nivashini-VirtualBox:~/Downloads/source$ touch test_file2.txt
nivashini@nivashini-VirtualBox:~/Downloads/source$ touch test_file3.txt
nivashini@nivashini-VirtualBox:~/Downloads/source$ touch test_pdf_file.pdf
nivashini@nivashini-VirtualBox:~/Downloads/source$ ls
test_file1.txt  test_file2.txt  test_file3.txt  test_pdf_file.pdf
nivashini@nivashini-VirtualBox:~/Downloads/source$ cd ..
nivashini@nivashini-VirtualBox:~/Downloads$ mkdir backup
nivashini@nivashini-VirtualBox:~/Downloads$ cd backup
nivashini@nivashini-VirtualBox:~/Downloads/backup$ ls
nivashini@nivashini-VirtualBox:~/Downloads/backup$ cd ..
nivashini@nivashini-VirtualBox:~/Downloads$ ls
 backup                  filtered_log.txt        source
'backup_manager(1).sh'   large_files.txt         updated_config.txt
 backup_manager.sh      'Linux Sample PDF.pdf'
 config.txt              log.txt
nivashini@nivashini-VirtualBox:~/Downloads$ chmod +x backup_manager.sh
nivashini@nivashini-VirtualBox:~/Downloads$ ./backup_manager.sh "/home/nivashini/Downloads/source" "/home/nivashini/Downloads/backup" ".txt"
Files to be backed up:
test_file2.txt - 0 bytes
test_file1.txt - 0 bytes
test_file3.txt - 0 bytes
Backup completed. Report saved at /home/nivashini/Downloads/backup/backup_report.log.
nivashini@nivashini-VirtualBox:~/Downloads$ cd backup
nivashini@nivashini-VirtualBox:~/Downloads/backup$ ls
backup_report.log  test_file1.txt  test_file2.txt  test_file3.txt
nivashini@nivashini-VirtualBox:~/Downloads/backup$ cat backup_report.log
Backup Summary
================
Total files processed: 3
Total files backed up: 3
Total size of files backed up: 0 bytes
Backup directory: /home/nivashini/Downloads/backup