`timescale 1 ns/10 ps

module tb_test();

  
  output reg [3:0] hex;
  output reg [1:0] digit_select;
  output wire [3:0] anodes;
  output wire [6:0] cathodes;
  
  localparam period = 20;
	
  seven_segment hexx (hex,digit_select,anodes,cathodes);
 
	

  
  initial
     begin
       $monitor("led_a=%b,led_b=%b,led_c=%b,led_d=%b,led_e=%b,led_f=%b,led_g=%b,led1=%b,led2=%b,led3=%b,led4=%b",cathodes[6],cathodes[5],cathodes[4],cathodes[3],cathodes[2],cathodes[1],cathodes[0],anodes[3],anodes[2],anodes[1],anodes[0]);

       
       
            
            digit_select =  2'b10;
            hex[3:0] =4'b0000;
            #period; 

            digit_select =  2'b00;
            hex[3:0] =4'b0110;
            #period;

            digit_select =  2'b11;
            hex[3:0] =4'b0111;
            #period;

            digit_select =  2'b00;
            hex[3:0] =4'b1010;
            #period;
          
            digit_select =  2'b10;
            hex[3:0] =4'b1110;
            #period;
           
            digit_select =  2'b11;
            hex[3:0] =4'b1101;
            #period;
          
            digit_select =  2'b01;
            hex[3:0] =4'b0010;
            #period;
          
        end
       
       
         
             
      initial
      begin
        $dumpfile ("test.vcd");
        $dumpvars (0,test);
      end
	
  
endmodule
