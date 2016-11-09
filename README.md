# FPGA
3x3, 9 cells(Logic Box) FPGA implementation In Verilog HDL. <br />
This is a very naive FPGA implementation in verlog HDL. This FPGA utilises 4 input LUT and 5bit channel width. <br />
Using these 9 cells any combinational or sequential circuit can be implemented. As of now I have implemented a 4 bit Full adder and this circuit utilises 8 Logic blocks(out of the 9 Logic Blocks available) of the FPGA. <br />
An array of FPGA is also possible by connecting together multiple units to implement complex boolean functions. <br />

# Switch Box
The switch box in our architecture was designed to route the signals in all the directions and is fully programmable.However, the signals aren’t allowed to change lines during switching.The simplicity of the design gives it an inherent flexibility of variable channel width i.e at any point of time the channel width can increase or decrease with minimal changes in the switch box structure.

<div style="width:40%; margin:auto; margin-bottom:10px; margin-top:20px;">
  <img style="width:100%" src="https://github.com/sarthakbp/FPGA-/blob/master/Images/Switchbox.jpg">
</div>

