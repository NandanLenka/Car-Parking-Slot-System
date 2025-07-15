
https://github.com/user-attachments/assets/b23b92c1-b9ae-48d9-94b2-6c43088412bc

# Car Parking Slot System

A digital parking space monitoring system implemented in *Verilog HDL* for FPGA, designed to track occupied parking slots using sensor inputs and display the count on a seven-segment display.



## Overview

This system monitors up to 15 parking spaces in real-time, using binary sensors to detect vehicle presence. The current count of occupied slots is displayed on a seven-segment display and binary LEDs, making it ideal for small to medium parking facilities.



## Features

- *Real-time Monitoring*: Tracks up to 15 parking slots simultaneously
- *Sensor Integration*: Uses binary sensors (switches) to detect vehicle presence
- *Seven-Segment Display*: Shows the current count of occupied parking spaces
- *LED Indicators*: Provides binary visual feedback for the parking count
- *FPGA Compatible*: Designed for Xilinx Basys3 FPGA board
- *Modular Design*: Well-structured Verilog modules for easy maintenance and expansion



## System Architecture

The system consists of three main Verilog modules:

- *Top_Module.v*: Integrates all sub-modules and manages signal routing
- *Parking_System.v*: Core counting logic (counts occupied slots)
- *Seven_Segment.v*: Converts binary count to seven-segment display patterns



## Hardware Requirements

- *FPGA Board*: Xilinx Basys3 Development Board
- *Display*: Four 7-segment displays (uses rightmost display)
- *Sensors*: 15 binary sensors (simulated with switches SW0-SW14)
- *Switches*: For sensor input simulation
- *LEDs*: For binary output visualization


## File Structure

| Path                                                      | Description                          |
|-----------------------------------------------------------|--------------------------------------|
| Top_Module.v                                            | Main integration module              |
| Parking_System.v                                        | Core counting logic                  |
| Seven_Segment.v                                         | Display driver                       |
| constraint.xdc                                          | Pin constraints for Basys3           |
| Car Parking Slot System.xpr                             | Xilinx Vivado project file           |
| README.md                                               | Project documentation                |
| WhatsApp.Video.2025-07-15.at.22.40.06_84c8e2c6.mp4       | Demo video                           |

## Installation and Setup

### Prerequisites

- Xilinx Vivado Design Suite
- Basys3 FPGA Development Board
- USB cable for programming

### Steps

1. *Clone the Repository*
git clone https://github.com/NandanLenka/Car-Parking-Slot-System.git
cd Car-Parking-Slot-System

text

2. *Open in Vivado*
- Launch Xilinx Vivado
- Open the project file: Car Parking Slot System.xpr

3. *Synthesize and Implement*
- Run Synthesis
- Run Implementation
- Generate Bitstream

4. *Program the FPGA*
- Connect Basys3 board via USB
- Program the generated bitstream to the FPGA



## Usage

1. *Power On*: Connect and power the Basys3 board.
2. *Simulate Sensors*: Use switches SW0-SW14 to simulate parking sensors (UP = occupied, DOWN = empty).
3. *View Count*: The rightmost seven-segment display shows the total count of occupied slots.
4. *LED Indicators*: LEDs 0-3 display the binary representation of the count.

### Example Scenarios

- *All slots empty*: Display shows "0"
- *5 slots occupied*: Display shows "5"
- *Maximum capacity*: Display shows "F" (15 in hexadecimal)


## Development Tools

- *Language*: Verilog HDL
- *Development Environment*: Xilinx Vivado
- *Simulation*: Vivado Simulator
- *Target Device*: Xilinx Artix-7 FPGA (Basys3)


