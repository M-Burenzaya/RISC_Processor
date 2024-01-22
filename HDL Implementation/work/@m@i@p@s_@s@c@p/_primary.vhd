library verilog;
use verilog.vl_types.all;
entity mips_scp is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end mips_scp;
