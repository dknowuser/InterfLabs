library verilog;
use verilog.vl_types.all;
entity clock_divider is
    generic(
        koeff           : integer := 3
    );
    port(
        clk             : in     vl_logic;
        clk_div         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of koeff : constant is 1;
end clock_divider;
