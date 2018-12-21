module changesign(datain,dataout,signout);
input [31:0]datain;
output [31:0]dataout;
output signout;
reg [31:0]dataout;
reg signout;

always @(datain[31] == 0)
    begin
    dataout = datain;
    sign = 0;
    end
    
always @(datain[31] == 0)
    begin
    dataout = (~datain) + 1;
    sign = 1;
    end
endmodule
    