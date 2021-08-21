library verilog;
use verilog.vl_types.all;
entity pulse_generator is
    generic(
        n               : integer := 10
    );
    port(
        clk             : in     vl_logic;
        Start           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end pulse_generator;
