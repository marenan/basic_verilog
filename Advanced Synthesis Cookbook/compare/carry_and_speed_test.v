// Copyright 2007 Altera Corporation. All rights reserved.  
// Altera products are protected under numerous U.S. and foreign patents, 
// maskwork rights, copyrights and other intellectual property laws.  
//
// This reference design file, and your use thereof, is subject to and governed
// by the terms and conditions of the applicable Altera Reference Design 
// License Agreement (either as signed by you or found at www.altera.com).  By
// using this reference design file, you indicate your acceptance of such terms
// and conditions between you and Altera Corporation.  In the event that you do
// not agree with such terms and conditions, you may not use the reference 
// design file and please promptly destroy any copies you have made.
//
// This reference design file is being provided on an "as-is" basis and as an 
// accommodation and therefore all warranties, representations or guarantees of 
// any kind (whether express, implied or statutory) including, without 
// limitation, warranties of merchantability, non-infringement, or fitness for
// a particular purpose, are specifically disclaimed.  By making this reference
// design file available, Altera expressly does not recommend, suggest or 
// require that this reference design file be used in combination with any 
// other product not provided by Altera.
/////////////////////////////////////////////////////////////////////////////

module carry_and_speed_test (dat_i,out,clk);
parameter WIDTH = 16;
parameter METHOD = 4;

input clk;
input [WIDTH-1:0] dat_i;
output out;

reg [WIDTH-1:0] dat_r;
reg out;
wire out_c;

carry_and ca (.dat(dat_r),.out(out_c));
	defparam ca .WIDTH = WIDTH;
	defparam ca .METHOD = METHOD;

always @(posedge clk) begin
	dat_r <= dat_i;
	out <= out_c;
end

endmodule
