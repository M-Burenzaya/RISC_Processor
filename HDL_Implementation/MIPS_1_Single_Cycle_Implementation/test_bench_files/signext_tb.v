`timescale 1ns/1ns

module signext_tb;

// Parameters
parameter CLK_PERIOD = 10;

// Inputs
reg [15:0] a;
// Outputs
wire [31:0] y;

// Instantiate the signext module
signext dut (
    .a(a),
    .y(y)
);

// Stimulus
initial begin
    // Test with positive number
    a = 16'h1234;
    #10;
    $display("a = %h, y = %h", a, y);

    // Test with negative number
    a = 16'hFEDC;
    #10;
    $display("a = %h, y = %h", a, y);

    // Finish simulation
    $finish;
end

endmodule

