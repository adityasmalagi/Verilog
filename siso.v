`timescale 1ns / 1ps

module siso(
  input rst,enb,sin,clk,output reg sout);
  
reg [3:0] temp;    

// shifting using shift operator
//    always@(posedge clk)
//        begin
//            if(rst)
//                temp <= 4'b0000;
//            else if(enb) begin
//            temp <= temp >> 1'b1;
//            temp [3] <= sin;
//            sout <= temp[0];
//            end
//      end    

  //right shifting using cancatenation operator
//     always@(posedge clk)
//        begin
//            if(rst)
//                temp <= 4'b0000;
//            else if(enb) begin
//            temp <= {sin,temp[3:1]};

//            sout <= temp[0];
//            end
//      end    

//left shifting using cancatenation operator
     always@(posedge clk)
        begin
            if(rst)
                temp <= 4'b0000;
            else if(enb) begin
            temp <= {temp[2:0],sin};
          
            sout <= temp[3];
            end
      end   

endmodule
