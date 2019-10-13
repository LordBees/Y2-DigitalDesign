module reg16(
	input clk,
	input reset,
	input WE,
	input logic [15:0]data_in,
	output[15:0]data_out

);

reg [15:0]data;

always@(negedge clk or posedge reset)
begin
	
	if(reset)
	begin
		data <= 0;
	end

	else if (WE)
	begin
		data <= data_in;
	end	
end

assign data_out = data;
endmodule