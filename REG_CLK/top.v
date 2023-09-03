module Switches_to_LEDs
	(input i_Switch_1,
	 input i_Switch_2,
	 input i_Switch_3,
	 input i_Switch_4,
         input i_Clk,
	 output o_LED_1,
	 output o_LED_2,
	 output o_LED_3,
	 output o_LED_4);

  reg r_LED_1    = 1'b0;
  reg r_Switch_1 = 1'b0;
 
 
  always @(posedge i_Clk)
  begin
    r_Switch_1 <= i_Switch_1; 
 
    if (i_Switch_1 == 1'b0 && r_Switch_1 == 1'b1)
    begin
      r_LED_1 <= ~r_LED_1;        
    end
  end
 
  assign o_LED_1 = r_LED_1;

endmodule
