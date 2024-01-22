library verilog;
use verilog.vl_types.all;
entity ram is
    generic(
        depth           : integer := 128;
        bits            : integer := 32;
        width           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        adr             : in     vl_logic_vector;
        din             : in     vl_logic_vector;
        dout            : out    vl_logic_vector
    );
end ram;
