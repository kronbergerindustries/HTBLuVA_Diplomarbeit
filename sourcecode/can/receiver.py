import os
import time
from threading import Thread


class Listener(object):
    def __init__(self):
        self.running = True
        self.thread = None

    def start(self):
        self.thread = Thread(target=self.runner)

        self.thread.daemon = False
        self.thread.start()

    def stop(self):
        self.running = False
        self.thread.join()

    def open(self):
        os.system("sudo /sbin/ip link can0 set up type can bitrate 500000")
        time.sleep(0.1)

    def close(self):
        os.system("sudo ip link set can0 down")
        time.sleep(0.1)

    def runner(self):
        while True:
            os.system("candump -l vcan0")


def main():
    pass


if __name__ == "__main__":
    main()
