//Cotton  Candy #1//

if (isNil "toggle") then {toggle = 0}; if (toggle==0) then {toggle = 1;

   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
   nonapsi_ef ppEffectEnable true;
   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 3.5, 0.2], [9.0, 7.0, 5.2, 4.5],[0.4,0.0,0.0, 0.7]];
   nonapsi_ef ppEffectCommit 1;
} else {
  toggle = 0;
   ppEffectDestroy nonapsi_ef;

   "dynamicBlur" ppEffectAdjust [0];
   "dynamicBlur" ppEffectCommit 16;
}