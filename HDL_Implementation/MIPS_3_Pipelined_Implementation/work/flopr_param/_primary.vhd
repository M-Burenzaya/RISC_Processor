library verilog;
use verilog.vl_types.all;
entity flopr_param is
    generic(
        n               : integer := 32
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        q               : out    vl_logic_vector;
        d               : in     vl_logic_vector
    );
end flopr_param;
