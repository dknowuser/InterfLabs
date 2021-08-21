library verilog;
use verilog.vl_types.all;
entity lab4 is
    port(
        clk             : in     vl_logic;
        dout            : in     vl_logic;
        reset           : in     vl_logic;
        sclk            : out    vl_logic;
        cs              : out    vl_logic;
        din             : out    vl_logic;
        leds            : out    vl_logic_vector(7 downto 0)
    );
end lab4;
