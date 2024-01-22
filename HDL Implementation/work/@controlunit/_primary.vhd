library verilog;
use verilog.vl_types.all;
entity controlunit is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        memtoreg        : out    vl_logic;
        memwrite        : out    vl_logic;
        alusrc          : out    vl_logic;
        regdst          : out    vl_logic;
        regwrite        : out    vl_logic;
        jump            : out    vl_logic;
        pcsrc           : out    vl_logic;
        alucontrol      : out    vl_logic_vector(3 downto 0)
    );
end controlunit;
