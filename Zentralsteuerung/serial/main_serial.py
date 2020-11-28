from host import host

def main():
	print "Starting RS-232 Master on port {:s}".format(portname)
	master = host.Host()
	master.start(portname)

	if master.running = False:
		print '\n\nGoodbye!'
		print 'port {:s} closed'.format(portname)

if __name__ == "__main__":
    main() 