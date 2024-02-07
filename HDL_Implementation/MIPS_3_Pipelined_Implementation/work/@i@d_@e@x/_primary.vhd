library verilog;
use verilog.vl_types.all;
entity id_ex is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dataone_id      : in     vl_logic_vector(31 downto 0);
        dataone_ex      : out    vl_logic_vector(31 downto 0);
        writedata_id    : in     vl_logic_vector(31 downto 0);
        writedata_ex    : out    vl_logic_vector(31 downto 0);
        extendedimm_id  : in     vl_logic_vector(31 downto 0);
        extendedimm_ex  : out    vl_logic_vector(31 downto 0);
        instr_id        : in     vl_logic_vector(31 downto 0);
        instr_ex        : out    vl_logic_vector(31 downto 0);
        regwrite_id     : in     vl_logic;
        regwrite_ex     : out    vl_logic;
        memtoreg_id     : in     vl_logic;
        memtoreg_ex     : out    vl_logic;
        memwrite_id     : in     vl_logic;
        memwrite_ex     : out    vl_logic;
        alucontrol_id   : in     vl_logic_vector(3 downto 0);
        alucontrol_ex   : out    vl_logic_vector(3 downto 0);
        alusrc_id       : in     vl_logic;
        alusrc_ex       : out    vl_logic;
        regdst_id       : in     vl_logic;
        regdst_ex       : out    vl_logic
    );
end id_ex;
