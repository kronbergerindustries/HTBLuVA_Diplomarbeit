from gpiozero import Button, DigitalOutputDevice
from threading import Thread
import time, sys

def main():
	master = gpio.gpio()
	master.start()

if __name__ == "__main__":
    main()

class gpio(object):
	def __init__(self):
		self.running = true

		pin_button_1_1 = 23

		pin_button_2_1 = 5
		pin_button_2_2 = 6
		pin_button_2_3 = 19
		pin_button_2_4 = 26
		pin_button_2_5_0 = 20
		pin_button_2_5_1 = 21

		pin_relai_1_1 = 11
		pin_relai_1_2 = 13
		pin_relai_1_3 = 15
		pin_relai_1_4 = 18

		pin_relai_2_1 = 16
		pin_relai_2_2 = 24

		debounce = 0.02

		button_1_1 = Button(pin = pin_button_1_1, pull_up = none, active_state = False, bounce_time = debounce)
		button_1_2 = Button(pin = pin_button_1_2, pull_up = none, active_state = False, bounce_time = debounce)

		button_2_1 = Button(pin = pin_button_2_1, pull_up = none, active_state = False, bounce_time = debounce)
		button_2_2 = Button(pin = pin_button_2_2, pull_up = none, active_state = False, bounce_time = debounce)
		button_2_3 = Button(pin = pin_button_2_3, pull_up = none, active_state = False, bounce_time = debounce)
		button_2_4 = Button(pin = pin_button_2_4, pull_up = none, active_state = False, bounce_time = debounce)
		button_2_5_0 = Button(pin = pin_button_2_5_0, pull_up = none, active_state = False, bounce_time = debounce)
		button_2_5_1 = Button(pin = pin_button_2_5_1, pull_up = none, active_state = False, bounce_time = debounce)

		relai_1_1 = DigitalOutputDevice(pin = pin_relai_1_1, active_high = True, initial_value = False, pin_factory = None)
		relai_1_2 = DigitalOutputDevice(pin = pin_relai_1_2, active_high = True, initial_value = False, pin_factory = None)
		relai_1_3 = DigitalOutputDevice(pin = pin_relai_1_3, active_high = True, initial_value = False, pin_factory = None)
		relai_1_4 = DigitalOutputDevice(pin = pin_relai_1_4, active_high = True, initial_value = False, pin_factory = None)

		relai_2_1 = DigitalOutputDevice(pin = pin_relai_2_1, active_high = True, initial_value = False, pin_factory = None)
		relai_2_2 = DigitalOutputDevice(pin = pin_relai_2_2, active_high = True, initial_value = False, pin_factory = None)

		self._serial_thread = None
	
	def start(self):
		self._serial_thread = Thread(target = self._serial_runner)

		self._serial_thread.daemon = False
		self._serial_thread.start()

	def stop(self)
		self.running = False
		self._serial_thread.join()

	def _gpio_runner(self):
		#Ansteuerung
		button_1_1

		#Ansteuerung des Relais der Hupe
		button_2_1.when_pressed = pin_relai_2_2
		button_2_1.when_released = pin_relai_2_2

		#Ansteuerung des Relais der Hupe
		button_2_2.when_pressed = pin_relai_1_1.on
		button_2_2.when_released = pin_relai_1_1.off

		#Ansteuerung Taster zum Abblenden
		button_2_3.when_pressed = pin_relai_1_2.off
		button_2_3.when_released = pin_relai_1_2.on

		#Ansteuerung des Relais des Aufbendlichts
		button_2_4.when_pressed = pin_relai_1_2.on
		button_2_4.when_released = pin_relai_1_2.off

		#Ansteuerung des Relais der Hupe
		button_2_5_0.when_pressed = relai_1_3.on
		button_2_5_0.when_released = relai_1_3.off

		#Ansteuerung des Relais der Hupe
		button_2_5_1.when_pressed = relai_1_4.on
		button_2_5_1.when_released = relai_1_4.off