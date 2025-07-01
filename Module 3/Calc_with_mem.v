\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v";
   m4_makerchip_module

\TLV   
   // Calculator with Single-Value Memory
   
   |calculator_with_mem
      @0
         $reset = *reset;
      @1
         //$reset = *reset;
         $valid = $reset ? 0 : (>>1$valid + 1); 
         $valid_or_reset = $valid || $reset;
         //$op[2:0] = $rand3[2:0];
         //$val1[31:0] = >>2$out;
         //$val2[31:0] = $rand2[3:0];
      ?$valid_or_reset
         @1
            $val1[31:0] = >>2$out;
            $val2[31:0] = $rand2[3:0];
            
            $sum[31:0] = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;
            $quo[31:0] = $val1 / $val2;
            
         @2
            $mem[31:0] = $reset ? 0 : (($op[2:0] == 3'b101) ? >>2$out : >>2$mem);
            
            $out[31:0] = $reset ? 0 : (($op[2:0] == 3'b000) ? $sum :
                                       ($op[2:0] == 3'b001) ? $diff :
                                       ($op[2:0] == 3'b010) ? $prod :
                                       ($op[2:0] == 3'b011) ? $quo :
                                       ($op[2:0] == 3'b100) ? >>2$mem:
                                       'x);
            
   
   
   
   // Assert these to end simulation (before the cycle limit).
!   *passed = *cyc_cnt > 40;
   
\SV
   endmodule
