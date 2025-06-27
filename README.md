# Home Energy Monitor - VHDL FPGA Project

This repository contains a VHDL-based FPGA project designed as part of Lab 3 for the **ECE 124: Digital Circuits and Systems** course at the University of Waterloo (Spring 2025). The project demonstrates behavioral and structural VHDL techniques to implement a **home energy monitoring controller**, with integrated testing and simulation features.

## 🔧 Project Overview

The design simulates a simplified smart HVAC system. Key components include:

- **4-bit Magnitude Comparator (Compx4):** Determines if more energy is needed for heating or cooling.
- **On-chip Tester:** Verifies comparator output during a dedicated test mode.
- **HVAC Controller (Behavioral VHDL):** Adjusts simulated temperature up or down.
- **Energy Monitor:** Coordinates HVAC behavior based on environment, comparator results, and user input.
- **Multiplexer:** Selects between user-set desired temperature and vacation temperature.
- **Sequential Components:** Includes bidirectional shift registers and an up/down counter.

## 🧠 Learning Objectives

Through this project, students learn to:

- Understand VHDL behavioral vs structural coding styles.
- Simulate and synthesize combinational and sequential logic.
- Use on-chip testing and debugging techniques.
- Interface VHDL components with real FPGA hardware using Quartus Prime and ModelSim.

