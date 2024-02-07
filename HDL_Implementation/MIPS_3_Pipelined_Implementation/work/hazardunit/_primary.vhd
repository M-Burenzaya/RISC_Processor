library verilog;
use verilog.vl_types.all;
entity hazardunit is
    port(
        rt_ex           : in     vl_logic_vector(4 downto 0);
        rs_d            : in     vl_logic_vector(4 downto 0);
        rt_d            : in     vl_logic_vector(4 downto 0);
        writereg_m      : in     vl_logic_vector(4 downto 0);
        writereg_ex     : in     vl_logic_vector(4 downto 0);
        memtoreg_e      : in     vl_logic;
        memtoreg_m      : in     vl_logic;
        regwrite_ex     : in     vl_logic;
        branch_id       : in     vl_logic;
        jump_id         : in     vl_logic;
        stall_if_id     : out    vl_logic;
        stall_id_ex     : out    vl_logic;
        flush_ex_mem    : out    vl_logic
    );
end hazardunit;
