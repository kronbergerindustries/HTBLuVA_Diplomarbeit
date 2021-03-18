from gpiozero import Button, DigitalOutputDevice
from threading import Thread

#Definieren der Pins der Bedienelemente des rechten Lenkers
pin_button_1_1 = 23
pin_button_1_2 = 0

#Definieren der Pins der Bedienelemente des linken Lenkers
pin_button_2_1 = 0
pin_button_2_2 = 6
pin_button_2_3 = 19
pin_button_2_4 = 26
pin_button_2_5_0 = 20
pin_button_2_5_1 = 21

#Definieren der Relai-Pins des ersten Relai Moduls
pin_relai_1_1 = 11
pin_relai_1_2 = 13
pin_relai_1_3 = 15
pin_relai_1_4 = 18

#Definieren der Relai-Pins des zweiten Relai Moduls
pin_relai_2_1 = 16
pin_relai_2_2 = 24

#Definieren der Debounce-Zeit der Taster
debounce = 0.02

#Definieren der Objekte der Bedienelemente des rechten Lenkers
button_1_1 = Button(pin = pin_button_1_1, pull_up = None, active_state = True, bounce_time = debounce)
button_1_2 = Button(pin = pin_button_1_2, pull_up = None, active_state = True, bounce_time = debounce)

#Definieren der Objekte der Bedienelemente des linken Lenkers
button_2_1 = Button(pin = pin_button_2_1, pull_up = None, active_state = True, bounce_time = debounce)
button_2_2 = Button(pin = pin_button_2_2, pull_up = None, active_state = True, bounce_time = debounce)
button_2_3 = Button(pin = pin_button_2_3, pull_up = None, active_state = True, bounce_time = debounce)
button_2_4 = Button(pin = pin_button_2_4, pull_up = None, active_state = True, bounce_time = debounce)
button_2_5_0 = Button(pin = pin_button_2_5_0, pull_up = None, active_state = True, bounce_time = debounce)
button_2_5_1 = Button(pin = pin_button_2_5_1, pull_up = None, active_state = True, bounce_time = debounce)

#Definieren der Objecte des ersten Relai Moduls
relai_1_1 = DigitalOutputDevice(pin = pin_relai_1_1, active_high = True, initial_value = False, pin_factory = None)
relai_1_2 = DigitalOutputDevice(pin = pin_relai_1_2, active_high = True, initial_value = False, pin_factory = None)
relai_1_3 = DigitalOutputDevice(pin = pin_relai_1_3, active_high = True, initial_value = False, pin_factory = None)
relai_1_4 = DigitalOutputDevice(pin = pin_relai_1_4, active_high = True, initial_value = False, pin_factory = None)

#Definieren der Objecte des ersten Relai Moduls
relai_2_1 = DigitalOutputDevice(pin = pin_relai_2_1, active_high = True, initial_value = False, pin_factory = None)
relai_2_2 = DigitalOutputDevice(pin = pin_relai_2_2, active_high = True, initial_value = False, pin_factory = None)

class gpio(object):
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

	def runner(self):
		#Ansteuerung
		#button_1_1.when_pressed = pin___.toggle

		#Ansteuerung des Relais der Hupe
		button_2_1.when_pressed = relai_2_2
		button_2_1.when_released = relai_2_2

		#Ansteuerung des Relais der Hupe
		button_2_2.when_pressed = relai_1_1.on
		button_2_2.when_released = relai_1_1.off

		#Ansteuerung Taster zum Abblenden
		button_2_3.when_pressed = relai_1_2.off
		button_2_3.when_released = relai_1_2.on

		#Ansteuerung des Relais des Aufbendlichts
		button_2_4.when_pressed = relai_1_2.on
		button_2_4.when_released = relai_1_2.off

		#Ansteuerung des Relais der Hupe
		button_2_5_0.when_pressed = relai_1_3.on
		button_2_5_0.when_released = relai_1_3.off

		#Ansteuerung des Relais der Hupe
		button_2_5_1.when_pressed = relai_1_4.on
		button_2_5_1.when_released = relai_1_4.off