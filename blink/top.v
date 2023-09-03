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

  reg r_LED_2    = 1'b0;
  reg[30:0] r_Counter  = 0;
 
 
  always @(posedge i_Clk)
  begin

    if (r_Counter > 25000000)
        begin
            r_LED_2 <= ~r_LED_2;
            r_Counter = 0;
        end

    r_Counter = r_Counter + 1;

  end

  assign o_LED_2 = r_LED_2;

endmodule
