# This script is used to start a Virtual Machine in KVM in fullscreen mode when debian startup
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
# Description:          Runs the Windows-10 VM
# Short-Description:    Runs the Windows-10 VM
### END INIT INFO

#!/bin/sh

xhost +local:
sudo virsh start Windows-10
sudo virt-viewer -w Windows-10 -f
