import sys
import threading
import random


# python ./sleep_sort.py 5 3 6 3 1 4 7


def delay_print(number):
    print(number)


def sleep_sort(number, delay):
    wait_time    = number / delay  
    timer        = threading.Timer(wait_time, delay_print, (number,))
    timer.start()


def argv_sleep_sort(arry, delay):
    for arg in arry:
        number = int(arg)
        sleep_sort(number, delay)

def random_sleep_sort():
    arry  = range(1, 300)
    delay = len(arry)
    for arg in arry:
        number = int(arg)
        sleep_sort(number, delay)

if __name__ == "__main__":
    arry  = sys.argv[1:]
    delay = len(arry)
    if delay > 0:
        argv_sleep_sort(arry, delay)
    else:
        print("Usage:\n\tpython ./sleep-sort.py 5 3 6 3 1 4 7")
        # random_sleep_sort()
