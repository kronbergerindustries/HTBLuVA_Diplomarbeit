import host
import sys

### Main Routine ###
def main(portname):
	print "Starting RS-232 Master on port {:s}".format(portname)
	master = host.Host()
	master.start(portname)

	try:
		print "Type 'x' to exit"
		while master.running:

			com = input("Type in your command: ")
			result = master.parse_cmd(cmd)

			if result is 0:
				pass
			elif result is 1:
				master.stop()

	except KeyboardInterrupt:
		master.running = False

	print '\n\nGoodbye!'
	print 'port {:s} closed'.format(portname)