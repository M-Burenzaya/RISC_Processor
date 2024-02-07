library verilog;
use verilog.vl_types.all;
entity control is
    generic(
        fetch           : integer := 0;
        decode          : integer := 1;
        memadrcomp      : integer := 2;
        memaccessl      : integer := 3;
        memreadend      : integer := 4;
        memaccesss      : integer := 5;
        execution       : integer := 6;
        rtypeend        : integer := 7;
        beq             : integer := 8
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        op              : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        iord            : out    vl_logic;
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        memtoreg        : out    vl_logic;
        irwrite         : out    vl_logic;
        pcsource        : out    vl_logic;
        alusrcb         : out    vl_logic_vector(1 downto 0);
        alusrca         : out    vl_logic;
        regwrite        : out    vl_logic;
        regdst          : out    vl_logic;
        pcsel           : out    vl_logic;
        aluop           : out    vl_logic_vector(1 downto 0)
    );
end control;
