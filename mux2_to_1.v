`timescale 1ns / 1ps

module mux2_to_1(
    input s , input [1:0] i,output reg y
    );
    
   always@(*)
        begin
//        case(s)
//            0 : y = i[0];
//            1 : y = i[1];
            
//            default : y = 0; 
//            endcase

  if(s)
    y = i[0];
  else
    y = i[1];
  end
endmodule
