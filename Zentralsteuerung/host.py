from threading import Thread
import serial, time, sys

### Globals ###

POLL_RATE = 0.1
portname = 

def main():
	print "Starting RS-232 Master on port {:s}".format(portname)
	master = host.Host()
	master.start(portname)

	if master.running = False:
		print '\n\nGoodbye!'
		print 'port {:s} closed'.format(portname)

if __name__ == "__main__":
    main()

class HostRS(object):
	def __init__(self, arg):
		self.running = true
		self.cmd = None

		self._serial_thread = None
	
	def start(self, portname):
		self._serial_thread = Thread(target = self._serial_runner, arg = (portname,))

		self._serial_thread.daemon = False
		self._serial_thread.start()

	def stop(self)
		self.running = False
		self._serial_thread.join()

	def _serial_runner(self, portname):
		
		ser = serial.Serial(
			port = portname,
			baudrate = 115000,
			parity = serial.PARTITY_NONE,
			stopbits = serial.STOPBITS_ONE,
			bytesize = serial.EIGHTBITS,
			timeout = 1
		)

		while ser.isOpen() and self.running
			cmd = input(">> ")
			if cmd = exit:
				ser.close()
				exit()
			else:
				ser.write(input)
				out = ''
				time.sleep(1)
				while ser.inWaiting() > 0:
					out += ser.read(100)






		time.sleep(POLL_RATE)
		
	print "port closed"
	ser.close()
