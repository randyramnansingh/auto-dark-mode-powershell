# auto-dark-mode-powershell
A PowerShell script that changes the Windows System and Apps light/dark mode setting based on time of day, run it twice daily in Task Scheduler to get that Mac like auto-goodness!

## Usage
Using PowerShell, run the script or double-click on it.
 ```
 auto-dark-mode.ps1 -ExecutionPolicy Bypass
 ```
 By default, the script will change the Windows Apps and System light/dark mode setting to light mode in between `08:30` and `17:30 (5:30pm)` and change to dark mode outside of those hours. Using the command line parameters `-start` and `-end` you can choose your own times (in 24 hour format)
 ```
 auto-dark-mode.ps1 --start '9:00' -end '21:00' -ExecutionPolicy Bypass
 ```
 
 ## Automating using Task Scheduler
 *TODO: make a PowerShell script to automate this*
 1. Create a new Task in Task Scheduler
 2. In the new Task, create a new Action
  Action: Start a Program
  Program/script: `powershell.exe`
  Add arguments (optional): `C:/PATH/TO/auto-dark-mode.ps1 -ExecutionPolicy Bypass` (You can also customize the start and end times for light mode using the input parameters)
  3. In the new Task, create two triggers that are run daily at the `start` and `end` times as desired.
  4. Enjoy!
 ## 
