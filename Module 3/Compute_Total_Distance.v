\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v";
   m4_makerchip_module
\TLV
   
   // Calculating total Distance
   |calc
      @1
         $reset = *reset;
      ?$valid
         // Pythagora's Theorem
         @1
            $aa_sq[31:0] = $aa[3:0] * $aa[3:0];
            $bb_sq[31:0] = $bb[3:0] * $bb[3:0];
         @2
            $cc_sq[31:0] = $aa_sq + $bb_sq;
         @3
            $cc[31:0] = sqrt($cc_sq);
            
      @4
         $tot_dist[63:0] = 
            $reset ? '0 :
            $valid ? >>1$tot_dist + $cc :
                     >>1$tot_dist;
   
   
!   *passed = *cyc_cnt > 16'd30;

\SV
   endmodule
