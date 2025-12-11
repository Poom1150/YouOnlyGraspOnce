# YouOnlyGraspOnce
You Only Grasp Once: A Smart Agricultural Gripper with Multimodal Actuation for Delicate Harvest Tasks

## Project Description

You Only Grasp Once (YOGO) is a human-inspired robotic grasping framework designed for delicate agricultural products such as strawberries.
It integrates:

- A hybrid-actuated, compliant multi-finger gripper<br>
- An eye-in-hand multi-view perception system<br>
- A digital-twin simulation pipeline for grasp planning and force prediction.

This project demonstrates how perception-guided planning and hybrid compliant actuation can reduce fruit damage, improve grasp reliability, and support scalable robotic harvesting.<br>

![image](https://github.com/Poom1150/YouOnlyGraspOnce/blob/main/Images/multi_view_img.jpg)

## Key Features

### Finger-eyes coordinate
- Hybrid actuation:<br>
    * Pneumatic cylinder for synchronized grasping<br>
    * Servo motors for independent finger orientation<br>
- Very low camera occlusion (5.09%) compared to Fin-Ray and conventional pneumatic grippers (29–36%)<br>

![image](https://github.com/Poom1150/YouOnlyGraspOnce/blob/main/Images/occlurasion.jpg) 

### Multi-View Vision System

- Eye-in-hand camera generates multi-view observations.<br>
- Extracts centroid, extremal points, pose, and visible geometry for grasp selection.<br>
- Supports grasp planning even under partial occlusions.<br>

![image](https://github.com/Poom1150/YouOnlyGraspOnce/blob/main/Images/processDiagram.png)

### Embedded Control

- Raspberry Pi Pico microcontroller<br>
- Solenoid-controlled pneumatic cylinder<br>
- PWM-controlled servo motors<br>
- Modular electrical and mechanical architecture<br>

![image](https://github.com/Poom1150/YouOnlyGraspOnce/blob/main/Images/wiring.png)

### Digital-Twin Grasp Planning

- Built using CoppeliaSim and a MATLAB multibody model.<br>
    - Pre-simulates:<br>
    - Trajectories<br>
    - Contact forces<br>
    - Force imbalance<br>
    - Grasp feasibility<br>

![image](https://github.com/Poom1150/YouOnlyGraspOnce/blob/main/Images/digitalTwin.png)

### Real-World Demonstration

- Implemented on a UR3 robotic arm with URScript.<br>
- Fully autonomous pipeline:<brt>
    - perception → trajectory generation → grasp → lift → transport → place.

[Real-World Demonstration clip](https://youtu.be/ECwY2gjdoHY?si=Z7r2SNXlO6_OIzbq)
