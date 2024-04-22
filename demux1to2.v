module demux1to2(CLK, P, Q0, Q1);
	input CLK, P;
	output Q0, Q1;
	assign Q0 = ~P&CLK;
	assign Q1 = P&CLK;
endmodule