# Windows 10 - Live
<i> A debian persistent live to use Windows 10 in RAM memory</i>
__________


User login : <b>user</b><br>
Password : <b>live</b>

Root login : <b>root</b><br>
Password : <b>root</b>

## Requirements

- Make sure you have enabled virtualization in your BIOS/UEFI <br>
###
- USB Key/Hard disk minimum 64Go to install the persistent debian live with Windows 10

## Download

You can download the raw disk image right <a href="http://gofile.me/4HEFI/AEFGRd5FW">here</a>.

## Installation

In a directory of your choice copy the repo :  
`git clone https://github.com/LinuxLab-ESGI/Windows-Live.git`  

Move in the directory :  
`cd Windows-Live/startup-scripts`

You can now access to all the scripts I have added in the persistent debian.

### For Linux
###
\$R1 = repository of the raw disk image (<i>example : /home/user/disk.img</i>)<br>
$R2 = the partition wich you want to install it (<i>example : /dev/sda2</i>)

In root do : <br>
`dd if="$R1.img" of="$R2"`

### For Windows

Use the software AOMEI Backupper, select the raw disk image and deploy it on the hard drive.

![AOMEI Backupper](/img/restore_aomei.jpg "Screenshot AOMEI")