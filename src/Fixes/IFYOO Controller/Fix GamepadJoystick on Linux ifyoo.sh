#fix gamepad/joystick
#ifyoo - /dev/input/by-id/usb-SHANWAN_Controller-event-joystick

#install needed python libs
# sudo apt install python3-usb
# OR
# python -m pip install pyusb==1.2.1

#get fix script
#https://gist.github.com/dnmodder/de2df973323b7c6acf45f40dc66e8db3
wget "https://gist.githubusercontent.com/dnmodder/de2df973323b7c6acf45f40dc66e8db3/raw/693b848098dfc5f0fd03bdcdd9162fde3f2fb482/fixcontroller.py"

chmod +x fixcontroller.py

#you will need to run this every time you plug the controller in
sudo ./fixcontroller.py

#test the controller
sudo cat /dev/input/js0





###############################3

#!/usr/bin/env python3

import usb.core

dev = usb.core.find(idVendor=0x045e, idProduct=0x028e)

if dev is None:
    raise ValueError('Device not found')
else:
    dev.ctrl_transfer(0xc1, 0x01, 0x0100, 0x00, 0x14) 

##############################3