module lab4(input clk, input dout, input reset,
	output sclk, output cs, output din,
	output [7:0] leds);
clock_divider clk_div(.clk(clk), .clk_div(clk_inner));
ADC_controller adc_contr(.clk(clk_inner), .dout(dout),
	.sclk(sclk), .cs(cs), .din(din), .leds(leds), .reset(reset));
endmodule

module ADC_controller(input clk, input dout, input reset,
	output sclk, output cs, output din,
	output [7:0] leds);
parameter reset_state = 0;
parameter wait_after_reset_state = 1;
parameter communic_reg_mode_state = 2;
parameter mode_reg_write_state = 3;
parameter communic_reg_config_state = 4;
parameter config_reg_write_state = 5;
parameter enter_continious_read = 6;
parameter continious_read = 7;

reg [3:0] state = reset_state;
reg [7:0] leds_reg = 0;
reg [12:0] bit_count = 0;
reg [12:0] bit_number = 0;
reg [23:0] data = 0;
reg start = 0, clk_sync = 0;
reg output_bit = 0;
reg sclk_reg = 1;
reg delay = 0;
reg counter = 0;
reg cs_hold = 0;

assign cs = (~start | delay) & ~cs_hold;
assign sclk = sclk_reg;
assign din = output_bit;
assign leds = leds_reg;

always@ (negedge clk)
begin
	if ((state == continious_read) && ~dout && ~start)
		if(counter == 0)
			counter <= 1;
		else
		begin
			start <= 1;
		end
	else
	if (~start && (state != continious_read))
		if(counter == 0)
			counter <= 1;
		else
		begin
			start <= 1;
		end
	else
	if (bit_number == bit_count)
		start <= 0;
end

always@ (posedge clk)
begin
	if(~reset)
	begin
		state <= reset_state;
		delay <= 1;
		leds_reg <= 0;
		sclk_reg <= 1;
	end
	else
	//Start of transaction
	if (start && ~clk_sync)
	begin
		case(state)
			reset_state: begin
				bit_count <= 40;
				output_bit <= 1;
				clk_sync <= 1;
				delay <= 0;
				sclk_reg <= ~sclk_reg;
			end
			wait_after_reset_state: begin
				bit_count <= 5000;
				clk_sync <= 1;
			end
			communic_reg_mode_state: begin
				bit_count <= 8;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data = 8'h08;
				output_bit = data[7];
			end
			mode_reg_write_state: begin
				bit_count <= 24;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data = 24'h80306;
				output_bit = data[23];
			end
			communic_reg_config_state: begin
				bit_count <= 8;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data = 8'h10;
				output_bit = data[7];
			end
			config_reg_write_state: begin
				bit_count <= 24;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data = 24'h110;
				output_bit = data[23];
			end
			enter_continious_read: begin
				bit_count <= 8;
				cs_hold <= 1;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data = 8'h5C;
				output_bit = data[7];
			end
			continious_read: begin
				bit_count <= 24;
				cs_hold <= 1;
				clk_sync <= 1;
				sclk_reg <= ~sclk_reg;
				data <= 24'h0;
				output_bit <= 0;
			end
		endcase
		bit_number <= 0;
	end
	else
	//Perform transaction
	if (clk_sync && bit_number < bit_count)
	begin
		case(state)
			reset_state: begin
				sclk_reg = ~sclk_reg;
				if(sclk_reg)
					bit_number <= bit_number + 1;
			end
			wait_after_reset_state: begin
				bit_number <= bit_number + 1;
			end
			communic_reg_mode_state,
			communic_reg_config_state,
			enter_continious_read: begin
				sclk_reg = ~sclk_reg;
				if(sclk_reg)
				begin
					bit_number <= bit_number + 1;
					output_bit = data[7 - bit_number];
				end
			end
			mode_reg_write_state,
			config_reg_write_state: begin
				sclk_reg = ~sclk_reg;
				if(sclk_reg)
				begin
					bit_number <= bit_number + 1;
					output_bit = data[23 - bit_number];
				end
			end
			continious_read: begin
				cs_hold <= 1;
				sclk_reg = ~sclk_reg;
				if(sclk_reg)
				begin
					data[23 - bit_number] <= dout;
					if(bit_number < 8)
						leds_reg[7 - bit_number] <= dout;
					bit_number <= bit_number + 1;
				end
			end
		endcase
	end
	//End of transaction
	if ((bit_count != 0) && (bit_number == bit_count))
	begin
		bit_number <= bit_number + 1;
		clk_sync <= 0;
		case(state)
			reset_state: begin
				state <= wait_after_reset_state;
				delay <= 1;
			end
			wait_after_reset_state: begin
				delay <= 0;
				state <= communic_reg_mode_state;
			end
			communic_reg_mode_state:
				state <= mode_reg_write_state;
			mode_reg_write_state: begin
				state <= communic_reg_config_state;
			end
			communic_reg_config_state:
				state <= config_reg_write_state;
			config_reg_write_state:
				state <= enter_continious_read;
			enter_continious_read:
				state <= continious_read;
		endcase
	end
end
endmodule

module clock_divider(input clk, output clk_div);
parameter koeff = 3;
reg [2:0] counter = 0;
reg clk_div_inner = 0;
assign clk_div = clk_div_inner;

always@(posedge clk)
begin
	counter = counter + 1;
	if(counter == koeff)
	begin
		counter = 0;
		clk_div_inner = ~clk_div_inner;
	end
end
endmodule