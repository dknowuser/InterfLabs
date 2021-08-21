library verilog;
use verilog.vl_types.all;
entity lab52 is
    generic(
        start           : integer := 0;
        get_data        : integer := 1;
        stop            : integer := 2;
        hold            : integer := 3;
        hold_length     : integer := 5
    );
    port(
        clk             : in     vl_logic;
        reset_in        : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rxf             : in     vl_logic;
        rd              : out    vl_logic;
        wr              : out    vl_logic;
        reset_out       : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of start : constant is 1;
    attribute mti_svvh_generic_type of get_data : constant is 1;
    attribute mti_svvh_generic_type of stop : constant is 1;
    attribute mti_svvh_generic_type of hold : constant is 1;
    attribute mti_svvh_generic_type of hold_length : constant is 1;
end lab52;
