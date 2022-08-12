# chain-timer
## What is chain-timer?
chain-timer is a shell script that allows you to create timers that start once the previous one is ended.
This was initally made to time turns in a DnD campaign.

In the beginning, it will prompt you for how many timers you want to create. After pressing enter, the first timer will start from 0.

To stop the current timer and start the next one in line, press any button. The next timer will also begin from 0. Once you reach the end of the last timer, you may get one or multiple messages similar to this:

`chain-timer.sh: line 42:  7261 Killed: 9               start_timer $i`

This can be safely ignored, it happens because each timer process is killed to move onto the next one. In the future I will implement a way to suppress such messages, but it doesn't impact the functioinality of the program so for now I will leave it.


## How to use
1. Download `chain-timer.sh` or copy its contents into a text file and rename it "chain-timer.sh"

2. Store the file in your Desktop folder or a folder of your choice

3. Open up your terminal and type `cd desktop`, this will put you in your Desktop folder. 
 If you put your script in a different folder, navigate to the folder you stored your script in by typing `cd` followed by the folder name. 
 
- Note that `cd` will only bring you up one directory, so if you put the script in `/Users/YourUser/Desktop/mycoolscripts/`, you would have to type: 
 ```
 cd desktop
 cd mycoolscripts
 ```
 
4. Run the command `chmod +x chain-timer.sh`, this makes your script file executeable. You only need to do this once.

5. Finally, to start the script, run the command `bash chain-timer.sh`


