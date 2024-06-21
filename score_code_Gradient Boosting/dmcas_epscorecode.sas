/*
 * This score code file references one or more analytic stores that are located in the caslib "Models".
 * This score code file references the following analytic-store tables:
 *   _EIIS7T6M9G4S0RIVT9B37Q32D_ast
 */
data sasep.out;
   dcl package score _EIIS7T6M9G4S0RIVT9B37Q32D();
   dcl double "P_VL_Total" having label n'Predicted: VL_Total';
   dcl nchar(4) "_WARN_" having label n'Warnings';
   dcl double EM_PREDICTION;
   varlist allvars [_all_];
 
    
   method init();
      _EIIS7T6M9G4S0RIVT9B37Q32D.setvars(allvars);
      _EIIS7T6M9G4S0RIVT9B37Q32D.setkey(n'1A6E4DBD701E2D5BBE8C443CB3B5708E02066845');
   end;
    
   method post_EIIS7T6M9G4S0RIVT9B37Q32D();
      dcl double _P_;
       
      if "P_VL_TOTAL" = . then "P_VL_TOTAL" = 573123.09265;
      EM_PREDICTION = "P_VL_TOTAL";
    
   end;
    
 
   method run();
      set SASEP.IN;
      _EIIS7T6M9G4S0RIVT9B37Q32D.scoreRecord();
      post_EIIS7T6M9G4S0RIVT9B37Q32D();
   end;
 
   method term();
   end;
 
enddata;
