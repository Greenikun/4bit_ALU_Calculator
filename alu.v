module alu_tb;
  reg [3:0] A, B;
  reg [2:0] sel;
  wire [3:0] result;

  alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
  );
  
  initial begin
    $display("A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);
    $dumpfile("alu.vcd"); // for GTKWave
    $dumpvars(0, alu_tb);

    A = 4'b0101; B = 4'b0011;
//Time delay = 10ms
    sel = 3'b000; #10; $display("ADD  : %b", result);  // ADD
    sel = 3'b001; #10; $display("SUB  : %b", result);  // SUB
    sel = 3'b010; #10; $display("AND : %b", result);  // AND
    sel = 3'b011; #10; $display("OR  : %b", result);  // OR
    sel = 3'b100; #10; $display("XOR  : %b", result);  // XOR
    sel = 3'b101; #10; $display("NOT  : %b", result);  // NOT A
    sel = 3'b110; #10; $display("PASS A : %b", result);  // PASS B
    sel = 3'b111; #10; $display("PASS B : %b", result);

    $finish;
  end
endmodule
