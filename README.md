 ---
 # 4x4 Multiplier

This repository contains the design of a 4x4 Multiplier to estimate leakage current/power for all input combinations and propagation delays for all possible arc including critical path. It also contains the design of the layout of the multiplier.

The aim of the project was to compare the pre-layout and post-layout results.

The functionality of the 4x4 multiplier was verified in HDL.

## EDA Tools Used
---
1. `ngspice` for the circuit design
2. `Magic` for the layout
3. `Verilog` for the HDL design

>For more details about the design and implementation please refer to the [Project Report](Project_Report.pdf)

## Contents
---
```
├── MAGIC
│   ├── AND
│   │   ├── AND_magic.png
│   │   ├── AND.ext
│   │   ├── AND.mag
│   │   └── SCN6M_DEEP.09.tech27
│   │
│   ├── FA
│   │   ├── FA_magic.png
│   │   ├── FA.ext
│   │   ├── FA.mag
│   │   └── SCN6M_DEEP.09.tech27
│   │
│   ├── HA
│   │   ├── HA_magic.png
│   │   ├── HA.ext
│   │   ├── HA.mag
│   │   └── SCN6M_DEEP.09.tech27
│   │
│   ├── MULTIPLIER
│   │   ├── 4_bit_Multiplier.ext
│   │   ├── 4_bit_Multiplier.mag
│   │   ├── Magic_Layout.png
│   │   └── SCN6M_DEEP.09.tech27
│   └── README.md
│
├── POST_LAYOUT
│   ├── AND
│   │   ├── AND_Post_Layout_leakage.spice
│   │   ├── AND_Post_Layout_leakage.txt
│   │   ├── AND_Post_Layout_pd.png
│   │   ├── AND_Post_Layout_pd.spice
│   │   └── AND_Post_Layout.png
│   │
│   ├── FA
│   │   ├── FA_Post_Layout_leakage.spice
│   │   ├── FA_Post_Layout_leakage.txt
│   │   ├── FA_Post_Layout_pd.png
│   │   ├── FA_Post_Layout_pd.spice
│   │   └── FA_Post_Layout.png
│   │
│   ├── HA
│   │   ├── HA_Post_Layout_leakage.spice
│   │   ├── HA_Post_Layout_leakage.txt
│   │   ├── HA_Post_Layout_pd.png
│   │   ├── HA_Post_Layout_pd.spice
│   │   └── HA_Post_Layout.png
│   │
│   ├── MULTIPLIER
│   │   ├── 4_bit_Multiplier_Post_Layout_A.png
│   │   ├── 4_bit_Multiplier_Post_Layout_B.png
│   │   ├── 4_bit_Multiplier_Post_Layout_leakage.spice
│   │   ├── 4_bit_Multiplier_Post_Layout_leakage.txt
│   │   ├── 4_bit_Multiplier_Post_Layout_OUT.png
│   │   ├── 4_bit_Multiplier_Post_Layout_pd.spice
│   │   ├── 4_bit_Multiplier_Post_Layout_pd.txt
│   │   └── Post_Layout_leakage.py
│   │
│   ├── README.md
│   └── TSMC_180nm.txt
│
├── PRE_LAYOUT
│   ├── AND
│   │   ├── AND_Pre_Layout_leakage.cir
│   │   ├── AND_Pre_Layout_leakage.txt
│   │   ├── AND_Pre_Layout_pd.cir
│   │   ├── AND_Pre_Layout_pd.png
│   │   └── AND_Pre_Layout.png
│   │
│   ├── FA
│   │   ├── FA_Pre_Layout_leakage.cir
│   │   ├── FA_Pre_Layout_leakage.txt
│   │   ├── FA_Pre_Layout_pd.cir
│   │   ├── FA_Pre_Layout_pd.png
│   │   └── FA_Pre_Layout.png
│   │
│   ├── HA
│   │   ├── HA_Pre_Layout_leakage.cir
│   │   ├── HA_Pre_Layout_leakage.txt
│   │   ├── HA_Pre_Layout_pd.cir
│   │   ├── HA_Pre_Layout_pd.png
│   │   └── HA_Pre_Layout.png
│   │
│   ├── MULTIPLIER
│   │   ├── 4_bit_Multiplier_Pre_Layout_A.png
│   │   ├── 4_bit_Multiplier_Pre_Layout_B.png
│   │   ├── 4_bit_Multiplier_Pre_Layout_leakage.cir
│   │   ├── 4_bit_Multiplier_Pre_Layout_leakage.txt
│   │   ├── 4_bit_Multiplier_Pre_Layout_OUT.png
│   │   ├── 4_bit_Multiplier_Pre_Layout_pd.cir
│   │   ├── 4_bit_Multiplier_Pre_Layout_pd.txt
│   │   ├── 22nm_MGK.pm
│   │   ├── AND.sub
│   │   ├── FA.sub
│   │   ├── HA.sub
│   │   ├── INVERTER.sub
│   │   ├── NAND.sub
│   │   └── Pre_Layout_leakage.py
│   │
│   ├── README.md
│   └── TSMC_180nm.txt  
│
├── VERILOG
│   ├── 4_bit_Multiplier.v
│   ├── multiplier_gtkwave_1.png
│   ├── multiplier_gtkwave_2.png
│   ├── multiplier_gtkwave_3.png
│   ├── README.md
│   ├── test_bench
│   ├── test_bench.v
│   └── test_bench.vcd
│   
├── Project_Report.pdf
└── README.md 

```
--- 
The implementation of a 4x4 multiplier involves utilizing AND gates, half adders, and full adders. To evaluate the performance of the design, separate measurements were taken for the propagation delays and leakage currents of each individual block. A comparison was conducted between the pre-layout and post-layout results.

Additionally, the leakage currents and propagation delays were measured for all potential arcs, including the critical paths, in both the pre-layout and post-layout designs of the final circuit. These measurements provide valuable insights into the performance and efficiency of the circuit at different stages of its development.

--- 

> **Note**: To execute spice netlists and visualize the layouts in their original format, it is necessary to have the corresponding tech files placed in the `spice` and `magic` directories. For ngspice, I utilized the `TSMC_180nm.txt` tech file, while for magic, I employed `SCN6M_DEEP.09.tech27`.

