module lab51(input clk, input reset_in, input [7:0] data_in,
	input txe, output rd, output wr, output reset_out,
	output [7:0] data_out);
parameter counter_freq = 1;
	
reg reset = 1;
reg rd_inner = 1;
reg wr_inner = 1;
reg [7:0] data = 0;
reg [1:0] counter = counter_freq;

assign reset_out = reset;
assign rd = rd_inner;
assign wr = wr_inner;
assign data_out = data;
	
always@(posedge clk)
begin
	if(reset_in)
	begin
		reset <= 1;
		if(~txe)
			if(counter)
			begin
				counter <= counter - 1;
				if(wr_inner)
					data <= data_in;
			end
			else
			begin
				wr_inner <= ~wr_inner;
				counter <= counter_freq;
			end
	end
	else
	begin
		reset <= 0;
		counter <= counter_freq;
	end
end
endmodule