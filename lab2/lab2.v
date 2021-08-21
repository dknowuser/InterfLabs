module lab2(input clk, input [7:0] data_msb,
	output sclk, output din, output sync, output ldac, output clr);
wire inner_clk;

clk_divider divider(.clk(clk), .out_clk(inner_clk));
SPI_controller my_SPI(.clk(inner_clk), .data_msb(data_msb), .sclk(sclk),
	.din(din), .sync(sync), .ldac(ldac), .clr(clr));	
endmodule

module SPI_controller #(parameter n = 16)
	(input clk, input [7:0] data_msb,
	output sclk, output din, output sync, output ldac, output clr);
parameter DACA = 0 << 15;
parameter GAIN = 0 << 14;
parameter IGNORED_BITS = 2'b11;
parameter LSBS = 4'b1100;
parameter start_clks = 0;

reg [n-1:0] input_register = 0;
reg [4:0] bit_number = 0;
reg start = 0, start_sclk = 0, inner_ldac = 1,
	inner_clr = 1, start_sync = 1, update = 0,
	hold_start = 0;
reg [2:0] start_clocks = 0;
reg start_transact = 0;
	
assign sclk = start & clk;
assign din = input_register[n-1];
assign sync = ~start & start_sync;
assign ldac = inner_ldac;
assign clr = inner_clr;

always@(negedge clk)
begin
	if(hold_start)
	begin
		if(start_clocks < start_clks)
			start_clocks <= start_clocks + 1;
		else
		begin
			hold_start <= 0;
			start <= 1;
		end
	end
	else
	if(update)
	begin
		update <= 0;
		inner_ldac <= 0;
	end
	else
	if(~inner_ldac)
		inner_ldac <= 1;
	else
	if(bit_number == n)
	begin
		update <= 1;
		start <= 0;
	end
	else
	if(~start && ~hold_start)
	begin
		hold_start <= 1;
		start_clocks <= 0;
	end
end

always@(posedge clk)
begin
	if(~start && hold_start)
	begin
		input_register = (data_msb << 4) | DACA | GAIN;
		start_sync <= 1;
	end
	if(~start && ~hold_start)
	begin
		bit_number <= 0;
		start_sync <= 1;
	end
	else
	if(start && ~hold_start)
	begin
		if(bit_number < (n-1))
		begin
			if(bit_number)
				input_register <= input_register << 1;
			bit_number <= bit_number + 1;
		end
		if(bit_number == (n-1))
		begin
			bit_number <= bit_number + 1;
			start_sync <= 0;
		end
	end
end
endmodule

module clk_divider (input clk, output out_clk);
parameter _30Mhz = 10;
reg [7:0] counter = 0;
reg out_clk_inner = 0;
assign out_clk = out_clk_inner;

always@ (posedge clk)
begin
	counter = counter + 1;
	if (counter == _30Mhz)
	begin
		counter = 0;
		out_clk_inner = ~out_clk_inner;
	end
end
endmodule