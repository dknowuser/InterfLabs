library verilog;
use verilog.vl_types.all;
entity lab3 is
    port(
        clk             : in     vl_logic;
        sclk            : out    vl_logic;
        din             : out    vl_logic;
        sync            : out    vl_logic;
        ldac            : out    vl_logic;
        clr             : out    vl_logic;
        sin_freq        : in     vl_logic_vector(7 downto 0)
    );
end lab3;
