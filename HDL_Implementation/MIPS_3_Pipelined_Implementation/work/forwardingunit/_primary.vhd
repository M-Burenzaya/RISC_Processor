library verilog;
use verilog.vl_types.all;
entity forwardingunit is
    port(
        rs_ex           : in     vl_logic_vector(4 downto 0);
        rt_ex           : in     vl_logic_vector(4 downto 0);
        rs_id           : in     vl_logic_vector(4 downto 0);
        rt_id           : in     vl_logic_vector(4 downto 0);
        writereg_m      : in     vl_logic_vector(4 downto 0);
        writereg_wb     : in     vl_logic_vector(4 downto 0);
        regwrite_m      : in     vl_logic;
        regwrite_wb     : in     vl_logic;
        forwardae       : out    vl_logic_vector(1 downto 0);
        forwardbe       : out    vl_logic_vector(1 downto 0);
        forwardad       : out    vl_logic;
        forwardbd       : out    vl_logic
    );
end forwardingunit;
