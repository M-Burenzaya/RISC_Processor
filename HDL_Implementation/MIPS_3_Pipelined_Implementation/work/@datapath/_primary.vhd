library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regdst_id       : in     vl_logic;
        regwrite_id     : in     vl_logic;
        alusrc_id       : in     vl_logic;
        b               : in     vl_logic;
        jump_id         : in     vl_logic;
        memtoreg_id     : in     vl_logic;
        memwrite_id     : in     vl_logic;
        branch_id       : in     vl_logic;
        alucontrol_id   : in     vl_logic_vector(3 downto 0);
        readdata_m      : in     vl_logic_vector(31 downto 0);
        instr_if        : in     vl_logic_vector(31 downto 0);
        memwrite_m      : out    vl_logic;
        instr_id        : out    vl_logic_vector(31 downto 0);
        pc_if           : out    vl_logic_vector(31 downto 0);
        writedata_m     : out    vl_logic_vector(31 downto 0);
        aluresult_m     : out    vl_logic_vector(31 downto 0)
    );
end datapath;
