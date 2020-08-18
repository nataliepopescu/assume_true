; ModuleID = 'example.9zaa1d02-cgu.0'
source_filename = "example.9zaa1d02-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_input_size_fixed([320000 x i64]* noalias nocapture readonly align 8 dereferenceable(2560000) %input, [0 x i64]* nocapture nonnull align 8 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !6 {
start:
  call void @llvm.dbg.value(metadata [320000 x i64]* %input, metadata !23, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata [0 x i64]* %output.0, metadata !24, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !42
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !24, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !42
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  %output.014 = bitcast [0 x i64]* %output.0 to i8*
  %input15 = bitcast [320000 x i64]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %output.014, i8* nonnull align 8 %input15, i64 2560000, i1 false), !dbg !44
  call void @llvm.dbg.value(metadata i32 undef, metadata !36, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i32 undef, metadata !40, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 undef, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !43
  ret void, !dbg !47
}

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_output_size_fixed([0 x i64]* noalias nocapture nonnull readonly align 8 %input.0, i64 %input.1, [320000 x i64]* nocapture align 8 dereferenceable(2560000) %output) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !48 {
start:
  call void @llvm.dbg.value(metadata [0 x i64]* %input.0, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !67
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !67
  call void @llvm.dbg.value(metadata [320000 x i64]* %output, metadata !58, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !59, metadata !DIExpression(DW_OP_deref)), !dbg !68
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !69, metadata !DIExpression()), !dbg !98
  %0 = icmp eq i64 %input.1, 0, !dbg !100
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !114

bb7.preheader:                                    ; preds = %start
  %input.015 = bitcast [0 x i64]* %input.0 to i8*
  %output14 = bitcast [320000 x i64]* %output to i8*
  %1 = shl nuw i64 %input.1, 3, !dbg !114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %output14, i8* nonnull align 8 %input.015, i64 %1, i1 false), !dbg !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !61, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 undef, metadata !65, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 undef, metadata !59, metadata !DIExpression(DW_OP_deref)), !dbg !68
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()), !dbg !98
  br label %bb5, !dbg !118

bb5:                                              ; preds = %bb7.preheader, %start
  ret void, !dbg !118
}

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_unknown_size([0 x i64]* noalias nocapture nonnull readonly align 8 %input.0, i64 %input.1, [0 x i64]* nocapture nonnull align 8 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !119 {
start:
  call void @llvm.dbg.value(metadata [0 x i64]* %input.0, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !133
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !133
  call void @llvm.dbg.value(metadata [0 x i64]* %output.0, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !133
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !133
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !134
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !69, metadata !DIExpression()), !dbg !135
  %0 = icmp eq i64 %input.1, 0, !dbg !137
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !139

bb7.preheader:                                    ; preds = %start
  %input.015 = bitcast [0 x i64]* %input.0 to i8*
  %output.014 = bitcast [0 x i64]* %output.0 to i8*
  %1 = shl nuw i64 %input.1, 3, !dbg !139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %output.014, i8* nonnull align 8 %input.015, i64 %1, i1 false), !dbg !140
  call void @llvm.dbg.value(metadata i32 undef, metadata !127, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 undef, metadata !131, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32 undef, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !134
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()), !dbg !135
  br label %bb5, !dbg !143

bb5:                                              ; preds = %bb7.preheader, %start
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

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
!44 = !DILocation(line: 14, column: 9, scope: !41)
!45 = !DILocation(line: 0, scope: !37)
!46 = !DILocation(line: 0, scope: !41)
!47 = !DILocation(line: 16, column: 2, scope: !6)
!48 = distinct !DISubprogram(name: "c_style_output_size_fixed", scope: !8, file: !7, line: 29, type: !49, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !56)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !55}
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[usize]", file: !17, size: 128, align: 64, elements: !52, templateParams: !5, identifier: "9be4f5e4fbfbd2b5b45da638e0e8878f")
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !51, file: !17, baseType: !20, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [usize; 320000]", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!56 = !{!57, !58, !59, !61, !63, !65}
!57 = !DILocalVariable(name: "input", arg: 1, scope: !48, file: !7, line: 29, type: !51)
!58 = !DILocalVariable(name: "output", arg: 2, scope: !48, file: !7, line: 29, type: !55)
!59 = !DILocalVariable(name: "iter", scope: !60, file: !7, line: 30, type: !27, align: 8)
!60 = distinct !DILexicalBlock(scope: !48, file: !7, line: 30, column: 5)
!61 = !DILocalVariable(name: "__next", scope: !62, file: !7, line: 30, type: !13, align: 8)
!62 = distinct !DILexicalBlock(scope: !60, file: !7, line: 30, column: 14)
!63 = !DILocalVariable(name: "val", scope: !64, file: !7, line: 30, type: !13, align: 8)
!64 = distinct !DILexicalBlock(scope: !62, file: !7, line: 30, column: 9)
!65 = !DILocalVariable(name: "i", scope: !66, file: !7, line: 30, type: !13, align: 8)
!66 = distinct !DILexicalBlock(scope: !62, file: !7, line: 30, column: 14)
!67 = !DILocation(line: 0, scope: !48)
!68 = !DILocation(line: 0, scope: !60)
!69 = !DILocalVariable(name: "self", arg: 1, scope: !70, file: !71, line: 504, type: !92)
!70 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf083e298620c4571E", scope: !72, file: !71, line: 504, type: !75, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !96, retainedNodes: !93)
!71 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
!72 = !DINamespace(name: "{{impl}}", scope: !73)
!73 = !DINamespace(name: "range", scope: !74)
!74 = !DINamespace(name: "iter", scope: !30)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !92}
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !78, file: !17, size: 128, align: 64, elements: !79, identifier: "edae92f6aa2d4d3d8225245fd9f15299")
!78 = !DINamespace(name: "option", scope: !30)
!79 = !{!80}
!80 = !DICompositeType(tag: DW_TAG_variant_part, scope: !78, file: !17, size: 128, align: 64, elements: !81, templateParams: !84, identifier: "edae92f6aa2d4d3d8225245fd9f15299_variant_part", discriminator: !90)
!81 = !{!82, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !80, file: !17, baseType: !83, size: 128, align: 64, extraData: i64 0)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !77, file: !17, size: 128, align: 64, elements: !5, templateParams: !84, identifier: "edae92f6aa2d4d3d8225245fd9f15299::None")
!84 = !{!85}
!85 = !DITemplateTypeParameter(name: "T", type: !13)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !80, file: !17, baseType: !87, size: 128, align: 64, extraData: i64 1)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !77, file: !17, size: 128, align: 64, elements: !88, templateParams: !84, identifier: "edae92f6aa2d4d3d8225245fd9f15299::Some")
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !87, file: !17, baseType: !13, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !17, baseType: !91, size: 64, align: 64, flags: DIFlagArtificial)
!91 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !27, size: 64, align: 64, dwarfAddressSpace: 0)
!93 = !{!69, !94}
!94 = !DILocalVariable(name: "n", scope: !95, file: !71, line: 510, type: !13, align: 8)
!95 = distinct !DILexicalBlock(scope: !70, file: !71, line: 510, column: 13)
!96 = !{!97}
!97 = !DITemplateTypeParameter(name: "A", type: !13)
!98 = !DILocation(line: 0, scope: !70, inlinedAt: !99)
!99 = distinct !DILocation(line: 30, column: 14, scope: !62)
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
!113 = distinct !DILocation(line: 505, column: 12, scope: !70, inlinedAt: !99)
!114 = !DILocation(line: 505, column: 9, scope: !70, inlinedAt: !99)
!115 = !DILocation(line: 31, column: 9, scope: !66)
!116 = !DILocation(line: 0, scope: !62)
!117 = !DILocation(line: 0, scope: !66)
!118 = !DILocation(line: 33, column: 2, scope: !48)
!119 = distinct !DISubprogram(name: "c_style_unknown_size", scope: !8, file: !7, line: 46, type: !120, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !51, !16}
!122 = !{!123, !124, !125, !127, !129, !131}
!123 = !DILocalVariable(name: "input", arg: 1, scope: !119, file: !7, line: 46, type: !51)
!124 = !DILocalVariable(name: "output", arg: 2, scope: !119, file: !7, line: 46, type: !16)
!125 = !DILocalVariable(name: "iter", scope: !126, file: !7, line: 47, type: !27, align: 8)
!126 = distinct !DILexicalBlock(scope: !119, file: !7, line: 47, column: 5)
!127 = !DILocalVariable(name: "__next", scope: !128, file: !7, line: 47, type: !13, align: 8)
!128 = distinct !DILexicalBlock(scope: !126, file: !7, line: 47, column: 14)
!129 = !DILocalVariable(name: "val", scope: !130, file: !7, line: 47, type: !13, align: 8)
!130 = distinct !DILexicalBlock(scope: !128, file: !7, line: 47, column: 9)
!131 = !DILocalVariable(name: "i", scope: !132, file: !7, line: 47, type: !13, align: 8)
!132 = distinct !DILexicalBlock(scope: !128, file: !7, line: 47, column: 14)
!133 = !DILocation(line: 0, scope: !119)
!134 = !DILocation(line: 0, scope: !126)
!135 = !DILocation(line: 0, scope: !70, inlinedAt: !136)
!136 = distinct !DILocation(line: 47, column: 14, scope: !128)
!137 = !DILocation(line: 1137, column: 52, scope: !101, inlinedAt: !138)
!138 = distinct !DILocation(line: 505, column: 12, scope: !70, inlinedAt: !136)
!139 = !DILocation(line: 505, column: 9, scope: !70, inlinedAt: !136)
!140 = !DILocation(line: 48, column: 9, scope: !132)
!141 = !DILocation(line: 0, scope: !128)
!142 = !DILocation(line: 0, scope: !132)
!143 = !DILocation(line: 50, column: 2, scope: !119)
