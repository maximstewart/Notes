##
##    Install these needed libraries if script doesn't work.
##
##     sudo pip3 install python3_xlib
##     sudo pip3 install keyboard pyautogui
##
##
import time
import keyboard, pyautogui

pyautogui.FAILSAFE = False # If we hit corner, that's ok
# Let piautogui make updates as quick as it can...
pyautogui.MINIMUM_DURATION = 0
pyautogui.PAUSE = 0


class Main:
    def __init__(self):
        self.isAcceptingMovement = False
        self.sleepTime = 0.009
        self.speed     = 1;
        self.modRate   = 0;   ## This controls mouse move speed by increasing it the longer the key combo is held.
        self.keyCombo1 = "ctrl"
        self.keyCombo2 = "shift"
        self.keyCombo3 = 'end'
        self.exitKey   = 'c'  ## Key combo exit key.
        self.startRun()


    def startRun(self):
        print("Available Keys Are:")
        print(pyautogui.KEYBOARD_KEYS)
        print("\n\nTo Toggle Detection Press:")
        print(self.keyCombo1 + " + " + self.keyCombo2 + " + " + self.keyCombo3)
        print("Detection State: " + str(self.isAcceptingMovement))
        while True:
            try:
                if keyboard.is_pressed(self.keyCombo1) and keyboard.is_pressed(self.keyCombo2):
                    self.checkDetectionState()

                    if self.isAcceptingMovement:
                        if keyboard.is_pressed('up') and keyboard.is_pressed('left'):
                            pyautogui.moveRel( (-self.speed - self.modRate), (-self.speed - self.modRate) );
                        elif keyboard.is_pressed('up') and keyboard.is_pressed('right'):
                            pyautogui.moveRel( (self.speed + self.modRate),  (-self.speed - self.modRate) );
                        elif keyboard.is_pressed('down') and keyboard.is_pressed('left'):
                            pyautogui.moveRel( (-self.speed - self.modRate), (self.speed + self.modRate) );
                        elif keyboard.is_pressed('down') and keyboard.is_pressed('right'):
                            pyautogui.moveRel( (self.speed + self.modRate),  (self.speed + self.modRate));
                        elif keyboard.is_pressed('up'):
                            pyautogui.moveRel(0, -(self.speed + self.modRate));
                        elif keyboard.is_pressed('down'):
                            pyautogui.moveRel(0,  (self.speed + self.modRate));
                        elif keyboard.is_pressed('left'):
                            pyautogui.moveRel(   -(self.speed + self.modRate), 0);
                        elif keyboard.is_pressed('right'):
                            pyautogui.moveRel(    (self.speed + self.modRate), 0);
                        else:
                            # Allows us to reset to 0 after sleeping and incramenting from below
                            self.modRate = -1

                        time.sleep(self.sleepTime)
                        self.modRate += 0.2

                    if keyboard.is_pressed('enter'):
                        pyautogui.click();
                    elif keyboard.is_pressed(self.exitKey):
                        break;
            except Exception as e:
                print( repr(e) )
                break;


    def checkDetectionState(self):
        if keyboard.is_pressed(self.keyCombo3):
            self.isAcceptingMovement = not self.isAcceptingMovement
            print("Detection State: " + str(self.isAcceptingMovement))
            time.sleep(1)


## Start the program and loop untill key combo for quit is pressed
if __name__ == '__main__':
    main = Main()
