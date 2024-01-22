library verilog;
use verilog.vl_types.all;
entity rom is
    generic(
        depth           : integer := 256;
        bits            : integer := 32;
        width           : integer := 32
    );
    port(
        adr             : in     vl_logic_vector;
        dout            : out    vl_logic_vector
    );
end rom;
