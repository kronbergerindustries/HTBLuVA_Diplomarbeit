from gpiozero import DigitalInputDevice, DigitalOutputDevice

pin_button_1_1 = 23
pin_button_1_2 = 24

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

pin_relai_2_1 = 18

debounce = 0.02

button_1_1 = DigitalInputDevice(pin = pin_button_1_1, pull_up = none, active_state = False, bounce_time = debounce)
button_1_2 = DigitalInputDevice(pin = pin_button_1_2, pull_up = none, active_state = False, bounce_time = debounce)

button_2_1 = DigitalInputDevice(pin = pin_button_2_1, pull_up = none, active_state = False, bounce_time = debounce)
button_2_2 = DigitalInputDevice(pin = pin_button_2_2, pull_up = none, active_state = False, bounce_time = debounce)
button_2_3 = DigitalInputDevice(pin = pin_button_2_3, pull_up = none, active_state = False, bounce_time = debounce)
button_2_4 = DigitalInputDevicen(pin = pin_button_2_4, pull_up = none, active_state = False, bounce_time = debounce)
button_2_5_0 = DigitalInputDevice(pin = pin_button_2_5_0, pull_up = none, active_state = False, bounce_time = debounce)
button_2_5_1 = DigitalInputDevice(pin = pin_button_2_5_1, pull_up = none, active_state = False, bounce_time = debounce)

relai_1_1 = DigitalOutputDevice(pin = pin_relai_1_1, active_high = True, initial_value = False, pin_factory = None)
relai_1_2 = DigitalOutputDevice(pin = pin_relai_1_2, active_high = True, initial_value = False, pin_factory = None)
relai_1_3 = DigitalOutputDevice(pin = pin_relai_1_3, active_high = True, initial_value = False, pin_factory = None)
relai_1_4 = DigitalOutputDevice(pin = pin_relai_1_4, active_high = True, initial_value = False, pin_factory = None)

relai_2_1 = DigitalOutputDevice(pin = pin_relai_2_1, active_high = True, initial_value = False, pin_factory = None)

button_2_5_0.when_pressed = relai_1_3.on
button_2_5_1.when_pressed = relai_1_4.on

