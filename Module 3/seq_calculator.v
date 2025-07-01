\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   
   /*
   ///////////Combinational Logic////////////
   // A) Inverter
   $out = ! $in1;
   
   // B) other logic
   $out1 = $a && $b;
   $out2 = $a || $b;
   $out3 = $a ^ $b;
   */
   /*
   // C) Vectors
   $out[4:0] = $in1[3:0] + $in2[3:0];
   */
   /*
   // d) MUX
   $out = $sel ? $in1 : $in2;
   */
   /*
   // e) MUX_vector
   $out[7:0] = $sel ? $in1[7:0] : $in2[7:0];
   */
   
   /*
   //Combinational_calculator
   $val1[31:0] = $rand1[3:0];
   $val2[31:0] = $rand2[3:0];
   $op[1:0] = $rand3[1:0];
   
   $sum[31:0] = $val1 + $val2;
   $diff[31:0] = $val1 - $val2;
   $prod[31:0] = $val1 * $val2;
   $quo[31:0] = $val1 / $val2;
   
   $out[31:0] = $op[1] ? ($op[0] ? $quo : $prod) : ($op[0] ? $diff : $sum);
   */
   /////////////end of Combinational Logic//////////
   
   ////////////Sequential Logic////////////////
   /*
   // free-running counter
   $reset = *reset;
   $cnt[31:0] = $reset ? 0 : (>>1$cnt + 1);
   */
   
   /*
   //Fibonacci Sequnence
   $reset = *reset;
   $num[31:0] = $reset ? 1 : (>>1$num + >>2$num);
   */
   
   ///*
   //Sequential_calculator
   $reset = *reset;
   $val1[31:0] = >>1$out;
   $val2[31:0] = $rand2[3:0];
   $op[1:0] = $rand3[1:0];
   
   $sum[31:0] = $val1 + $val2;
   $diff[31:0] = $val1 - $val2;
   $prod[31:0] = $val1 * $val2;
   $quo[31:0] = $val1 / $val2;
   
   $out[31:0] = $reset ? 0 : ($op[1] ? ($op[0] ? $quo : $prod) : ($op[0] ? $diff : $sum));
   //*/
   ////////////end of Sequential Logic////////////////
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
