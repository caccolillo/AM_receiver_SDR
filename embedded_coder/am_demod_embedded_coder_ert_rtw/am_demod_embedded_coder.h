/*
 * File: am_demod_embedded_coder.h
 *
 * Code generated for Simulink model 'am_demod_embedded_coder'.
 *
 * Model version                  : 1.247
 * Simulink Coder version         : 9.6 (R2021b) 14-May-2021
 * C/C++ source code generated on : Wed Jan  1 15:47:44 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_am_demod_embedded_coder_h_
#define RTW_HEADER_am_demod_embedded_coder_h_
#include <math.h>
#ifndef am_demod_embedded_coder_COMMON_INCLUDES_
#define am_demod_embedded_coder_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                            /* am_demod_embedded_coder_COMMON_INCLUDES_ */

#include "am_demod_embedded_coder_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T Delay22_DSTATE;               /* '<S2>/Delay22' */
  real_T Delay21_DSTATE;               /* '<S2>/Delay21' */
  real_T Delay11_DSTATE;               /* '<S2>/Delay11' */
  real_T Delay12_DSTATE;               /* '<S2>/Delay12' */
  real_T lastSin;                      /* '<Root>/Sine Wave' */
  real_T lastCos;                      /* '<Root>/Sine Wave' */
  int32_T systemEnable;                /* '<Root>/Sine Wave' */
} DW_am_demod_embedded_coder_T;

/* Real-time Model Data Structure */
struct tag_RTM_am_demod_embedded_cod_T {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    uint32_T clockTickH0;
  } Timing;
};

/* Block states (default storage) */
extern DW_am_demod_embedded_coder_T am_demod_embedded_coder_DW;

/* Model entry point functions */
extern void am_demod_embedded_coder_initialize(void);
extern void am_demod_embedded_coder_step(void);
extern void am_demod_embedded_coder_terminate(void);

/* Real-time Model object */
extern RT_MODEL_am_demod_embedded_co_T *const am_demod_embedded_coder_M;

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
 * '<Root>' : 'am_demod_embedded_coder'
 * '<S1>'   : 'am_demod_embedded_coder/AM demodulator'
 * '<S2>'   : 'am_demod_embedded_coder/AM demodulator/LPF'
 */
#endif                               /* RTW_HEADER_am_demod_embedded_coder_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
