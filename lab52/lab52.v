module lab52(input clk, input reset_in, input [7:0] data_in,
	input rxf, output rd, output wr, output reset_out,
	output [7:0] data_out);
parameter start = 0;
parameter get_data = 1;
parameter stop = 2;
	
reg reset = 1;
reg rd_inner = 1;
reg wr_inner = 1;
reg [1:0] state = start;
reg [7:0] data = 0;

assign reset_out = reset;
assign rd = rd_inner;
assign wr = wr_inner;
assign data_out = data;
	
always@(posedge clk)
begin
	if(reset_in)
	begin
		reset <= 1;
		case(state)
		start: begin
			if(~rxf && rd_inner)
			begin
				rd_inner <= 0;
				state <= get_data;
			end
		end
		get_data: begin
			data <= data_in;
			state <= stop;
		end
		stop: begin
			rd_inner <= 1;
			if (rxf)
				state <= start;
		end
		endcase
	end
	else
	begin
		reset <= 0;
		state <= start;
	end
end
endmodule