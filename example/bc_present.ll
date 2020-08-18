; ModuleID = 'example.9zaa1d02-cgu.0'
source_filename = "example.9zaa1d02-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc30 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\0E\00\00\00\09\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\1F\00\00\00\09\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @c_style_input_size_fixed([320000 x i64]* noalias nocapture readonly align 8 dereferenceable(2560000) %input, [0 x i64]* nocapture nonnull align 8 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !6 {
start:
  call void @llvm.dbg.value(metadata [320000 x i64]* %input, metadata !23, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata [0 x i64]* %output.0, metadata !24, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !42
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !24, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !42
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !73
  br label %bb8, !dbg !75

bb5:                                              ; preds = %bb9.3
  ret void, !dbg !76

bb8:                                              ; preds = %bb9.3, %start
  %iter.sroa.0.014 = phi i64 [ 0, %start ], [ %9, %bb9.3 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !77, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !36, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !40, metadata !DIExpression()), !dbg !95
  %exitcond = icmp eq i64 %iter.sroa.0.014, %output.1, !dbg !96
  br i1 %exitcond, label %panic1, label %bb9, !dbg !96, !prof !97

bb9:                                              ; preds = %bb8
  %0 = or i64 %iter.sroa.0.014, 1, !dbg !98
  %1 = getelementptr inbounds [320000 x i64], [320000 x i64]* %input, i64 0, i64 %iter.sroa.0.014, !dbg !99
  %_17 = load i64, i64* %1, align 8, !dbg !99
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %output.0, i64 0, i64 %iter.sroa.0.014, !dbg !96
  store i64 %_17, i64* %2, align 8, !dbg !96
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %0, metadata !77, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 %0, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %0, metadata !36, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %0, metadata !40, metadata !DIExpression()), !dbg !95
  %exitcond.1 = icmp eq i64 %0, %output.1, !dbg !96
  br i1 %exitcond.1, label %panic1, label %bb9.1, !dbg !96, !prof !97

panic1:                                           ; preds = %bb9.2, %bb9.1, %bb9, %bb8
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !77, metadata !DIExpression()), !dbg !83
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %output.1, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::Location"*)), !dbg !96
  unreachable, !dbg !96

bb9.1:                                            ; preds = %bb9
  %3 = or i64 %iter.sroa.0.014, 2, !dbg !98
  %4 = getelementptr inbounds [320000 x i64], [320000 x i64]* %input, i64 0, i64 %0, !dbg !99
  %_17.1 = load i64, i64* %4, align 8, !dbg !99
  %5 = getelementptr inbounds [0 x i64], [0 x i64]* %output.0, i64 0, i64 %0, !dbg !96
  store i64 %_17.1, i64* %5, align 8, !dbg !96
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %3, metadata !77, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 %3, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %3, metadata !36, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %3, metadata !40, metadata !DIExpression()), !dbg !95
  %exitcond.2 = icmp eq i64 %3, %output.1, !dbg !96
  br i1 %exitcond.2, label %panic1, label %bb9.2, !dbg !96, !prof !97

bb9.2:                                            ; preds = %bb9.1
  %6 = or i64 %iter.sroa.0.014, 3, !dbg !98
  %7 = getelementptr inbounds [320000 x i64], [320000 x i64]* %input, i64 0, i64 %3, !dbg !99
  %_17.2 = load i64, i64* %7, align 8, !dbg !99
  %8 = getelementptr inbounds [0 x i64], [0 x i64]* %output.0, i64 0, i64 %3, !dbg !96
  store i64 %_17.2, i64* %8, align 8, !dbg !96
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %6, metadata !77, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 %6, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %6, metadata !36, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %6, metadata !40, metadata !DIExpression()), !dbg !95
  %exitcond.3 = icmp eq i64 %6, %output.1, !dbg !96
  br i1 %exitcond.3, label %panic1, label %bb9.3, !dbg !96, !prof !97

bb9.3:                                            ; preds = %bb9.2
  %9 = add nuw nsw i64 %iter.sroa.0.014, 4, !dbg !98
  %10 = getelementptr inbounds [320000 x i64], [320000 x i64]* %input, i64 0, i64 %6, !dbg !99
  %_17.3 = load i64, i64* %10, align 8, !dbg !99
  %11 = getelementptr inbounds [0 x i64], [0 x i64]* %output.0, i64 0, i64 %6, !dbg !96
  store i64 %_17.3, i64* %11, align 8, !dbg !96
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !73
  %exitcond16.3 = icmp eq i64 %9, 320000, !dbg !100
  br i1 %exitcond16.3, label %bb5, label %bb8, !dbg !75
}

; Function Attrs: nonlazybind uwtable
define void @c_style_output_size_fixed([0 x i64]* noalias nocapture nonnull readonly align 8 %input.0, i64 %input.1, [320000 x i64]* nocapture align 8 dereferenceable(2560000) %output) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !114 {
start:
  call void @llvm.dbg.value(metadata [0 x i64]* %input.0, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !133
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !133
  call void @llvm.dbg.value(metadata [320000 x i64]* %output, metadata !124, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !134
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !135
  %0 = icmp eq i64 %input.1, 0, !dbg !137
  br i1 %0, label %bb5, label %bb8, !dbg !139

bb5:                                              ; preds = %bb9, %start
  ret void, !dbg !140

bb8:                                              ; preds = %start, %bb9
  %iter.sroa.0.014 = phi i64 [ %1, %bb9 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !77, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !85, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !127, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !131, metadata !DIExpression()), !dbg !146
  %exitcond = icmp eq i64 %iter.sroa.0.014, 320000, !dbg !147
  br i1 %exitcond, label %panic1, label %bb9, !dbg !147, !prof !97

bb9:                                              ; preds = %bb8
  %1 = add nuw nsw i64 %iter.sroa.0.014, 1, !dbg !148
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %input.0, i64 0, i64 %iter.sroa.0.014, !dbg !149
  %_16 = load i64, i64* %2, align 8, !dbg !149
  %3 = getelementptr inbounds [320000 x i64], [320000 x i64]* %output, i64 0, i64 %iter.sroa.0.014, !dbg !147
  store i64 %_16, i64* %3, align 8, !dbg !147
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !134
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !135
  %exitcond16 = icmp eq i64 %1, %input.1, !dbg !137
  br i1 %exitcond16, label %bb5, label %bb8, !dbg !139

panic1:                                           ; preds = %bb8
  call void @llvm.dbg.value(metadata i64 320000, metadata !77, metadata !DIExpression()), !dbg !141
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 320000, i64 320000, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::Location"*)), !dbg !147
  unreachable, !dbg !147
}

; Function Attrs: nonlazybind uwtable
define void @c_style_unknown_size([0 x i64]* noalias nocapture nonnull readonly align 8 %input.0, i64 %input.1, [0 x i64]* nocapture nonnull align 8 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !150 {
start:
  call void @llvm.dbg.value(metadata [0 x i64]* %input.0, metadata !154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !164
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !154, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !164
  call void @llvm.dbg.value(metadata [0 x i64]* %output.0, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !164
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !164
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !156, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !166
  %0 = icmp eq i64 %input.1, 0, !dbg !168
  br i1 %0, label %bb5, label %bb8, !dbg !170

bb5:                                              ; preds = %bb9, %start
  ret void, !dbg !171

bb8:                                              ; preds = %start, %bb9
  %iter.sroa.0.014 = phi i64 [ %1, %bb9 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !77, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !85, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 1, metadata !91, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !158, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !162, metadata !DIExpression()), !dbg !177
  %exitcond = icmp eq i64 %iter.sroa.0.014, %output.1, !dbg !178
  br i1 %exitcond, label %panic1, label %bb9, !dbg !178, !prof !97

bb9:                                              ; preds = %bb8
  %1 = add nuw i64 %iter.sroa.0.014, 1, !dbg !179
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %input.0, i64 0, i64 %iter.sroa.0.014, !dbg !180
  %_16 = load i64, i64* %2, align 8, !dbg !180
  %3 = getelementptr inbounds [0 x i64], [0 x i64]* %output.0, i64 0, i64 %iter.sroa.0.014, !dbg !178
  store i64 %_16, i64* %3, align 8, !dbg !178
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !156, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !44, metadata !DIExpression()), !dbg !166
  %exitcond16 = icmp eq i64 %1, %input.1, !dbg !168
  br i1 %exitcond16, label %bb5, label %bb8, !dbg !170

panic1:                                           ; preds = %bb8
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !77, metadata !DIExpression()), !dbg !172
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %output.1, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::Location"*)), !dbg !178
  unreachable, !dbg !178
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64, i64, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !4, producer: "clang LLVM (rustc version 1.46.0-dev)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !5)
!4 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/example")
!5 = !{}
!6 = distinct !DISubprogram(name: "c_style_input_size_fixed", scope: !8, file: !7, line: 12, type: !9, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !22)
!7 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/example", checksumkind: CSK_MD5, checksum: "708ad6d0d17f8b4cdead64001a4b8336")
!8 = !DINamespace(name: "example", scope: null)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !16}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 320000]", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 20480000, align: 64, elements: !14)
!13 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 320000)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [usize]", file: !17, size: 128, align: 64, elements: !18, templateParams: !5, identifier: "26ce51475d714fc088e9ef28b9ab5960")
!17 = !DIFile(filename: "<unknown>", directory: "")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !16, file: !17, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !16, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!22 = !{!23, !24, !25, !36, !38, !40}
!23 = !DILocalVariable(name: "input", arg: 1, scope: !6, file: !7, line: 12, type: !11)
!24 = !DILocalVariable(name: "output", arg: 2, scope: !6, file: !7, line: 12, type: !16)
!25 = !DILocalVariable(name: "iter", scope: !26, file: !7, line: 13, type: !27, align: 8)
!26 = distinct !DILexicalBlock(scope: !6, file: !7, line: 13, column: 5)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !28, file: !17, size: 128, align: 64, elements: !31, templateParams: !34, identifier: "4be1f8843c4abc6e6b0755e50f9e3873")
!28 = !DINamespace(name: "range", scope: !29)
!29 = !DINamespace(name: "ops", scope: !30)
!30 = !DINamespace(name: "core", scope: null)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !27, file: !17, baseType: !13, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!34 = !{!35}
!35 = !DITemplateTypeParameter(name: "Idx", type: !13)
!36 = !DILocalVariable(name: "__next", scope: !37, file: !7, line: 13, type: !13, align: 8)
!37 = distinct !DILexicalBlock(scope: !26, file: !7, line: 13, column: 14)
!38 = !DILocalVariable(name: "val", scope: !39, file: !7, line: 13, type: !13, align: 8)
!39 = distinct !DILexicalBlock(scope: !37, file: !7, line: 13, column: 9)
!40 = !DILocalVariable(name: "i", scope: !41, file: !7, line: 13, type: !13, align: 8)
!41 = distinct !DILexicalBlock(scope: !37, file: !7, line: 13, column: 14)
!42 = !DILocation(line: 0, scope: !6)
!43 = !DILocation(line: 0, scope: !26)
!44 = !DILocalVariable(name: "self", arg: 1, scope: !45, file: !46, line: 504, type: !67)
!45 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf083e298620c4571E", scope: !47, file: !46, line: 504, type: !50, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !71, retainedNodes: !68)
!46 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
!47 = !DINamespace(name: "{{impl}}", scope: !48)
!48 = !DINamespace(name: "range", scope: !49)
!49 = !DINamespace(name: "iter", scope: !30)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !67}
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !53, file: !17, size: 128, align: 64, elements: !54, identifier: "edae92f6aa2d4d3d8225245fd9f15299")
!53 = !DINamespace(name: "option", scope: !30)
!54 = !{!55}
!55 = !DICompositeType(tag: DW_TAG_variant_part, scope: !53, file: !17, size: 128, align: 64, elements: !56, templateParams: !59, identifier: "edae92f6aa2d4d3d8225245fd9f15299_variant_part", discriminator: !65)
!56 = !{!57, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !55, file: !17, baseType: !58, size: 128, align: 64, extraData: i64 0)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !52, file: !17, size: 128, align: 64, elements: !5, templateParams: !59, identifier: "edae92f6aa2d4d3d8225245fd9f15299::None")
!59 = !{!60}
!60 = !DITemplateTypeParameter(name: "T", type: !13)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !55, file: !17, baseType: !62, size: 128, align: 64, extraData: i64 1)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !52, file: !17, size: 128, align: 64, elements: !63, templateParams: !59, identifier: "edae92f6aa2d4d3d8225245fd9f15299::Some")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !62, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !17, baseType: !66, size: 64, align: 64, flags: DIFlagArtificial)
!66 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !27, size: 64, align: 64, dwarfAddressSpace: 0)
!68 = !{!44, !69}
!69 = !DILocalVariable(name: "n", scope: !70, file: !46, line: 510, type: !13, align: 8)
!70 = distinct !DILexicalBlock(scope: !45, file: !46, line: 510, column: 13)
!71 = !{!72}
!72 = !DITemplateTypeParameter(name: "A", type: !13)
!73 = !DILocation(line: 0, scope: !45, inlinedAt: !74)
!74 = distinct !DILocation(line: 13, column: 14, scope: !37)
!75 = !DILocation(line: 505, column: 9, scope: !45, inlinedAt: !74)
!76 = !DILocation(line: 16, column: 2, scope: !6)
!77 = !DILocalVariable(name: "start", arg: 1, scope: !78, file: !46, line: 191, type: !13)
!78 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf3e4aa5239d3229aE", scope: !47, file: !46, line: 191, type: !79, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!13, !13, !13}
!81 = !{!77, !82}
!82 = !DILocalVariable(name: "n", arg: 2, scope: !78, file: !46, line: 191, type: !13)
!83 = !DILocation(line: 0, scope: !78, inlinedAt: !84)
!84 = distinct !DILocation(line: 510, column: 30, scope: !45, inlinedAt: !74)
!85 = !DILocalVariable(name: "self", arg: 1, scope: !86, file: !87, line: 3022, type: !13)
!86 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17he27be0fa2186d468E", scope: !88, file: !87, line: 3022, type: !79, scopeLine: 3022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !90)
!87 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "b610d63e687c1bb61890b7290628f313")
!88 = !DINamespace(name: "{{impl}}", scope: !89)
!89 = !DINamespace(name: "num", scope: !30)
!90 = !{!85, !91}
!91 = !DILocalVariable(name: "rhs", arg: 2, scope: !86, file: !87, line: 3022, type: !13)
!92 = !DILocation(line: 0, scope: !86, inlinedAt: !93)
!93 = distinct !DILocation(line: 193, column: 22, scope: !78, inlinedAt: !84)
!94 = !DILocation(line: 0, scope: !37)
!95 = !DILocation(line: 0, scope: !41)
!96 = !DILocation(line: 14, column: 9, scope: !41)
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !DILocation(line: 3025, column: 26, scope: !86, inlinedAt: !93)
!99 = !DILocation(line: 14, column: 21, scope: !41)
!100 = !DILocation(line: 1137, column: 52, scope: !101, inlinedAt: !113)
!101 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h697d7385366f3475E", scope: !103, file: !102, line: 1137, type: !106, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !110)
!102 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
!103 = !DINamespace(name: "{{impl}}", scope: !104)
!104 = !DINamespace(name: "impls", scope: !105)
!105 = !DINamespace(name: "cmp", scope: !30)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109, !109}
!108 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "self", arg: 1, scope: !101, file: !102, line: 1137, type: !109)
!112 = !DILocalVariable(name: "other", arg: 2, scope: !101, file: !102, line: 1137, type: !109)
!113 = distinct !DILocation(line: 505, column: 12, scope: !45, inlinedAt: !74)
!114 = distinct !DISubprogram(name: "c_style_output_size_fixed", scope: !8, file: !7, line: 29, type: !115, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !122)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !121}
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[usize]", file: !17, size: 128, align: 64, elements: !118, templateParams: !5, identifier: "9be4f5e4fbfbd2b5b45da638e0e8878f")
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !117, file: !17, baseType: !20, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !117, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [usize; 320000]", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!122 = !{!123, !124, !125, !127, !129, !131}
!123 = !DILocalVariable(name: "input", arg: 1, scope: !114, file: !7, line: 29, type: !117)
!124 = !DILocalVariable(name: "output", arg: 2, scope: !114, file: !7, line: 29, type: !121)
!125 = !DILocalVariable(name: "iter", scope: !126, file: !7, line: 30, type: !27, align: 8)
!126 = distinct !DILexicalBlock(scope: !114, file: !7, line: 30, column: 5)
!127 = !DILocalVariable(name: "__next", scope: !128, file: !7, line: 30, type: !13, align: 8)
!128 = distinct !DILexicalBlock(scope: !126, file: !7, line: 30, column: 14)
!129 = !DILocalVariable(name: "val", scope: !130, file: !7, line: 30, type: !13, align: 8)
!130 = distinct !DILexicalBlock(scope: !128, file: !7, line: 30, column: 9)
!131 = !DILocalVariable(name: "i", scope: !132, file: !7, line: 30, type: !13, align: 8)
!132 = distinct !DILexicalBlock(scope: !128, file: !7, line: 30, column: 14)
!133 = !DILocation(line: 0, scope: !114)
!134 = !DILocation(line: 0, scope: !126)
!135 = !DILocation(line: 0, scope: !45, inlinedAt: !136)
!136 = distinct !DILocation(line: 30, column: 14, scope: !128)
!137 = !DILocation(line: 1137, column: 52, scope: !101, inlinedAt: !138)
!138 = distinct !DILocation(line: 505, column: 12, scope: !45, inlinedAt: !136)
!139 = !DILocation(line: 505, column: 9, scope: !45, inlinedAt: !136)
!140 = !DILocation(line: 33, column: 2, scope: !114)
!141 = !DILocation(line: 0, scope: !78, inlinedAt: !142)
!142 = distinct !DILocation(line: 510, column: 30, scope: !45, inlinedAt: !136)
!143 = !DILocation(line: 0, scope: !86, inlinedAt: !144)
!144 = distinct !DILocation(line: 193, column: 22, scope: !78, inlinedAt: !142)
!145 = !DILocation(line: 0, scope: !128)
!146 = !DILocation(line: 0, scope: !132)
!147 = !DILocation(line: 31, column: 9, scope: !132)
!148 = !DILocation(line: 3025, column: 26, scope: !86, inlinedAt: !144)
!149 = !DILocation(line: 31, column: 21, scope: !132)
!150 = distinct !DISubprogram(name: "c_style_unknown_size", scope: !8, file: !7, line: 46, type: !151, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !117, !16}
!153 = !{!154, !155, !156, !158, !160, !162}
!154 = !DILocalVariable(name: "input", arg: 1, scope: !150, file: !7, line: 46, type: !117)
!155 = !DILocalVariable(name: "output", arg: 2, scope: !150, file: !7, line: 46, type: !16)
!156 = !DILocalVariable(name: "iter", scope: !157, file: !7, line: 47, type: !27, align: 8)
!157 = distinct !DILexicalBlock(scope: !150, file: !7, line: 47, column: 5)
!158 = !DILocalVariable(name: "__next", scope: !159, file: !7, line: 47, type: !13, align: 8)
!159 = distinct !DILexicalBlock(scope: !157, file: !7, line: 47, column: 14)
!160 = !DILocalVariable(name: "val", scope: !161, file: !7, line: 47, type: !13, align: 8)
!161 = distinct !DILexicalBlock(scope: !159, file: !7, line: 47, column: 9)
!162 = !DILocalVariable(name: "i", scope: !163, file: !7, line: 47, type: !13, align: 8)
!163 = distinct !DILexicalBlock(scope: !159, file: !7, line: 47, column: 14)
!164 = !DILocation(line: 0, scope: !150)
!165 = !DILocation(line: 0, scope: !157)
!166 = !DILocation(line: 0, scope: !45, inlinedAt: !167)
!167 = distinct !DILocation(line: 47, column: 14, scope: !159)
!168 = !DILocation(line: 1137, column: 52, scope: !101, inlinedAt: !169)
!169 = distinct !DILocation(line: 505, column: 12, scope: !45, inlinedAt: !167)
!170 = !DILocation(line: 505, column: 9, scope: !45, inlinedAt: !167)
!171 = !DILocation(line: 50, column: 2, scope: !150)
!172 = !DILocation(line: 0, scope: !78, inlinedAt: !173)
!173 = distinct !DILocation(line: 510, column: 30, scope: !45, inlinedAt: !167)
!174 = !DILocation(line: 0, scope: !86, inlinedAt: !175)
!175 = distinct !DILocation(line: 193, column: 22, scope: !78, inlinedAt: !173)
!176 = !DILocation(line: 0, scope: !159)
!177 = !DILocation(line: 0, scope: !163)
!178 = !DILocation(line: 48, column: 9, scope: !163)
!179 = !DILocation(line: 3025, column: 26, scope: !86, inlinedAt: !175)
!180 = !DILocation(line: 48, column: 21, scope: !163)
