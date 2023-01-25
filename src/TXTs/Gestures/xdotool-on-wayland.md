As xdotool doesn't support Wayland due to their strict security policies, keystroke inputs require root privileges and some workarounds:

*  The **best candidate looks to be the Python-based [injectinput](https://github.com/meeuw/injectinput) script by *meeuw***, though still in an early development stage.

*  Another Bash solution comes from [this Stack Overflow thread](https://unix.stackexchange.com/questions/381831/keyboard-emulation-in-wayland):

> I'm using this little script. It needs the package evemu installed and sudo-confguration for evemu-event without password-notification. EVDEVICE is the device used to emulate the input. /dev/input/event8 is my keyboard (use sudo evemu-record to find yours)
> 
> 
> ```
> #!/bin/bash
> # keycomb.sh
> EVDEVICE=/dev/input/event8
> 
> for key in $@; do
>     sudo evemu-event $EVDEVICE --type EV_KEY --code KEY_$key --value 1 --sync
> done
> 
> # reverse order
> for (( idx=${#@}; idx>0; idx-- )); do
>     sudo evemu-event $EVDEVICE --type EV_KEY --code KEY_${!idx} --value 0 --sync
> done
> ```
> you can e.g. change a tab with `./keycomb.sh RIGHTCTL PAGEDOWN`.
> 
> Please note: This script does no validation on parameters, use with care ;)