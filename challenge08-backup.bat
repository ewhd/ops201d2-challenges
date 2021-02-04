:: Script:			challenge08-backup.bat
:: Author:			Ethan Denny
:: Date of latest revision:	2/3/21
:: Purpose:			Automatically back up Jorge's files to second drive


:: The following command copies the entire contents of Jorge's project folder to
:: the destination folder, including subfolders (the /E)
:: The appended line (joined by the ^) writes a log (or appends an existing log)
:: to a subfolder in the project folder on the desktop (this is really just to
:: have a built-in subfolder transfer test)
:: The 2>&1 writes error output to the log as well

robocopy "C:\Users\j.thompson\Desktop\My Project Files" "E:\Nightly_Backup" /E^
	>> "C:\Users\j.thompson\Desktop\My Project Files\Backup Log\back_up_log.txt" 2>&1


:: Of course, now the most up-to-date log only exists on the primary hard drive, 
:: and the backup folder contains only the log from the previous running of this
:: batch file.
:: To regularize this, I will call robocopy again:

robocopy "C:\Users\j.thompson\Desktop\My Project Files\Backup Log" "E:\Nightly_Backup\Backup Log"

:: Now the two log files are in agreement



:: You might rightly criticize that this is a silly way of writing this, and you'd be correct
:: As I mentioned above, I felt like creating a subfolder to transfer, so I wrote it this way.
:: If I were doing this for real I would write it more elegently. Or at least silly in a 
:: different way.