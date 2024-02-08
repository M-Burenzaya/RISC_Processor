library verilog;
use verilog.vl_types.all;
entity adder_tb is
    generic(
        n               : integer := 32;
        clk_period      : integer := 10
    );
end adder_tb;
