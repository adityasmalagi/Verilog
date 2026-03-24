`timescale 1ns / 1ps

module system_tasks();

   reg[3:0]a;
   initial 
     begin
     // case-1 
       //$display("the value of a is %b",a);
       //a = 4'b1011;
     
     //case -2
      // a <= 4'b0101;
       //$display("the value of a is %b",a);
       
     //case-3
       //$display("the value of a is %b",a);
       //a <= 4'b0101;
       
       //case-4
       //a = 4'b0101;
       //$display("the value of a is %b",a);
       
       //case-5
       //a <= 4'b0101;
       //#1;
       //$display("the value of a is %b",a);
       
       //case-6
       //a <= #1 4'b0101;
       //$display("the value of a is %b",a);
       
       //case-7
       a = #1 4'b0101;
       $display("the value of a is %b",a);
       end
endmodule
