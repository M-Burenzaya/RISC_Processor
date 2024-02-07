library verilog;
use verilog.vl_types.all;
entity m_wb is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        readdata_m      : in     vl_logic_vector(31 downto 0);
        readdata_wb     : out    vl_logic_vector(31 downto 0);
        aluresult_m     : in     vl_logic_vector(31 downto 0);
        aluresult_wb    : out    vl_logic_vector(31 downto 0);
        writereg_m      : in     vl_logic_vector(4 downto 0);
        writereg_wb     : out    vl_logic_vector(4 downto 0);
        regwrite_m      : in     vl_logic;
        regwrite_wb     : out    vl_logic;
        memtoreg_m      : in     vl_logic;
        memtoreg_wb     : out    vl_logic
    );
end m_wb;
