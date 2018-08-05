# Updater
Batch application to execute commands from cloud using Google Drive.
# How to use
Start with the template of commands.bat and declare every command you want to use as a variable.

Example: 

set command1=Net user Administrator 1234

set command2=copy C:\Users\Public\file1.txt C:\Users\User1\Desktop\file1.txt.

set command3=GOTO checker

---
The last variable need to be GOTO CHECKER or the program will crash.
Once you've successfully create commands.bat upload it to your google drive account and get its direct link, 
you need to put its direct url on the Updater.bat on "url here", you need to double quote the
ampersand of the url. 

Example:
https://drive.google.com/uc?export=download"&"id=1G1E0wvNcLzsKFZwFx2yH2iPS8FqOHTjU

Otherwise the updater won't work, to update the commands you need to use manage versions to upload
a new version of commands.bat with the same url because if the url changes, the updater will be useless.
