library verilog;
use verilog.vl_types.all;
entity if_id is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        stall           : in     vl_logic;
        pcplus4_if      : in     vl_logic_vector(31 downto 0);
        pcplus4_id      : out    vl_logic_vector(31 downto 0);
        instr_if        : in     vl_logic_vector(31 downto 0);
        instr_id        : out    vl_logic_vector(31 downto 0)
    );
end if_id;
