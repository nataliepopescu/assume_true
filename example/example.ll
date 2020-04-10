; ModuleID = 'example.9zaa1d02-cgu.0'
source_filename = "example.9zaa1d02-cgu.0"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@str.3 = internal constant [10 x i8] c"src/lib.rs"
@panic_bounds_check_loc.5 = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([10 x i8]* @str.3 to [0 x i8]*), i64 10 }, i32 14, i32 9 }, align 8
@panic_bounds_check_loc.7 = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([10 x i8]* @str.3 to [0 x i8]*), i64 10 }, i32 31, i32 9 }, align 8
@panic_bounds_check_loc.9 = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([10 x i8]* @str.3 to [0 x i8]*), i64 10 }, i32 47, i32 9 }, align 8

; Function Attrs: uwtable
define void @c_style_input_size_fixed([320000 x i64]* noalias nocapture readonly align 8 dereferenceable(2560000), [0 x i64]* nocapture nonnull align 8, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  br label %bb8

bb5:                                              ; preds = %bb9.3
  ret void

bb8:                                              ; preds = %bb9.3, %start
  %iter.sroa.0.017 = phi i64 [ 0, %start ], [ %15, %bb9.3 ]
  %exitcond = icmp eq i64 %iter.sroa.0.017, %2
  br i1 %exitcond, label %panic1, label %bb9, !prof !0

bb9:                                              ; preds = %bb8
  %3 = or i64 %iter.sroa.0.017, 1
  %4 = getelementptr inbounds [320000 x i64], [320000 x i64]* %0, i64 0, i64 %iter.sroa.0.017
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds [0 x i64], [0 x i64]* %1, i64 0, i64 %iter.sroa.0.017
  store i64 %5, i64* %6, align 8
  %exitcond.1 = icmp eq i64 %3, %2
  br i1 %exitcond.1, label %panic1, label %bb9.1, !prof !0

panic1:                                           ; preds = %bb9.2, %bb9.1, %bb9, %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h729d6a00051be156E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.5 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %2, i64 %2)
  unreachable

bb9.1:                                            ; preds = %bb9
  %7 = or i64 %iter.sroa.0.017, 2
  %8 = getelementptr inbounds [320000 x i64], [320000 x i64]* %0, i64 0, i64 %3
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds [0 x i64], [0 x i64]* %1, i64 0, i64 %3
  store i64 %9, i64* %10, align 8
  %exitcond.2 = icmp eq i64 %7, %2
  br i1 %exitcond.2, label %panic1, label %bb9.2, !prof !0

bb9.2:                                            ; preds = %bb9.1
  %11 = or i64 %iter.sroa.0.017, 3
  %12 = getelementptr inbounds [320000 x i64], [320000 x i64]* %0, i64 0, i64 %7
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [0 x i64], [0 x i64]* %1, i64 0, i64 %7
  store i64 %13, i64* %14, align 8
  %exitcond.3 = icmp eq i64 %11, %2
  br i1 %exitcond.3, label %panic1, label %bb9.3, !prof !0

bb9.3:                                            ; preds = %bb9.2
  %15 = add nuw nsw i64 %iter.sroa.0.017, 4
  %16 = getelementptr inbounds [320000 x i64], [320000 x i64]* %0, i64 0, i64 %11
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds [0 x i64], [0 x i64]* %1, i64 0, i64 %11
  store i64 %17, i64* %18, align 8
  %exitcond19.3 = icmp eq i64 %15, 320000
  br i1 %exitcond19.3, label %bb5, label %bb8
}

; Function Attrs: uwtable
define void @c_style_output_size_fixed([0 x i64]* noalias nocapture nonnull readonly align 8, i64, [320000 x i64]* nocapture align 8 dereferenceable(2560000)) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %bb5, label %bb8

bb5:                                              ; preds = %bb9, %start
  ret void

bb8:                                              ; preds = %start, %bb9
  %iter.sroa.0.018 = phi i64 [ %4, %bb9 ], [ 0, %start ]
  %exitcond = icmp eq i64 %iter.sroa.0.018, 320000
  br i1 %exitcond, label %panic1, label %bb9, !prof !0

bb9:                                              ; preds = %bb8
  %4 = add nuw nsw i64 %iter.sroa.0.018, 1
  %5 = getelementptr inbounds [0 x i64], [0 x i64]* %0, i64 0, i64 %iter.sroa.0.018
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds [320000 x i64], [320000 x i64]* %2, i64 0, i64 %iter.sroa.0.018
  store i64 %6, i64* %7, align 8
  %exitcond20 = icmp eq i64 %4, %1
  br i1 %exitcond20, label %bb5, label %bb8

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h729d6a00051be156E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.7 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 320000, i64 320000)
  unreachable
}

; Function Attrs: uwtable
define void @c_style_unknown_size([0 x i64]* noalias nocapture nonnull readonly align 8, i64, [0 x i64]* nocapture nonnull align 8, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %bb5, label %bb8

bb5:                                              ; preds = %bb9, %start
  ret void

bb8:                                              ; preds = %start, %bb9
  %iter.sroa.0.021 = phi i64 [ %5, %bb9 ], [ 0, %start ]
  %exitcond = icmp eq i64 %iter.sroa.0.021, %3
  br i1 %exitcond, label %panic1, label %bb9, !prof !0

bb9:                                              ; preds = %bb8
  %5 = add nuw i64 %iter.sroa.0.021, 1
  %6 = getelementptr inbounds [0 x i64], [0 x i64]* %0, i64 0, i64 %iter.sroa.0.021
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds [0 x i64], [0 x i64]* %2, i64 0, i64 %iter.sroa.0.021
  store i64 %7, i64* %8, align 8
  %exitcond23 = icmp eq i64 %5, %1
  br i1 %exitcond23, label %bb5, label %bb8

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h729d6a00051be156E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.9 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %3, i64 %3)
  unreachable
}

; Function Attrs: uwtable
define void @c_style_input_size_fixed_opt([320000 x i64]* noalias nocapture readonly align 8 dereferenceable(2560000), [0 x i64]* nocapture nonnull align 8, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = bitcast [0 x i64]* %1 to i8*
  %4 = bitcast [320000 x i64]* %0 to i8*
  %5 = icmp eq i64 %2, 320000
  tail call void @llvm.assume(i1 %5)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 2560000, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @c_style_output_size_fixed_opt([0 x i64]* noalias nocapture nonnull readonly align 8, i64, [320000 x i64]* nocapture align 8 dereferenceable(2560000)) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = bitcast [320000 x i64]* %2 to i8*
  %4 = bitcast [0 x i64]* %0 to i8*
  %5 = icmp eq i64 %1, 320000
  tail call void @llvm.assume(i1 %5)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 2560000, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @c_style_unknown_size_opt([0 x i64]* noalias nocapture nonnull readonly align 8, i64, [0 x i64]* nocapture nonnull align 8, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %4 = bitcast [0 x i64]* %2 to i8*
  %5 = bitcast [0 x i64]* %0 to i8*
  %6 = icmp eq i64 %1, 320000
  %7 = icmp eq i64 %3, 320000
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 2560000, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h729d6a00051be156E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24), i64, i64) unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.assume(i1) #4

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #3 = { cold noinline noreturn uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #4 = { nounwind }

!0 = !{!"branch_weights", i32 1, i32 2000}
