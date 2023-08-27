module brick_palette (
	input logic [8:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:511][11:0] palette = {
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'hA, 4'hA, 4'hA},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'hA, 4'hB, 4'hB},
	{4'h8, 4'h8, 4'h8},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h8, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h9, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'hA, 4'hA, 4'hA},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h8, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h8, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'hA, 4'hA},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'hA, 4'hA, 4'hA},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'hA, 4'hA, 4'hA},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'hA, 4'hA, 4'hA},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'hA, 4'hA, 4'hA},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'hA, 4'hA, 4'hA},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h9, 4'h8},
	{4'h9, 4'hA, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h9, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'h9, 4'h9},
	{4'h9, 4'hA, 4'hA},
	{4'hA, 4'hA, 4'hA},
	{4'hA, 4'hA, 4'hA},
	{4'hA, 4'hA, 4'hA},
	{4'hA, 4'hA, 4'hA},
	{4'hA, 4'hA, 4'hA},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h8, 4'h8, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h8, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h8, 4'h8, 4'h8},
	{4'h8, 4'h8, 4'h8},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h9, 4'h9, 4'h9},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7},
	{4'h7, 4'h7, 4'h7}
};

assign {red, green, blue} = palette[index];

endmodule
