module testled(
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


   reg LED1;//a register to output LED
   reg LED2; //a register to output LED_INV
	reg LED3;
	reg LED4;


   always //start of the action section
   begin
       LED1=1'b0; //Hold the LED D1 on (high)
       LED2=1'b1; //Hold LED D2 off (low)
		   LED3=1'b0;
		   LED4=1'b1;
                   //other states are
                   //1'b1 HIGH
                   //1'b0 LOW
                   //1'bz HiZ (input)


endmodule
