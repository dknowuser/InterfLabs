module lab1 #(parameter n = 10)
	(input clk, input [n-3:0] data,
	output sck, output mosi, output ss);
wire start, clk_inner;
wire [1:0] inner_data;
assign inner_data[0] = 0;
assign inner_data[1] = 0;

clk_divider divider(.clk(clk), .out_clk(clk_inner));
pulse_generator pulse_gen(.clk(clk_inner), .Start(start));
SPI_controller spi(.clk(clk_inner), .Start(start),
	.data({inner_data, data}), .sck(sck), .mosi(mosi), .ss(ss));
endmodule

module SPI_controller #(parameter n = 10)
	(input clk, input Start, input [n-1:0] data,
	output sck, output mosi, output ss);
	
reg start = 0, clk_sync = 0;
reg [n-1:0] inner_data = 0;
reg [n-1:0] bit_number = 0;

assign ss = ~start;
assign mosi = clk_sync & inner_data[n-1];
assign sck = clk_sync & clk;
	
always@ (posedge clk)
begin
	if (bit_number == n)
		start <= 0;
	if (Start)
		start <= 1;
end

always@ (negedge clk)
begin
	if (start && ~clk_sync)
	begin
		clk_sync <= 1;
		inner_data <= data;
		bit_number <= 0;
	end
	else
	if (clk_sync && bit_number < (n-1))
	begin
		inner_data <= inner_data << 1;
		bit_number <= bit_number + 1;
	end
	if (bit_number == (n-1))
	begin
		bit_number <= bit_number + 1;
		clk_sync <= 0;
	end
end
endmodule

module pulse_generator #(parameter n = 15)
	(input clk, output Start);
reg [n-1:0] counter = 0;
reg start = 0;
assign Start = start;

always@ (negedge clk)
begin
	if (counter == 0)
		start <= 1;
	else
		start <= 0;
		
	counter = counter + 1;
	if (counter == (n+2))
		counter = 0;
end
endmodule

module clk_divider (input clk, output out_clk);
parameter _40Mhz = 40 / 2;
parameter _50Mhz = 50 / 2;
reg [7:0] counter = 0;
reg out_clk_inner = 0;
assign out_clk = out_clk_inner;

always@ (posedge clk)
begin
	counter = counter + 1;
	if (counter == _40Mhz)
	begin
		counter = 0;
		out_clk_inner = ~out_clk_inner;
	end
end
endmodule