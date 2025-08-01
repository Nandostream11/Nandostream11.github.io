---
title: JACK- The Robot Dog (Quadrupedal Robot)
date: 2025-04-25 00:00:00 +0530
categories: [Projects, Robotics]
tags: [quadruped, legged-robot]     # TAG names should always be lowercase
author: <author_id>
# authors: [<author1_id>, <author2_id>]   # for multiple entries
mermaid: true       #diagram gen tool
math: true          #MathJax enabled
image: /assets/images/Jack(phase1).png    #to simply add an image
# description: A compact, open-source quadrupedal robot designed and built as a collaborative academic project, featuring custom electronics, mechanical design, and autonomous navigation capabilities.
# toc: false        #to turn off table of contents on right side for this post
# comments: false      #to turn off comments for this post
# pin: true             #to pin to top of homepage
# image:                        #for thumbnail
#   path: /path/to/image
#   alt: image alternative text
excerpt: "A Robotics project that inspired me towrds unconventional robotics"
---

# Introduction
This project documents the design and development of JACK, a compact, open-source quadrupedal robot dog. Conceived as a collaborative academic effort during my B.Tech at IIT Bhilai, the robot was built from scratch and underwent two major phases: initial prototyping and subsequent improvements for advanced navigation. The project aimed to explore unconventional robotics, focusing on custom mechanical design, embedded electronics, and autonomous capabilities.

# Objectives
The primary motivation behind JACK was to gain hands-on experience in robotics by building a legged robot capable of basic locomotion and navigation. The objectives included:

- Designing a robust mechanical structure inspired by modern quadrupeds.
- Developing custom electronics for real-time control.
- Develop the quadruped ronot for delivery on uneven terrain.
- Experimenting with gait patterns and navigation strategies. This project also served as a platform to apply theoretical knowledge from coursework to a real-world robotics challenge.

This was a collaborative project that was executed in two different phases during my B.Tech at [IIT Bhilai](https://www.iitbhilai.ac.in/)- \
This project was executed in two phases during my undergraduate journey:
- Phase I: Design & development of the basic working prototype.
- Phase II: Improvements for better navigation and modular control.

## **Phase I: Prototype Development**
In Phase I, we successfully built a working prototype of JACK, our quadrupedal robot, integrating custom mechanical, electronic, and control systems.
I worked on the electronics and learned the design aspects while working with my senior, [Santosh K. Prajapat](https://www.linkedin.com/in/santosh-kumar-prajapat). In this phase the legged robot was designed from scratch with some design experimentation and analytical approach. 

### **Mechanical Design**
Each leg is designed with three joints, analogous to a robotic arm, and actuated by servo motors. The mechanical frame was designed using Autodesk Fusion 360, and the legs were assembled with three servo-driven joints each, allowing for iterative design and experimentation. Apart from the leg designs, the main body was kept as a flat plate unlike the cylindrical structure seen in service robots like Unitree Go1/2.

![CAD Model of the Legged_Robot Phase 1 made on Autodesk Fusion 360](/assets/images/Legged-cad.png){: w="400"  }
_CAD Model of the Legged_Robot Phase 1 made on Autodesk Fusion 360_ 

### **Electronics & Hardware**
The initial phase focused on building a functional prototype from scratch. A custom RX-TX wired controller with Arduino Boards was developed on a PCB, featuring a joystick for driving the speed of body movement in any direction and buttons for directional control and to switch between gait patterns(referring to march past and the most common, trot gait; gait system was not much established in this phase). 
The electronics were designed to support real-time embedded control and communication with the robot’s actuators.
The electronics were custom-built, featuring an Arduino-based controller and a wired joystick interface for manual operation. \
![High level view of the inverse kinematics for each leg](/assets/images/Controller(phase1).png){: w="250"  }
_In-hand Controller counterpart_ 

### **Kinematics & Control**
The leg kinematics were modeled in MATLAB Simulink using inverse kinematics solvers. Using MATLAB Simulink allowed us to quickly iterate on the kinematic model and validate the joint trajectories before physical implementation. This enabled precise control of each leg’s movement, allowing the robot to achieve basic locomotion in three degrees of freedom (x, y, yaw) via joystick input.

![4-Legged Robot](/assets/images/high-level-view.png){: w="800"  }
_High level view of the Inverse kinematics for each leg_ 

 This robot was prepared as a part of a Robotics Fundamentals course curriculum and we reached some basic Low level embedded & MATLAB programmed stage.
We first programmmed the three joints in a single Leg with the analogy of a robotic Arm with 3 servo motors. The leg kinematics was modelled with MATLAB Simulink using inverse solver. \
<!-- ![4-Legged Robot](/assets/images/IKRobotleg.png){: w="600"  }
_Simulink blocks for point-wise Inverse Kinematics to get joint angles for each point_   -->
![4-Legged Robot](/assets/images/Base-electronics(phase1).png){: w="500"  }
_Top view of the base electronics_ 

At the end of phase I, each leg of the 4-Legged Robot dog could move using continuous Inverse Kinematics to produce joint angles as per the desired trajectory point. An algorithm code was made in order to control the motion of the robot dog as per the input from a in hand Controller device. The Controller setup present onboard the Robot dog processes the input to perform the power distribution into the separate motors to locomote in a particular direction. 

![Testbench setup to run tests for the leg motion and trajectory following](/assets/images/legged-testbench.png){: w="350"  }
_Testbench setup to run tests for the leg motion and trajectory following_ 

Testing was conducted on a custom testbench to validate leg trajectories and overall stability. The prototype successfully demonstrated basic walking, turning, and stopping maneuvers. These tests highlighted areas for mechanical reinforcement(like X-bar reinforcement, foot grippers) and software optimization(sleeps cycles, control algorithms to minimize jerks, reduction in overheating of the electronics).

Such a mechanized quadrupedal robot can be leveraged to various applications like *inspection/investigation* of an area. The demonstration of this 4-legged robot prototype won the **first prize at the Inter-Departmental Research Meet '24**.

## **Phase II: Improvements & Advanced Features**

The $2^{nd}$ Phase of this project was executed with two of my batchmates- [Dhananjay](https://www.linkedin.com/in/dhananjay-abbot-3ba776198), Harshit and a senior, [Vedhamsh Bode](https://www.linkedin.com/in/vedhamsh-bode-09a147229). 

![Quadruped Architecture](/assets/images/leg_modified.png){: w="550"  }
_Modified Leg configuration in Phase 2_

Building on the initial prototype, the second phase focused on enhancing the robot’s capabilities and robustness and modularize the High Level Layer(ROS2 Layer). The main goals were to improve locomotion stability, introduce basic autonomous navigation, and refine the control algorithms.

![Quadruped Architecture](/assets/images/Legged_latest.png){: w="350"  }
_Modified Quadruped Design and body_ 

In the second phase, the robot’s torso structure was replaced with a metallic body reinforced for durability, and additional sensors(LIDAR, IMU) were integrated for feedback. The embedded stack was upgraded with an onboard processor(Raspberry Pi) running the microcontroller to support wireless operation using remote ssh, and the software was modularized for easier experimentation. Wireless communication enabled remote control and debugging. The robot’s navigation system was enhanced to allow remote operation for now.

### **High-Level Control Setup**

![Quadruped Architecture](/assets/images/Component_architecture.png){: w="550"  }
_HL Architecture of the Robot Dog_ 

**Remote Debugging & Operation (via Raspberry Pi):** Our quadruped robot is equipped with a Raspberry Pi 4B as its central processing unit, enabling remote access over Wi-Fi or SSH. This setup allows us to:
- Monitor sensor data in real-time.
- Deploy updates wirelessly.
- Debug motor outputs and sensor readings without physical intervention.
The Pi can act as a bridge between sensor feedback and the actuation logic, ensuring that control algorithms can be tweaked and tested rapidly—particularly useful during field tests.

![Quadruped Architecture](/assets/images/Jack_Rviz.png){: w="400"  }
_JACK TF vectors in Rviz view_

### **Sensor Integration**
IMU (BNO055): Measures orientation (roll, pitch, yaw), essential for CoG adjustment. Used to detect tilt and re-center the body by adjusting leg heights dynamically. \
2D LiDAR: Generates a 2D scan of the surroundings for obstacle detection and local path planning.

<!-- **Sensor Fusion with Control Loops:**
- IMU data feeds into a PID controller that adjusts hip servo positions to stabilize the torso.
- LiDAR data is fused with dead reckoning to correct for drift and detect safe walking zones.
**Calibration and Filtering:**
- IMU Calibration: Done using ROS’s calibration nodes and manual static averaging.
- Low-Pass Filtering: Applied to raw IMU output to reduce noise (cutoff freq ~5Hz).
- LiDAR Preprocessing: Range data filtered for noise using rolling average windows before occupancy mapping.  -->
<!-- ![Quadruped Architecture](/assets/images/Jack_Rviz.png){: w="400"  }
_JACK TF vectors in Rviz view_ -->

### Motion & Navigation
**Leg Trajectory planning & Locomotion**
 And this time we setup to the Leg testbench stand in RviZ to avoid the environmental faults and cautioning for our servos damage due to prolonged command or unconstrained valuesthat occur in hardware testing during algorithm development and testing

![Testbench setup to run tests for the leg motion and trajectory following](/assets/images/trajectory_control_setup.png){: w="350"  }
_Simulation Testbench in Rviz for testing foot trajectory following_

**Gait Evolution:** We started with a basic trot gait but observed instability due to poor body weight distribution or some dynamic constraints. The gait engine is being upgraded to support:
- Height-adaptive stride length, reducing ground impact during each step.
- Dynamic phase-shifted gaits (e.g., crawl gait with staggered leg motion).
- Stability-aware gait switching, influenced by IMU tilt data, and other techniques

![Hildebrand chart of Trot gait](/assets/images/hildebrand.png){: w="550"  }
_Hildebrand chart of Trot gait_ 

**Navigation Algorithms:** At present, the quadruped is remotely operated. We're making it semi-autonomous(mission based) with:
- A path planning on 2D occupancy grids generated from LiDAR data.
- Custom logic for re-routing when IMU detects instability (e.g., large roll/pitch).
- Basic waypoint tracking to move the robot along a desired path, using dead-reckoning corrected by LiDAR-based odometry.

<!-- Gait generation algorithms were improved to support smoother and more stable walking patterns. The modular software design allowed for quick testing of new gait strategies and locomotion experiments. -->
![Quadruped Gazebo](/assets/images/Gazebo_test_setup.png){: w="400"  }
_The JACK in The Gazebo Sim_

**Field Test Results:** Initial walking tests on tiled and moderately uneven outdoor surfaces showed:
- Reduced leg drag and fewer missed steps compared to earlier versions.
- More controllability with the onboard Kinematics solver stack and a well defined High level layer.
<!-- - 33% improved stability with feedback-integrated torso adjustments. -->
<!-- - The robot could navigate around low-height obstacles (<7 cm) using 2D LiDAR scans. -->

**Challenges:** Key challenges included achieving reliable leg synchronization, managing weight distribution, and ensuring robust wireless communication. Mechanical wear and servo calibration also required ongoing attention.

The project was a hands-on experience in multidisciplinary robotics, from CAD design and embedded programming to control theory and systems & sensor integration. Iterative testing and teamwork were crucial for overcoming technical hurdles.

**Future improvements** could include further modification to implement semi-autonomous nature with the ability to detect and avoid obstacles in real time and advanced SLAM (Simultaneous Localization and Mapping), incorporating visual sensors, upgrading to more powerful actuators, and developing fully autonomous navigation and path planning capabilities.

The Demonstration video of the Quadruped can be found below or [here](https://youtu.be/Hp6pkhH9xcw?si=ltFwWZ1HxxBvtAd4)
{% 
  include embed/youtube.html id='Hp6pkhH9xcw' 
%}
The Github Repo can be found here: [Quadrupedal-Robot-Jack](https://github.com/Nandostream11/Quadrupedal-Robot-Jack/tree/main) 

Research Directions:
- Investigate Reinforcement Learning for adaptive gait control based on terrain type and using other techniques on the to-do list.
<!-- - Deploy a Neural Net-based CoG estimator trained on simulated terrain data. -->
- Develop ROS2 Nav2 stack compatibility for integrating global planners.

*References & Resources:*
- [MATLAB Simulink Documentation](https://www.mathworks.com/products/simulink.html)
- [ROS Doumentation](https://docs.ros.org/)
- [Unitree Robotics](https://github.com/unitreerobotics)

<!-- Pseudocode of Updated Gait Planner:
for t in gait_cycle:
    for leg in legs:
        if leg.phase == 'swing':
            target_pos = calculate_swing_trajectory(t)
        else:
            target_pos = maintain_ground_contact()
        apply_inverse_kinematics(leg, target_pos)

Quantitative Improvements:
    Walking speed increased by 25% (from 0.08 m/s to 0.10 m/s).
    Body jerk reduced by ~40%, improving onboard sensor accuracy and actuator durability.
    The robot can now take stable steps on 4–6 cm level differences without slipping. -->


<!-- 🚧 Challenges & Resolutions
Key Hurdles:
    Sensor Noise and Drift:
        Early instability due to noisy IMU data.
        Solution: Time-synchronized averaging + low-pass filtering + consistent mounting orientation.
    Wi-Fi Interruptions:
        Raspberry Pi occasionally lost SSH connection during movement due to fluctuating power.
        Solution: Switched to a dedicated power regulator and added a small UPS module.
    Motor Overheating:
        Continuous torque demand in initial gaits led to overheating of servo motors.
        Resolution: Introduced micro-pauses between gait cycles and reduced duty cycle.
Trade-offs & Iterative Fixes:
    Sacrificed gait speed slightly for higher body stability.
    Chose lighter sensors (2D LiDAR instead of 3D) to meet power constraints in Phase I.
    Validated changes through 15+ field walk tests and sensor stability graphs logged using rqt_plot.
🖼️ Visual Enhancements
You may embed the following media:
    Image 1: CAD model showing IMU and LiDAR mounting positions.
    Image 2: Side-by-side comparison: earlier unstable gait vs. current stable trot.
    Video Clip: Footage of the robot navigating through an obstacle course.
    Flowchart: Gait control loop with sensor feedback integration.
👉 [Tip: Upload these to a GitHub repo or Google Drive and embed them in your blog via markdown or iframe]
🚀 Future Enhancements -->
<!-- Planned Upgrades:
    3D LiDAR integration to enable full terrain mapping and step-height adaptation.
    Advanced SLAM (possibly RTAB-Map or Cartographer in ROS2) for GPS-free navigation.
    Force Sensors on feet for precise contact detection and active terrain compliance.
    Switch to better actuators (possibly brushless with encoders) for torque control and higher efficiency. -->