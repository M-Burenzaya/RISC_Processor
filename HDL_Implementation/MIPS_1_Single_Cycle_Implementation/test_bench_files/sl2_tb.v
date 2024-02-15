`timescale 1ns/1ns

module slt2_tb;

// Parameters
parameter CLK_PERIOD = 10;

// Inputs
reg [31:0] a;
// Outputs
wire [31:0] y;

// Instantiate the slt2 module
slt2 dut (
    .a(a),
    .y(y)
);

// Stimulus
initial begin
    // Test with a positive number
    a = 32'h12345678;
    #10;
    $display("a = %h, y = %h", a, y);

    // Test with a negative number
    a = 32'hFEDCBA98;
    #10;
    $display("a = %h, y = %h", a, y);

    // Finish simulation
    $finish;
end

endmodule

