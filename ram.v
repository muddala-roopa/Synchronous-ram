module ram (
    input clk,
    input reset,
    input wr_en,
    input re_en,
    input [7:0] din,
    input [3:0] wr_addr,
    input [3:0] re_addr,
    output reg [7:0] dout
);

parameter width = 8;
parameter depth = 16;

reg [width-1:0] mem [depth-1:0];
integer i;

always @(posedge clk)
begin
    if (reset)
    begin
        dout <= 8'b0;
        for (i = 0; i < depth; i = i + 1)
            mem[i] <= 8'b0;
    end
    else
    begin
        // Write Operation
        if (wr_en)
            mem[wr_addr] <= din;

        // Read Operation
        if (re_en)
            dout <= mem[re_addr];
    end
end

endmodule