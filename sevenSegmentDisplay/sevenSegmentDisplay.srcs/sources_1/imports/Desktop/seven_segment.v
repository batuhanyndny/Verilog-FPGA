module seven_segment(
  
  input [3:0] hex,
  input [1:0] digit_select,
  output reg [3:0] anodes, 
  output reg [6:0] cathodes //ABCDEFG
    );
     
     
  reg [6:0] cathy;
  
  
  always @*
  cathodes = ~cathy;
  
  always @(*)
    begin
      case (hex) //ABCDEFG
            4'b0000:cathy=7'b1111110;
			4'b0001:cathy=7'b0110000;
			4'b0010:cathy=7'b1101101;
			4'b0011:cathy=7'b1111001;
			4'b0100:cathy=7'b0110011;
			4'b0101:cathy=7'b1011011;
			4'b0110:cathy=7'b1011111;
			4'b0111:cathy=7'b1110000;
			4'b1000:cathy=7'b1111111;
			4'b1001:cathy=7'b1111011;
			4'b1010:cathy=7'b1110111;
			4'b1011:cathy=7'b0011111;
			4'b1100:cathy=7'b1001110;
			4'b1101:cathy=7'b0111101;
			4'b1110:cathy=7'b1001111;
			4'b1111:cathy=7'b1000111;
      default : cathy = 7'b0000000; 
        endcase
    end
  
  
  
  always @(*)
    begin
      case(digit_select)
        2'b11: anodes = 4'b0111; 
        2'b10: anodes = 4'b1011; 
        2'b01: anodes = 4'b1101; 
        2'b00: anodes = 4'b1110; 
        default:anodes = 4'b0111; 
        endcase
    end
  

    
endmodule