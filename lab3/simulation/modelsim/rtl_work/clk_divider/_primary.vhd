library verilog;
use verilog.vl_types.all;
entity clk_divider is
    generic(
        \_30Mhz\        : integer := 1
    );
    port(
        clk             : in     vl_logic;
        out_clk         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \_30Mhz\ : constant is 1;
end clk_divider;
