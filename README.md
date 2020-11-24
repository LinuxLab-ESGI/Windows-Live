# Windows 10 - Live
<i> A debian persistent live to use Windows 10 in RAM memory</i>
__________

Login : <b>user</b>
Password : <b>live</b>

Login : <b>root</b>
Password : <b>root</b>

## Requirements

- Make sure you have enabled virtualization in your BIOS/UEFI <br><i>(more performance)</i>
###
- USB Key/Hard disk minimum 64Go to install the persistent debian live with Windows 10

## Download

You can download the disk image right here : 
`WIP...`

## Installation

In a directory of your choice copy the repo :  
`git clone https://github.com/LinuxLab-ESGI/Windows-Live.git`  

Move in the directory :  
`cd Windows-Live/startup-scripts`

You can now access to all the scripts I have added in the persistent debian.

### For Linux
###
\$R1 = repository of the raw disk image (<i>example : /home/user/disk.img</i>)
$R2 = the partition wich you want to install it (<i>example : /dev/sda2</i>)

In root do :
`dd if="$R1.img" of="$R2"`

### For Windows
WIP
