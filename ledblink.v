module testled(
  CLK,
  LED1,  //these are the connections to the module that we expose externally
  LED2, //external pin number is assigned in the UCF file like this:
  LED3,
  LED4
               //NET "LED"            LOC =  "P39";
               //NET "LED_INV"        LOC =  "P38";
   );
	
   output LED1;//LED D1 is an output from the module
   output LED2; //LED_INV is also an output
	output LED3;
	output LED4;
	
	input CLK;
	reg [31:0] count1; //length of register control frequency 
	reg LEDstatus;

   reg LED1;//a register to output LED
   reg LED2; //a register to output LED_INV
	reg LED3;
	reg LED4;
	
	always @(posedge CLK) 
	 begin
     count1    <= count1 + 1;

	 if (count1[26] == 1)
	    LED1 = 1'b0;
	 else
	    LED1 = 1'b1;
	 end

endmodule

