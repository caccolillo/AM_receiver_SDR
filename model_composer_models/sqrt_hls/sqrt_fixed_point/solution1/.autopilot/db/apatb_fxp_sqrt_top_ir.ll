; ModuleID = '/home/caccolillo/Documents/model_composer_am_demod/model_composer_models/sqrt_hls/sqrt_fixed_point/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<24, 8, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<24, 8, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<28, 4, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<28, 4, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<28, false>" }
%"struct.ssdm_int<28, false>" = type { i28 }

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i24* noalias nocapture align 512 "unpacked"="1.0.0.0") unnamed_addr #0 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"(i24* align 512 %1, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i24* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, i24* align 512 %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i24* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i24, i24* %1, align 512
  store i24 %3, i24* %.01.0.05, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"(i24* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i24, i24* %.0.0.04, align 4
  store i24 %3, i24* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_fxp_sqrt_top_hw(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i24*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i24* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, i24* align 512 %1)
  ret void
}

define void @fxp_sqrt_top_hw_stub_wrapper(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i24*) #3 {
entry:
  %2 = alloca %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"
  call void @copy_out(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %2, i24* %1)
  call void @fxp_sqrt_top_hw_stub(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %2)
  call void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %2, i24* %1)
  ret void
}

declare void @fxp_sqrt_top_hw_stub(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"*)

; Function Attrs: argmemonly noinline
define void @apatb_fxp_sqrt_top_ir(i32* %ret, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias nonnull dereferenceable(4) %in_val) #4 {
entry:
  %in_val_copy = alloca i24, align 512
  call fastcc void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* nonnull %in_val, i24* nonnull align 512 %in_val_copy)
  %0 = alloca %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"
  call void @apatb_fxp_sqrt_top_hw(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0, i24* %in_val_copy)
  %1 = load volatile %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0
  call void @copy_back(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %in_val, i24* %in_val_copy)
  %2 = bitcast %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0 to i32*
  %3 = load volatile i32, i32* %2
  store i32 %3, i32* %ret
  ret void
}

attributes #0 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { "fpga.wrapper.func"="stub" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
