# Python imports
import json
import asyncio
import time

# Lib imports
from kasa import Discover

# Application imports


class SmartDeviceManager:
    def __init__(self):
        self.BASE_IP = "192.168.0."
        self.IPs = ["12", "13", "14", "15", "16", "17"]
        self.devices = self.retrieve_devices()


    def retrieve_devices(self):
        devices = []
        for ip in self.IPs:
            device = self.get_device(self.BASE_IP + ip)
            if device:
                print("Device: {} is available...".format(device.alias))
                print("{}".format(device.hw_info))
                devices.append(device)

        return devices

    def set_device_on(self, device):
        asyncio.run(device.turn_on())

    def set_device_off(self, device):
        asyncio.run(device.turn_off())

    def set_led_on(self, device):
        asyncio.run(device.set_led(True))

    def set_led_off(self, device):
        asyncio.run(device.set_led(False))

    def set_device_alias(self, device, alias):
        asyncio.run(device.set_alias(alias))

    def update_info(self, device):
        try:
            asyncio.run(device.update())
        except Exception as e:
            pass

    def get_device(self, addr):
        try:
            device = asyncio.run( Discover.discover_single(addr) )
            self.update_info(device)
            return device
        except Exception as e:
            print(repr(e))
            return None

    def pulsate(self, device, rate = 1):
        state = "on"
        while True:
            if state == "on":
                state = "off"
                self.set_device_on(device)
            else:
                state = "on"
                self.set_device_off(device)

            time.sleep(rate)

if __name__ == '__main__':
    SmartDeviceManager()
