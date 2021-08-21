library verilog;
use verilog.vl_types.all;
entity SPI_controller is
    generic(
        n               : integer := 16
    );
    port(
        clk             : in     vl_logic;
        sclk            : out    vl_logic;
        din             : out    vl_logic;
        sync            : out    vl_logic;
        ldac            : out    vl_logic;
        clr             : out    vl_logic;
        sin_freq        : in     vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end SPI_controller;
