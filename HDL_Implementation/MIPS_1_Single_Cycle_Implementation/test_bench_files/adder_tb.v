`timescale 1ns/1ns

module adder_tb;

// Parameters
parameter n = 32;
parameter CLK_PERIOD = 10;

// Inputs
reg [n-1:0] a, b;
// Outputs
wire [n-1:0] y;

// Instantiate the adder module
adder dut (
    .a(a),
    .b(b),
    .y(y)
);

// Clock generation
reg clk = 0;
always #((CLK_PERIOD)/2) clk = ~clk;

// Stimulus
initial begin
    // Initialize Inputs
    a = 32'b10101010101010101010101010101010;
    b = 32'b01010101010101010101010101010101;

    // Wait for some time
    #100;

    // Display the results
    $display("a = %b", a);
    $display("b = %b", b);
    $display("y = %b", y);

    // Finish simulation
    $finish;
end

endmodule
