module testbench;
  reg a, b;
  wire c;

  // Instantiate the and_gate module correctly
  and_gate uut (.a(a), .b(b), .c(c));

  initial 
  begin 
    $dumpfile ("test.vcd"); 
    $dumpvars (0,testbench); 
    $monitor($time, " a=%b, b=%b, c=%b", a, b, c);
    
    #5 a = 0; b = 0; 
    #5 a = 0; b = 1;
    #5 a = 1; b = 0;
    #5 a = 1; b = 1;      
    #5 $finish;
  end
endmodule


