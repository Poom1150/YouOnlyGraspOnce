from machine import Pin, PWM
import time

#pins setup
PneuCyl = Pin(28, Pin.OUT)

#right servo
SERVO_R_PIN = 12  # GPIO pin for the servo
servo_r = PWM(Pin(SERVO_R_PIN))  
servo_r.freq(50)  # Set PWM frequency to 50Hz

#left servo
SERVO_L_PIN = 13  # GPIO pin for the servo
servo_l = PWM(Pin(SERVO_L_PIN))  
servo_l.freq(50)  # Set PWM frequency to 50Hz

def move_servo(pwm, angle):
    duty = int(6553 + (angle / 180) * (6553 - 3277))
    pwm.duty_u16(duty)
    
def listen2serial():
    import sys
    while True:
        cmd = sys.stdin.readline().strip()
        print('Ready')
        if cmd.startswith('servo_r'):
            print('hello 1')
            angle = int(cmd.split()[1])
            move_servo(servo_r, angle)
        elif cmd.startswith('servo_l'):
            angle = int(cmd.split()[1])
            move_servo(servo_l, angle)
        elif cmd == 'cylinder on':
            PneuCyl.value(0)
        elif cmd == 'cylinder off':
            PneuCyl.value(1)
        else:
            print("Unknown command:", cmd)

listen2serial()