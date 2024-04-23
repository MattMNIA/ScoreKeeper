module mux4bit2to1(X,Y,Z,S);
	input S;
	input [4:0] X;
	input [4:0] Y;
	output [4:0] Z;
	assign Z[0] = S ? Y[0] : X[0];
	assign Z[1] = S ? Y[1] : X[1];
	assign Z[2] = S ? Y[2] : X[2];
	assign Z[3] = S ? Y[3] : X[3];
	assign Z[4] = S ? Y[4] : X[4];
endmodule
	