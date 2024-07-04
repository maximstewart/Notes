# Python imports
import argparse
import faulthandler
import locale
import traceback
from setproctitle import setproctitle

import asyncio
import socket

# Lib imports

# Application imports



class Crawler:
    """docstring for Crawler."""
    
    def __init__(self):
        print(f"Crawler Ready...")
        self.ports = [80, 443]


    def start(self, ip_adders = []):
        try:
            loop = asyncio.get_running_loop()
        except RuntimeError:
            loop = None

        if loop and loop.is_running():
            loop.create_task( self.do_crawl(ip_adders) )
        else:
            asyncio.run( self.do_crawl(ip_adders) )

    async def do_crawl(self, ip_adders):
        ip_scan_results = [self._scan_ip(ip) for ip in ip_adders]
        data = await asyncio.gather(*ip_scan_results)
        print(data)
    
    async def _scan_ip(self, ip):
        print("[", "-" * 28, "]")
        print(f"Scanning:  {ip}")
        print(f"Address, { ', '.join(str(port) for port in self.ports) }")
        return ip, *[ self._scan(ip, port) for port in self.ports ]
    
    def _scan(self, ip, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # TCP 
        # sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  # UDP
        sock.settimeout(0.1)
        is_open = False

        try:
            result = sock.connect_ex( (ip, port) )
            if result == 0:
                is_open = True

            sock.close()
        except Exception as e:
            print( repr(e) )

        sock.close()
        return is_open



def main():
    locale.setlocale(locale.LC_NUMERIC, 'C')

    setproctitle(f"Meta Info Crawler")
    # faulthandler.enable()  # For better debug info

    parser = argparse.ArgumentParser()
    # Add long and short arguments
    parser.add_argument("--debug", "-d", default="false", help="Do extra console messaging.")
    parser.add_argument("--trace-debug", "-td", default="false", help="Disable saves, ignore IPC lock, do extra console messaging.")
    parser.add_argument("--no-plugins", "-np", default="false", help="Do not load plugins.")

    parser.add_argument("--new-tab", "-t", default="", help="Open a file into new tab.")
    parser.add_argument("--new-window", "-w", default="", help="Open a file into a new window.")

    # Read arguments (If any...)
    args, unknownargs = parser.parse_known_args()


    crawler   = Crawler()
    # ip_adders = ["0.0.0.0"]
    # ip_adders = ["192.168.0.1"]
    ip_adders = ["8.8.8.8"]
    crawler.start(ip_adders)



if __name__ == "__main__":
    main()
