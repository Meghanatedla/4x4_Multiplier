 ---
 # Verilog
* A verilog module is written for a hardware component.
* A testbench is written to give various inputs at time intervals and obtain a waveform of output signals.
* GTKWave is a waveform visualizer that examines the input and output signal states at various time instants.

## Run Instructions
---
To compile testbench and the verilog module:
```
​   iverilog -o <output file> <testbench name>.v <code name>.v
```
Execute the compiled file:
```
    vvp <output file> 
```
To open GTKWave:
```
    gtkwave <output file>.vcd
```
