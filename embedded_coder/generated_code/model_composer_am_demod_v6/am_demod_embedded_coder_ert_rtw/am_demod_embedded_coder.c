/*
 * File: am_demod_embedded_coder.c
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

#include "am_demod_embedded_coder.h"
#include "am_demod_embedded_coder_private.h"

/* Block states (default storage) */
DW_am_demod_embedded_coder_T am_demod_embedded_coder_DW;

/* Real-time model */
static RT_MODEL_am_demod_embedded_co_T am_demod_embedded_coder_M_;
RT_MODEL_am_demod_embedded_co_T *const am_demod_embedded_coder_M =
  &am_demod_embedded_coder_M_;

/* Model step function */
void am_demod_embedded_coder_step(void)
{
  real_T lastSin_tmp;
  real_T rtb_Delay12;
  real_T rtb_Product;
  real_T rtb_Sqrt;

  /* Sin: '<Root>/Sine Wave' */
  if (am_demod_embedded_coder_DW.systemEnable != 0) {
    lastSin_tmp = 1.0 * (((am_demod_embedded_coder_M->Timing.clockTick0+
      am_demod_embedded_coder_M->Timing.clockTickH0* 4294967296.0)) * 1.0E-6);
    am_demod_embedded_coder_DW.lastSin = sin(lastSin_tmp);
    am_demod_embedded_coder_DW.lastCos = cos(lastSin_tmp);
    am_demod_embedded_coder_DW.systemEnable = 0;
  }

  lastSin_tmp = am_demod_embedded_coder_DW.lastSin * 0.9999999999995;
  rtb_Sqrt = ((am_demod_embedded_coder_DW.lastCos * (-9.999999999998333E-7) +
               lastSin_tmp) * 0.9999999999995 +
              (am_demod_embedded_coder_DW.lastCos * 0.9999999999995 -
               am_demod_embedded_coder_DW.lastSin * (-9.999999999998333E-7)) *
              9.999999999998333E-7) * 1.0 + 0.0;

  /* End of Sin: '<Root>/Sine Wave' */

  /* Sum: '<S2>/SumA31' incorporates:
   *  Delay: '<S2>/Delay11'
   *  Delay: '<S2>/Delay21'
   *  Gain: '<S2>/a(2)(1)'
   *  Gain: '<S2>/a(3)(1)'
   *  Gain: '<S2>/s(1)'
   *  Product: '<S1>/Square'
   *  Sum: '<S2>/SumA21'
   */
  rtb_Sqrt = (rtb_Sqrt * rtb_Sqrt * 0.021883851967943024 - (-1.7009643319435259)
              * am_demod_embedded_coder_DW.Delay11_DSTATE) - 0.788499739815298 *
    am_demod_embedded_coder_DW.Delay21_DSTATE;

  /* Delay: '<S2>/Delay12' */
  rtb_Delay12 = am_demod_embedded_coder_DW.Delay12_DSTATE;

  /* Sum: '<S2>/SumA32' incorporates:
   *  Delay: '<S2>/Delay11'
   *  Delay: '<S2>/Delay12'
   *  Delay: '<S2>/Delay21'
   *  Delay: '<S2>/Delay22'
   *  Gain: '<S2>/a(2)(2)'
   *  Gain: '<S2>/a(3)(2)'
   *  Gain: '<S2>/b(2)(1)'
   *  Gain: '<S2>/s(2)'
   *  Sum: '<S2>/SumA22'
   *  Sum: '<S2>/SumB21'
   *  Sum: '<S2>/SumB31'
   */
  am_demod_embedded_coder_DW.Delay12_DSTATE = (((2.0 *
    am_demod_embedded_coder_DW.Delay11_DSTATE + rtb_Sqrt) +
    am_demod_embedded_coder_DW.Delay21_DSTATE) * 0.019036831587823873 -
    (-1.4796742169311934) * am_demod_embedded_coder_DW.Delay12_DSTATE) -
    0.555821543282489 * am_demod_embedded_coder_DW.Delay22_DSTATE;

  /* Product: '<S1>/Product' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant1'
   *  Delay: '<S2>/Delay12'
   *  Delay: '<S2>/Delay22'
   *  Gain: '<S2>/b(2)(2)'
   *  Sqrt: '<S1>/Sqrt'
   *  Sum: '<S1>/Sum'
   *  Sum: '<S2>/SumB22'
   *  Sum: '<S2>/SumB32'
   */
  rtb_Product = (sqrt((2.0 * rtb_Delay12 +
                       am_demod_embedded_coder_DW.Delay12_DSTATE) +
                      am_demod_embedded_coder_DW.Delay22_DSTATE) - 0.7) * 2.0;

  /* Update for Delay: '<S2>/Delay22' */
  am_demod_embedded_coder_DW.Delay22_DSTATE = rtb_Delay12;

  /* Update for Delay: '<S2>/Delay21' incorporates:
   *  Delay: '<S2>/Delay11'
   */
  am_demod_embedded_coder_DW.Delay21_DSTATE =
    am_demod_embedded_coder_DW.Delay11_DSTATE;

  /* Update for Sin: '<Root>/Sine Wave' */
  rtb_Delay12 = am_demod_embedded_coder_DW.lastSin;
  am_demod_embedded_coder_DW.lastSin = am_demod_embedded_coder_DW.lastCos *
    9.999999999998333E-7 + lastSin_tmp;
  am_demod_embedded_coder_DW.lastCos = am_demod_embedded_coder_DW.lastCos *
    0.9999999999995 - rtb_Delay12 * 9.999999999998333E-7;

  /* Update for Delay: '<S2>/Delay11' */
  am_demod_embedded_coder_DW.Delay11_DSTATE = rtb_Sqrt;

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 1.0E-6, which is the step size
   * of the task. Size of "clockTick0" ensures timer will not overflow during the
   * application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  am_demod_embedded_coder_M->Timing.clockTick0++;
  if (!am_demod_embedded_coder_M->Timing.clockTick0) {
    am_demod_embedded_coder_M->Timing.clockTickH0++;
  }
}

/* Model initialize function */
void am_demod_embedded_coder_initialize(void)
{
  /* Enable for Sin: '<Root>/Sine Wave' */
  am_demod_embedded_coder_DW.systemEnable = 1;
}

/* Model terminate function */
void am_demod_embedded_coder_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
