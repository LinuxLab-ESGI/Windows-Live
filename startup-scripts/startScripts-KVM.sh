# This script is used to start the scripts for the Windows 10 virtual machine
# I had to do : sudo virsh autostart Windows-10
# Created by Xen0rInspire

### BEGIN INIT INFO
# Provides:             Windows-10
# Required-Start:       $local_fs $remote_fs
# Required-Stop:        $local_fs $remote_fs
# X-Start-Before:
# X-Stop-After:
# Default-Start:        5
# Default-Stop:         0 1 6
# Description:          Start the scripts for the Windows 10 virtual machine
# Short-Description:    Start the scripts for the Windows 10 virtual machine
### END INIT INFO

#!/bin/sh

list=( `ls /home/win/startup-scripts | sort -n` )

for i in ${list[*]}
do
    /home/win/startup-scripts/$i
done
