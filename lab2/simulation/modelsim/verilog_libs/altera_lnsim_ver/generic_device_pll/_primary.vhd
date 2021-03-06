library verilog;
use verilog.vl_types.all;
entity generic_device_pll is
    generic(
        reference_clock_frequency: string  := "0 ps";
        output_clock_frequency: string  := "0 ps";
        forcelock       : string  := "false";
        nreset_invert   : string  := "false";
        pll_enable      : string  := "false";
        pll_fbclk_mux_1 : string  := "glb";
        pll_fbclk_mux_2 : string  := "fb_1";
        pll_m_cnt_bypass_en: string  := "false";
        pll_m_cnt_hi_div: integer := 1;
        pll_m_cnt_in_src: string  := "ph_mux_clk";
        pll_m_cnt_lo_div: integer := 1;
        pll_n_cnt_bypass_en: string  := "false";
        pll_n_cnt_hi_div: integer := 1;
        pll_n_cnt_lo_div: integer := 1;
        pll_vco_ph0_en  : string  := "false";
        pll_vco_ph1_en  : string  := "false";
        pll_vco_ph2_en  : string  := "false";
        pll_vco_ph3_en  : string  := "false";
        pll_vco_ph4_en  : string  := "false";
        pll_vco_ph5_en  : string  := "false";
        pll_vco_ph6_en  : string  := "false";
        pll_vco_ph7_en  : string  := "false"
    );
    port(
        coreclkfb       : in     vl_logic;
        fbclkfpll       : in     vl_logic;
        lvdsfbin        : in     vl_logic;
        nresync         : in     vl_logic;
        pfden           : in     vl_logic;
        refclkin        : in     vl_logic;
        zdb             : in     vl_logic;
        fbclk           : out    vl_logic;
        fblvdsout       : out    vl_logic;
        lock            : out    vl_logic;
        vcoph           : out    vl_logic_vector(7 downto 0)
    );
end generic_device_pll;
