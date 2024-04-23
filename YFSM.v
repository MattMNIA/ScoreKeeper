module YFSM(W,Y2,Y1,Y0,T1,T0, D0, D1, D2);
	input W,Y2,Y1,Y0,T1,T0;
	output D0, D1, D2;
	assign D2 = (~Y2)&(((~W)&((~Y1)&Y0))|(W&Y1&(~Y0))|(((~Y1)&(~Y0))&(((~W)&(~T1)&T0)|(W&T1&(~T0)))));
	assign D1 = (~Y2)&((~W)&Y1&(~Y0)|(W&(Y1|Y0|T1)));
	assign D0 = (~Y2)&((~W)&(Y0|Y1|T0)|(W&(~Y1)&Y0));
endmodule