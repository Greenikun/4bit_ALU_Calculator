module alu (
  input [3:0] A,	// 4bit input A
  input [3:0] B,	//4bit input B
  input [2:0] sel,   // 3bit operation selector
  output reg [3:0] result	//4bit output
);
  //combinational logic block to react to any change in inputs
  always @(*) begin
    case (sel)
      //3'bxxx = <bit-width>'<base><value>. It is "iteration" (sel) of the cases"
      3'b000: result = A + B;       // ADD
      3'b001: result = A - B;       // SUB
      3'b010: result = A & B;       // AND
      3'b011: result = A | B;       // OR
      3'b100: result = A ^ B;       // XOR
      3'b101: result = ~A;          // NOT A
      3'b110: result = B;           // PASS B
      3'b111: result = 4'b0000;     // Default 0
    endcase
  end
endmodule
