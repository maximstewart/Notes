As libinput-gestures pipes commands to execute, opening GUI programs without blocking the pipe has to be done with `nohup` before the binary name:

`nohup appname`