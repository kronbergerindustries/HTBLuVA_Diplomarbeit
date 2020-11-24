from threading import Thread
import serial, time

### Globals ###

POLL_RATE = 0.1

class Host(object):
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

	def parse_cmd(self, cmd):
		if cmd == 'Q':
			return 1
		else 
			return 0



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








		time.sleep(POLL_RATE)
		
	print "port closed"
	ser.close()
