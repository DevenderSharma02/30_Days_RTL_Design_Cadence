// This is for Overlapping Sequence Detector
`timescale 1ns / 1ps


module moore_seq_detector(
                         input clk,reset,
                         input in,
                         output reg y    
                         );
             
reg [2:0] current_state,next_state;
                       
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100,
          S5 = 3'b101;

// State transition logic
always@(posedge clk or posedge reset)begin
     if(reset)
      current_state <= S0;
     else
      current_state <= next_state;
    end
 
 // Next state logic and output logic
always@(*)begin
  
case(current_state)
    S0: begin
      y = 0;
      next_state = in ? S1 : S0;
      end
      
    S1: begin
      y = 0;
      next_state = in ? S2 : S0;
      end
      
    S2: begin
      y = 0;
      next_state = in ? S2 : S3;
      end
      
    S3 : begin
      y = 0;
      next_state = in ? S4 : S0;
     end
  
    S4 : begin
      y = 0;
      next_state = in ? S5 : S0;
     end
     
    S5 : begin
      y = 1;
      next_state = in ? S2 : S3;
    end
      default: next_state = S0; 
      
      endcase
    end
endmodule 