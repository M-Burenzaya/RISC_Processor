`timescale 1ns/1ns

module registerfile32_tb;

// Parameters
parameter CLK_PERIOD = 10;

// Inputs
reg clk, we, reset;
reg [4:0] ra1, ra2, wa;
reg [31:0] wd;
// Outputs
wire [31:0] rd1, rd2;

// Instantiate the registerfile32 module
registerfile32 dut (
    .clk(clk),
    .we(we),
    .reset(reset),
    .ra1(ra1),
    .ra2(ra2),
    .wa(wa),
    .wd(wd),
    .rd1(rd1),
    .rd2(rd2)
);

// Clock generation
always #((CLK_PERIOD)/2) clk = ~clk;

// Stimulus
initial begin
    // Initialize Inputs
    we = 1;
    reset = 1;
    ra1 = 5'd0;
    ra2 = 5'd0;
    wa = 5'd0;
    wd = 32'd12345;

    // Wait for some time
    #100;

    // Deassert reset
    reset = 0;

    // Wait for some time
    #100;

    // Set write enable and write data
    we = 1;
    wa = 5'd1;
    wd = 32'd54321;

    // Wait for some time
    #100;

    // Read from registers
    ra1 = 5'd0;
    ra2 = 5'd1;

    // Wait for some time
    #100;

    // Display the results
    $display("rd1 = %d", rd1);
    $display("rd2 = %d", rd2);

    // Finish simulation
    $finish;
end

endmodule

