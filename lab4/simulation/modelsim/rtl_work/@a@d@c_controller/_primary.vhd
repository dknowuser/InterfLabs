library verilog;
use verilog.vl_types.all;
entity ADC_controller is
    generic(
        reset_state     : integer := 0;
        wait_after_reset_state: integer := 1;
        communic_reg_mode_state: integer := 2;
        mode_reg_write_state: integer := 3;
        communic_reg_config_state: integer := 4;
        config_reg_write_state: integer := 5;
        enter_continious_read: integer := 6;
        continious_read : integer := 7
    );
    port(
        clk             : in     vl_logic;
        dout            : in     vl_logic;
        reset           : in     vl_logic;
        sclk            : out    vl_logic;
        cs              : out    vl_logic;
        din             : out    vl_logic;
        leds            : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of reset_state : constant is 1;
    attribute mti_svvh_generic_type of wait_after_reset_state : constant is 1;
    attribute mti_svvh_generic_type of communic_reg_mode_state : constant is 1;
    attribute mti_svvh_generic_type of mode_reg_write_state : constant is 1;
    attribute mti_svvh_generic_type of communic_reg_config_state : constant is 1;
    attribute mti_svvh_generic_type of config_reg_write_state : constant is 1;
    attribute mti_svvh_generic_type of enter_continious_read : constant is 1;
    attribute mti_svvh_generic_type of continious_read : constant is 1;
end ADC_controller;
