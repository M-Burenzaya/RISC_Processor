library verilog;
use verilog.vl_types.all;
entity datapath is
    generic(
        pcstart         : integer := 128
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        iord            : in     vl_logic;
        memread         : in     vl_logic;
        memwrite        : in     vl_logic;
        memtoreg        : in     vl_logic;
        irwrite         : in     vl_logic;
        pcsource        : in     vl_logic;
        alusrcb         : in     vl_logic_vector(1 downto 0);
        alusrca         : in     vl_logic;
        regwrite        : in     vl_logic;
        regdst          : in     vl_logic;
        pcsel           : in     vl_logic;
        aluctrl         : in     vl_logic_vector(3 downto 0);
        op              : out    vl_logic_vector(5 downto 0);
        zero            : out    vl_logic;
        \Function\      : out    vl_logic_vector(5 downto 0)
    );
end datapath;
