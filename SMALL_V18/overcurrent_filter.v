module overcurrent_filter(clk,rst_n,bit_in,bit_out);
input clk,rst_n,bit_in;
output bit_out;
reg bit_out;
reg buffer; 
reg [9:0]counter; 
always@(posedge clk or negedge rst_n)
begin
if(rst_n==1'b0)
	begin
		bit_out<=1'b0; 
		buffer<=1'b0; 
		counter<=10'd0; 
	end
else
	begin
			if(buffer==bit_in)
				begin
				counter<=counter+1'b1; 
				if(counter==10'd200)
					begin
					bit_out<=bit_in; 		
					end
				else
					begin
					bit_out<=bit_out; 				
					end			
				end
			else
				begin
				counter<=10'd0; 
				end
			buffer<=bit_in; 
	end
end//always
endmodule 