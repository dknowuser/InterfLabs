library verilog;
use verilog.vl_types.all;
entity clk_divider is
    generic(
        \_40Mhz\        : integer := 20;
        \_50Mhz\        : integer := 25
    );
    port(
        clk             : in     vl_logic;
        out_clk         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \_40Mhz\ : constant is 1;
    attribute mti_svvh_generic_type of \_50Mhz\ : constant is 1;
end clk_divider;
