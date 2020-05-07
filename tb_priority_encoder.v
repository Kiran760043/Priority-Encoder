//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Priority Encoder
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tb_priority_encoder();

// inputs to the DUT
    reg [7:0] in = 8'h0;
// outputs from the DUT
    wire [2:0] out;


priority_encoder DUT (.in(in), .out(out));

initial
    begin
        $display($time, " << Starting the Simulation >>");
        $monitor($time, "in = %b, out = %b", in, out);
    end

initial
    begin
        for(integer i=0; i <= 255; i=i+1) begin
            #2;
            in = in + 1;
        end
        $finish;
    end
endmodule
