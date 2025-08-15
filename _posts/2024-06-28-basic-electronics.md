---
title: Basic Electronics & Microcontrollers
date: 2024-06-28 00:00:00 +0530
categories: [Blog, Electronics]
tags: [esp now, robotics]     # TAG names should always be lowercase
author: <author_id>
# authors: [<author1_id>, <author2_id>]   # for multiple entries
mermaid: true       #diagram gen tool
math: true          #MathJax enabled
image: /assets/images/wokwi_circuits_1.png    #to simply add an image
# description: Short summary of the post.
# toc: false        #to turn off table of contents on right side for this post
# comments: false      #to turn off comments for this post
# pin: true             #to pin to top of homepage
# image:                        #for thumbnail
#   path: /path/to/image
#   alt: image alternative text
excerpt: "This post introduces the basics of electronics and microcontrollers, including Arduino, ESPressif and IoT."
---


# Introduction
These notes consolidate key concepts in **microcontrollers**, **Arduino programming**, **ESP series boards**, and **IoT fundamentals**, as discussed in the ***Summer of Robotics*** technical sessions. The goal is to provide a concise yet thorough technical reference for students and enthusiasts interested in automation, connectivity, and embedded systems.

## Microcontrollers – The Core of Embedded Systems
A **microcontroller (uC)** is a compact integrated circuit designed to execute specific control-oriented tasks. It combines:
- **CPU** (processing logic)
- **Memory** (RAM/Flash)
- **I/O Peripherals** (digital, analog, communication)

Its function can be summarized as:
1. **Input** – Receiving signals from sensors.
2. **Processing** – Making decisions based on programmed logic.
3. **Output** – Controlling actuators such as motors, LEDs, or relays.

### Example Applications
- Automated lighting control
- Water tank overflow prevention
- Server temperature management


## Arduino – Accessible Hardware for Rapid Prototyping

**Arduino boards** (e.g., Uno, Mega) are widely used for beginners and professionals due to their simplicity and large ecosystem.

### Core Hardware Components
- **Microcontroller** (ATmega328P in Arduino Uno)
- **USB Interface** for programming and power
- **Digital Pins** for ON/OFF control
- **Analog Input Pins** for sensor data
- **PWM Pins (~)** for analog-like output via `analogWrite()`


## Key Communication Protocols

- **I²C (Inter-Integrated Circuit)**  
  SDA – Serial Data, SCL – Serial Clock.  
  Used for connecting multiple devices over two wires.
  
- **UART (Universal Asynchronous Receiver/Transmitter)**  
  TX – Transmit, RX – Receive.  
  Used for serial communication between devices or with a PC.

- **PWM (Pulse Width Modulation)**  
  Technique for simulating an analog output using a digital pin.  
  Example:  
  - `analogWrite(0)` → 0% duty cycle (OFF)  
  - `analogWrite(255)` → 100% duty cycle (ON)


## Practical Prototyping in Simulators

For demonstration and experimentation, **virtual electronics simulators** allow safe and rapid testing:
- **Tinkercad** – beginner-friendly, ideal for Arduino Uno projects.
- **Wokwi** – supports Arduino, ESP8266, ESP32, and peripherals.

### Example Simulator Tasks
- Traffic light using RGB LED and timers.
- Security alarm activation with delay.
- Motor speed control via PWM.


## Beyond Arduino – ESP8266 and ESP32

While Arduino is great for wired control, IoT applications often demand low resource **wireless connectivity**.

### ESP8266
- Embedded microcontroller with integrated WiFi.
- Suitable for low-power IoT projects.

### ESP32
- Improved ESP8266 with:
  - Dual-core processor (up to 240 MHz)
  - Integrated WiFi + Bluetooth
  - More GPIO and peripherals
  - Higher supported baud rates
![ESP pinout](/assets/images/esp_pinout.jpg){: w="300"}
_ESP32 pinout_

### Development Environments
- **Arduino IDE** (with esp board url added to preferences)
- **ESP-IDF** (Espressif IoT Development Framework)
- **PlatformIO** (VS Code integration)

## Serial Communication Concepts

![Baud](/assets/images/Baudbit.jpg){: w="400"  }
_Baud Rate and Bit rate_

- **Baud Rate**: Number of different signal patterns in a second.
- **Bit Rate**: Number of bits transmitted per second.  
  Formula: `Bit Rate = Baud Rate × Bits per Signal`

Changing baud rates can affect reliability, especially in wireless microcontrollers like the ESP32.

## Internet of Things (IoT) Fundamentals

**Definition**: A network of devices (“things”) that communicate and exchange data over the internet.

### IoT System Layers
1. **Perception(Sensing) Layer** – Sensors for data collection.
2. **Transport(Network) Layer** – Network/Communication protocols (HTTP, MQTT, sockets).
3. **Processing Layer**- Storage and computation on the data collected to produce meaningful output
4. **Application(People) Layer** – API management for Data visualization, control, and analytics.


## Practical IoT Example – ThingSpeak Cloud

**Objective**: Upload temperature and humidity data to the cloud.

**Process**:
1. Read data from sensors through microcontroller(e.g., DHT11/DHT22).
2. Send via ESP8266/ESP32 to ThingSpeak using write API in http.
3. Authenticate with **API Keys** for secure data access.
4. Visualize and analyze data in real-time.


## Recommended Learning Extensions
- Experiment with **ESP-NOW protocol** for device-to-device communication without a router.
- Explore **WiFi protocol standards** like to optimize IoT device performance.
- Build small-scale IoT projects such as:
  - Smart irrigation systems
  - Wearable health monitors
  - Remote environmental sensing

<!-- 
## Conclusion
Understanding microcontrollers, communication protocols, and IoT frameworks forms the foundation for modern automation. Arduino provides a beginner-friendly entry point, while ESP8266/ESP32 enable scalable wireless projects. Combining these tools with cloud services like ThingSpeak opens the door to building fully connected, intelligent systems. -->
