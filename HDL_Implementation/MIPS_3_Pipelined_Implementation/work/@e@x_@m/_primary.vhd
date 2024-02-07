library verilog;
use verilog.vl_types.all;
entity ex_m is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        aluresult_ex    : in     vl_logic_vector(31 downto 0);
        aluresult_m     : out    vl_logic_vector(31 downto 0);
        writedata_ex    : in     vl_logic_vector(31 downto 0);
        writedata_m     : out    vl_logic_vector(31 downto 0);
        writereg_ex     : in     vl_logic_vector(4 downto 0);
        writereg_m      : out    vl_logic_vector(4 downto 0);
        regwrite_ex     : in     vl_logic;
        regwrite_m      : out    vl_logic;
        memtoreg_ex     : in     vl_logic;
        memtoreg_m      : out    vl_logic;
        memwrite_ex     : in     vl_logic;
        memwrite_m      : out    vl_logic
    );
end ex_m;
