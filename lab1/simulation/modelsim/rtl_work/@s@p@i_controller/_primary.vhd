library verilog;
use verilog.vl_types.all;
entity SPI_controller is
    generic(
        n               : integer := 10
    );
    port(
        clk             : in     vl_logic;
        Start           : in     vl_logic;
        data            : in     vl_logic_vector;
        sck             : out    vl_logic;
        mosi            : out    vl_logic;
        ss              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end SPI_controller;
