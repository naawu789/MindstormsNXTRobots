/*
 * File: Lab2a_square.h
 *
 * Code generated for Simulink model 'Lab2a_square'.
 *
 * Model version                  : 1.43
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Fri Oct 27 15:38:43 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Lab2a_square_h_
#define RTW_HEADER_Lab2a_square_h_
#include <math.h>
#include <float.h>
#include <string.h>
#include <stddef.h>
#ifndef Lab2a_square_COMMON_INCLUDES_
# define Lab2a_square_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "dt_info.h"
#include "ext_work.h"
#include "driver_nxt.h"
#endif                                 /* Lab2a_square_COMMON_INCLUDES_ */

#include "Lab2a_square_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

/* Block signals for system '<Root>/traj generation' */
typedef struct {
  real_T ref_cur;                      /* '<Root>/traj generation' */
  real_T ref_dcur;                     /* '<Root>/traj generation' */
} B_trajgeneration_Lab2a_square_T;

/* Block signals (auto storage) */
typedef struct {
  real_T timeresetswitch;              /* '<Root>/time reset switch' */
  real_T Gain;                         /* '<S1>/Gain' */
  real_T Gain1;                        /* '<S2>/Gain1' */
  real_T Gain2;                        /* '<S3>/Gain2' */
  real_T Sum;                          /* '<S6>/Sum' */
  real_T Internal;                     /* '<S11>/Internal' */
  real_T Sum2;                         /* '<S6>/Sum2' */
  real_T Saturation;                   /* '<S1>/Saturation' */
  real_T Sum_o;                        /* '<S4>/Sum' */
  real_T Internal_b;                   /* '<S12>/Internal' */
  real_T Sum2_c;                       /* '<S4>/Sum2' */
  real_T Saturation1;                  /* '<S2>/Saturation1' */
  real_T Sum_h;                        /* '<S5>/Sum' */
  real_T Internal_g;                   /* '<S13>/Internal' */
  real_T Sum2_b;                       /* '<S5>/Sum2' */
  real_T Saturation2;                  /* '<S3>/Saturation2' */
  real_T clk;                          /* '<Root>/timer w// reset' */
  B_trajgeneration_Lab2a_square_T sf_trajgeneration2;/* '<Root>/traj generation2' */
  B_trajgeneration_Lab2a_square_T sf_trajgeneration1;/* '<Root>/traj generation1' */
  B_trajgeneration_Lab2a_square_T sf_trajgeneration;/* '<Root>/traj generation' */
} B_Lab2a_square_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Internal_DSTATE;              /* '<S11>/Internal' */
  real_T Internal_DSTATE_k;            /* '<S12>/Internal' */
  real_T Internal_DSTATE_j;            /* '<S13>/Internal' */
  real_T t_off;                        /* '<Root>/timer w// reset' */
  real_T last_rst;                     /* '<Root>/timer w// reset' */
  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<Root>/Scope' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK;                 /* '<Root>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK;                /* '<Root>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace2_PWORK;                /* '<Root>/To Workspace2' */

  struct {
    void *LoggedData;
  } ToWorkspace3_PWORK;                /* '<Root>/To Workspace3' */

  struct {
    void *LoggedData;
  } ToWorkspace4_PWORK;                /* '<Root>/To Workspace4' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK;                /* '<Root>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace6_PWORK;                /* '<Root>/To Workspace6' */

  struct {
    void *LoggedData;
  } ToWorkspace7_PWORK;                /* '<Root>/To Workspace7' */

  struct {
    void *LoggedData;
  } ToWorkspace8_PWORK;                /* '<Root>/To Workspace8' */

  struct {
    void *LoggedData;
  } ToWorkspace9_PWORK;                /* '<S1>/To Workspace9' */

  struct {
    void *LoggedData;
  } ToWorkspace2_PWORK_h;              /* '<S1>/To Workspace2' */

  struct {
    void *LoggedData;
  } ToWorkspace10_PWORK;               /* '<S2>/To Workspace10' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK_f;              /* '<S2>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace11_PWORK;               /* '<S3>/To Workspace11' */

  struct {
    void *LoggedData;
  } ToWorkspace8_PWORK_a;              /* '<S3>/To Workspace8' */
} DW_Lab2a_square_T;

/* Parameters (auto storage) */
struct P_Lab2a_square_T_ {
  real_T Kd;                           /* Variable: Kd
                                        * Referenced by:
                                        *   '<S4>/Gain'
                                        *   '<S5>/Gain'
                                        *   '<S6>/Gain'
                                        */
  real_T Kp;                           /* Variable: Kp
                                        * Referenced by:
                                        *   '<S4>/Gain1'
                                        *   '<S5>/Gain1'
                                        *   '<S6>/Gain1'
                                        */
  real_T Ts_traj;                      /* Variable: Ts_traj
                                        * Referenced by: '<Root>/Constant'
                                        */
  real_T joint_pos1_square[200];       /* Variable: joint_pos1_square
                                        * Referenced by: '<Root>/Constant1'
                                        */
  real_T joint_pos2_square[200];       /* Variable: joint_pos2_square
                                        * Referenced by: '<Root>/Constant4'
                                        */
  real_T joint_pos3_square[200];       /* Variable: joint_pos3_square
                                        * Referenced by: '<Root>/Constant7'
                                        */
  real_T motor_vel_square1[200];       /* Variable: motor_vel_square1
                                        * Referenced by: '<Root>/Constant2'
                                        */
  real_T motor_vel_square2[200];       /* Variable: motor_vel_square2
                                        * Referenced by: '<Root>/Constant5'
                                        */
  real_T motor_vel_square3[200];       /* Variable: motor_vel_square3
                                        * Referenced by: '<Root>/Constant8'
                                        */
  real_T OffReset_Value;               /* Expression: 0
                                        * Referenced by: '<Root>/Off//Reset'
                                        */
  real_T On_Value;                     /* Expression: 1
                                        * Referenced by: '<Root>/On'
                                        */
  real_T Gain_Gain;                    /* Expression: pi/180
                                        * Referenced by: '<S1>/Gain'
                                        */
  real_T Gain1_Gain;                   /* Expression: pi/180
                                        * Referenced by: '<S2>/Gain1'
                                        */
  real_T Gain2_Gain;                   /* Expression: pi/180
                                        * Referenced by: '<S3>/Gain2'
                                        */
  real_T Internal_A;                   /* Computed Parameter: Internal_A
                                        * Referenced by: '<S11>/Internal'
                                        */
  real_T Internal_C;                   /* Computed Parameter: Internal_C
                                        * Referenced by: '<S11>/Internal'
                                        */
  real_T Internal_D;                   /* Computed Parameter: Internal_D
                                        * Referenced by: '<S11>/Internal'
                                        */
  real_T Internal_X0;                  /* Expression: 0
                                        * Referenced by: '<S11>/Internal'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 100
                                        * Referenced by: '<S1>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -100
                                        * Referenced by: '<S1>/Saturation'
                                        */
  real_T Internal_A_j;                 /* Computed Parameter: Internal_A_j
                                        * Referenced by: '<S12>/Internal'
                                        */
  real_T Internal_C_a;                 /* Computed Parameter: Internal_C_a
                                        * Referenced by: '<S12>/Internal'
                                        */
  real_T Internal_D_g;                 /* Computed Parameter: Internal_D_g
                                        * Referenced by: '<S12>/Internal'
                                        */
  real_T Internal_X0_l;                /* Expression: 0
                                        * Referenced by: '<S12>/Internal'
                                        */
  real_T Saturation1_UpperSat;         /* Expression: 100
                                        * Referenced by: '<S2>/Saturation1'
                                        */
  real_T Saturation1_LowerSat;         /* Expression: -100
                                        * Referenced by: '<S2>/Saturation1'
                                        */
  real_T Internal_A_l;                 /* Computed Parameter: Internal_A_l
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_C_i;                 /* Computed Parameter: Internal_C_i
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_D_f;                 /* Computed Parameter: Internal_D_f
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_X0_e;                /* Expression: 0
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Saturation2_UpperSat;         /* Expression: 100
                                        * Referenced by: '<S3>/Saturation2'
                                        */
  real_T Saturation2_LowerSat;         /* Expression: -100
                                        * Referenced by: '<S3>/Saturation2'
                                        */
  uint8_T timeresetswitch_CurrentSetting;/* Computed Parameter: timeresetswitch_CurrentSetting
                                          * Referenced by: '<Root>/time reset switch'
                                          */
};

/* Real-time Model Data Structure */
struct tag_RTM_Lab2a_square_T {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    time_T stepSize0;
    uint32_T clockTick1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (auto storage) */
extern P_Lab2a_square_T Lab2a_square_P;

/* Block signals (auto storage) */
extern B_Lab2a_square_T Lab2a_square_B;

/* Block states (auto storage) */
extern DW_Lab2a_square_T Lab2a_square_DW;

/* Model entry point functions */
extern void Lab2a_square_initialize(void);
extern void Lab2a_square_output(void);
extern void Lab2a_square_update(void);
extern void Lab2a_square_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Lab2a_square_T *const Lab2a_square_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Lab2a_square'
 * '<S1>'   : 'Lab2a_square/MOTOR A'
 * '<S2>'   : 'Lab2a_square/MOTOR B'
 * '<S3>'   : 'Lab2a_square/MOTOR C'
 * '<S4>'   : 'Lab2a_square/PD control1'
 * '<S5>'   : 'Lab2a_square/PD control2'
 * '<S6>'   : 'Lab2a_square/PD control3'
 * '<S7>'   : 'Lab2a_square/timer w// reset'
 * '<S8>'   : 'Lab2a_square/traj generation'
 * '<S9>'   : 'Lab2a_square/traj generation1'
 * '<S10>'  : 'Lab2a_square/traj generation2'
 * '<S11>'  : 'Lab2a_square/velocity filter'
 * '<S12>'  : 'Lab2a_square/velocity filter  '
 * '<S13>'  : 'Lab2a_square/velocity filter     '
 * '<S14>'  : 'Lab2a_square/MOTOR A/Motor'
 * '<S15>'  : 'Lab2a_square/MOTOR B/Motor1'
 * '<S16>'  : 'Lab2a_square/MOTOR C/Motor2'
 * '<S17>'  : 'Lab2a_square/velocity filter/IO Delay'
 * '<S18>'  : 'Lab2a_square/velocity filter/Input Delay'
 * '<S19>'  : 'Lab2a_square/velocity filter/Output Delay'
 * '<S20>'  : 'Lab2a_square/velocity filter  /IO Delay'
 * '<S21>'  : 'Lab2a_square/velocity filter  /Input Delay'
 * '<S22>'  : 'Lab2a_square/velocity filter  /Output Delay'
 * '<S23>'  : 'Lab2a_square/velocity filter     /IO Delay'
 * '<S24>'  : 'Lab2a_square/velocity filter     /Input Delay'
 * '<S25>'  : 'Lab2a_square/velocity filter     /Output Delay'
 */
#endif                                 /* RTW_HEADER_Lab2a_square_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
