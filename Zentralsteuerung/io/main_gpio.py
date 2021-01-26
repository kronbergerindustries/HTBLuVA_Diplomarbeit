import sys
import gpio

def main():
	master = gpio.gpio()
	master.start()

if __name__ == "__main__":
    main()
