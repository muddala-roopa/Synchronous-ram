# Synchronous RAM Design and Verification
This project implements a 16-word synchronous RAM using Verilog HDL and verifies it using ModelSim.
## Features
- 16 x 8-bit memory
- Synchronous read and write operations
- Reset functionality
- Independent read/write enable control
- Supports simultaneous read and write operations
## Verification Scenarios
- Reset verification
- Multiple write operations
- Multiple read operations
- Read-after-write validation
- Overwrite condition check
- Simultaneous read/write operation
- Reset during operation
- Address-based memory testing (15+ scenarios)
## Files
- port_ram.v : RTL Design
- port_ram_tb.v : Testbench
- waveform.png : Simulation output
- modelsim_structure.png : Hierarchy view
## Tool Used
ModelSim
