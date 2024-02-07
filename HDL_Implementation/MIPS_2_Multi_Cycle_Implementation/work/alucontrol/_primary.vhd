library verilog;
use verilog.vl_types.all;
entity alucontrol is
    port(
        aluop           : in     vl_logic_vector(1 downto 0);
        fnfield         : in     vl_logic_vector(5 downto 0);
        aluctrl         : out    vl_logic_vector(3 downto 0)
    );
end alucontrol;
