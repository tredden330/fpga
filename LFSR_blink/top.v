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


  reg r_LED_1    = 1'b1;
  reg r_LED_2    = 1'b0;
  reg r_LED_3    = 1'b0;
  reg r_LED_4    = 1'b0;

  reg[30:0] r_Counter  = 0;
  reg[30:0] r_Incrementor = 1;
 
 
  always @(posedge i_Clk)
  begin

    if (r_Counter > 100000000)
        begin
            r_LED_1 <= r_LED_4;
            r_LED_2 <= r_LED_1;
            r_LED_3 <= r_LED_2;
            r_LED_4 <= r_LED_3;
            r_Counter = 0;
            r_Incrementor = r_Incrementor + 1;

            if (r_Incrementor > 20000)
                begin
                  r_Incrementor = 1;
                end

        end

    r_Counter = r_Counter + r_Incrementor;

  end

  assign o_LED_1 = r_LED_1;
  assign o_LED_2 = r_LED_2;
  assign o_LED_3 = r_LED_3;
  assign o_LED_4 = r_LED_4;

endmodule
