`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 21:33:57
// Design Name: 
// Module Name: SIPO_register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SIPO_register(
input D,
input clk,
input load,
output [3:0]Q
);

reg [3:0]temp;
always@( posedge clk ) begin
if( load == 0 )
temp = temp;
else
temp = {temp[2:0],D};
end
assign Q = temp;
endmodule


module SIPO_register_tb();
reg D, clk, load;
wire [3:0]Q;

SIPO_register u0(.D(D), .clk(clk), .load(load), .Q(Q));
always #20 clk = ~clk;
initial begin
clk = 1'b1;
load = 1'b1;

#10 D = 1'b1;
#200 D = 1'b0;
#250 load = 1'b0;
#100 D = 1'b1;
#50 $finish;

end
endmodule