module Y2FSM(W,Y2,Y1,Y0,T1,T0, D);
	input W,Y2,Y1,Y0,T1,T0;
	output D;
	assign D = ~Y2&(((~Y1)&Y0&(~W))|(Y1&(~Y0)&W)|((((~T1)&T0&(~W))|(T1&(~T0)&W))&(~Y1)&(~Y0)));
endmodule