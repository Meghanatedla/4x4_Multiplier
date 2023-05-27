 --- 
# MAGIC
* MAGIC has its backronym as **M**anhattan **A**rtwork **G**enerator for **I**ntegrated **C**ircuits.
* Used as VLSI Layout tool.

## Run Instructions
---
>Note: Keep the technology file `SCN6M_DEEP.09.tech27` in the current directory

```
    magic - T SCN6M_DEEP.09.tech27 <layout name>.mag
```

## Saving Layout and Converting to Netlist (Post Layout Netlist)
---
In Consol Window

`To save`
```
    save <file name>.mag
```
`To extract netlist`
```
    extract all
    ext2spice -c <minimum parasitic capacitance value> <file name>.ext
```
