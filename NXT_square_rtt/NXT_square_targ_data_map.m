  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_square_P)
    ;%
      section.nData     = 32;
      section.data(32)  = dumData; %prealloc
      
	  ;% Lab2a_square_P.Kd
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_P.Kp
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_square_P.Ts_traj
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_square_P.joint_pos1_square
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_square_P.joint_pos2_square
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 203;
	
	  ;% Lab2a_square_P.joint_pos3_square
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 403;
	
	  ;% Lab2a_square_P.motor_vel_square1
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 603;
	
	  ;% Lab2a_square_P.motor_vel_square2
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 803;
	
	  ;% Lab2a_square_P.motor_vel_square3
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 1003;
	
	  ;% Lab2a_square_P.OffReset_Value
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 1203;
	
	  ;% Lab2a_square_P.On_Value
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 1204;
	
	  ;% Lab2a_square_P.Gain_Gain
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 1205;
	
	  ;% Lab2a_square_P.Gain1_Gain
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 1206;
	
	  ;% Lab2a_square_P.Gain2_Gain
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 1207;
	
	  ;% Lab2a_square_P.Internal_A
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 1208;
	
	  ;% Lab2a_square_P.Internal_C
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 1209;
	
	  ;% Lab2a_square_P.Internal_D
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 1210;
	
	  ;% Lab2a_square_P.Internal_X0
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 1211;
	
	  ;% Lab2a_square_P.Saturation_UpperSat
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 1212;
	
	  ;% Lab2a_square_P.Saturation_LowerSat
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 1213;
	
	  ;% Lab2a_square_P.Internal_A_j
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 1214;
	
	  ;% Lab2a_square_P.Internal_C_a
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 1215;
	
	  ;% Lab2a_square_P.Internal_D_g
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 1216;
	
	  ;% Lab2a_square_P.Internal_X0_l
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 1217;
	
	  ;% Lab2a_square_P.Saturation1_UpperSat
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 1218;
	
	  ;% Lab2a_square_P.Saturation1_LowerSat
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 1219;
	
	  ;% Lab2a_square_P.Internal_A_l
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 1220;
	
	  ;% Lab2a_square_P.Internal_C_i
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 1221;
	
	  ;% Lab2a_square_P.Internal_D_f
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 1222;
	
	  ;% Lab2a_square_P.Internal_X0_e
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 1223;
	
	  ;% Lab2a_square_P.Saturation2_UpperSat
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 1224;
	
	  ;% Lab2a_square_P.Saturation2_LowerSat
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 1225;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% Lab2a_square_P.timeresetswitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 32;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 4;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_square_B)
    ;%
      section.nData     = 17;
      section.data(17)  = dumData; %prealloc
      
	  ;% Lab2a_square_B.timeresetswitch
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_B.Gain
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_square_B.Gain1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_square_B.Gain2
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_square_B.Sum
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_square_B.Internal
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_square_B.Sum2
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_square_B.Saturation
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% Lab2a_square_B.Sum_o
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% Lab2a_square_B.Internal_b
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% Lab2a_square_B.Sum2_c
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% Lab2a_square_B.Saturation1
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% Lab2a_square_B.Sum_h
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% Lab2a_square_B.Internal_g
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% Lab2a_square_B.Sum2_b
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% Lab2a_square_B.Saturation2
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% Lab2a_square_B.clk
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_square_B.sf_trajgeneration2.ref_cur
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_B.sf_trajgeneration2.ref_dcur
	  section.data(2).logicalSrcIdx = 18;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_square_B.sf_trajgeneration1.ref_cur
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_B.sf_trajgeneration1.ref_dcur
	  section.data(2).logicalSrcIdx = 20;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_square_B.sf_trajgeneration.ref_cur
	  section.data(1).logicalSrcIdx = 21;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_B.sf_trajgeneration.ref_dcur
	  section.data(2).logicalSrcIdx = 22;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 4;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_square_DW)
    ;%
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% Lab2a_square_DW.Internal_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_DW.Internal_DSTATE_k
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_square_DW.Internal_DSTATE_j
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_square_DW.t_off
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_square_DW.last_rst
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 16;
      section.data(16)  = dumData; %prealloc
      
	  ;% Lab2a_square_DW.Scope_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_square_DW.ToWorkspace_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_square_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_square_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_square_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 9;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_square_DW.ToWorkspace4_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 10;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_square_DW.ToWorkspace5_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 11;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_square_DW.ToWorkspace6_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 12;
	  section.data(8).dtTransOffset = 7;
	
	  ;% Lab2a_square_DW.ToWorkspace7_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 13;
	  section.data(9).dtTransOffset = 8;
	
	  ;% Lab2a_square_DW.ToWorkspace8_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 14;
	  section.data(10).dtTransOffset = 9;
	
	  ;% Lab2a_square_DW.ToWorkspace9_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 15;
	  section.data(11).dtTransOffset = 10;
	
	  ;% Lab2a_square_DW.ToWorkspace2_PWORK_h.LoggedData
	  section.data(12).logicalSrcIdx = 16;
	  section.data(12).dtTransOffset = 11;
	
	  ;% Lab2a_square_DW.ToWorkspace10_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 17;
	  section.data(13).dtTransOffset = 12;
	
	  ;% Lab2a_square_DW.ToWorkspace5_PWORK_f.LoggedData
	  section.data(14).logicalSrcIdx = 18;
	  section.data(14).dtTransOffset = 13;
	
	  ;% Lab2a_square_DW.ToWorkspace11_PWORK.LoggedData
	  section.data(15).logicalSrcIdx = 19;
	  section.data(15).dtTransOffset = 14;
	
	  ;% Lab2a_square_DW.ToWorkspace8_PWORK_a.LoggedData
	  section.data(16).logicalSrcIdx = 20;
	  section.data(16).dtTransOffset = 15;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 2791553786;
  targMap.checksum1 = 2896898976;
  targMap.checksum2 = 4114128580;
  targMap.checksum3 = 1478328366;

