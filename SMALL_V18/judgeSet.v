module judgeSet(clk,rst_n,set,enable);
input clk,rst_n;
input [31:0]set;
output reg enable;
always @(posedge clk or negedge rst_n)
begin
if(!rst_n)
	begin
		enable<=1'b0;
	end
else
	begin
	  if(set==32'd0)
		begin
		enable<=1'b0;
		end
	  else
		begin
		enable<=1'b1;
		end
	end
end//always
endmodule 