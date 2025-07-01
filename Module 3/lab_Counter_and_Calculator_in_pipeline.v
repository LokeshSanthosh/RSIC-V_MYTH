\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v";
   m4_makerchip_module
\TLV
   
   // Lab - counter and calculator in pipeline
   
   |calc
      @1
         $reset = *reset;
         $val1[31:0] = >>1$out;
         $val2[31:0] = $rand2[3:0];
         $op[1:0] = $rand3[1:0];
         
         $sum[31:0] = $val1 + $val2;
         $diff[31:0] = $val1 - $val2;
         $prod[31:0] = $val1 * $val2;
         $quo[31:0] = $val1 / $val2;
         
         $out[31:0] = $reset ? 0 : ($op[1] ? ($op[0] ? $quo : $prod) : ($op[0] ? $diff : $sum));
         
         $cnt[31:0] = $reset ? 0 : (>>1$cnt + 1);
         
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\TLV   
   // Lab - Cycle calculator
   
   |calc1
      @1
         $reset = *reset;
         $val1[31:0] = >>2$out;
         $val2[31:0] = $rand2[3:0];
         $op[1:0] = $rand3[1:0];
         
         $sum[31:0] = $val1 + $val2;
         $diff[31:0] = $val1 - $val2;
         $prod[31:0] = $val1 * $val2;
         $quo[31:0] = $val1 / $val2;
         
         $valid = $reset ? 0 : (>>1$valid + 1);
      @2
         //$valid1 = $reset || (!$valid);
         $out[31:0] = ($reset || (!$valid)) ? 0 : ($op[1] ? ($op[0] ? $quo : $prod) : ($op[0] ? $diff : $sum));
         
   
   
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   
\SV
   endmodule
