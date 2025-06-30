# Home Energy Monitor – VHDL FPGA Project

This project is part of **ECE 124: Digital Circuits and Systems** at the University of Waterloo (Spring 2025). It demonstrates the use of structural and behavioral VHDL to implement a simple home energy monitoring controller on an FPGA.

## 🔍 Overview

The system simulates a smart HVAC controller that adjusts temperature based on input conditions, comparator logic, and control modes. It includes:

- **4-bit Magnitude Comparator (Compx4)** – Determines whether heating or cooling is needed.
- **HVAC Controller** – Simulates temperature changes based on system conditions.
- **On-Chip Tester** – Validates comparator functionality automatically.
- **Energy Monitor Control Unit** – Drives logic based on sensor inputs and temperature targets.
- **Sequential Components** – Includes a bidirectional shift register and an up/down counter.

## 🧠 Learning Objectives

- Understand and apply structural vs. behavioral VHDL styles.
- Simulate and synthesize combinational and sequential logic circuits.
- Perform functional simulations using ModelSim.
- Deploy designs to a MAX10 FPGA development board using Quartus Prime.
- Implement on-chip test logic for validation.

## 📁 File Structure

- `Compx1.vhd` – 1-bit magnitude comparator (Dataflow VHDL)
- `Compx4.vhd` – 4-bit comparator combining structural and dataflow coding
- `HVAC.vhd` – Behavioral model of HVAC unit with temperature control
- `Tester.vhd` – On-chip test logic for verifying comparator functionality
- `ShiftReg.vhd` – 8-bit bidirectional shift register using sequential logic
- `Counter.vhd` – 8-bit up/down binary counter
- `LogicalStep_Lab3_top.vhd` – Top-level VHDL entity connecting all modules
- `README.md` – Project overview and documentation

## ⚙️ Simulation & Demo Notes

- **Simulation Mode:** Set `HVAC_SIM := TRUE` for functional simulations.
- **FPGA Demo Mode:** Set `HVAC_SIM := FALSE` and comment out `HVAC_TEMP` port to compile.
- **Clock Source:** 50 MHz (`clkin_50`)
- **Outputs:** Status LEDs and two 7-segment displays for current and target temperatures.

## 🛠 Tools Used

- Quartus Prime 18.1
- ModelSim-Altera
- LogicalStep MAX10 FPGA Board

## 📌 Features

- Manual and vacation temperature modes via switches and buttons
- Safety override for open doors/windows
- Functional test mode with LED pass/fail indicator
- Real-time visual feedback using LEDs and 7-segment displays

## 📷 System Overview

### 🔧 Home Energy Monitor Block Diagram (From Manual)

![Home Energy Monitor Top Level Design](https://github.com/user-attachments/assets/7bd3bbe5-8b91-43b2-aacb-bdd3c482509a)
*(Reference from ECE 124 Lab Manual)*
