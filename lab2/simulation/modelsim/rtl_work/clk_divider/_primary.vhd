library verilog;
use verilog.vl_types.all;
entity clk_divider is
    generic(
        \_30Mhz\        : integer := 80
    );
    port(
        clk             : in     vl_logic;
        out_clk         : out    vl_logic
    );
end clk_divider;
