Auto Backup for Mac
===================

###Author
Isabella Moreira  

###Description
Automatically backs up a directory from your Mac's HDD to an external storage system. Displays error if given backup path is not found.



###Usage
**Manually** via command line using *./backup.sh <backup_directory_name>*

**Automatically** continue reading for setup



#Setup

###Preparation

1. Download backup.sh & com.isabella.backup.plist

2. Place in Desktop (or another dedicated folder)
   and remember this location

3. Create a folder that contains all your backups
   Your hierarchy should look like this:

```
    Documents
    |
    |--FlashTransfer
        |
        |--FlashDriveName1	(corresponds to name given to external drive on format; no spaces at this time)
        |--FlashDriveName2	
```
        
###Automation
        
1. cd ~/Library

2. mkdir ~/Library/LaunchAgents

3. mkdir ~/Library/Scripts

4. cd ~/Library/LaunchAgents

5. Copy com.USERNAME.backup.com.plist into ~/Library/LaunchAgents
   (via Terminal or drag and drop (open file in Finder with Shift+Cmd+G))

6. Change the plist filename to match your username

7. launchctl load ~/Library/LaunchAgents

8. launchctl list



#Future Plans

- [  ] Allow spaces in external drive name
- [  ] Script to fully automate setup
- [  ] Possible alert (besides sound) on completion
- [x] Working, initial commit


#Credits & Licensing

```
The MIT License (MIT)

Copyright (c) 2013 Isabella Moreira

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

* Thanks to Mark Jalbert on (https://discussions.apple.com/thread/4223915?start=0&tstart=0) for the post figuring out which was the last drive to be plugged in

* Thanks to Jeffrey Murphy on (http://www.jbmurphy.com/2011/07/15/os-x-running-a-script-when-a-usb-drive-is-inserted/) for his AppleScript to run a bash script if it exists on the USB itself (potentially useful in future upgrades)

* Thanks to Mac Research (http://www.macresearch.org/tutorial_backups_with_launchd) for basis tutorial on using launchd 
