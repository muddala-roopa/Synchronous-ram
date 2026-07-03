module port_ram_tb;

reg clk;
reg reset;
reg wr_en;
reg re_en;
reg [7:0] din;
reg [3:0] wr_addr;
reg [3:0] re_addr;
wire [7:0] dout;

// Instantiate DUT
ram uut (
    .clk(clk),
    .reset(reset),
    .wr_en(wr_en),
    .re_en(re_en),
    .din(din),
    .wr_addr(wr_addr),
    .re_addr(re_addr),
    .dout(dout)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    // Initialize all signals
    reset = 1;
    wr_en = 0;
    re_en = 0;
    din = 0;
    wr_addr = 0;
    re_addr = 0;

    // Release reset
    #10 reset = 0;

    // WRITE operation
    #10;
    wr_en = 1;
    din = 8'hAA;
    wr_addr = 4'd1;

    #10;
    wr_en = 0;

    // READ operation
    #10;
    re_en = 1;
    re_addr = 4'd1;

    #10;
    re_en = 0;

    // END
    #20 $finish;
end

endmodule