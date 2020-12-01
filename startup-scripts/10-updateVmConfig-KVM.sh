# This script is used to update the Windows 10 VM config
# Created by Xen0rInspire

### BEGIN INIT INFO
# Provides:             Windows-10
# Required-Start:       $local_fs $remote_fs
# Required-Stop:        $local_fs $remote_fs
# X-Start-Before:
# X-Stop-After:
# Default-Start:        5
# Default-Stop:         0 1 6
# Description:          Update the Windows 10 VM config
# Short-Description:    Update the Windows 10 VM config
### END INIT INFO

#!/bin/sh

maxCores=( `nproc --all` )
maxRAMk=( `vmstat -s | head -1`)
maxRAMm=$((maxRAMk / 1024))

if [ $((maxRAMm)) -lt 4000 ]
then
    sudo virsh setmem Windows-10 2G --config
elif [ $((maxRAMm)) -lt 8000 ]
then
    sudo virsh setmem Windows-10 4G --config
else
    sudo virsh setmem Windows-10 8G --config
fi

if [ $((maxCores)) -lt 4 ]
then
    sudo virsh setvcpus Windows-10 2 --config
else
    sudo virsh setvcpus Windows-10 4 --config
fi