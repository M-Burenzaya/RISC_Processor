library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regdst          : in     vl_logic;
        regwrite        : in     vl_logic;
        alusrc          : in     vl_logic;
        jump            : in     vl_logic;
        memtoreg        : in     vl_logic;
        pcsrc           : in     vl_logic;
        alucontrol      : in     vl_logic_vector(3 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0);
        instr           : in     vl_logic_vector(31 downto 0);
        pc              : out    vl_logic_vector(31 downto 0);
        zeroflag        : out    vl_logic;
        writedata       : out    vl_logic_vector(31 downto 0);
        aluresult       : out    vl_logic_vector(31 downto 0)
    );
end datapath;
