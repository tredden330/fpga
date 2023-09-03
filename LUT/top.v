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

    assign o_LED_1 = i_Switch_1 & i_Switch_2;

endmodule
