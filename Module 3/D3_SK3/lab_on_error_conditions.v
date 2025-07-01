\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v";
   m4_makerchip_module
\TLV
   
   /*
   |calc
      
      // Pythagora's Theorem
      @1
         $aa_sq[7:0] = $aa[3:0] ** 2;
         $bb_sq[7:0] = $bb[3:0] ** 2;
      @2
         $cc_sq[8:0] = $aa_sq + $bb_sq;
      @3
         $cc[4:0] = sqrt($cc_sq);*/
   /*
   |fib
      
      @1
         $num[31:0] = *reset ? 1 : (>>1$num + >>2$num);
         
         
     */
   
   // Lab on Error Conditions Within Computation Pipeline
   
   |comp
      @1
         $err1 = $bad_input || $illegal_op;
      @3
         $err2 = $err1 || $over_flow;
      @6
         $err3 = $err2 || $div_by_zero;
      
      
      
      /*// Print
         \SV_plus
            always_ff @(posedge clk) begin
               \$display("sqrt((\%2d ^ 2) + (\%2d ^ 2)) = \%2d", $aa, $bb, $cc);
            end*/

   // Stop simulation.
   *passed = *cyc_cnt > 40;
\SV
endmodule
