; ModuleID = 'iterator_bench.5f6e6zhf-cgu.0'
source_filename = "iterator_bench.5f6e6zhf-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }
%"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>" = type { [0 x i64], { i16*, i16* }, [0 x i64], %"core::slice::ChunksMut<u8>", [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::slice::ChunksMut<u8>" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>" = type { [0 x i64], %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>" = type { [0 x i64], { i16*, i16* }, [0 x i64], %"core::slice::ChunksExactMut<u8>", [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::slice::ChunksExactMut<u8>" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>" = type { [0 x i64], %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", [0 x i64], i64, [0 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc120 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc63 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\0C\01\00\00\15\00\00\00" }>, align 8
@alloc65 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\0D\01\00\00\15\00\00\00" }>, align 8
@alloc69 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00I\01\00\00\15\00\00\00" }>, align 8
@alloc75 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\83\01\00\00\15\00\00\00" }>, align 8
@alloc77 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\84\01\00\00\15\00\00\00" }>, align 8
@alloc79 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\01\00\00\1D\00\00\00" }>, align 8
@alloc81 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\C1\01\00\00\15\00\00\00" }>, align 8
@alloc83 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\C2\01\00\00\15\00\00\00" }>, align 8
@alloc93 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\BC\02\00\00\15\00\00\00" }>, align 8
@alloc97 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\FA\02\00\00\15\00\00\00" }>, align 8
@alloc99 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\FB\02\00\00\15\00\00\00" }>, align 8
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\002\03\00\00\15\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\003\03\00\00\15\00\00\00" }>, align 8
@alloc105 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00l\03\00\00\15\00\00\00" }>, align 8
@alloc107 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00m\03\00\00\15\00\00\00" }>, align 8

; iterator_bench::optimal_unsafe_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench19optimal_unsafe_impl17h43d230ec30bc4b7bE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !37 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !52, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !53, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !54, metadata !DIExpression(DW_OP_deref)), !dbg !73
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !103
  br label %vector.body, !dbg !105

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !106
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !122
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !169
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !169
  %2 = shl nuw i64 %index, 1, !dbg !170
  %3 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !171
  %4 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !172
  %5 = or i64 %2, 1, !dbg !173
  %6 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %5, !dbg !174
  %7 = trunc <8 x i16> %4 to <8 x i8>, !dbg !216
  %8 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !174
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !174
  %interleaved.vec = shufflevector <8 x i8> %3, <8 x i8> %7, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !216
  store <16 x i8> %interleaved.vec, <16 x i8>* %9, align 1, !dbg !216
  %index.next = or i64 %index, 8, !dbg !106
  %10 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !122
  %11 = bitcast i16* %10 to <8 x i16>*, !dbg !169
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !169
  %12 = shl nuw i64 %index.next, 1, !dbg !170
  %13 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !171
  %14 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !172
  %15 = or i64 %12, 1, !dbg !173
  %16 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %15, !dbg !174
  %17 = trunc <8 x i16> %14 to <8 x i8>, !dbg !216
  %18 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !174
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !174
  %interleaved.vec.1 = shufflevector <8 x i8> %13, <8 x i8> %17, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !216
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %19, align 1, !dbg !216
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !106
  %20 = icmp eq i64 %index.next.1, 320000, !dbg !106
  br i1 %20, label %bb5, label %vector.body, !dbg !106, !llvm.loop !217

bb5:                                              ; preds = %vector.body
  ret void, !dbg !219
}

; iterator_bench::c_style_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench23c_style_fixed_size_impl17h342585e2e19b3e4eE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !220 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !222, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !223, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !224, metadata !DIExpression(DW_OP_deref)), !dbg !235
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !236
  br label %vector.body, !dbg !238

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !239
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !242
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !242
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !242
  %2 = shl nuw i64 %index, 1, !dbg !243
  %3 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !244
  %4 = or i64 %2, 1, !dbg !245
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !246
  %6 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %4, !dbg !247
  %7 = trunc <8 x i16> %5 to <8 x i8>, !dbg !247
  %8 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !247
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !247
  %interleaved.vec = shufflevector <8 x i8> %3, <8 x i8> %7, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !247
  store <16 x i8> %interleaved.vec, <16 x i8>* %9, align 1, !dbg !247
  %index.next = or i64 %index, 8, !dbg !239
  %10 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !242
  %11 = bitcast i16* %10 to <8 x i16>*, !dbg !242
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !242
  %12 = shl nuw i64 %index.next, 1, !dbg !243
  %13 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !244
  %14 = or i64 %12, 1, !dbg !245
  %15 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !246
  %16 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %14, !dbg !247
  %17 = trunc <8 x i16> %15 to <8 x i8>, !dbg !247
  %18 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !247
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !247
  %interleaved.vec.1 = shufflevector <8 x i8> %13, <8 x i8> %17, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !247
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %19, align 1, !dbg !247
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !239
  %20 = icmp eq i64 %index.next.1, 320000, !dbg !239
  br i1 %20, label %bb5, label %vector.body, !dbg !239, !llvm.loop !248

bb5:                                              ; preds = %vector.body
  ret void, !dbg !249
}

; iterator_bench::c_style_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench29c_style_input_size_fixed_impl17hcfe426a147d1500bE([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !250 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !266
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !266
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !255, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !256, metadata !DIExpression(DW_OP_deref)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  br label %bb8, !dbg !270

bb5:                                              ; preds = %bb10.1
  ret void, !dbg !271

bb8:                                              ; preds = %bb10.1, %start
  %iter.sroa.0.015 = phi i64 [ 0, %start ], [ %6, %bb10.1 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !119, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !114, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !274
  %0 = or i64 %iter.sroa.0.015, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !258, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !262, metadata !DIExpression()), !dbg !278
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.0.015, !dbg !279
  %b = load i16, i16* %1, align 2, !dbg !279
  call void @llvm.dbg.value(metadata i16 %b, metadata !264, metadata !DIExpression()), !dbg !280
  %_23 = shl nuw i64 %iter.sroa.0.015, 1, !dbg !281
  %_26 = icmp ult i64 %_23, %output.1, !dbg !282
  br i1 %_26, label %bb9, label %panic1, !dbg !282, !prof !283

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23, !dbg !282
  %3 = trunc i16 %b to i8, !dbg !282
  store i8 %3, i8* %2, align 1, !dbg !282
  %_30 = or i64 %_23, 1, !dbg !284
  %_34 = icmp ult i64 %_30, %output.1, !dbg !285
  br i1 %_34, label %bb10, label %panic2, !dbg !285, !prof !283

bb10:                                             ; preds = %bb9
  %_28 = lshr i16 %b, 8, !dbg !286
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30, !dbg !285
  %5 = trunc i16 %_28 to i8, !dbg !285
  store i8 %5, i8* %4, align 1, !dbg !285
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !256, metadata !DIExpression(DW_OP_deref)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 %0, metadata !119, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 %0, metadata !114, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !274
  %6 = add nuw nsw i64 %iter.sroa.0.015, 2, !dbg !276
  call void @llvm.dbg.value(metadata i64 %0, metadata !258, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %0, metadata !262, metadata !DIExpression()), !dbg !278
  %7 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !279
  %b.1 = load i16, i16* %7, align 2, !dbg !279
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !264, metadata !DIExpression()), !dbg !280
  %_23.1 = shl nuw i64 %0, 1, !dbg !281
  %_26.1 = icmp ult i64 %_23.1, %output.1, !dbg !282
  br i1 %_26.1, label %bb9.1, label %panic1, !dbg !282, !prof !283

panic1:                                           ; preds = %bb10, %bb8
  %_23.lcssa = phi i64 [ %_23, %bb8 ], [ %_23.1, %bb10 ], !dbg !281
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_23.lcssa, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc63 to %"core::panic::Location"*)), !dbg !282
  unreachable, !dbg !282

panic2:                                           ; preds = %bb9.1, %bb9
  %_30.lcssa = phi i64 [ %_30, %bb9 ], [ %_30.1, %bb9.1 ], !dbg !284
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_30.lcssa, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc65 to %"core::panic::Location"*)), !dbg !285
  unreachable, !dbg !285

bb9.1:                                            ; preds = %bb10
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23.1, !dbg !282
  %9 = trunc i16 %b.1 to i8, !dbg !282
  store i8 %9, i8* %8, align 1, !dbg !282
  %_30.1 = or i64 %_23.1, 1, !dbg !284
  %_34.1 = icmp ult i64 %_30.1, %output.1, !dbg !285
  br i1 %_34.1, label %bb10.1, label %panic2, !dbg !285, !prof !283

bb10.1:                                           ; preds = %bb9.1
  %_28.1 = lshr i16 %b.1, 8, !dbg !286
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30.1, !dbg !285
  %11 = trunc i16 %_28.1 to i8, !dbg !285
  store i8 %11, i8* %10, align 1, !dbg !285
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !256, metadata !DIExpression(DW_OP_deref)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  %exitcond.1 = icmp eq i64 %6, 320000, !dbg !287
  br i1 %exitcond.1, label %bb5, label %bb8, !dbg !270
}

; iterator_bench::c_style_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench30c_style_output_size_fixed_impl17hf1905e2e3293ab9bE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !299 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !303, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !315
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !304, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !315
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !305, metadata !DIExpression(DW_OP_deref)), !dbg !316
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !317
  %0 = icmp eq i64 %input.1, 0, !dbg !319
  br i1 %0, label %bb5, label %bb8, !dbg !321

bb5:                                              ; preds = %bb10, %start
  ret void, !dbg !322

bb8:                                              ; preds = %start, %bb10
  %iter.sroa.0.015 = phi i64 [ %1, %bb10 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !119, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !114, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !325
  %1 = add nuw nsw i64 %iter.sroa.0.015, 1, !dbg !327
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !307, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !311, metadata !DIExpression()), !dbg !329
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.015, !dbg !330
  %b = load i16, i16* %2, align 2, !dbg !330
  call void @llvm.dbg.value(metadata i16 %b, metadata !313, metadata !DIExpression()), !dbg !331
  %_22 = shl nuw i64 %iter.sroa.0.015, 1, !dbg !332
  %exitcond = icmp eq i64 %iter.sroa.0.015, 320000, !dbg !333
  br i1 %exitcond, label %panic1, label %bb10, !dbg !333, !prof !334

bb10:                                             ; preds = %bb8
  %3 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_22, !dbg !333
  %4 = trunc i16 %b to i8, !dbg !333
  store i8 %4, i8* %3, align 1, !dbg !333
  %_29 = or i64 %_22, 1, !dbg !335
  %_27 = lshr i16 %b, 8, !dbg !336
  %5 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_29, !dbg !337
  %6 = trunc i16 %_27 to i8, !dbg !337
  store i8 %6, i8* %5, align 1, !dbg !337
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !305, metadata !DIExpression(DW_OP_deref)), !dbg !316
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !317
  %exitcond20 = icmp eq i64 %1, %input.1, !dbg !319
  br i1 %exitcond20, label %bb5, label %bb8, !dbg !321

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_22, i64 640000, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc69 to %"core::panic::Location"*)), !dbg !333
  unreachable, !dbg !333
}

; iterator_bench::c_style_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench25c_style_unknown_size_impl17ha4507c1657d6df17E([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !338 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !342, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !354
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !342, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !354
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !354
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !354
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !344, metadata !DIExpression(DW_OP_deref)), !dbg !355
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !356
  %0 = icmp eq i64 %input.1, 0, !dbg !358
  br i1 %0, label %bb5, label %bb8, !dbg !360

bb5:                                              ; preds = %bb10, %start
  ret void, !dbg !361

bb8:                                              ; preds = %start, %bb10
  %iter.sroa.0.015 = phi i64 [ %1, %bb10 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !119, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !114, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !364
  %1 = add nuw i64 %iter.sroa.0.015, 1, !dbg !366
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !346, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.015, metadata !350, metadata !DIExpression()), !dbg !368
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.015, !dbg !369
  %b = load i16, i16* %2, align 2, !dbg !369
  call void @llvm.dbg.value(metadata i16 %b, metadata !352, metadata !DIExpression()), !dbg !370
  %_22 = shl i64 %iter.sroa.0.015, 1, !dbg !371
  %_25 = icmp ult i64 %_22, %output.1, !dbg !372
  br i1 %_25, label %bb9, label %panic1, !dbg !372, !prof !283

bb9:                                              ; preds = %bb8
  %3 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_22, !dbg !372
  %4 = trunc i16 %b to i8, !dbg !372
  store i8 %4, i8* %3, align 1, !dbg !372
  %_29 = or i64 %_22, 1, !dbg !373
  %_33 = icmp ult i64 %_29, %output.1, !dbg !374
  br i1 %_33, label %bb10, label %panic2, !dbg !374, !prof !283

bb10:                                             ; preds = %bb9
  %_27 = lshr i16 %b, 8, !dbg !375
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_29, !dbg !374
  %6 = trunc i16 %_27 to i8, !dbg !374
  store i8 %6, i8* %5, align 1, !dbg !374
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !344, metadata !DIExpression(DW_OP_deref)), !dbg !355
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !356
  %exitcond = icmp eq i64 %1, %input.1, !dbg !358
  br i1 %exitcond, label %bb5, label %bb8, !dbg !360

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_22, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc75 to %"core::panic::Location"*)), !dbg !372
  unreachable, !dbg !372

panic2:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_29, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc77 to %"core::panic::Location"*)), !dbg !374
  unreachable, !dbg !374
}

; iterator_bench::c_style_unknown_size_limit_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31c_style_unknown_size_limit_impl17h959ca8c4442b3f9cE([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !376 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !390
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !378, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !390
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !390
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !379, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !390
  call void @llvm.dbg.value(metadata i64 320000, metadata !391, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 320000, metadata !397, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !401, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 320000, metadata !406, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !414, metadata !DIExpression()), !dbg !418
  %0 = icmp ugt i64 %input.1, 320000, !dbg !418
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !418
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !420
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !421
  br label %bb8, !dbg !423

bb6:                                              ; preds = %bb11
  ret void, !dbg !424

bb8:                                              ; preds = %start, %bb11
  %iter.sroa.0.018 = phi i64 [ 0, %start ], [ %1, %bb11 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.018, metadata !119, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.018, metadata !114, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !427
  %1 = add nuw i64 %iter.sroa.0.018, 1, !dbg !429
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.018, metadata !382, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.018, metadata !386, metadata !DIExpression()), !dbg !431
  %exitcond = icmp eq i64 %iter.sroa.0.018, %input.1, !dbg !432
  br i1 %exitcond, label %panic, label %bb9, !dbg !432, !prof !334

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.018, !dbg !432
  %b = load i16, i16* %2, align 2, !dbg !432
  call void @llvm.dbg.value(metadata i16 %b, metadata !388, metadata !DIExpression()), !dbg !433
  %_23 = shl i64 %iter.sroa.0.018, 1, !dbg !434
  %_26 = icmp ult i64 %_23, %output.1, !dbg !435
  br i1 %_26, label %bb10, label %panic1, !dbg !435, !prof !283

bb10:                                             ; preds = %bb9
  %3 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23, !dbg !435
  %4 = trunc i16 %b to i8, !dbg !435
  store i8 %4, i8* %3, align 1, !dbg !435
  %_30 = or i64 %_23, 1, !dbg !436
  %_34 = icmp ult i64 %_30, %output.1, !dbg !437
  br i1 %_34, label %bb11, label %panic2, !dbg !437, !prof !283

bb11:                                             ; preds = %bb10
  %_28 = lshr i16 %b, 8, !dbg !438
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30, !dbg !437
  %6 = trunc i16 %_28 to i8, !dbg !437
  store i8 %6, i8* %5, align 1, !dbg !437
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !420
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !421
  %7 = icmp ult i64 %1, %.0.sroa.speculated.i.i.i, !dbg !439
  br i1 %7, label %bb8, label %bb6, !dbg !423

panic:                                            ; preds = %bb8
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !119, metadata !DIExpression()), !dbg !425
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %input.1, i64 %input.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc79 to %"core::panic::Location"*)), !dbg !432
  unreachable, !dbg !432

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_23, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc81 to %"core::panic::Location"*)), !dbg !435
  unreachable, !dbg !435

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 %_30, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc83 to %"core::panic::Location"*)), !dbg !437
  unreachable, !dbg !437
}

; iterator_bench::zip_chunks_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !441 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !443, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !444, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !445, metadata !DIExpression(DW_OP_deref)), !dbg !487
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !508
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !515
  br label %vector.body, !dbg !517

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !518
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !519
  %1 = shl nuw i64 %index, 1, !dbg !543
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !558
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !561
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !561
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !562
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !563
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !564
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !564
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !564
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !564
  %index.next = or i64 %index, 8, !dbg !518
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !519
  %9 = shl nuw i64 %index.next, 1, !dbg !543
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !558
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !561
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !561
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !562
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !563
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !564
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !564
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !564
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !564
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !518
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !518
  br i1 %16, label %bb7, label %vector.body, !dbg !518, !llvm.loop !565

bb7:                                              ; preds = %vector.body
  ret void, !dbg !566
}

; iterator_bench::zip_chunks_fixed_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !567 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !569, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !570, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !571, metadata !DIExpression(DW_OP_deref)), !dbg !587
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !596
  br label %vector.body, !dbg !598

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !599
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !602
  %1 = shl nuw i64 %index, 1, !dbg !606
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !608
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !611
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !611
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !612
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !613
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !614
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !614
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !614
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !614
  %index.next = or i64 %index, 8, !dbg !599
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !602
  %9 = shl nuw i64 %index.next, 1, !dbg !606
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !608
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !611
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !611
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !612
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !613
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !614
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !614
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !614
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !614
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !599
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !599
  br i1 %16, label %bb8, label %vector.body, !dbg !599, !llvm.loop !615

bb8:                                              ; preds = %vector.body
  ret void, !dbg !616
}

; iterator_bench::zip_chunks_fixed_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !617 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !619, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !620, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !621, metadata !DIExpression(DW_OP_deref)), !dbg !652
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !653
  br label %bb17.preheader, !dbg !655

bb8:                                              ; preds = %bb17.preheader
  ret void, !dbg !656

bb17.preheader:                                   ; preds = %bb17.preheader, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %iter.sroa.16.0116 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %7, %bb17.preheader ]
  %iter.sroa.11.0115 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %10, %bb17.preheader ]
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !657
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !659
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !657
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !659
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !513, metadata !DIExpression()) #5, !dbg !661
  %0 = or i64 %iter.sroa.11.0115, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !541, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !532, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !533, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !525, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !526, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !669
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !550, metadata !DIExpression()) #5, !dbg !669
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0115, 1, !dbg !671
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !672
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !553, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #5, !dbg !673
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #5, !dbg !674
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !674
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i16* undef, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !627, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i8* undef, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i8* undef, metadata !686, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i16 undef, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.0115, !dbg !716
  call void @llvm.dbg.value(metadata i16* %1, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  %b = load i16, i16* %1, align 2, !dbg !717
  call void @llvm.dbg.value(metadata i16 %b, metadata !627, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 %b, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i16 %b, metadata !630, metadata !DIExpression()), !dbg !680
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i, !dbg !718
  call void @llvm.dbg.value(metadata i8* %2, metadata !686, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8* %2, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i8* %2, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i8* %2, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i16 %b, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %2, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !730
  %3 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !732
  call void @llvm.dbg.value(metadata i8* %2, metadata !645, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %2, metadata !649, metadata !DIExpression()), !dbg !734
  %4 = trunc i16 %b to i8, !dbg !735
  store i8 %4, i8* %2, align 1, !dbg !735
  %5 = lshr i16 %b, 8, !dbg !736
  call void @llvm.dbg.value(metadata i16 %5, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i16 %5, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %3, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %3, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8* %3, metadata !645, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %3, metadata !649, metadata !DIExpression()), !dbg !734
  %6 = trunc i16 %5 to i8, !dbg !735
  store i8 %6, i8* %3, align 1, !dbg !735
  call void @llvm.dbg.value(metadata i16 0, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !621, metadata !DIExpression(DW_OP_deref)), !dbg !652
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !653
  %7 = add nsw i64 %iter.sroa.16.0116, -2, !dbg !737
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !657
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !659
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !657
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !659
  call void @llvm.dbg.value(metadata i64 %0, metadata !513, metadata !DIExpression()) #5, !dbg !661
  call void @llvm.dbg.value(metadata i64 %0, metadata !541, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !532, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata i64 %0, metadata !533, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !525, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata i64 %0, metadata !526, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !669
  call void @llvm.dbg.value(metadata i64 %0, metadata !550, metadata !DIExpression()) #5, !dbg !669
  %start1.i.i.i.i.1 = shl nuw i64 %0, 1, !dbg !671
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !551, metadata !DIExpression()) #5, !dbg !672
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !553, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #5, !dbg !673
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #5, !dbg !674
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()) #5, !dbg !674
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i16* undef, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !627, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i8* undef, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i8* undef, metadata !686, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i16 undef, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !716
  call void @llvm.dbg.value(metadata i16* %8, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  %b.1 = load i16, i16* %8, align 2, !dbg !717
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !627, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !630, metadata !DIExpression()), !dbg !680
  %9 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i.1, !dbg !718
  call void @llvm.dbg.value(metadata i8* %9, metadata !686, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8* %9, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i8* %9, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i8* %9, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  %10 = add nuw nsw i64 %iter.sroa.11.0115, 2, !dbg !662
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %9, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !730
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !732
  call void @llvm.dbg.value(metadata i8* %9, metadata !645, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %9, metadata !649, metadata !DIExpression()), !dbg !734
  %12 = trunc i16 %b.1 to i8, !dbg !735
  store i8 %12, i8* %9, align 1, !dbg !735
  %13 = lshr i16 %b.1, 8, !dbg !736
  call void @llvm.dbg.value(metadata i16 %13, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i16 %13, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %11, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %11, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8* %11, metadata !645, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %11, metadata !649, metadata !DIExpression()), !dbg !734
  %14 = trunc i16 %13 to i8, !dbg !735
  store i8 %14, i8* %11, align 1, !dbg !735
  call void @llvm.dbg.value(metadata i16 0, metadata !630, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !621, metadata !DIExpression(DW_OP_deref)), !dbg !652
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !653
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !738
  br i1 %_2.i.1, label %bb8, label %bb17.preheader, !dbg !655
}

; iterator_bench::zip_chunks_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E([640000 x i8]* align 1 dereferenceable(640000) %output, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !739 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !741, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !752
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !752
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !766
  call void @llvm.dbg.value(metadata i64 640000, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !766
  call void @llvm.dbg.value(metadata i64 2, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !766
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !766
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !772
  call void @llvm.dbg.value(metadata i64 640000, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !772
  call void @llvm.dbg.value(metadata i64 2, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !772
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !772
  call void @llvm.dbg.value(metadata i64 640000, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !780
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !780
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 320000, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i64 320000, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 320000, metadata !797, metadata !DIExpression()), !dbg !799
  %0 = icmp ult i64 %input.1, 320000, !dbg !799
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !799
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !801
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !802
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !804
  %_2.i.i71 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !806
  br i1 %_2.i.i71, label %bb7, label %bb9, !dbg !807

bb7:                                              ; preds = %bb10, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !808

bb9:                                              ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %bb10
  %iter.sroa.11.072 = phi i64 [ %1, %bb10 ], [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.072, metadata !513, metadata !DIExpression()) #5, !dbg !809
  %1 = add nuw i64 %iter.sroa.11.072, 1, !dbg !810
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.072, metadata !541, metadata !DIExpression()) #5, !dbg !811
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()) #5, !dbg !813
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.072, metadata !533, metadata !DIExpression()) #5, !dbg !813
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()) #5, !dbg !815
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.072, metadata !526, metadata !DIExpression()) #5, !dbg !815
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.072, !dbg !817
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !818
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.072, metadata !550, metadata !DIExpression()) #5, !dbg !818
  %start1.i.i.i = shl i64 %iter.sroa.11.072, 1, !dbg !820
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !821
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !822, metadata !DIExpression()) #5, !dbg !831
  call void @llvm.dbg.value(metadata i64 2, metadata !827, metadata !DIExpression()) #5, !dbg !831
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !833, metadata !DIExpression()) #5, !dbg !846
  call void @llvm.dbg.value(metadata i64 2, metadata !842, metadata !DIExpression()) #5, !dbg !846
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %start1.i.i.i, i64 2) #5, !dbg !848
  %4 = extractvalue { i64, i1 } %3, 0, !dbg !848
  %5 = extractvalue { i64, i1 } %3, 1, !dbg !848
  %6 = icmp ugt i64 %4, 640000, !dbg !849
  %7 = or i1 %5, %6, !dbg !849
  %end.0.i.i.i = select i1 %7, i64 640000, i64 %4, !dbg !849
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i, metadata !553, metadata !DIExpression()) #5, !dbg !850
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #5, !dbg !851
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !851
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #5, !dbg !853
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !853
  %8 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i, !dbg !855
  call void @llvm.dbg.value(metadata i16* %2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i8* %8, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i8* %8, metadata !751, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !857
  %b = load i16, i16* %2, align 2, !dbg !858
  call void @llvm.dbg.value(metadata i16 %b, metadata !749, metadata !DIExpression()), !dbg !857
  %_24 = icmp eq i64 %end.0.i.i.i, %start1.i.i.i, !dbg !859
  br i1 %_24, label %panic, label %bb10, !dbg !859, !prof !334

bb10:                                             ; preds = %bb9
  %9 = trunc i16 %b to i8, !dbg !859
  store i8 %9, i8* %8, align 1, !dbg !859
  %_26 = lshr i16 %b, 8, !dbg !860
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !861
  %11 = trunc i16 %_26 to i8, !dbg !861
  store i8 %11, i8* %10, align 1, !dbg !861
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !801
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !802
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !804
  %_2.i.i = icmp ult i64 %1, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !806
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !807

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc93 to %"core::panic::Location"*)), !dbg !859
  unreachable, !dbg !859
}

; iterator_bench::zip_chunks_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !862 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !864, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !875
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !864, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !875
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !865, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !876
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !876
  call void @llvm.dbg.value(metadata i64 2, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !876
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !876
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !762, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !876
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 2, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !771, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !880
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !880
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !891
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !891
  %0 = icmp eq i64 %output.1, 0, !dbg !933
  br i1 %0, label %bb7, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !934

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !935
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !903, metadata !DIExpression()), !dbg !936
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !905, metadata !DIExpression()), !dbg !938
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !939
  call void @llvm.dbg.value(metadata i64 320000, metadata !782, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i64 320000, metadata !788, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i64 320000, metadata !794, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !944
  %1 = icmp ult i64 %n.0.i.i.i.i.i, 320000, !dbg !946
  br i1 %1, label %2, label %bb9.preheader, !dbg !944

2:                                                ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !866, metadata !DIExpression(DW_OP_deref)), !dbg !947
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !948
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !950
  %_2.i.i74 = icmp eq i64 %n.0.i.i.i.i.i, 0, !dbg !952
  br i1 %_2.i.i74, label %bb7, label %bb9.preheader, !dbg !953

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %2
  %3 = phi i64 [ %n.0.i.i.i.i.i, %2 ], [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ]
  br label %bb9, !dbg !954

bb7:                                              ; preds = %bb11, %start, %2
  ret void, !dbg !955

bb9:                                              ; preds = %bb11, %bb9.preheader
  %iter.sroa.11.075 = phi i64 [ %4, %bb11 ], [ 0, %bb9.preheader ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.075, metadata !513, metadata !DIExpression()) #5, !dbg !956
  %4 = add nuw i64 %iter.sroa.11.075, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.075, metadata !541, metadata !DIExpression()) #5, !dbg !958
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !532, metadata !DIExpression()) #5, !dbg !960
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.075, metadata !533, metadata !DIExpression()) #5, !dbg !960
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !525, metadata !DIExpression()) #5, !dbg !962
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.075, metadata !526, metadata !DIExpression()) #5, !dbg !962
  %5 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.075, !dbg !964
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !965
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.075, metadata !550, metadata !DIExpression()) #5, !dbg !965
  %start1.i.i.i = shl i64 %iter.sroa.11.075, 1, !dbg !967
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !968
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !822, metadata !DIExpression()) #5, !dbg !969
  call void @llvm.dbg.value(metadata i64 2, metadata !827, metadata !DIExpression()) #5, !dbg !969
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !833, metadata !DIExpression()) #5, !dbg !971
  call void @llvm.dbg.value(metadata i64 2, metadata !842, metadata !DIExpression()) #5, !dbg !971
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %start1.i.i.i, i64 2) #5, !dbg !973
  %7 = extractvalue { i64, i1 } %6, 0, !dbg !973
  %8 = extractvalue { i64, i1 } %6, 1, !dbg !973
  %9 = icmp ugt i64 %7, %output.1, !dbg !974
  %10 = or i1 %8, %9, !dbg !974
  %end.0.i.i.i = select i1 %10, i64 %output.1, i64 %7, !dbg !974
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i, metadata !553, metadata !DIExpression()) #5, !dbg !975
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !976
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !976
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !978
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !978
  %11 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !980
  %_23.i.i.i = sub i64 %end.0.i.i.i, %start1.i.i.i, !dbg !981
  call void @llvm.dbg.value(metadata i16* %5, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !982
  call void @llvm.dbg.value(metadata i8* %11, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !982
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !982
  call void @llvm.dbg.value(metadata i8* %11, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !983
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !983
  %b = load i16, i16* %5, align 2, !dbg !984
  call void @llvm.dbg.value(metadata i16 %b, metadata !872, metadata !DIExpression()), !dbg !983
  %_24 = icmp eq i64 %_23.i.i.i, 0, !dbg !954
  br i1 %_24, label %panic, label %bb10, !dbg !954, !prof !334

bb10:                                             ; preds = %bb9
  %12 = trunc i16 %b to i8, !dbg !954
  store i8 %12, i8* %11, align 1, !dbg !954
  %_30 = icmp eq i64 %_23.i.i.i, 1, !dbg !985
  br i1 %_30, label %panic1, label %bb11, !dbg !985, !prof !334

bb11:                                             ; preds = %bb10
  %_26 = lshr i16 %b, 8, !dbg !986
  %13 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !985
  %14 = trunc i16 %_26 to i8, !dbg !985
  store i8 %14, i8* %13, align 1, !dbg !985
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !866, metadata !DIExpression(DW_OP_deref)), !dbg !947
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !948
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !950
  %exitcond = icmp eq i64 %4, %3, !dbg !952
  br i1 %exitcond, label %bb7, label %bb9, !dbg !953

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc97 to %"core::panic::Location"*)), !dbg !954
  unreachable, !dbg !954

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc99 to %"core::panic::Location"*)), !dbg !985
  unreachable, !dbg !985
}

; iterator_bench::zip_chunks_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !987 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !989, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !989, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1000
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !990, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !990, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1000
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata i64 2, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1003
  call void @llvm.dbg.value(metadata i64 2, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1003
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1005
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1005
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1007
  %0 = icmp eq i64 %output.1, 0, !dbg !1011
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !1012

bb7.i.i.i.i.i:                                    ; preds = %start
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !903, metadata !DIExpression()), !dbg !1014
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !905, metadata !DIExpression()), !dbg !1016
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1017
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !1012

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !1018
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1023
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1025
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1023
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !991, metadata !DIExpression(DW_OP_deref)), !dbg !1026
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1027
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1029
  %_2.i.i72 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1031
  br i1 %_2.i.i72, label %bb7, label %bb9, !dbg !1032

bb7:                                              ; preds = %bb11, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !1033

bb9:                                              ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %bb11
  %iter.sroa.11.073 = phi i64 [ %2, %bb11 ], [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !513, metadata !DIExpression()) #5, !dbg !1034
  %2 = add nuw i64 %iter.sroa.11.073, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !541, metadata !DIExpression()) #5, !dbg !1036
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()) #5, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !533, metadata !DIExpression()) #5, !dbg !1038
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()) #5, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !526, metadata !DIExpression()) #5, !dbg !1040
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !550, metadata !DIExpression()) #5, !dbg !1042
  %start1.i.i.i = shl i64 %iter.sroa.11.073, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !822, metadata !DIExpression()) #5, !dbg !1046
  call void @llvm.dbg.value(metadata i64 2, metadata !827, metadata !DIExpression()) #5, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !833, metadata !DIExpression()) #5, !dbg !1048
  call void @llvm.dbg.value(metadata i64 2, metadata !842, metadata !DIExpression()) #5, !dbg !1048
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %start1.i.i.i, i64 2) #5, !dbg !1050
  %4 = extractvalue { i64, i1 } %3, 0, !dbg !1050
  %5 = extractvalue { i64, i1 } %3, 1, !dbg !1050
  %6 = icmp ugt i64 %4, %output.1, !dbg !1051
  %7 = or i1 %5, %6, !dbg !1051
  %end.0.i.i.i = select i1 %7, i64 %output.1, i64 %4, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i, metadata !553, metadata !DIExpression()) #5, !dbg !1052
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1053
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1055
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1057
  %_23.i.i.i = sub i64 %end.0.i.i.i, %start1.i.i.i, !dbg !1058
  call void @llvm.dbg.value(metadata i16* undef, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %8, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1059
  call void @llvm.dbg.value(metadata i16* undef, metadata !997, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %8, metadata !999, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !999, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1060
  %_23 = icmp eq i64 %_23.i.i.i, 0, !dbg !1061
  br i1 %_23, label %panic, label %bb10, !dbg !1061, !prof !334

bb10:                                             ; preds = %bb9
  %9 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.073, !dbg !1062
  call void @llvm.dbg.value(metadata i16* %9, metadata !997, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i16* %9, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1059
  %_20 = load i16, i16* %9, align 2, !dbg !1063
  %10 = trunc i16 %_20 to i8, !dbg !1061
  store i8 %10, i8* %8, align 1, !dbg !1061
  %_29 = icmp eq i64 %_23.i.i.i, 1, !dbg !1064
  br i1 %_29, label %panic1, label %bb11, !dbg !1064, !prof !334

bb11:                                             ; preds = %bb10
  %_25 = lshr i16 %_20, 8, !dbg !1065
  %11 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1064
  %12 = trunc i16 %_25 to i8, !dbg !1064
  store i8 %12, i8* %11, align 1, !dbg !1064
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !991, metadata !DIExpression(DW_OP_deref)), !dbg !1026
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1027
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1029
  %_2.i.i = icmp ult i64 %2, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1031
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !1032

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::Location"*)), !dbg !1061
  unreachable, !dbg !1061

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc103 to %"core::panic::Location"*)), !dbg !1064
  unreachable, !dbg !1064
}

; iterator_bench::zip_chunks_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1066 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1068, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1068, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1069, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1069, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1079
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1080
  call void @llvm.dbg.value(metadata i64 2, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1080
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1080
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i64 2, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1084
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1084
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1086
  %0 = icmp eq i64 %output.1, 0, !dbg !1090
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !1091

bb7.i.i.i.i.i:                                    ; preds = %start
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !903, metadata !DIExpression()), !dbg !1093
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !905, metadata !DIExpression()), !dbg !1095
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1096
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !1091

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !1097
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1102
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1104
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1102
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1070, metadata !DIExpression(DW_OP_deref)), !dbg !1105
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !1106
  br label %bb2.i, !dbg !1108

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %bb12
  %iter.sroa.16.0104 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %2, %bb12 ]
  %iter.sroa.11.0103 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %3, %bb12 ]
  %2 = add nsw i64 %iter.sroa.16.0104, -1, !dbg !1109
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1110
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1112
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0103, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1114
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1115

bb8:                                              ; preds = %bb12, %bb2.i
  ret void, !dbg !1116

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1110
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0103, metadata !513, metadata !DIExpression()) #5, !dbg !1117
  %3 = add nuw nsw i64 %iter.sroa.11.0103, 1, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0103, metadata !541, metadata !DIExpression()) #5, !dbg !1119
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()) #5, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0103, metadata !533, metadata !DIExpression()) #5, !dbg !1121
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()) #5, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0103, metadata !526, metadata !DIExpression()) #5, !dbg !1123
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0103, metadata !550, metadata !DIExpression()) #5, !dbg !1125
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0103, 1, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !1128
  %4 = add nuw nsw i64 %start1.i.i.i.i, 2
  %5 = icmp ugt i64 %4, %output.1, !dbg !1129
  %end.0.i.i.i.i = select i1 %5, i64 %output.1, i64 %4, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !553, metadata !DIExpression()) #5, !dbg !1130
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1131
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1133
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1135
  %_23.i.i.i.i = sub i64 %end.0.i.i.i.i, %start1.i.i.i.i, !dbg !1136
  call void @llvm.dbg.value(metadata i16* undef, metadata !1072, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %6, metadata !1072, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1137
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i.i, metadata !1072, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1137
  call void @llvm.dbg.value(metadata i16* undef, metadata !1076, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %6, metadata !1078, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i.i, metadata !1078, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1138
  %_24 = icmp eq i64 %_23.i.i.i.i, 0, !dbg !1139
  br i1 %_24, label %panic, label %bb11, !dbg !1139, !prof !334

bb11:                                             ; preds = %bb10
  %7 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0103, !dbg !1140
  call void @llvm.dbg.value(metadata i16* %7, metadata !1076, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i16* %7, metadata !1072, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1137
  %_21 = load i16, i16* %7, align 2, !dbg !1141
  %8 = trunc i16 %_21 to i8, !dbg !1139
  store i8 %8, i8* %6, align 1, !dbg !1139
  %_30 = icmp eq i64 %_23.i.i.i.i, 1, !dbg !1142
  br i1 %_30, label %panic1, label %bb12, !dbg !1142, !prof !334

bb12:                                             ; preds = %bb11
  %_26 = lshr i16 %_21, 8, !dbg !1143
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1142
  %10 = trunc i16 %_26 to i8, !dbg !1142
  store i8 %10, i8* %9, align 1, !dbg !1142
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1070, metadata !DIExpression(DW_OP_deref)), !dbg !1105
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !1106
  %_2.i = icmp eq i64 %2, 0, !dbg !1144
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1108

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc105 to %"core::panic::Location"*)), !dbg !1139
  unreachable, !dbg !1139

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc107 to %"core::panic::Location"*)), !dbg !1142
  unreachable, !dbg !1142
}

; iterator_bench::zip_chunks_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1145 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1168
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1147, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1168
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1168
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1168
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1169
  call void @llvm.dbg.value(metadata i64 2, metadata !753, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1169
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1169
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1171
  call void @llvm.dbg.value(metadata i64 2, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1171
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1173
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1173
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1175
  %0 = icmp eq i64 %output.1, 0, !dbg !1179
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !1180

bb7.i.i.i.i.i:                                    ; preds = %start
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !903, metadata !DIExpression()), !dbg !1182
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !905, metadata !DIExpression()), !dbg !1184
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1185
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !1180

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !1186
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1191
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1193
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1191
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1149, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !1195
  br label %bb2.i, !dbg !1197

bb6.loopexit:                                     ; preds = %bb17.prol.loopexit, %bb17, %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1149, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !588, metadata !DIExpression()) #5, !dbg !1195
  %_2.i = icmp eq i64 %9, 0, !dbg !1198
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1197

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %bb6.loopexit
  %iter.sroa.16.0116 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %9, %bb6.loopexit ]
  %iter.sroa.11.0115 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %10, %bb6.loopexit ]
  %2 = shl nuw nsw i64 %iter.sroa.11.0115, 1, !dbg !1199
  %3 = add nuw i64 %2, 2, !dbg !1199
  %4 = icmp ugt i64 %3, %output.1, !dbg !1199
  %umin = select i1 %4, i64 %output.1, i64 %3, !dbg !1199
  %5 = mul nsw i64 %iter.sroa.11.0115, -2, !dbg !1199
  %6 = add i64 %umin, %5, !dbg !1199
  %7 = add i64 %5, -1, !dbg !1199
  %8 = add i64 %umin, %7, !dbg !1199
  %9 = add nsw i64 %iter.sroa.16.0116, -1, !dbg !1199
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1200
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1202
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0115, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1204
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1205

bb8:                                              ; preds = %bb6.loopexit, %bb2.i
  ret void, !dbg !1206

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !488, metadata !DIExpression()) #5, !dbg !1200
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !510, metadata !DIExpression()) #5, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !513, metadata !DIExpression()) #5, !dbg !1207
  %10 = add nuw nsw i64 %iter.sroa.11.0115, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !541, metadata !DIExpression()) #5, !dbg !1209
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()) #5, !dbg !1211
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !533, metadata !DIExpression()) #5, !dbg !1211
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()) #5, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !526, metadata !DIExpression()) #5, !dbg !1213
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !549, metadata !DIExpression()) #5, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !550, metadata !DIExpression()) #5, !dbg !1215
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0115, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !551, metadata !DIExpression()) #5, !dbg !1218
  %11 = add nuw nsw i64 %start1.i.i.i.i, 2
  %12 = icmp ugt i64 %11, %output.1, !dbg !1219
  %end.0.i.i.i.i = select i1 %12, i64 %output.1, i64 %11, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !553, metadata !DIExpression()) #5, !dbg !1220
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1221
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1223
  call void @llvm.dbg.value(metadata i16* undef, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1225
  call void @llvm.dbg.value(metadata i8* undef, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1225
  call void @llvm.dbg.value(metadata i8* undef, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i16 undef, metadata !1155, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i16 undef, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* undef, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1228
  call void @llvm.dbg.value(metadata i8* undef, metadata !686, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !1233
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %end.0.i.i.i.i, !dbg !1235
  call void @llvm.dbg.value(metadata i16 undef, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  %_13.i112 = icmp eq i64 %start1.i.i.i.i, %end.0.i.i.i.i, !dbg !1239
  br i1 %_13.i112, label %bb6.loopexit, label %bb17.preheader, !dbg !1240

bb17.preheader:                                   ; preds = %bb10
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0115, !dbg !1241
  call void @llvm.dbg.value(metadata i16* %14, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1225
  %b = load i16, i16* %14, align 2, !dbg !1242
  call void @llvm.dbg.value(metadata i16 %b, metadata !1155, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i16 %b, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i16 %b, metadata !1158, metadata !DIExpression()), !dbg !1227
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %15, metadata !686, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8* %15, metadata !192, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %15, metadata !183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %15, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %15, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %15, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1225
  %xtraiter = and i64 %6, 7, !dbg !1240
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1240
  br i1 %lcmp.mod, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1240

bb17.prol:                                        ; preds = %bb17.preheader, %bb17.prol
  %val1.0114.prol = phi i16 [ %18, %bb17.prol ], [ %b, %bb17.preheader ]
  %iter2.sroa.0.0113.prol = phi i8* [ %16, %bb17.prol ], [ %15, %bb17.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %bb17.prol ], [ %xtraiter, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i16 %val1.0114.prol, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %16 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113.prol, i64 1, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !1166, metadata !DIExpression()), !dbg !1251
  %17 = trunc i16 %val1.0114.prol to i8, !dbg !1252
  store i8 %17, i8* %iter2.sroa.0.0113.prol, align 1, !dbg !1252
  %18 = lshr i16 %val1.0114.prol, 8, !dbg !1253
  call void @llvm.dbg.value(metadata i16 %18, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !1240
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !1240
  br i1 %prol.iter.cmp, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1240, !llvm.loop !1254

bb17.prol.loopexit:                               ; preds = %bb17.prol, %bb17.preheader
  %val1.0114.unr = phi i16 [ %b, %bb17.preheader ], [ %18, %bb17.prol ]
  %iter2.sroa.0.0113.unr = phi i8* [ %15, %bb17.preheader ], [ %16, %bb17.prol ]
  %19 = icmp ult i64 %8, 7, !dbg !1240
  br i1 %19, label %bb6.loopexit, label %bb17, !dbg !1240

bb17:                                             ; preds = %bb17.prol.loopexit, %bb17
  %val1.0114 = phi i16 [ 0, %bb17 ], [ %val1.0114.unr, %bb17.prol.loopexit ]
  %iter2.sroa.0.0113 = phi i8* [ %30, %bb17 ], [ %iter2.sroa.0.0113.unr, %bb17.prol.loopexit ]
  call void @llvm.dbg.value(metadata i16 %val1.0114, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %20 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 1, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !1166, metadata !DIExpression()), !dbg !1251
  %21 = trunc i16 %val1.0114 to i8, !dbg !1252
  store i8 %21, i8* %iter2.sroa.0.0113, align 1, !dbg !1252
  %22 = lshr i16 %val1.0114, 8, !dbg !1253
  call void @llvm.dbg.value(metadata i16 %22, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 %22, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %20, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %20, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %23 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 2, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %20, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %20, metadata !1166, metadata !DIExpression()), !dbg !1251
  %24 = trunc i16 %22 to i8, !dbg !1252
  store i8 %24, i8* %20, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %23, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %23, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %25 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 3, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %23, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %23, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %23, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %25, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %25, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %26 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 4, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %25, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %25, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %25, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %26, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %26, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %27 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 5, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %26, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %26, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %26, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %27, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %27, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %28 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 6, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %27, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %27, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %27, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %28, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %28, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %29 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 7, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %28, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %28, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %28, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %29, metadata !725, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %29, metadata !183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1247
  %30 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 8, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %29, metadata !1162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %29, metadata !1166, metadata !DIExpression()), !dbg !1251
  store i8 0, i8* %29, align 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 0, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1237
  %_13.i.7 = icmp eq i8* %30, %13, !dbg !1239
  br i1 %_13.i.7, label %bb6.loopexit, label %bb17, !dbg !1240
}

; iterator_bench::zip_chunks_exact_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1256 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1259, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1259, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1283
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1314
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata i8* undef, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata i64 2, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1324
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1326, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1329, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1332, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1338
  call void @llvm.dbg.value(metadata i64 2, metadata !1332, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1338
  %output.0101 = ptrtoint [0 x i8]* %output.0 to i64
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1371
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1373
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1371
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1260, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1388
  %_2.i.i99 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1390
  br i1 %_2.i.i99, label %bb7, label %bb11.preheader, !dbg !1391

bb11.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1391
  br i1 %min.iters.check, label %bb11.preheader106, label %vector.scevcheck, !dbg !1391

bb11.preheader106:                                ; preds = %middle.block, %vector.scevcheck, %bb11.preheader
  %iter.sroa.11.0100.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb11.preheader ], [ %n.vec, %middle.block ]
  br label %bb11, !dbg !1391

vector.scevcheck:                                 ; preds = %bb11.preheader
  %1 = add nsw i64 %.0.sroa.speculated.i.i.i.i.i.i, -1, !dbg !1391
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !1391
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !1391
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !1391
  %2 = xor i64 %output.0101, -1, !dbg !1391
  %3 = icmp ugt i64 %mul.result, %2, !dbg !1391
  %4 = or i1 %3, %mul.overflow, !dbg !1391
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !1391
  %scevgep102 = ptrtoint i8* %scevgep to i64
  %mul103 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !1391
  %mul.result104 = extractvalue { i64, i1 } %mul103, 0, !dbg !1391
  %mul.overflow105 = extractvalue { i64, i1 } %mul103, 1, !dbg !1391
  %5 = xor i64 %scevgep102, -1, !dbg !1391
  %6 = icmp ugt i64 %mul.result104, %5, !dbg !1391
  %7 = or i1 %6, %mul.overflow105, !dbg !1391
  %8 = or i1 %4, %7, !dbg !1391
  br i1 %8, label %bb11.preheader106, label %vector.ph, !dbg !1391

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 9223372036854775800, !dbg !1391
  %9 = add nsw i64 %n.vec, -8, !dbg !1391
  %10 = lshr exact i64 %9, 3, !dbg !1391
  %11 = add nuw nsw i64 %10, 1, !dbg !1391
  %xtraiter = and i64 %11, 1, !dbg !1391
  %12 = icmp eq i64 %9, 0, !dbg !1391
  br i1 %12, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1391

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %11, %xtraiter, !dbg !1391
  br label %vector.body, !dbg !1391

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1392
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1393
  %14 = shl i64 %index, 1, !dbg !1397
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %14, !dbg !1408
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !1411
  %wide.load = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !1411
  %17 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1412
  %18 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1413
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !1414
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !1414
  %interleaved.vec = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1414
  store <16 x i8> %interleaved.vec, <16 x i8>* %20, align 1, !dbg !1414
  %index.next = or i64 %index, 8, !dbg !1392
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1393
  %22 = shl i64 %index.next, 1, !dbg !1397
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %22, !dbg !1408
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !1411
  %wide.load.1 = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !1411
  %25 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1412
  %26 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1413
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !1414
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !1414
  %interleaved.vec.1 = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1414
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %28, align 1, !dbg !1414
  %index.next.1 = add i64 %index, 16, !dbg !1392
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1392
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1392
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1392, !llvm.loop !1415

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1392
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1392

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1393
  %30 = shl i64 %index.unr, 1, !dbg !1397
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %30, !dbg !1408
  %32 = bitcast i16* %29 to <8 x i16>*, !dbg !1411
  %wide.load.epil = load <8 x i16>, <8 x i16>* %32, align 2, !dbg !1411
  %33 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1412
  %34 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1413
  %35 = trunc <8 x i16> %34 to <8 x i8>, !dbg !1414
  %36 = bitcast i8* %31 to <16 x i8>*, !dbg !1414
  %interleaved.vec.epil = shufflevector <8 x i8> %33, <8 x i8> %35, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1414
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %36, align 1, !dbg !1414
  br label %middle.block, !dbg !1391

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1391
  br i1 %cmp.n, label %bb7, label %bb11.preheader106, !dbg !1391

bb7:                                              ; preds = %bb11, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1416

bb11:                                             ; preds = %bb11.preheader106, %bb11
  %iter.sroa.11.0100 = phi i64 [ %37, %bb11 ], [ %iter.sroa.11.0100.ph, %bb11.preheader106 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !1386, metadata !DIExpression()), !dbg !1417
  %37 = add nuw i64 %iter.sroa.11.0100, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !541, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !533, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !526, metadata !DIExpression()), !dbg !1420
  %38 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0100, !dbg !1393
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1403, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !1404, metadata !DIExpression()), !dbg !1421
  %start1.i.i.i = shl i64 %iter.sroa.11.0100, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1405, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1424
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1408
  call void @llvm.dbg.value(metadata i16* %38, metadata !1275, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i8* %39, metadata !1275, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i64 2, metadata !1275, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i16* %38, metadata !1279, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8* %39, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1426
  call void @llvm.dbg.value(metadata i64 2, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1426
  %_20 = load i16, i16* %38, align 2, !dbg !1411
  %40 = trunc i16 %_20 to i8, !dbg !1412
  store i8 %40, i8* %39, align 1, !dbg !1412
  %_25 = lshr i16 %_20, 8, !dbg !1413
  %41 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1414
  %42 = trunc i16 %_25 to i8, !dbg !1414
  store i8 %42, i8* %41, align 1, !dbg !1414
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1260, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1388
  %_2.i.i = icmp ult i64 %37, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1390
  br i1 %_2.i.i, label %bb11, label %bb7, !dbg !1391, !llvm.loop !1427
}

; iterator_bench::zip_chunks_exact_unknown_size_slice_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1428 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1430, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1430, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 320000, metadata !782, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !785, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 320000, metadata !788, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !791, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 320000, metadata !794, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !797, metadata !DIExpression()), !dbg !1446
  %output.0102 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp ult i64 %input.1, 320000, !dbg !1448
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !1446
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1449
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1453
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i8* undef, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 2, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1326, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1457
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1457
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1329, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1332, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1459
  call void @llvm.dbg.value(metadata i64 2, metadata !1332, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1459
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !782, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !788, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !794, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1468
  %1 = icmp ugt i64 %.0.sroa.speculated.i.i.i, %n.i.i.i.i.i, !dbg !1470
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %n.i.i.i.i.i, i64 %.0.sroa.speculated.i.i.i, !dbg !1468
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1432, metadata !DIExpression(DW_OP_deref)), !dbg !1471
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1474
  %_2.i.i100 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1476
  br i1 %_2.i.i100, label %bb10, label %bb14.preheader, !dbg !1477

bb14.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1477
  br i1 %min.iters.check, label %bb14.preheader107, label %vector.scevcheck, !dbg !1477

bb14.preheader107:                                ; preds = %middle.block, %vector.scevcheck, %bb14.preheader
  %iter.sroa.11.0101.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb14.preheader ], [ %n.vec, %middle.block ]
  br label %bb14, !dbg !1477

vector.scevcheck:                                 ; preds = %bb14.preheader
  %2 = add nsw i64 %.0.sroa.speculated.i.i.i.i.i.i, -1, !dbg !1477
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !1477
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !1477
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !1477
  %3 = xor i64 %output.0102, -1, !dbg !1477
  %4 = icmp ugt i64 %mul.result, %3, !dbg !1477
  %5 = or i1 %4, %mul.overflow, !dbg !1477
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !1477
  %scevgep103 = ptrtoint i8* %scevgep to i64
  %mul104 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !1477
  %mul.result105 = extractvalue { i64, i1 } %mul104, 0, !dbg !1477
  %mul.overflow106 = extractvalue { i64, i1 } %mul104, 1, !dbg !1477
  %6 = xor i64 %scevgep103, -1, !dbg !1477
  %7 = icmp ugt i64 %mul.result105, %6, !dbg !1477
  %8 = or i1 %7, %mul.overflow106, !dbg !1477
  %9 = or i1 %5, %8, !dbg !1477
  br i1 %9, label %bb14.preheader107, label %vector.ph, !dbg !1477

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !1477
  %10 = add nsw i64 %n.vec, -8, !dbg !1477
  %11 = lshr exact i64 %10, 3, !dbg !1477
  %12 = add nuw nsw i64 %11, 1, !dbg !1477
  %xtraiter = and i64 %12, 1, !dbg !1477
  %13 = icmp eq i64 %10, 0, !dbg !1477
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1477

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %12, %xtraiter, !dbg !1477
  br label %vector.body, !dbg !1477

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1478
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1479
  %15 = shl i64 %index, 1, !dbg !1483
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !1485
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !1488
  %wide.load = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !1488
  %18 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1489
  %19 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1490
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !1491
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !1491
  %interleaved.vec = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1491
  store <16 x i8> %interleaved.vec, <16 x i8>* %21, align 1, !dbg !1491
  %index.next = or i64 %index, 8, !dbg !1478
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1479
  %23 = shl i64 %index.next, 1, !dbg !1483
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !1485
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !1488
  %wide.load.1 = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !1488
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1489
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1490
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !1491
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !1491
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1491
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %29, align 1, !dbg !1491
  %index.next.1 = add i64 %index, 16, !dbg !1478
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1478
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1478
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1478, !llvm.loop !1492

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1478
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1478

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1479
  %31 = shl i64 %index.unr, 1, !dbg !1483
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %31, !dbg !1485
  %33 = bitcast i16* %30 to <8 x i16>*, !dbg !1488
  %wide.load.epil = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !1488
  %34 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1489
  %35 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1490
  %36 = trunc <8 x i16> %35 to <8 x i8>, !dbg !1491
  %37 = bitcast i8* %32 to <16 x i8>*, !dbg !1491
  %interleaved.vec.epil = shufflevector <8 x i8> %34, <8 x i8> %36, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1491
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %37, align 1, !dbg !1491
  br label %middle.block, !dbg !1477

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1477
  br i1 %cmp.n, label %bb10, label %bb14.preheader107, !dbg !1477

bb10:                                             ; preds = %bb14, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1493

bb14:                                             ; preds = %bb14.preheader107, %bb14
  %iter.sroa.11.0101 = phi i64 [ %38, %bb14 ], [ %iter.sroa.11.0101.ph, %bb14.preheader107 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0101, metadata !1386, metadata !DIExpression()), !dbg !1494
  %38 = add nuw i64 %iter.sroa.11.0101, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0101, metadata !541, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0101, metadata !533, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0101, metadata !526, metadata !DIExpression()), !dbg !1497
  %39 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0101, !dbg !1479
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1403, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0101, metadata !1404, metadata !DIExpression()), !dbg !1498
  %start1.i.i.i = shl i64 %iter.sroa.11.0101, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1405, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1501
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1485
  call void @llvm.dbg.value(metadata i16* %39, metadata !1434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %40, metadata !1434, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1502
  call void @llvm.dbg.value(metadata i64 2, metadata !1434, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1502
  call void @llvm.dbg.value(metadata i16* %39, metadata !1438, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %40, metadata !1440, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata i64 2, metadata !1440, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1503
  %_26 = load i16, i16* %39, align 2, !dbg !1488
  %41 = trunc i16 %_26 to i8, !dbg !1489
  store i8 %41, i8* %40, align 1, !dbg !1489
  %_31 = lshr i16 %_26, 8, !dbg !1490
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1491
  %43 = trunc i16 %_31 to i8, !dbg !1491
  store i8 %43, i8* %42, align 1, !dbg !1491
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1432, metadata !DIExpression(DW_OP_deref)), !dbg !1471
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1474
  %_2.i.i = icmp ult i64 %38, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1476
  br i1 %_2.i.i, label %bb14, label %bb10, !dbg !1477, !llvm.loop !1504
}

; iterator_bench::zip_chunks_exact_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1505 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1507, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1507, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1524
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1508, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1508, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1524
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1525
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1529
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata i8* undef, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata i64 2, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1531
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1326, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1533
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1533
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1329, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1332, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1535
  call void @llvm.dbg.value(metadata i64 2, metadata !1332, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1535
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1544
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1546
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1509, metadata !DIExpression(DW_OP_deref)), !dbg !1547
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1548, metadata !DIExpression()), !dbg !1554
  %_2.i.i.i136 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1556
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1560
  br i1 %_2.i.i.i136, label %bb8, label %bb12.preheader, !dbg !1561

bb12.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %1 = add nsw i64 %.0.sroa.speculated.i.i.i.i.i.i, -1, !dbg !1561
  %2 = icmp ult i64 %1, 319999, !dbg !1561
  %umin = select i1 %2, i64 %1, i64 319999, !dbg !1561
  %3 = add nuw nsw i64 %umin, 1, !dbg !1561
  %min.iters.check = icmp ult i64 %3, 8, !dbg !1561
  br i1 %min.iters.check, label %bb12.preheader143, label %vector.ph, !dbg !1561

bb12.preheader143:                                ; preds = %middle.block, %bb12.preheader
  %iter.sroa.16.0138.ph = phi i64 [ 320000, %bb12.preheader ], [ %ind.end, %middle.block ]
  %iter.sroa.11.0137.ph = phi i64 [ 0, %bb12.preheader ], [ %n.vec, %middle.block ]
  br label %bb12, !dbg !1561

vector.ph:                                        ; preds = %bb12.preheader
  %n.vec = and i64 %3, 1048568, !dbg !1561
  %ind.end = sub nsw i64 320000, %n.vec, !dbg !1561
  %4 = add nsw i64 %n.vec, -8, !dbg !1561
  %5 = lshr exact i64 %4, 3, !dbg !1561
  %6 = add nuw nsw i64 %5, 1, !dbg !1561
  %xtraiter = and i64 %6, 1, !dbg !1561
  %7 = icmp eq i64 %4, 0, !dbg !1561
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1561

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %6, %xtraiter, !dbg !1561
  br label %vector.body, !dbg !1561

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1562
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1563
  %9 = shl nuw i64 %index, 1, !dbg !1567
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %9, !dbg !1569
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !1572
  %wide.load = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !1572
  %12 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1573
  %13 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1574
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !1575
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !1575
  %interleaved.vec = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1575
  store <16 x i8> %interleaved.vec, <16 x i8>* %15, align 1, !dbg !1575
  %index.next = or i64 %index, 8, !dbg !1562
  %16 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1563
  %17 = shl nuw i64 %index.next, 1, !dbg !1567
  %18 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %17, !dbg !1569
  %19 = bitcast i16* %16 to <8 x i16>*, !dbg !1572
  %wide.load.1 = load <8 x i16>, <8 x i16>* %19, align 2, !dbg !1572
  %20 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1573
  %21 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1574
  %22 = trunc <8 x i16> %21 to <8 x i8>, !dbg !1575
  %23 = bitcast i8* %18 to <16 x i8>*, !dbg !1575
  %interleaved.vec.1 = shufflevector <8 x i8> %20, <8 x i8> %22, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1575
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %23, align 1, !dbg !1575
  %index.next.1 = add i64 %index, 16, !dbg !1562
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1562
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1562
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1562, !llvm.loop !1576

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1562
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1562

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1563
  %25 = shl nuw i64 %index.unr, 1, !dbg !1567
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %25, !dbg !1569
  %27 = bitcast i16* %24 to <8 x i16>*, !dbg !1572
  %wide.load.epil = load <8 x i16>, <8 x i16>* %27, align 2, !dbg !1572
  %28 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1573
  %29 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1574
  %30 = trunc <8 x i16> %29 to <8 x i8>, !dbg !1575
  %31 = bitcast i8* %26 to <16 x i8>*, !dbg !1575
  %interleaved.vec.epil = shufflevector <8 x i8> %28, <8 x i8> %30, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1575
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %31, align 1, !dbg !1575
  br label %middle.block, !dbg !1561

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !1561
  br i1 %cmp.n, label %bb8, label %bb12.preheader143, !dbg !1561

bb8:                                              ; preds = %bb12, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1577

bb12:                                             ; preds = %bb12.preheader143, %bb12
  %iter.sroa.16.0138 = phi i64 [ %32, %bb12 ], [ %iter.sroa.16.0138.ph, %bb12.preheader143 ]
  %iter.sroa.11.0137 = phi i64 [ %33, %bb12 ], [ %iter.sroa.11.0137.ph, %bb12.preheader143 ]
  %32 = add nsw i64 %iter.sroa.16.0138, -1, !dbg !1578
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0137, metadata !1386, metadata !DIExpression()), !dbg !1579
  %33 = add nuw nsw i64 %iter.sroa.11.0137, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0137, metadata !541, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0137, metadata !533, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0137, metadata !526, metadata !DIExpression()), !dbg !1582
  %34 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0137, !dbg !1563
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1403, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0137, metadata !1404, metadata !DIExpression()), !dbg !1583
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0137, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1405, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1586
  %35 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1569
  call void @llvm.dbg.value(metadata i16* %34, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %35, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1587
  call void @llvm.dbg.value(metadata i64 2, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1587
  call void @llvm.dbg.value(metadata i16* %34, metadata !1521, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i8* %35, metadata !1523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1588
  call void @llvm.dbg.value(metadata i64 2, metadata !1523, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1588
  %_21 = load i16, i16* %34, align 2, !dbg !1572
  %36 = trunc i16 %_21 to i8, !dbg !1573
  store i8 %36, i8* %35, align 1, !dbg !1573
  %_26 = lshr i16 %_21, 8, !dbg !1574
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1575
  %38 = trunc i16 %_26 to i8, !dbg !1575
  store i8 %38, i8* %37, align 1, !dbg !1575
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1509, metadata !DIExpression(DW_OP_deref)), !dbg !1547
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1548, metadata !DIExpression()), !dbg !1554
  %_2.i = icmp ne i64 %32, 0, !dbg !1589
  %_2.i.i.i = icmp ult i64 %33, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1556
  %or.cond = and i1 %_2.i.i.i, %_2.i, !dbg !1561
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1560
  br i1 %or.cond, label %bb12, label %bb8, !dbg !1561, !llvm.loop !1590
}

; iterator_bench::zip_chunks_exact_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1592 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1615
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1595, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1595, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1615
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1616
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1620
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata i8* undef, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1316, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata i64 2, metadata !1316, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1622
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1326, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1624
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1624
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1329, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1332, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1626
  call void @llvm.dbg.value(metadata i64 2, metadata !1332, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1626
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !782, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !785, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !788, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !791, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !794, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !797, metadata !DIExpression()), !dbg !1635
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1637
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1635
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1596, metadata !DIExpression(DW_OP_deref)), !dbg !1638
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1548, metadata !DIExpression()), !dbg !1639
  br label %bb2.i, !dbg !1641

bb2.i:                                            ; preds = %bb10.1, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %iter.sroa.16.0149 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %7, %bb10.1 ]
  %iter.sroa.11.0148 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %13, %bb10.1 ]
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1644
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0148, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1646
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1647

bb8:                                              ; preds = %bb10.1, %bb10, %bb2.i
  ret void, !dbg !1648

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !1386, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !541, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !533, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !526, metadata !DIExpression()), !dbg !1654
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0148, !dbg !1656
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1403, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !1404, metadata !DIExpression()), !dbg !1657
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0148, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1405, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1663
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1665
  call void @llvm.dbg.value(metadata i16* %1, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i8* %2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i64 2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i8* %2, metadata !1604, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1667
  call void @llvm.dbg.value(metadata i64 2, metadata !1604, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1667
  %b = load i16, i16* %1, align 2, !dbg !1668
  call void @llvm.dbg.value(metadata i16 %b, metadata !1602, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i16 %b, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %b, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %2, metadata !1609, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %2, metadata !1613, metadata !DIExpression()), !dbg !1681
  %3 = trunc i16 %b to i8, !dbg !1682
  store i8 %3, i8* %2, align 1, !dbg !1682
  %4 = lshr i16 %b, 8, !dbg !1683
  call void @llvm.dbg.value(metadata i16 %4, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %4, metadata !1605, metadata !DIExpression()), !dbg !1669
  %iter2.sroa.0.0.ptr.1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !183, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1609, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1613, metadata !DIExpression()), !dbg !1681
  %5 = trunc i16 %4 to i8, !dbg !1682
  store i8 %5, i8* %iter2.sroa.0.0.ptr.1, align 1, !dbg !1682
  call void @llvm.dbg.value(metadata i16 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  %6 = or i64 %iter.sroa.11.0148, 1, !dbg !1684
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1596, metadata !DIExpression(DW_OP_deref)), !dbg !1638
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1548, metadata !DIExpression()), !dbg !1639
  %7 = add nsw i64 %iter.sroa.16.0149, -2, !dbg !1685
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1644
  %_2.i.i.i.1 = icmp ult i64 %6, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1646
  br i1 %_2.i.i.i.1, label %bb10.1, label %bb8, !dbg !1647

bb10.1:                                           ; preds = %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1375, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1383, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %6, metadata !1386, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %6, metadata !541, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !532, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %6, metadata !533, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !525, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %6, metadata !526, metadata !DIExpression()), !dbg !1654
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %6, !dbg !1656
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1403, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %6, metadata !1404, metadata !DIExpression()), !dbg !1657
  %start1.i.i.i.i.1 = shl nuw i64 %6, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1405, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1663
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1665
  call void @llvm.dbg.value(metadata i16* %8, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i8* %9, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i64 2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1666
  call void @llvm.dbg.value(metadata i8* %9, metadata !1604, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1667
  call void @llvm.dbg.value(metadata i64 2, metadata !1604, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1667
  %b.1 = load i16, i16* %8, align 2, !dbg !1668
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1602, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %9, metadata !1609, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %9, metadata !1613, metadata !DIExpression()), !dbg !1681
  %10 = trunc i16 %b.1 to i8, !dbg !1682
  store i8 %10, i8* %9, align 1, !dbg !1682
  %11 = lshr i16 %b.1, 8, !dbg !1683
  call void @llvm.dbg.value(metadata i16 %11, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %11, metadata !1605, metadata !DIExpression()), !dbg !1669
  %iter2.sroa.0.0.ptr.1.1 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !183, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1609, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1613, metadata !DIExpression()), !dbg !1681
  %12 = trunc i16 %11 to i8, !dbg !1682
  store i8 %12, i8* %iter2.sroa.0.0.ptr.1.1, align 1, !dbg !1682
  call void @llvm.dbg.value(metadata i16 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  %13 = add nuw nsw i64 %iter.sroa.11.0148, 2, !dbg !1684
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1596, metadata !DIExpression(DW_OP_deref)), !dbg !1638
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1548, metadata !DIExpression()), !dbg !1639
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1686
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1641
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h566454b12ba8f623E(i64, i64, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !4, producer: "clang LLVM (rustc version 1.46.0-dev)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !5, globals: !30)
!4 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/iterator_bench")
!5 = !{!6, !14, !23}
!6 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !8, file: !7, baseType: !10, size: 8, align: 8, flags: DIFlagEnumClass, elements: !11)
!7 = !DIFile(filename: "<unknown>", directory: "")
!8 = !DINamespace(name: "result", scope: !9)
!9 = !DINamespace(name: "core", scope: null)
!10 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "Ok", value: 0)
!13 = !DIEnumerator(name: "Err", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !15, file: !7, baseType: !10, size: 8, align: 8, flags: DIFlagEnumClass, elements: !18)
!15 = !DINamespace(name: "v1", scope: !16)
!16 = !DINamespace(name: "rt", scope: !17)
!17 = !DINamespace(name: "fmt", scope: !9)
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "Left", value: 0)
!20 = !DIEnumerator(name: "Right", value: 1)
!21 = !DIEnumerator(name: "Center", value: 2)
!22 = !DIEnumerator(name: "Unknown", value: 3)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !24, file: !7, baseType: !25, size: 8, align: 8, flags: DIFlagEnumClass, elements: !26)
!24 = !DINamespace(name: "cmp", scope: !9)
!25 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "Less", value: -1)
!28 = !DIEnumerator(name: "Equal", value: 0)
!29 = !DIEnumerator(name: "Greater", value: 1)
!30 = !{!31}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !7, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !7, align: 64, flags: DIFlagArtificial, elements: !34, vtableHolder: !35, identifier: "vtable")
!34 = !{}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !36, size: 64, align: 64, dwarfAddressSpace: 0)
!36 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!37 = distinct !DISubprogram(name: "optimal_unsafe_impl", linkageName: "_ZN14iterator_bench19optimal_unsafe_impl17h43d230ec30bc4b7bE", scope: !39, file: !38, line: 132, type: !40, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !51)
!38 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/iterator_bench", checksumkind: CSK_MD5, checksum: "a8dc37aaa783cb836f824ed3391fd70d")
!39 = !DINamespace(name: "iterator_bench", scope: null)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !46}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [u8; 640000]", baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 5120000, align: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 640000)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u16; 320000]", baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 5120000, align: 16, elements: !49)
!48 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!49 = !{!50}
!50 = !DISubrange(count: 320000)
!51 = !{!52, !53, !54, !64, !66, !68, !70}
!52 = !DILocalVariable(name: "output", arg: 1, scope: !37, file: !38, line: 132, type: !42)
!53 = !DILocalVariable(name: "input", arg: 2, scope: !37, file: !38, line: 132, type: !46)
!54 = !DILocalVariable(name: "iter", scope: !55, file: !38, line: 133, type: !56, align: 8)
!55 = distinct !DILexicalBlock(scope: !37, file: !38, line: 133, column: 17)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !57, file: !7, size: 128, align: 64, elements: !59, templateParams: !62, identifier: "4be1f8843c4abc6e6b0755e50f9e3873")
!57 = !DINamespace(name: "range", scope: !58)
!58 = !DINamespace(name: "ops", scope: !9)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !56, file: !7, baseType: !36, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !56, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!62 = !{!63}
!63 = !DITemplateTypeParameter(name: "Idx", type: !36)
!64 = !DILocalVariable(name: "__next", scope: !65, file: !38, line: 133, type: !36, align: 8)
!65 = distinct !DILexicalBlock(scope: !55, file: !38, line: 133, column: 26)
!66 = !DILocalVariable(name: "val", scope: !67, file: !38, line: 133, type: !36, align: 8)
!67 = distinct !DILexicalBlock(scope: !65, file: !38, line: 133, column: 21)
!68 = !DILocalVariable(name: "i", scope: !69, file: !38, line: 133, type: !36, align: 8)
!69 = distinct !DILexicalBlock(scope: !65, file: !38, line: 133, column: 26)
!70 = !DILocalVariable(name: "b", scope: !71, file: !38, line: 135, type: !48, align: 2)
!71 = distinct !DILexicalBlock(scope: !69, file: !38, line: 135, column: 25)
!72 = !DILocation(line: 0, scope: !37)
!73 = !DILocation(line: 0, scope: !55)
!74 = !DILocalVariable(name: "self", arg: 1, scope: !75, file: !76, line: 504, type: !97)
!75 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h25cbe90ff389d789E", scope: !77, file: !76, line: 504, type: !80, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !101, retainedNodes: !98)
!76 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
!77 = !DINamespace(name: "{{impl}}", scope: !78)
!78 = !DINamespace(name: "range", scope: !79)
!79 = !DINamespace(name: "iter", scope: !9)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !97}
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !83, file: !7, size: 128, align: 64, elements: !84, identifier: "edae92f6aa2d4d3d8225245fd9f15299")
!83 = !DINamespace(name: "option", scope: !9)
!84 = !{!85}
!85 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 128, align: 64, elements: !86, templateParams: !89, identifier: "edae92f6aa2d4d3d8225245fd9f15299_variant_part", discriminator: !95)
!86 = !{!87, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !85, file: !7, baseType: !88, size: 128, align: 64, extraData: i64 0)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !82, file: !7, size: 128, align: 64, elements: !34, templateParams: !89, identifier: "edae92f6aa2d4d3d8225245fd9f15299::None")
!89 = !{!90}
!90 = !DITemplateTypeParameter(name: "T", type: !36)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !85, file: !7, baseType: !92, size: 128, align: 64, extraData: i64 1)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !82, file: !7, size: 128, align: 64, elements: !93, templateParams: !89, identifier: "edae92f6aa2d4d3d8225245fd9f15299::Some")
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !92, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !7, baseType: !96, size: 64, align: 64, flags: DIFlagArtificial)
!96 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !56, size: 64, align: 64, dwarfAddressSpace: 0)
!98 = !{!74, !99}
!99 = !DILocalVariable(name: "n", scope: !100, file: !76, line: 510, type: !36, align: 8)
!100 = distinct !DILexicalBlock(scope: !75, file: !76, line: 510, column: 13)
!101 = !{!102}
!102 = !DITemplateTypeParameter(name: "A", type: !36)
!103 = !DILocation(line: 0, scope: !75, inlinedAt: !104)
!104 = distinct !DILocation(line: 133, column: 26, scope: !65)
!105 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !104)
!106 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !116)
!107 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17he27be0fa2186d468E", scope: !109, file: !108, line: 3022, type: !111, scopeLine: 3022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !113)
!108 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "b610d63e687c1bb61890b7290628f313")
!109 = !DINamespace(name: "{{impl}}", scope: !110)
!110 = !DINamespace(name: "num", scope: !9)
!111 = !DISubroutineType(types: !112)
!112 = !{!36, !36, !36}
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "self", arg: 1, scope: !107, file: !108, line: 3022, type: !36)
!115 = !DILocalVariable(name: "rhs", arg: 2, scope: !107, file: !108, line: 3022, type: !36)
!116 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !121)
!117 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf3e4aa5239d3229aE", scope: !77, file: !76, line: 191, type: !111, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !118)
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "start", arg: 1, scope: !117, file: !76, line: 191, type: !36)
!120 = !DILocalVariable(name: "n", arg: 2, scope: !117, file: !76, line: 191, type: !36)
!121 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !104)
!122 = !DILocation(line: 163, column: 18, scope: !123, inlinedAt: !137)
!123 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h1ea7951510b1da58E", scope: !125, file: !124, line: 158, type: !128, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !132)
!124 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "1029a80e51f3b78113c12b9a07d56765")
!125 = !DINamespace(name: "{{impl}}", scope: !126)
!126 = !DINamespace(name: "const_ptr", scope: !127)
!127 = !DINamespace(name: "ptr", scope: !9)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!131 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "self", arg: 1, scope: !123, file: !124, line: 158, type: !130)
!134 = !DILocalVariable(name: "count", arg: 2, scope: !123, file: !124, line: 158, type: !131)
!135 = !{!136}
!136 = !DITemplateTypeParameter(name: "T", type: !48)
!137 = distinct !DILocation(line: 479, column: 18, scope: !138, inlinedAt: !144)
!138 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h84407a6ec849255eE", scope: !125, file: !124, line: 474, type: !139, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!130, !130, !36}
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "self", arg: 1, scope: !138, file: !124, line: 474, type: !130)
!143 = !DILocalVariable(name: "count", arg: 2, scope: !138, file: !124, line: 474, type: !36)
!144 = distinct !DILocation(line: 2991, column: 20, scope: !145, inlinedAt: !159)
!145 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h925a23a01d2de901E", scope: !147, file: !146, line: 2985, type: !149, scopeLine: 2985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !156)
!146 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9fd93c8a41addff7ba15d9096da1df6c")
!147 = !DINamespace(name: "{{impl}}", scope: !148)
!148 = !DINamespace(name: "slice", scope: !9)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !36, !152}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u16]", file: !7, size: 128, align: 64, elements: !153, templateParams: !34, identifier: "b0357cfe37f5889afcc00fbae608b8c")
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !152, file: !7, baseType: !130, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !152, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "self", arg: 1, scope: !145, file: !146, line: 2985, type: !36)
!158 = !DILocalVariable(name: "slice", arg: 2, scope: !145, file: !146, line: 2985, type: !152)
!159 = distinct !DILocation(line: 314, column: 18, scope: !160, inlinedAt: !168)
!160 = distinct !DISubprogram(name: "get_unchecked<u16,usize>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17hf20048a1e3baefd0E", scope: !147, file: !146, line: 309, type: !161, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !166, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!151, !152, !36}
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "self", arg: 1, scope: !160, file: !146, line: 309, type: !152)
!165 = !DILocalVariable(name: "index", arg: 2, scope: !160, file: !146, line: 309, type: !36)
!166 = !{!136, !167}
!167 = !DITemplateTypeParameter(name: "I", type: !36)
!168 = distinct !DILocation(line: 135, column: 34, scope: !69)
!169 = !DILocation(line: 135, column: 33, scope: !69)
!170 = !DILocation(line: 136, column: 51, scope: !71)
!171 = !DILocation(line: 136, column: 25, scope: !71)
!172 = !DILocation(line: 137, column: 65, scope: !71)
!173 = !DILocation(line: 137, column: 51, scope: !71)
!174 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !187)
!175 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17ha8eaf047cf6f2f2dE", scope: !177, file: !176, line: 152, type: !179, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !182)
!176 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "238dec856f48b4ef677669c578abb280")
!177 = !DINamespace(name: "{{impl}}", scope: !178)
!178 = !DINamespace(name: "mut_ptr", scope: !127)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !181, !131}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!182 = !{!183, !184}
!183 = !DILocalVariable(name: "self", arg: 1, scope: !175, file: !176, line: 152, type: !181)
!184 = !DILocalVariable(name: "count", arg: 2, scope: !175, file: !176, line: 152, type: !131)
!185 = !{!186}
!186 = !DITemplateTypeParameter(name: "T", type: !10)
!187 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !194)
!188 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h5cc7c4b4a4fd234aE", scope: !177, file: !176, line: 525, type: !189, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !181, !36}
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "self", arg: 1, scope: !188, file: !176, line: 525, type: !181)
!193 = !DILocalVariable(name: "count", arg: 2, scope: !188, file: !176, line: 525, type: !36)
!194 = distinct !DILocation(line: 2997, column: 24, scope: !195, inlinedAt: !207)
!195 = distinct !DISubprogram(name: "get_unchecked_mut<u8>", linkageName: "_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6a1e0588c0dc2c16E", scope: !147, file: !146, line: 2995, type: !196, scopeLine: 2995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !204)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !36, !199}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut u8", baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [u8]", file: !7, size: 128, align: 64, elements: !200, templateParams: !34, identifier: "7596319ecf86f60af9b48d8c05ebf9f7")
!200 = !{!201, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !199, file: !7, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !199, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!204 = !{!205, !206}
!205 = !DILocalVariable(name: "self", arg: 1, scope: !195, file: !146, line: 2995, type: !36)
!206 = !DILocalVariable(name: "slice", arg: 2, scope: !195, file: !146, line: 2995, type: !199)
!207 = distinct !DILocation(line: 346, column: 18, scope: !208, inlinedAt: !215)
!208 = distinct !DISubprogram(name: "get_unchecked_mut<u8,usize>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h3271901634b764d2E", scope: !147, file: !146, line: 341, type: !209, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !214, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!198, !199, !36}
!211 = !{!212, !213}
!212 = !DILocalVariable(name: "self", arg: 1, scope: !208, file: !146, line: 341, type: !199)
!213 = !DILocalVariable(name: "index", arg: 2, scope: !208, file: !146, line: 341, type: !36)
!214 = !{!186, !167}
!215 = distinct !DILocation(line: 137, column: 26, scope: !71)
!216 = !DILocation(line: 137, column: 25, scope: !71)
!217 = distinct !{!217, !218}
!218 = !{!"llvm.loop.isvectorized", i32 1}
!219 = !DILocation(line: 140, column: 14, scope: !37)
!220 = distinct !DISubprogram(name: "c_style_fixed_size_impl", linkageName: "_ZN14iterator_bench23c_style_fixed_size_impl17h342585e2e19b3e4eE", scope: !39, file: !38, line: 190, type: !40, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !221)
!221 = !{!222, !223, !224, !226, !228, !230, !232}
!222 = !DILocalVariable(name: "output", arg: 1, scope: !220, file: !38, line: 190, type: !42)
!223 = !DILocalVariable(name: "input", arg: 2, scope: !220, file: !38, line: 190, type: !46)
!224 = !DILocalVariable(name: "iter", scope: !225, file: !38, line: 191, type: !56, align: 8)
!225 = distinct !DILexicalBlock(scope: !220, file: !38, line: 191, column: 17)
!226 = !DILocalVariable(name: "__next", scope: !227, file: !38, line: 191, type: !36, align: 8)
!227 = distinct !DILexicalBlock(scope: !225, file: !38, line: 191, column: 26)
!228 = !DILocalVariable(name: "val", scope: !229, file: !38, line: 191, type: !36, align: 8)
!229 = distinct !DILexicalBlock(scope: !227, file: !38, line: 191, column: 21)
!230 = !DILocalVariable(name: "i", scope: !231, file: !38, line: 191, type: !36, align: 8)
!231 = distinct !DILexicalBlock(scope: !227, file: !38, line: 191, column: 26)
!232 = !DILocalVariable(name: "b", scope: !233, file: !38, line: 192, type: !48, align: 2)
!233 = distinct !DILexicalBlock(scope: !231, file: !38, line: 192, column: 21)
!234 = !DILocation(line: 0, scope: !220)
!235 = !DILocation(line: 0, scope: !225)
!236 = !DILocation(line: 0, scope: !75, inlinedAt: !237)
!237 = distinct !DILocation(line: 191, column: 26, scope: !227)
!238 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !237)
!239 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !240)
!240 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !241)
!241 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !237)
!242 = !DILocation(line: 192, column: 29, scope: !231)
!243 = !DILocation(line: 193, column: 28, scope: !233)
!244 = !DILocation(line: 193, column: 21, scope: !233)
!245 = !DILocation(line: 194, column: 28, scope: !233)
!246 = !DILocation(line: 194, column: 42, scope: !233)
!247 = !DILocation(line: 194, column: 21, scope: !233)
!248 = distinct !{!248, !218}
!249 = !DILocation(line: 196, column: 14, scope: !220)
!250 = distinct !DISubprogram(name: "c_style_input_size_fixed_impl", linkageName: "_ZN14iterator_bench29c_style_input_size_fixed_impl17hcfe426a147d1500bE", scope: !39, file: !38, line: 265, type: !251, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !199, !46}
!253 = !{!254, !255, !256, !258, !260, !262, !264}
!254 = !DILocalVariable(name: "output", arg: 1, scope: !250, file: !38, line: 265, type: !199)
!255 = !DILocalVariable(name: "input", arg: 2, scope: !250, file: !38, line: 265, type: !46)
!256 = !DILocalVariable(name: "iter", scope: !257, file: !38, line: 266, type: !56, align: 8)
!257 = distinct !DILexicalBlock(scope: !250, file: !38, line: 266, column: 17)
!258 = !DILocalVariable(name: "__next", scope: !259, file: !38, line: 266, type: !36, align: 8)
!259 = distinct !DILexicalBlock(scope: !257, file: !38, line: 266, column: 26)
!260 = !DILocalVariable(name: "val", scope: !261, file: !38, line: 266, type: !36, align: 8)
!261 = distinct !DILexicalBlock(scope: !259, file: !38, line: 266, column: 21)
!262 = !DILocalVariable(name: "i", scope: !263, file: !38, line: 266, type: !36, align: 8)
!263 = distinct !DILexicalBlock(scope: !259, file: !38, line: 266, column: 26)
!264 = !DILocalVariable(name: "b", scope: !265, file: !38, line: 267, type: !48, align: 2)
!265 = distinct !DILexicalBlock(scope: !263, file: !38, line: 267, column: 21)
!266 = !DILocation(line: 0, scope: !250)
!267 = !DILocation(line: 0, scope: !257)
!268 = !DILocation(line: 0, scope: !75, inlinedAt: !269)
!269 = distinct !DILocation(line: 266, column: 26, scope: !259)
!270 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !269)
!271 = !DILocation(line: 271, column: 14, scope: !250)
!272 = !DILocation(line: 0, scope: !117, inlinedAt: !273)
!273 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !269)
!274 = !DILocation(line: 0, scope: !107, inlinedAt: !275)
!275 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !273)
!276 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !275)
!277 = !DILocation(line: 0, scope: !259)
!278 = !DILocation(line: 0, scope: !263)
!279 = !DILocation(line: 267, column: 29, scope: !263)
!280 = !DILocation(line: 0, scope: !265)
!281 = !DILocation(line: 268, column: 28, scope: !265)
!282 = !DILocation(line: 268, column: 21, scope: !265)
!283 = !{!"branch_weights", i32 2000, i32 1}
!284 = !DILocation(line: 269, column: 28, scope: !265)
!285 = !DILocation(line: 269, column: 21, scope: !265)
!286 = !DILocation(line: 269, column: 42, scope: !265)
!287 = !DILocation(line: 1137, column: 52, scope: !288, inlinedAt: !298)
!288 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h697d7385366f3475E", scope: !290, file: !289, line: 1137, type: !292, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !295)
!289 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
!290 = !DINamespace(name: "{{impl}}", scope: !291)
!291 = !DINamespace(name: "impls", scope: !24)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !35, !35}
!294 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!295 = !{!296, !297}
!296 = !DILocalVariable(name: "self", arg: 1, scope: !288, file: !289, line: 1137, type: !35)
!297 = !DILocalVariable(name: "other", arg: 2, scope: !288, file: !289, line: 1137, type: !35)
!298 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !269)
!299 = distinct !DISubprogram(name: "c_style_output_size_fixed_impl", linkageName: "_ZN14iterator_bench30c_style_output_size_fixed_impl17hf1905e2e3293ab9bE", scope: !39, file: !38, line: 326, type: !300, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !42, !152}
!302 = !{!303, !304, !305, !307, !309, !311, !313}
!303 = !DILocalVariable(name: "output", arg: 1, scope: !299, file: !38, line: 326, type: !42)
!304 = !DILocalVariable(name: "input", arg: 2, scope: !299, file: !38, line: 326, type: !152)
!305 = !DILocalVariable(name: "iter", scope: !306, file: !38, line: 327, type: !56, align: 8)
!306 = distinct !DILexicalBlock(scope: !299, file: !38, line: 327, column: 17)
!307 = !DILocalVariable(name: "__next", scope: !308, file: !38, line: 327, type: !36, align: 8)
!308 = distinct !DILexicalBlock(scope: !306, file: !38, line: 327, column: 26)
!309 = !DILocalVariable(name: "val", scope: !310, file: !38, line: 327, type: !36, align: 8)
!310 = distinct !DILexicalBlock(scope: !308, file: !38, line: 327, column: 21)
!311 = !DILocalVariable(name: "i", scope: !312, file: !38, line: 327, type: !36, align: 8)
!312 = distinct !DILexicalBlock(scope: !308, file: !38, line: 327, column: 26)
!313 = !DILocalVariable(name: "b", scope: !314, file: !38, line: 328, type: !48, align: 2)
!314 = distinct !DILexicalBlock(scope: !312, file: !38, line: 328, column: 21)
!315 = !DILocation(line: 0, scope: !299)
!316 = !DILocation(line: 0, scope: !306)
!317 = !DILocation(line: 0, scope: !75, inlinedAt: !318)
!318 = distinct !DILocation(line: 327, column: 26, scope: !308)
!319 = !DILocation(line: 1137, column: 52, scope: !288, inlinedAt: !320)
!320 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !318)
!321 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !318)
!322 = !DILocation(line: 332, column: 14, scope: !299)
!323 = !DILocation(line: 0, scope: !117, inlinedAt: !324)
!324 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !318)
!325 = !DILocation(line: 0, scope: !107, inlinedAt: !326)
!326 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !324)
!327 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !326)
!328 = !DILocation(line: 0, scope: !308)
!329 = !DILocation(line: 0, scope: !312)
!330 = !DILocation(line: 328, column: 29, scope: !312)
!331 = !DILocation(line: 0, scope: !314)
!332 = !DILocation(line: 329, column: 28, scope: !314)
!333 = !DILocation(line: 329, column: 21, scope: !314)
!334 = !{!"branch_weights", i32 1, i32 2000}
!335 = !DILocation(line: 330, column: 28, scope: !314)
!336 = !DILocation(line: 330, column: 42, scope: !314)
!337 = !DILocation(line: 330, column: 21, scope: !314)
!338 = distinct !DISubprogram(name: "c_style_unknown_size_impl", linkageName: "_ZN14iterator_bench25c_style_unknown_size_impl17ha4507c1657d6df17E", scope: !39, file: !38, line: 384, type: !339, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !199, !152}
!341 = !{!342, !343, !344, !346, !348, !350, !352}
!342 = !DILocalVariable(name: "output", arg: 1, scope: !338, file: !38, line: 384, type: !199)
!343 = !DILocalVariable(name: "input", arg: 2, scope: !338, file: !38, line: 384, type: !152)
!344 = !DILocalVariable(name: "iter", scope: !345, file: !38, line: 385, type: !56, align: 8)
!345 = distinct !DILexicalBlock(scope: !338, file: !38, line: 385, column: 17)
!346 = !DILocalVariable(name: "__next", scope: !347, file: !38, line: 385, type: !36, align: 8)
!347 = distinct !DILexicalBlock(scope: !345, file: !38, line: 385, column: 26)
!348 = !DILocalVariable(name: "val", scope: !349, file: !38, line: 385, type: !36, align: 8)
!349 = distinct !DILexicalBlock(scope: !347, file: !38, line: 385, column: 21)
!350 = !DILocalVariable(name: "i", scope: !351, file: !38, line: 385, type: !36, align: 8)
!351 = distinct !DILexicalBlock(scope: !347, file: !38, line: 385, column: 26)
!352 = !DILocalVariable(name: "b", scope: !353, file: !38, line: 386, type: !48, align: 2)
!353 = distinct !DILexicalBlock(scope: !351, file: !38, line: 386, column: 21)
!354 = !DILocation(line: 0, scope: !338)
!355 = !DILocation(line: 0, scope: !345)
!356 = !DILocation(line: 0, scope: !75, inlinedAt: !357)
!357 = distinct !DILocation(line: 385, column: 26, scope: !347)
!358 = !DILocation(line: 1137, column: 52, scope: !288, inlinedAt: !359)
!359 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !357)
!360 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !357)
!361 = !DILocation(line: 390, column: 14, scope: !338)
!362 = !DILocation(line: 0, scope: !117, inlinedAt: !363)
!363 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !357)
!364 = !DILocation(line: 0, scope: !107, inlinedAt: !365)
!365 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !363)
!366 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !365)
!367 = !DILocation(line: 0, scope: !347)
!368 = !DILocation(line: 0, scope: !351)
!369 = !DILocation(line: 386, column: 29, scope: !351)
!370 = !DILocation(line: 0, scope: !353)
!371 = !DILocation(line: 387, column: 28, scope: !353)
!372 = !DILocation(line: 387, column: 21, scope: !353)
!373 = !DILocation(line: 388, column: 28, scope: !353)
!374 = !DILocation(line: 388, column: 21, scope: !353)
!375 = !DILocation(line: 388, column: 42, scope: !353)
!376 = distinct !DISubprogram(name: "c_style_unknown_size_limit_impl", linkageName: "_ZN14iterator_bench31c_style_unknown_size_limit_impl17h959ca8c4442b3f9cE", scope: !39, file: !38, line: 445, type: !339, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !377)
!377 = !{!378, !379, !380, !382, !384, !386, !388}
!378 = !DILocalVariable(name: "output", arg: 1, scope: !376, file: !38, line: 445, type: !199)
!379 = !DILocalVariable(name: "input", arg: 2, scope: !376, file: !38, line: 445, type: !152)
!380 = !DILocalVariable(name: "iter", scope: !381, file: !38, line: 447, type: !56, align: 8)
!381 = distinct !DILexicalBlock(scope: !376, file: !38, line: 447, column: 17)
!382 = !DILocalVariable(name: "__next", scope: !383, file: !38, line: 447, type: !36, align: 8)
!383 = distinct !DILexicalBlock(scope: !381, file: !38, line: 447, column: 26)
!384 = !DILocalVariable(name: "val", scope: !385, file: !38, line: 447, type: !36, align: 8)
!385 = distinct !DILexicalBlock(scope: !383, file: !38, line: 447, column: 21)
!386 = !DILocalVariable(name: "i", scope: !387, file: !38, line: 447, type: !36, align: 8)
!387 = distinct !DILexicalBlock(scope: !383, file: !38, line: 447, column: 26)
!388 = !DILocalVariable(name: "b", scope: !389, file: !38, line: 448, type: !48, align: 2)
!389 = distinct !DILexicalBlock(scope: !387, file: !38, line: 448, column: 21)
!390 = !DILocation(line: 0, scope: !376)
!391 = !DILocalVariable(name: "v1", arg: 1, scope: !392, file: !289, line: 994, type: !36)
!392 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3max17hd69510cf96ce65d3E", scope: !24, file: !289, line: 994, type: !111, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !393)
!393 = !{!391, !394}
!394 = !DILocalVariable(name: "v2", arg: 2, scope: !392, file: !289, line: 994, type: !36)
!395 = !DILocation(line: 0, scope: !392, inlinedAt: !396)
!396 = distinct !DILocation(line: 447, column: 29, scope: !376)
!397 = !DILocalVariable(name: "self", arg: 1, scope: !398, file: !289, line: 600, type: !36)
!398 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3Ord3max17hf04816fbfc63fc99E", scope: !399, file: !289, line: 600, type: !111, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !402, retainedNodes: !400)
!399 = !DINamespace(name: "Ord", scope: !24)
!400 = !{!397, !401}
!401 = !DILocalVariable(name: "other", arg: 2, scope: !398, file: !289, line: 600, type: !36)
!402 = !{!403}
!403 = !DITemplateTypeParameter(name: "Self", type: !36)
!404 = !DILocation(line: 0, scope: !398, inlinedAt: !405)
!405 = distinct !DILocation(line: 995, column: 5, scope: !392, inlinedAt: !396)
!406 = !DILocalVariable(name: "v1", arg: 1, scope: !407, file: !289, line: 1015, type: !36)
!407 = distinct !DISubprogram(name: "max_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6max_by17h45a7a595acc422f8E", scope: !24, file: !289, line: 1015, type: !408, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !416, retainedNodes: !413)
!408 = !DISubroutineType(types: !409)
!409 = !{!36, !36, !36, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&usize, &usize) -> core::cmp::Ordering", baseType: !411, align: 8, dwarfAddressSpace: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!23, !35, !35}
!413 = !{!406, !414, !415}
!414 = !DILocalVariable(name: "v2", arg: 2, scope: !407, file: !289, line: 1015, type: !36)
!415 = !DILocalVariable(name: "compare", arg: 3, scope: !407, file: !289, line: 1015, type: !410)
!416 = !{!90, !417}
!417 = !DITemplateTypeParameter(name: "F", type: !410)
!418 = !DILocation(line: 0, scope: !407, inlinedAt: !419)
!419 = distinct !DILocation(line: 604, column: 9, scope: !398, inlinedAt: !405)
!420 = !DILocation(line: 0, scope: !381)
!421 = !DILocation(line: 0, scope: !75, inlinedAt: !422)
!422 = distinct !DILocation(line: 447, column: 26, scope: !383)
!423 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !422)
!424 = !DILocation(line: 452, column: 14, scope: !376)
!425 = !DILocation(line: 0, scope: !117, inlinedAt: !426)
!426 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !422)
!427 = !DILocation(line: 0, scope: !107, inlinedAt: !428)
!428 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !426)
!429 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !428)
!430 = !DILocation(line: 0, scope: !383)
!431 = !DILocation(line: 0, scope: !387)
!432 = !DILocation(line: 448, column: 29, scope: !387)
!433 = !DILocation(line: 0, scope: !389)
!434 = !DILocation(line: 449, column: 28, scope: !389)
!435 = !DILocation(line: 449, column: 21, scope: !389)
!436 = !DILocation(line: 450, column: 28, scope: !389)
!437 = !DILocation(line: 450, column: 21, scope: !389)
!438 = !DILocation(line: 450, column: 42, scope: !389)
!439 = !DILocation(line: 1137, column: 52, scope: !288, inlinedAt: !440)
!440 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !422)
!441 = distinct !DISubprogram(name: "zip_chunks_fixed_size_impl", linkageName: "_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE", scope: !39, file: !38, line: 505, type: !40, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !442)
!442 = !{!443, !444, !445, !475, !481, !483, !485}
!443 = !DILocalVariable(name: "output", arg: 1, scope: !441, file: !38, line: 505, type: !42)
!444 = !DILocalVariable(name: "input", arg: 2, scope: !441, file: !38, line: 505, type: !46)
!445 = !DILocalVariable(name: "iter", scope: !446, file: !38, line: 506, type: !447, align: 8)
!446 = distinct !DILexicalBlock(scope: !441, file: !38, line: 506, column: 17)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", scope: !448, file: !7, size: 448, align: 64, elements: !450, templateParams: !472, identifier: "2603922c5128e7d2a0c421e882eb59e8")
!448 = !DINamespace(name: "zip", scope: !449)
!449 = !DINamespace(name: "adapters", scope: !79)
!450 = !{!451, !465, !470, !471}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !447, file: !7, baseType: !452, size: 128, align: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<u16>", scope: !148, file: !7, size: 128, align: 64, elements: !453, templateParams: !135, identifier: "3b6f625891d0497522e6ef9adb8e48b9")
!453 = !{!454, !459, !460}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !452, file: !7, baseType: !455, size: 64, align: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u16>", scope: !456, file: !7, size: 64, align: 64, elements: !457, templateParams: !135, identifier: "93f0871a8bbbfb515b6ec5299845b747")
!456 = !DINamespace(name: "non_null", scope: !127)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !455, file: !7, baseType: !130, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !452, file: !7, baseType: !130, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !452, file: !7, baseType: !461, align: 8)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&u16>", scope: !462, file: !7, align: 8, elements: !34, templateParams: !463, identifier: "b0f09a0ff467ada3bd7ae1b7c7b8c070")
!462 = !DINamespace(name: "marker", scope: !9)
!463 = !{!464}
!464 = !DITemplateTypeParameter(name: "T", type: !151)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !447, file: !7, baseType: !466, size: 192, align: 64, offset: 128)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksMut<u8>", scope: !148, file: !7, size: 192, align: 64, elements: !467, templateParams: !185, identifier: "3d60118ea8ab2507bfb6d9d594c44bd8")
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !466, file: !7, baseType: !199, size: 128, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !466, file: !7, baseType: !36, size: 64, align: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !447, file: !7, baseType: !36, size: 64, align: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !447, file: !7, baseType: !36, size: 64, align: 64, offset: 384)
!472 = !{!473, !474}
!473 = !DITemplateTypeParameter(name: "A", type: !452)
!474 = !DITemplateTypeParameter(name: "B", type: !466)
!475 = !DILocalVariable(name: "__next", scope: !476, file: !38, line: 506, type: !477, align: 8)
!476 = distinct !DILexicalBlock(scope: !446, file: !38, line: 506, column: 33)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&u16, &mut [u8])", file: !7, size: 192, align: 64, elements: !478, templateParams: !34, identifier: "da34b111579020308bcd12aa4b615188")
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !477, file: !7, baseType: !151, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !477, file: !7, baseType: !199, size: 128, align: 64, offset: 64)
!481 = !DILocalVariable(name: "val", scope: !482, file: !38, line: 506, type: !477, align: 8)
!482 = distinct !DILexicalBlock(scope: !476, file: !38, line: 506, column: 21)
!483 = !DILocalVariable(name: "b", scope: !484, file: !38, line: 506, type: !48, align: 2)
!484 = distinct !DILexicalBlock(scope: !476, file: !38, line: 506, column: 33)
!485 = !DILocalVariable(name: "ac", scope: !484, file: !38, line: 506, type: !199, align: 8)
!486 = !DILocation(line: 0, scope: !441)
!487 = !DILocation(line: 0, scope: !446)
!488 = !DILocalVariable(name: "self", arg: 1, scope: !489, file: !490, line: 46, type: !506)
!489 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h261f1104123b97a0E", scope: !491, file: !490, line: 46, type: !492, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !472, retainedNodes: !507)
!490 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/adapters/zip.rs", directory: "", checksumkind: CSK_MD5, checksum: "f3eb2f902ea9ef422ff1bfca2897667a")
!491 = !DINamespace(name: "{{impl}}", scope: !448)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !506}
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(&u16, &mut [u8])>", scope: !83, file: !7, size: 192, align: 64, elements: !495, identifier: "94209b0a14e89d36c0760065ce090683")
!495 = !{!496}
!496 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 192, align: 64, elements: !497, templateParams: !500, identifier: "94209b0a14e89d36c0760065ce090683_variant_part", discriminator: !95)
!497 = !{!498, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !496, file: !7, baseType: !499, size: 192, align: 64, extraData: i64 0)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !494, file: !7, size: 192, align: 64, elements: !34, templateParams: !500, identifier: "94209b0a14e89d36c0760065ce090683::None")
!500 = !{!501}
!501 = !DITemplateTypeParameter(name: "T", type: !477)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !496, file: !7, baseType: !503, size: 192, align: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !494, file: !7, size: 192, align: 64, elements: !504, templateParams: !500, identifier: "94209b0a14e89d36c0760065ce090683::Some")
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !503, file: !7, baseType: !477, size: 192, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", baseType: !447, size: 64, align: 64, dwarfAddressSpace: 0)
!507 = !{!488}
!508 = !DILocation(line: 0, scope: !489, inlinedAt: !509)
!509 = distinct !DILocation(line: 506, column: 33, scope: !476)
!510 = !DILocalVariable(name: "self", arg: 1, scope: !511, file: !490, line: 173, type: !506)
!511 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4340cb2fc3d57d84E", scope: !491, file: !490, line: 173, type: !492, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !472, retainedNodes: !512)
!512 = !{!510, !513}
!513 = !DILocalVariable(name: "i", scope: !514, file: !490, line: 175, type: !36, align: 8)
!514 = distinct !DILexicalBlock(scope: !511, file: !490, line: 175, column: 13)
!515 = !DILocation(line: 0, scope: !511, inlinedAt: !516)
!516 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !509)
!517 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !516)
!518 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !516)
!519 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !527)
!520 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h92aca73ecbe6dcdaE", scope: !177, file: !176, line: 152, type: !521, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !524)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !523, !131}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "self", arg: 1, scope: !520, file: !176, line: 152, type: !523)
!526 = !DILocalVariable(name: "count", arg: 2, scope: !520, file: !176, line: 152, type: !131)
!527 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !534)
!528 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hb4031df3ce20c655E", scope: !177, file: !176, line: 525, type: !529, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!523, !523, !36}
!531 = !{!532, !533}
!532 = !DILocalVariable(name: "self", arg: 1, scope: !528, file: !176, line: 525, type: !523)
!533 = !DILocalVariable(name: "count", arg: 2, scope: !528, file: !176, line: 525, type: !36)
!534 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !542)
!535 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN93_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hefa02adb481ff826E", scope: !147, file: !146, line: 6297, type: !536, scopeLine: 6297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !539)
!536 = !DISubroutineType(types: !537)
!537 = !{!151, !538, !36}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::Iter<u16>", baseType: !452, size: 64, align: 64, dwarfAddressSpace: 0)
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "self", arg: 1, scope: !535, file: !146, line: 6297, type: !538)
!541 = !DILocalVariable(name: "i", arg: 2, scope: !535, file: !146, line: 6297, type: !36)
!542 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !516)
!543 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !557)
!544 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN98_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hb5619e58b7fe560aE", scope: !147, file: !146, line: 5028, type: !545, scopeLine: 5028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !548)
!545 = !DISubroutineType(types: !546)
!546 = !{!199, !547, !36}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksMut<u8>", baseType: !466, size: 64, align: 64, dwarfAddressSpace: 0)
!548 = !{!549, !550, !551, !553, !555}
!549 = !DILocalVariable(name: "self", arg: 1, scope: !544, file: !146, line: 5028, type: !547)
!550 = !DILocalVariable(name: "i", arg: 2, scope: !544, file: !146, line: 5028, type: !36)
!551 = !DILocalVariable(name: "start", scope: !552, file: !146, line: 5029, type: !36, align: 8)
!552 = distinct !DILexicalBlock(scope: !544, file: !146, line: 5029, column: 9)
!553 = !DILocalVariable(name: "end", scope: !554, file: !146, line: 5030, type: !36, align: 8)
!554 = distinct !DILexicalBlock(scope: !552, file: !146, line: 5030, column: 9)
!555 = !DILocalVariable(name: "end", scope: !556, file: !146, line: 5032, type: !36, align: 8)
!556 = distinct !DILexicalBlock(scope: !552, file: !146, line: 5032, column: 13)
!557 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !516)
!558 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !559)
!559 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !560)
!560 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !557)
!561 = !DILocation(line: 506, column: 23, scope: !476)
!562 = !DILocation(line: 509, column: 21, scope: !484)
!563 = !DILocation(line: 510, column: 30, scope: !484)
!564 = !DILocation(line: 510, column: 21, scope: !484)
!565 = distinct !{!565, !218}
!566 = !DILocation(line: 512, column: 14, scope: !441)
!567 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_impl", linkageName: "_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE", scope: !39, file: !38, line: 565, type: !40, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !568)
!568 = !{!569, !570, !571, !579, !581, !583, !585}
!569 = !DILocalVariable(name: "output", arg: 1, scope: !567, file: !38, line: 565, type: !42)
!570 = !DILocalVariable(name: "input", arg: 2, scope: !567, file: !38, line: 565, type: !46)
!571 = !DILocalVariable(name: "iter", scope: !572, file: !38, line: 566, type: !573, align: 8)
!572 = distinct !DILexicalBlock(scope: !567, file: !38, line: 566, column: 17)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", scope: !449, file: !7, size: 512, align: 64, elements: !574, templateParams: !577, identifier: "8a349ab4c0331bdbde1ff71b2d8993b6")
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !573, file: !7, baseType: !447, size: 448, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !573, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!577 = !{!578}
!578 = !DITemplateTypeParameter(name: "I", type: !447)
!579 = !DILocalVariable(name: "__next", scope: !580, file: !38, line: 566, type: !477, align: 8)
!580 = distinct !DILexicalBlock(scope: !572, file: !38, line: 566, column: 33)
!581 = !DILocalVariable(name: "val", scope: !582, file: !38, line: 566, type: !477, align: 8)
!582 = distinct !DILexicalBlock(scope: !580, file: !38, line: 566, column: 21)
!583 = !DILocalVariable(name: "b", scope: !584, file: !38, line: 566, type: !48, align: 2)
!584 = distinct !DILexicalBlock(scope: !580, file: !38, line: 566, column: 33)
!585 = !DILocalVariable(name: "ac", scope: !584, file: !38, line: 566, type: !199, align: 8)
!586 = !DILocation(line: 0, scope: !567)
!587 = !DILocation(line: 0, scope: !572)
!588 = !DILocalVariable(name: "self", arg: 1, scope: !589, file: !590, line: 2195, type: !594)
!589 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E", scope: !591, file: !590, line: 2195, type: !592, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !577, retainedNodes: !595)
!590 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/adapters/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea0d10848170548968a5df5bdc9565ca")
!591 = !DINamespace(name: "{{impl}}", scope: !449)
!592 = !DISubroutineType(types: !593)
!593 = !{!494, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", baseType: !573, size: 64, align: 64, dwarfAddressSpace: 0)
!595 = !{!588}
!596 = !DILocation(line: 0, scope: !589, inlinedAt: !597)
!597 = distinct !DILocation(line: 566, column: 33, scope: !580)
!598 = !DILocation(line: 2196, column: 9, scope: !589, inlinedAt: !597)
!599 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !600)
!600 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !601)
!601 = distinct !DILocation(line: 2198, column: 13, scope: !589, inlinedAt: !597)
!602 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !603)
!603 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !604)
!604 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !605)
!605 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !600)
!606 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !607)
!607 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !600)
!608 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !609)
!609 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !610)
!610 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !607)
!611 = !DILocation(line: 566, column: 23, scope: !580)
!612 = !DILocation(line: 569, column: 21, scope: !584)
!613 = !DILocation(line: 570, column: 30, scope: !584)
!614 = !DILocation(line: 570, column: 21, scope: !584)
!615 = distinct !{!615, !218}
!616 = !DILocation(line: 572, column: 14, scope: !567)
!617 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_iter_impl", linkageName: "_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E", scope: !39, file: !38, line: 628, type: !40, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !618)
!618 = !{!619, !620, !621, !623, !625, !627, !629, !630, !632, !645, !647, !649}
!619 = !DILocalVariable(name: "output", arg: 1, scope: !617, file: !38, line: 628, type: !42)
!620 = !DILocalVariable(name: "input", arg: 2, scope: !617, file: !38, line: 628, type: !46)
!621 = !DILocalVariable(name: "iter", scope: !622, file: !38, line: 629, type: !573, align: 8)
!622 = distinct !DILexicalBlock(scope: !617, file: !38, line: 629, column: 17)
!623 = !DILocalVariable(name: "__next", scope: !624, file: !38, line: 629, type: !477, align: 8)
!624 = distinct !DILexicalBlock(scope: !622, file: !38, line: 629, column: 33)
!625 = !DILocalVariable(name: "val", scope: !626, file: !38, line: 629, type: !477, align: 8)
!626 = distinct !DILexicalBlock(scope: !624, file: !38, line: 629, column: 21)
!627 = !DILocalVariable(name: "b", scope: !628, file: !38, line: 629, type: !48, align: 2)
!628 = distinct !DILexicalBlock(scope: !624, file: !38, line: 629, column: 33)
!629 = !DILocalVariable(name: "ac", scope: !628, file: !38, line: 629, type: !199, align: 8)
!630 = !DILocalVariable(name: "val", scope: !631, file: !38, line: 630, type: !48, align: 2)
!631 = distinct !DILexicalBlock(scope: !628, file: !38, line: 630, column: 21)
!632 = !DILocalVariable(name: "iter", scope: !633, file: !38, line: 636, type: !634, align: 8)
!633 = distinct !DILexicalBlock(scope: !631, file: !38, line: 636, column: 21)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<u8>", scope: !148, file: !7, size: 128, align: 64, elements: !635, templateParams: !185, identifier: "131574891c4d713bf80e93f001cfe21a")
!635 = !{!636, !640, !641}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !634, file: !7, baseType: !637, size: 64, align: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !456, file: !7, size: 64, align: 64, elements: !638, templateParams: !185, identifier: "b3dafaa6879eff18f86da9cac8f804d8")
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !637, file: !7, baseType: !202, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !634, file: !7, baseType: !181, size: 64, align: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !634, file: !7, baseType: !642, align: 8)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut u8>", scope: !462, file: !7, align: 8, elements: !34, templateParams: !643, identifier: "499867ef99fce33131fbefe362fffb15")
!643 = !{!644}
!644 = !DITemplateTypeParameter(name: "T", type: !198)
!645 = !DILocalVariable(name: "__next", scope: !646, file: !38, line: 636, type: !198, align: 8)
!646 = distinct !DILexicalBlock(scope: !633, file: !38, line: 636, column: 33)
!647 = !DILocalVariable(name: "val", scope: !648, file: !38, line: 636, type: !198, align: 8)
!648 = distinct !DILexicalBlock(scope: !646, file: !38, line: 636, column: 25)
!649 = !DILocalVariable(name: "byte", scope: !650, file: !38, line: 636, type: !198, align: 8)
!650 = distinct !DILexicalBlock(scope: !646, file: !38, line: 636, column: 33)
!651 = !DILocation(line: 0, scope: !617)
!652 = !DILocation(line: 0, scope: !622)
!653 = !DILocation(line: 0, scope: !589, inlinedAt: !654)
!654 = distinct !DILocation(line: 629, column: 33, scope: !624)
!655 = !DILocation(line: 2196, column: 9, scope: !589, inlinedAt: !654)
!656 = !DILocation(line: 641, column: 14, scope: !617)
!657 = !DILocation(line: 0, scope: !489, inlinedAt: !658)
!658 = distinct !DILocation(line: 2198, column: 13, scope: !589, inlinedAt: !654)
!659 = !DILocation(line: 0, scope: !511, inlinedAt: !660)
!660 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !658)
!661 = !DILocation(line: 0, scope: !514, inlinedAt: !660)
!662 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !660)
!663 = !DILocation(line: 0, scope: !535, inlinedAt: !664)
!664 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !660)
!665 = !DILocation(line: 0, scope: !528, inlinedAt: !666)
!666 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !664)
!667 = !DILocation(line: 0, scope: !520, inlinedAt: !668)
!668 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !666)
!669 = !DILocation(line: 0, scope: !544, inlinedAt: !670)
!670 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !660)
!671 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !670)
!672 = !DILocation(line: 0, scope: !552, inlinedAt: !670)
!673 = !DILocation(line: 0, scope: !554, inlinedAt: !670)
!674 = !DILocation(line: 0, scope: !188, inlinedAt: !675)
!675 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !670)
!676 = !DILocation(line: 0, scope: !175, inlinedAt: !677)
!677 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !675)
!678 = !DILocation(line: 0, scope: !624)
!679 = !DILocation(line: 0, scope: !628)
!680 = !DILocation(line: 0, scope: !631)
!681 = !DILocalVariable(name: "self", arg: 1, scope: !682, file: !146, line: 635, type: !199)
!682 = distinct !DISubprogram(name: "iter_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h90f197b382361b0eE", scope: !147, file: !146, line: 635, type: !683, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!634, !199}
!685 = !{!681, !686, !688}
!686 = !DILocalVariable(name: "ptr", scope: !687, file: !146, line: 637, type: !181, align: 8)
!687 = distinct !DILexicalBlock(scope: !682, file: !146, line: 637, column: 13)
!688 = !DILocalVariable(name: "end", scope: !689, file: !146, line: 640, type: !181, align: 8)
!689 = distinct !DILexicalBlock(scope: !687, file: !146, line: 640, column: 13)
!690 = !DILocation(line: 0, scope: !682, inlinedAt: !691)
!691 = distinct !DILocation(line: 636, column: 33, scope: !631)
!692 = !DILocation(line: 0, scope: !687, inlinedAt: !691)
!693 = !DILocation(line: 0, scope: !188, inlinedAt: !694)
!694 = distinct !DILocation(line: 643, column: 17, scope: !687, inlinedAt: !691)
!695 = !DILocation(line: 0, scope: !175, inlinedAt: !696)
!696 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !694)
!697 = !DILocation(line: 0, scope: !633)
!698 = !DILocalVariable(name: "self", arg: 1, scope: !699, file: !146, line: 3443, type: !712)
!699 = distinct !DISubprogram(name: "next<u8>", linkageName: "_ZN88_$LT$core..slice..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf3848b4d7a3667cE", scope: !147, file: !146, line: 3443, type: !700, scopeLine: 3443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !713)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !712}
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut u8>", scope: !83, file: !7, size: 64, align: 64, elements: !703, identifier: "4693619c9850a0bbea224d9522f4ac97")
!703 = !{!704}
!704 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 64, align: 64, elements: !705, templateParams: !643, identifier: "4693619c9850a0bbea224d9522f4ac97_variant_part", discriminator: !95)
!705 = !{!706, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !704, file: !7, baseType: !707, size: 64, align: 64, extraData: i64 0)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !702, file: !7, size: 64, align: 64, elements: !34, templateParams: !643, identifier: "4693619c9850a0bbea224d9522f4ac97::None")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !704, file: !7, baseType: !709, size: 64, align: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !702, file: !7, size: 64, align: 64, elements: !710, templateParams: !643, identifier: "4693619c9850a0bbea224d9522f4ac97::Some")
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !709, file: !7, baseType: !198, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::IterMut<u8>", baseType: !634, size: 64, align: 64, dwarfAddressSpace: 0)
!713 = !{!698}
!714 = !DILocation(line: 0, scope: !699, inlinedAt: !715)
!715 = distinct !DILocation(line: 636, column: 33, scope: !646)
!716 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !668)
!717 = !DILocation(line: 629, column: 23, scope: !624)
!718 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !677)
!719 = !DILocalVariable(name: "self", arg: 1, scope: !720, file: !146, line: 3394, type: !712)
!720 = distinct !DISubprogram(name: "post_inc_start<u8>", linkageName: "_ZN4core5slice16IterMut$LT$T$GT$14post_inc_start17h64859f2dabdeed42E", scope: !634, file: !146, line: 3394, type: !721, scopeLine: 3394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!181, !712, !131}
!723 = !{!719, !724, !725}
!724 = !DILocalVariable(name: "offset", arg: 2, scope: !720, file: !146, line: 3394, type: !131)
!725 = !DILocalVariable(name: "old", scope: !726, file: !146, line: 3399, type: !181, align: 8)
!726 = distinct !DILexicalBlock(scope: !720, file: !146, line: 3399, column: 21)
!727 = !DILocation(line: 0, scope: !720, inlinedAt: !728)
!728 = distinct !DILocation(line: 3365, column: 47, scope: !699, inlinedAt: !715)
!729 = !DILocation(line: 0, scope: !726, inlinedAt: !728)
!730 = !DILocation(line: 0, scope: !175, inlinedAt: !731)
!731 = distinct !DILocation(line: 3402, column: 64, scope: !726, inlinedAt: !728)
!732 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !731)
!733 = !DILocation(line: 0, scope: !646)
!734 = !DILocation(line: 0, scope: !650)
!735 = !DILocation(line: 637, column: 25, scope: !650)
!736 = !DILocation(line: 638, column: 25, scope: !650)
!737 = !DILocation(line: 2197, column: 13, scope: !589, inlinedAt: !654)
!738 = !DILocation(line: 2196, column: 12, scope: !589, inlinedAt: !654)
!739 = distinct !DISubprogram(name: "zip_chunks_output_size_fixed_impl", linkageName: "_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E", scope: !39, file: !38, line: 696, type: !300, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !740)
!740 = !{!741, !742, !743, !745, !747, !749, !751}
!741 = !DILocalVariable(name: "output", arg: 1, scope: !739, file: !38, line: 696, type: !42)
!742 = !DILocalVariable(name: "input", arg: 2, scope: !739, file: !38, line: 696, type: !152)
!743 = !DILocalVariable(name: "iter", scope: !744, file: !38, line: 697, type: !447, align: 8)
!744 = distinct !DILexicalBlock(scope: !739, file: !38, line: 697, column: 17)
!745 = !DILocalVariable(name: "__next", scope: !746, file: !38, line: 697, type: !477, align: 8)
!746 = distinct !DILexicalBlock(scope: !744, file: !38, line: 697, column: 33)
!747 = !DILocalVariable(name: "val", scope: !748, file: !38, line: 697, type: !477, align: 8)
!748 = distinct !DILexicalBlock(scope: !746, file: !38, line: 697, column: 21)
!749 = !DILocalVariable(name: "b", scope: !750, file: !38, line: 697, type: !48, align: 2)
!750 = distinct !DILexicalBlock(scope: !746, file: !38, line: 697, column: 33)
!751 = !DILocalVariable(name: "ac", scope: !750, file: !38, line: 697, type: !199, align: 8)
!752 = !DILocation(line: 0, scope: !739)
!753 = !DILocalVariable(name: "other", arg: 2, scope: !754, file: !755, line: 544, type: !466)
!754 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE", scope: !756, file: !755, line: 544, type: !759, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !763, retainedNodes: !761)
!755 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/traits/iterator.rs", directory: "", checksumkind: CSK_MD5, checksum: "0166ca0c6191a2d150960a0c0ce0a671")
!756 = !DINamespace(name: "Iterator", scope: !757)
!757 = !DINamespace(name: "iterator", scope: !758)
!758 = !DINamespace(name: "traits", scope: !79)
!759 = !DISubroutineType(types: !760)
!760 = !{!447, !452, !466}
!761 = !{!762, !753}
!762 = !DILocalVariable(name: "self", arg: 1, scope: !754, file: !755, line: 544, type: !452)
!763 = !{!764, !765}
!764 = !DITemplateTypeParameter(name: "Self", type: !452)
!765 = !DITemplateTypeParameter(name: "U", type: !466)
!766 = !DILocation(line: 0, scope: !754, inlinedAt: !767)
!767 = distinct !DILocation(line: 697, column: 33, scope: !739)
!768 = !DILocalVariable(name: "b", arg: 2, scope: !769, file: !490, line: 23, type: !466)
!769 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h2569a0b947fe83edE", scope: !447, file: !490, line: 23, type: !759, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !472, retainedNodes: !770)
!770 = !{!771, !768}
!771 = !DILocalVariable(name: "a", arg: 1, scope: !769, file: !490, line: 23, type: !452)
!772 = !DILocation(line: 0, scope: !769, inlinedAt: !773)
!773 = distinct !DILocation(line: 549, column: 9, scope: !754, inlinedAt: !767)
!774 = !DILocalVariable(name: "b", arg: 2, scope: !775, file: !490, line: 167, type: !466)
!775 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h7ee0f5579a0a9c12E", scope: !491, file: !490, line: 167, type: !759, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !472, retainedNodes: !776)
!776 = !{!777, !774, !778}
!777 = !DILocalVariable(name: "a", arg: 1, scope: !775, file: !490, line: 167, type: !452)
!778 = !DILocalVariable(name: "len", scope: !779, file: !490, line: 168, type: !36, align: 8)
!779 = distinct !DILexicalBlock(scope: !775, file: !490, line: 168, column: 9)
!780 = !DILocation(line: 0, scope: !775, inlinedAt: !781)
!781 = distinct !DILocation(line: 24, column: 9, scope: !769, inlinedAt: !773)
!782 = !DILocalVariable(name: "v1", arg: 1, scope: !783, file: !289, line: 928, type: !36)
!783 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3min17h7e0528a2ee9ad63bE", scope: !24, file: !289, line: 928, type: !111, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !784)
!784 = !{!782, !785}
!785 = !DILocalVariable(name: "v2", arg: 2, scope: !783, file: !289, line: 928, type: !36)
!786 = !DILocation(line: 0, scope: !783, inlinedAt: !787)
!787 = distinct !DILocation(line: 168, column: 19, scope: !775, inlinedAt: !781)
!788 = !DILocalVariable(name: "self", arg: 1, scope: !789, file: !289, line: 620, type: !36)
!789 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3Ord3min17h13b573a50e7044f8E", scope: !399, file: !289, line: 620, type: !111, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !402, retainedNodes: !790)
!790 = !{!788, !791}
!791 = !DILocalVariable(name: "other", arg: 2, scope: !789, file: !289, line: 620, type: !36)
!792 = !DILocation(line: 0, scope: !789, inlinedAt: !793)
!793 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !787)
!794 = !DILocalVariable(name: "v1", arg: 1, scope: !795, file: !289, line: 949, type: !36)
!795 = distinct !DISubprogram(name: "min_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6min_by17hc292495f6fa20b8bE", scope: !24, file: !289, line: 949, type: !408, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !416, retainedNodes: !796)
!796 = !{!794, !797, !798}
!797 = !DILocalVariable(name: "v2", arg: 2, scope: !795, file: !289, line: 949, type: !36)
!798 = !DILocalVariable(name: "compare", arg: 3, scope: !795, file: !289, line: 949, type: !410)
!799 = !DILocation(line: 0, scope: !795, inlinedAt: !800)
!800 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !793)
!801 = !DILocation(line: 0, scope: !744)
!802 = !DILocation(line: 0, scope: !489, inlinedAt: !803)
!803 = distinct !DILocation(line: 697, column: 33, scope: !746)
!804 = !DILocation(line: 0, scope: !511, inlinedAt: !805)
!805 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !803)
!806 = !DILocation(line: 174, column: 12, scope: !511, inlinedAt: !805)
!807 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !805)
!808 = !DILocation(line: 703, column: 14, scope: !739)
!809 = !DILocation(line: 0, scope: !514, inlinedAt: !805)
!810 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !805)
!811 = !DILocation(line: 0, scope: !535, inlinedAt: !812)
!812 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !805)
!813 = !DILocation(line: 0, scope: !528, inlinedAt: !814)
!814 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !812)
!815 = !DILocation(line: 0, scope: !520, inlinedAt: !816)
!816 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !814)
!817 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !816)
!818 = !DILocation(line: 0, scope: !544, inlinedAt: !819)
!819 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !805)
!820 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !819)
!821 = !DILocation(line: 0, scope: !552, inlinedAt: !819)
!822 = !DILocalVariable(name: "self", arg: 1, scope: !823, file: !108, line: 3004, type: !36)
!823 = distinct !DISubprogram(name: "checked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h8e1c27e762cabb27E", scope: !109, file: !108, line: 3004, type: !824, scopeLine: 3004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !36, !36}
!826 = !{!822, !827, !828, !830}
!827 = !DILocalVariable(name: "rhs", arg: 2, scope: !823, file: !108, line: 3004, type: !36)
!828 = !DILocalVariable(name: "a", scope: !829, file: !108, line: 3005, type: !36, align: 8)
!829 = distinct !DILexicalBlock(scope: !823, file: !108, line: 3005, column: 17)
!830 = !DILocalVariable(name: "b", scope: !829, file: !108, line: 3005, type: !294, align: 1)
!831 = !DILocation(line: 0, scope: !823, inlinedAt: !832)
!832 = distinct !DILocation(line: 5030, column: 25, scope: !552, inlinedAt: !819)
!833 = !DILocalVariable(name: "self", arg: 1, scope: !834, file: !108, line: 3761, type: !36)
!834 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h620a34eb1aaca951E", scope: !109, file: !108, line: 3761, type: !835, scopeLine: 3761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !841)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !36, !36}
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !7, size: 128, align: 64, elements: !838, templateParams: !34, identifier: "532fa6618cdb3964411c84139beb9950")
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !837, file: !7, baseType: !36, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !837, file: !7, baseType: !294, size: 8, align: 8, offset: 64)
!841 = !{!833, !842, !843, !845}
!842 = !DILocalVariable(name: "rhs", arg: 2, scope: !834, file: !108, line: 3761, type: !36)
!843 = !DILocalVariable(name: "a", scope: !844, file: !108, line: 3762, type: !96, align: 8)
!844 = distinct !DILexicalBlock(scope: !834, file: !108, line: 3762, column: 17)
!845 = !DILocalVariable(name: "b", scope: !844, file: !108, line: 3762, type: !294, align: 1)
!846 = !DILocation(line: 0, scope: !834, inlinedAt: !847)
!847 = distinct !DILocation(line: 3005, column: 30, scope: !823, inlinedAt: !832)
!848 = !DILocation(line: 3762, column: 30, scope: !834, inlinedAt: !847)
!849 = !DILocation(line: 5031, column: 13, scope: !552, inlinedAt: !819)
!850 = !DILocation(line: 0, scope: !554, inlinedAt: !819)
!851 = !DILocation(line: 0, scope: !188, inlinedAt: !852)
!852 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !819)
!853 = !DILocation(line: 0, scope: !175, inlinedAt: !854)
!854 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !852)
!855 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !854)
!856 = !DILocation(line: 0, scope: !746)
!857 = !DILocation(line: 0, scope: !750)
!858 = !DILocation(line: 697, column: 23, scope: !746)
!859 = !DILocation(line: 700, column: 21, scope: !750)
!860 = !DILocation(line: 701, column: 30, scope: !750)
!861 = !DILocation(line: 701, column: 21, scope: !750)
!862 = distinct !DISubprogram(name: "zip_chunks_input_size_fixed_impl", linkageName: "_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E", scope: !39, file: !38, line: 758, type: !251, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !863)
!863 = !{!864, !865, !866, !868, !870, !872, !874}
!864 = !DILocalVariable(name: "output", arg: 1, scope: !862, file: !38, line: 758, type: !199)
!865 = !DILocalVariable(name: "input", arg: 2, scope: !862, file: !38, line: 758, type: !46)
!866 = !DILocalVariable(name: "iter", scope: !867, file: !38, line: 759, type: !447, align: 8)
!867 = distinct !DILexicalBlock(scope: !862, file: !38, line: 759, column: 17)
!868 = !DILocalVariable(name: "__next", scope: !869, file: !38, line: 759, type: !477, align: 8)
!869 = distinct !DILexicalBlock(scope: !867, file: !38, line: 759, column: 33)
!870 = !DILocalVariable(name: "val", scope: !871, file: !38, line: 759, type: !477, align: 8)
!871 = distinct !DILexicalBlock(scope: !869, file: !38, line: 759, column: 21)
!872 = !DILocalVariable(name: "b", scope: !873, file: !38, line: 759, type: !48, align: 2)
!873 = distinct !DILexicalBlock(scope: !869, file: !38, line: 759, column: 33)
!874 = !DILocalVariable(name: "ac", scope: !873, file: !38, line: 759, type: !199, align: 8)
!875 = !DILocation(line: 0, scope: !862)
!876 = !DILocation(line: 0, scope: !754, inlinedAt: !877)
!877 = distinct !DILocation(line: 759, column: 33, scope: !862)
!878 = !DILocation(line: 0, scope: !769, inlinedAt: !879)
!879 = distinct !DILocation(line: 549, column: 9, scope: !754, inlinedAt: !877)
!880 = !DILocation(line: 0, scope: !775, inlinedAt: !881)
!881 = distinct !DILocation(line: 24, column: 9, scope: !769, inlinedAt: !879)
!882 = !DILocalVariable(name: "self", arg: 1, scope: !883, file: !146, line: 87, type: !886)
!883 = distinct !DISubprogram(name: "is_empty<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h9d6962c70a36da18E", scope: !147, file: !146, line: 87, type: !884, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !890)
!884 = !DISubroutineType(types: !885)
!885 = !{!294, !886}
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !7, size: 128, align: 64, elements: !887, templateParams: !34, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !886, file: !7, baseType: !202, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !886, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!890 = !{!882}
!891 = !DILocation(line: 0, scope: !883, inlinedAt: !892)
!892 = distinct !DILocation(line: 4935, column: 12, scope: !893, inlinedAt: !909)
!893 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN90_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h18a0b32c47ed7d4eE", scope: !147, file: !146, line: 4934, type: !894, scopeLine: 4934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !901)
!894 = !DISubroutineType(types: !895)
!895 = !{!896, !900}
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !7, size: 192, align: 64, elements: !897, templateParams: !34, identifier: "ae4a49683e9045cf9186fc547f540cbb")
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !896, file: !7, baseType: !36, size: 64, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !896, file: !7, baseType: !82, size: 128, align: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksMut<u8>", baseType: !466, size: 64, align: 64, dwarfAddressSpace: 0)
!901 = !{!902, !903, !905, !907}
!902 = !DILocalVariable(name: "self", arg: 1, scope: !893, file: !146, line: 4934, type: !900)
!903 = !DILocalVariable(name: "n", scope: !904, file: !146, line: 4938, type: !36, align: 8)
!904 = distinct !DILexicalBlock(scope: !893, file: !146, line: 4938, column: 13)
!905 = !DILocalVariable(name: "rem", scope: !906, file: !146, line: 4939, type: !36, align: 8)
!906 = distinct !DILexicalBlock(scope: !904, file: !146, line: 4939, column: 13)
!907 = !DILocalVariable(name: "n", scope: !908, file: !146, line: 4940, type: !36, align: 8)
!908 = distinct !DILexicalBlock(scope: !906, file: !146, line: 4940, column: 13)
!909 = distinct !DILocation(line: 100, column: 30, scope: !910, inlinedAt: !932)
!910 = distinct !DISubprogram(name: "len<core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h9c14d9505784f1cfE", scope: !912, file: !911, line: 99, type: !914, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !930, retainedNodes: !916)
!911 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/traits/exact_size.rs", directory: "", checksumkind: CSK_MD5, checksum: "c5a2a65a6cb2198d813b7c8497205511")
!912 = !DINamespace(name: "ExactSizeIterator", scope: !913)
!913 = !DINamespace(name: "exact_size", scope: !758)
!914 = !DISubroutineType(types: !915)
!915 = !{!36, !900}
!916 = !{!917, !918, !920, !921, !925, !926, !929}
!917 = !DILocalVariable(name: "self", arg: 1, scope: !910, file: !911, line: 99, type: !900)
!918 = !DILocalVariable(name: "lower", scope: !919, file: !911, line: 100, type: !36, align: 8)
!919 = distinct !DILexicalBlock(scope: !910, file: !911, line: 100, column: 9)
!920 = !DILocalVariable(name: "upper", scope: !919, file: !911, line: 100, type: !82, align: 8)
!921 = !DILocalVariable(name: "left_val", scope: !922, file: !923, line: 45, type: !924, align: 8)
!922 = distinct !DILexicalBlock(scope: !919, file: !923, line: 45, column: 13)
!923 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/macros/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9d09c4b6426f63c56ee3af0375dc8f94")
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<usize>", baseType: !82, size: 64, align: 64, dwarfAddressSpace: 0)
!925 = !DILocalVariable(name: "right_val", scope: !922, file: !923, line: 45, type: !924, align: 8)
!926 = !DILocalVariable(name: "arg0", scope: !927, file: !923, line: 52, type: !928, align: 8)
!927 = distinct !DILexicalBlock(scope: !922, file: !923, line: 16, column: 38)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&core::option::Option<usize>", baseType: !924, size: 64, align: 64, dwarfAddressSpace: 0)
!929 = !DILocalVariable(name: "arg1", scope: !927, file: !923, line: 52, type: !928, align: 8)
!930 = !{!931}
!931 = !DITemplateTypeParameter(name: "Self", type: !466)
!932 = distinct !DILocation(line: 168, column: 37, scope: !775, inlinedAt: !881)
!933 = !DILocation(line: 88, column: 9, scope: !883, inlinedAt: !892)
!934 = !DILocation(line: 4935, column: 9, scope: !893, inlinedAt: !909)
!935 = !DILocation(line: 4938, column: 21, scope: !893, inlinedAt: !909)
!936 = !DILocation(line: 0, scope: !904, inlinedAt: !909)
!937 = !DILocation(line: 4939, column: 23, scope: !904, inlinedAt: !909)
!938 = !DILocation(line: 0, scope: !906, inlinedAt: !909)
!939 = !DILocation(line: 4940, column: 21, scope: !906, inlinedAt: !909)
!940 = !DILocation(line: 0, scope: !783, inlinedAt: !941)
!941 = distinct !DILocation(line: 168, column: 19, scope: !775, inlinedAt: !881)
!942 = !DILocation(line: 0, scope: !789, inlinedAt: !943)
!943 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !941)
!944 = !DILocation(line: 0, scope: !795, inlinedAt: !945)
!945 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !943)
!946 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !945)
!947 = !DILocation(line: 0, scope: !867)
!948 = !DILocation(line: 0, scope: !489, inlinedAt: !949)
!949 = distinct !DILocation(line: 759, column: 33, scope: !869)
!950 = !DILocation(line: 0, scope: !511, inlinedAt: !951)
!951 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !949)
!952 = !DILocation(line: 174, column: 12, scope: !511, inlinedAt: !951)
!953 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !951)
!954 = !DILocation(line: 762, column: 21, scope: !873)
!955 = !DILocation(line: 765, column: 14, scope: !862)
!956 = !DILocation(line: 0, scope: !514, inlinedAt: !951)
!957 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !951)
!958 = !DILocation(line: 0, scope: !535, inlinedAt: !959)
!959 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !951)
!960 = !DILocation(line: 0, scope: !528, inlinedAt: !961)
!961 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !959)
!962 = !DILocation(line: 0, scope: !520, inlinedAt: !963)
!963 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !961)
!964 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !963)
!965 = !DILocation(line: 0, scope: !544, inlinedAt: !966)
!966 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !951)
!967 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !966)
!968 = !DILocation(line: 0, scope: !552, inlinedAt: !966)
!969 = !DILocation(line: 0, scope: !823, inlinedAt: !970)
!970 = distinct !DILocation(line: 5030, column: 25, scope: !552, inlinedAt: !966)
!971 = !DILocation(line: 0, scope: !834, inlinedAt: !972)
!972 = distinct !DILocation(line: 3005, column: 30, scope: !823, inlinedAt: !970)
!973 = !DILocation(line: 3762, column: 30, scope: !834, inlinedAt: !972)
!974 = !DILocation(line: 5031, column: 13, scope: !552, inlinedAt: !966)
!975 = !DILocation(line: 0, scope: !554, inlinedAt: !966)
!976 = !DILocation(line: 0, scope: !188, inlinedAt: !977)
!977 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !966)
!978 = !DILocation(line: 0, scope: !175, inlinedAt: !979)
!979 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !977)
!980 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !979)
!981 = !DILocation(line: 5035, column: 69, scope: !554, inlinedAt: !966)
!982 = !DILocation(line: 0, scope: !869)
!983 = !DILocation(line: 0, scope: !873)
!984 = !DILocation(line: 759, column: 23, scope: !869)
!985 = !DILocation(line: 763, column: 21, scope: !873)
!986 = !DILocation(line: 763, column: 30, scope: !873)
!987 = distinct !DISubprogram(name: "zip_chunks_unknown_size_impl", linkageName: "_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE", scope: !39, file: !38, line: 816, type: !339, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !988)
!988 = !{!989, !990, !991, !993, !995, !997, !999}
!989 = !DILocalVariable(name: "output", arg: 1, scope: !987, file: !38, line: 816, type: !199)
!990 = !DILocalVariable(name: "input", arg: 2, scope: !987, file: !38, line: 816, type: !152)
!991 = !DILocalVariable(name: "iter", scope: !992, file: !38, line: 817, type: !447, align: 8)
!992 = distinct !DILexicalBlock(scope: !987, file: !38, line: 817, column: 17)
!993 = !DILocalVariable(name: "__next", scope: !994, file: !38, line: 817, type: !477, align: 8)
!994 = distinct !DILexicalBlock(scope: !992, file: !38, line: 817, column: 32)
!995 = !DILocalVariable(name: "val", scope: !996, file: !38, line: 817, type: !477, align: 8)
!996 = distinct !DILexicalBlock(scope: !994, file: !38, line: 817, column: 21)
!997 = !DILocalVariable(name: "b", scope: !998, file: !38, line: 817, type: !151, align: 8)
!998 = distinct !DILexicalBlock(scope: !994, file: !38, line: 817, column: 32)
!999 = !DILocalVariable(name: "ac", scope: !998, file: !38, line: 817, type: !199, align: 8)
!1000 = !DILocation(line: 0, scope: !987)
!1001 = !DILocation(line: 0, scope: !754, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 817, column: 32, scope: !987)
!1003 = !DILocation(line: 0, scope: !769, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 549, column: 9, scope: !754, inlinedAt: !1002)
!1005 = !DILocation(line: 0, scope: !775, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 24, column: 9, scope: !769, inlinedAt: !1004)
!1007 = !DILocation(line: 0, scope: !883, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 4935, column: 12, scope: !893, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 100, column: 30, scope: !910, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 168, column: 37, scope: !775, inlinedAt: !1006)
!1011 = !DILocation(line: 88, column: 9, scope: !883, inlinedAt: !1008)
!1012 = !DILocation(line: 4935, column: 9, scope: !893, inlinedAt: !1009)
!1013 = !DILocation(line: 4938, column: 21, scope: !893, inlinedAt: !1009)
!1014 = !DILocation(line: 0, scope: !904, inlinedAt: !1009)
!1015 = !DILocation(line: 4939, column: 23, scope: !904, inlinedAt: !1009)
!1016 = !DILocation(line: 0, scope: !906, inlinedAt: !1009)
!1017 = !DILocation(line: 4940, column: 21, scope: !906, inlinedAt: !1009)
!1018 = !DILocation(line: 0, scope: !893, inlinedAt: !1009)
!1019 = !DILocation(line: 0, scope: !783, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 168, column: 19, scope: !775, inlinedAt: !1006)
!1021 = !DILocation(line: 0, scope: !789, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1020)
!1023 = !DILocation(line: 0, scope: !795, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1022)
!1025 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1024)
!1026 = !DILocation(line: 0, scope: !992)
!1027 = !DILocation(line: 0, scope: !489, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 817, column: 32, scope: !994)
!1029 = !DILocation(line: 0, scope: !511, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !1028)
!1031 = !DILocation(line: 174, column: 12, scope: !511, inlinedAt: !1030)
!1032 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !1030)
!1033 = !DILocation(line: 821, column: 14, scope: !987)
!1034 = !DILocation(line: 0, scope: !514, inlinedAt: !1030)
!1035 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !1030)
!1036 = !DILocation(line: 0, scope: !535, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !1030)
!1038 = !DILocation(line: 0, scope: !528, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1037)
!1040 = !DILocation(line: 0, scope: !520, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1039)
!1042 = !DILocation(line: 0, scope: !544, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !1030)
!1044 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !1043)
!1045 = !DILocation(line: 0, scope: !552, inlinedAt: !1043)
!1046 = !DILocation(line: 0, scope: !823, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 5030, column: 25, scope: !552, inlinedAt: !1043)
!1048 = !DILocation(line: 0, scope: !834, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 3005, column: 30, scope: !823, inlinedAt: !1047)
!1050 = !DILocation(line: 3762, column: 30, scope: !834, inlinedAt: !1049)
!1051 = !DILocation(line: 5031, column: 13, scope: !552, inlinedAt: !1043)
!1052 = !DILocation(line: 0, scope: !554, inlinedAt: !1043)
!1053 = !DILocation(line: 0, scope: !188, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !1043)
!1055 = !DILocation(line: 0, scope: !175, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1054)
!1057 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1056)
!1058 = !DILocation(line: 5035, column: 69, scope: !554, inlinedAt: !1043)
!1059 = !DILocation(line: 0, scope: !994)
!1060 = !DILocation(line: 0, scope: !998)
!1061 = !DILocation(line: 818, column: 21, scope: !998)
!1062 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1041)
!1063 = !DILocation(line: 818, column: 30, scope: !998)
!1064 = !DILocation(line: 819, column: 21, scope: !998)
!1065 = !DILocation(line: 819, column: 30, scope: !998)
!1066 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_impl", linkageName: "_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E", scope: !39, file: !38, line: 874, type: !339, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1067)
!1067 = !{!1068, !1069, !1070, !1072, !1074, !1076, !1078}
!1068 = !DILocalVariable(name: "output", arg: 1, scope: !1066, file: !38, line: 874, type: !199)
!1069 = !DILocalVariable(name: "input", arg: 2, scope: !1066, file: !38, line: 874, type: !152)
!1070 = !DILocalVariable(name: "iter", scope: !1071, file: !38, line: 875, type: !573, align: 8)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !38, line: 875, column: 17)
!1072 = !DILocalVariable(name: "__next", scope: !1073, file: !38, line: 875, type: !477, align: 8)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !38, line: 875, column: 32)
!1074 = !DILocalVariable(name: "val", scope: !1075, file: !38, line: 875, type: !477, align: 8)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !38, line: 875, column: 21)
!1076 = !DILocalVariable(name: "b", scope: !1077, file: !38, line: 875, type: !151, align: 8)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !38, line: 875, column: 32)
!1078 = !DILocalVariable(name: "ac", scope: !1077, file: !38, line: 875, type: !199, align: 8)
!1079 = !DILocation(line: 0, scope: !1066)
!1080 = !DILocation(line: 0, scope: !754, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 875, column: 32, scope: !1066)
!1082 = !DILocation(line: 0, scope: !769, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 549, column: 9, scope: !754, inlinedAt: !1081)
!1084 = !DILocation(line: 0, scope: !775, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 24, column: 9, scope: !769, inlinedAt: !1083)
!1086 = !DILocation(line: 0, scope: !883, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 4935, column: 12, scope: !893, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 100, column: 30, scope: !910, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 168, column: 37, scope: !775, inlinedAt: !1085)
!1090 = !DILocation(line: 88, column: 9, scope: !883, inlinedAt: !1087)
!1091 = !DILocation(line: 4935, column: 9, scope: !893, inlinedAt: !1088)
!1092 = !DILocation(line: 4938, column: 21, scope: !893, inlinedAt: !1088)
!1093 = !DILocation(line: 0, scope: !904, inlinedAt: !1088)
!1094 = !DILocation(line: 4939, column: 23, scope: !904, inlinedAt: !1088)
!1095 = !DILocation(line: 0, scope: !906, inlinedAt: !1088)
!1096 = !DILocation(line: 4940, column: 21, scope: !906, inlinedAt: !1088)
!1097 = !DILocation(line: 0, scope: !893, inlinedAt: !1088)
!1098 = !DILocation(line: 0, scope: !783, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 168, column: 19, scope: !775, inlinedAt: !1085)
!1100 = !DILocation(line: 0, scope: !789, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1099)
!1102 = !DILocation(line: 0, scope: !795, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1101)
!1104 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1103)
!1105 = !DILocation(line: 0, scope: !1071)
!1106 = !DILocation(line: 0, scope: !589, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 875, column: 32, scope: !1073)
!1108 = !DILocation(line: 2196, column: 9, scope: !589, inlinedAt: !1107)
!1109 = !DILocation(line: 2197, column: 13, scope: !589, inlinedAt: !1107)
!1110 = !DILocation(line: 0, scope: !489, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 2198, column: 13, scope: !589, inlinedAt: !1107)
!1112 = !DILocation(line: 0, scope: !511, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !1111)
!1114 = !DILocation(line: 174, column: 12, scope: !511, inlinedAt: !1113)
!1115 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !1113)
!1116 = !DILocation(line: 879, column: 14, scope: !1066)
!1117 = !DILocation(line: 0, scope: !514, inlinedAt: !1113)
!1118 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !1113)
!1119 = !DILocation(line: 0, scope: !535, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !1113)
!1121 = !DILocation(line: 0, scope: !528, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1120)
!1123 = !DILocation(line: 0, scope: !520, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1122)
!1125 = !DILocation(line: 0, scope: !544, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !1113)
!1127 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !1126)
!1128 = !DILocation(line: 0, scope: !552, inlinedAt: !1126)
!1129 = !DILocation(line: 5031, column: 13, scope: !552, inlinedAt: !1126)
!1130 = !DILocation(line: 0, scope: !554, inlinedAt: !1126)
!1131 = !DILocation(line: 0, scope: !188, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !1126)
!1133 = !DILocation(line: 0, scope: !175, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1132)
!1135 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1134)
!1136 = !DILocation(line: 5035, column: 69, scope: !554, inlinedAt: !1126)
!1137 = !DILocation(line: 0, scope: !1073)
!1138 = !DILocation(line: 0, scope: !1077)
!1139 = !DILocation(line: 876, column: 21, scope: !1077)
!1140 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1124)
!1141 = !DILocation(line: 876, column: 30, scope: !1077)
!1142 = !DILocation(line: 877, column: 21, scope: !1077)
!1143 = !DILocation(line: 877, column: 30, scope: !1077)
!1144 = !DILocation(line: 2196, column: 12, scope: !589, inlinedAt: !1107)
!1145 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E", scope: !39, file: !38, line: 935, type: !339, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1151, !1153, !1155, !1157, !1158, !1160, !1162, !1164, !1166}
!1147 = !DILocalVariable(name: "output", arg: 1, scope: !1145, file: !38, line: 935, type: !199)
!1148 = !DILocalVariable(name: "input", arg: 2, scope: !1145, file: !38, line: 935, type: !152)
!1149 = !DILocalVariable(name: "iter", scope: !1150, file: !38, line: 936, type: !573, align: 8)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !38, line: 936, column: 17)
!1151 = !DILocalVariable(name: "__next", scope: !1152, file: !38, line: 936, type: !477, align: 8)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !38, line: 936, column: 33)
!1153 = !DILocalVariable(name: "val", scope: !1154, file: !38, line: 936, type: !477, align: 8)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !38, line: 936, column: 21)
!1155 = !DILocalVariable(name: "b", scope: !1156, file: !38, line: 936, type: !48, align: 2)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !38, line: 936, column: 33)
!1157 = !DILocalVariable(name: "ac", scope: !1156, file: !38, line: 936, type: !199, align: 8)
!1158 = !DILocalVariable(name: "val", scope: !1159, file: !38, line: 937, type: !48, align: 2)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !38, line: 937, column: 21)
!1160 = !DILocalVariable(name: "iter", scope: !1161, file: !38, line: 938, type: !634, align: 8)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !38, line: 938, column: 21)
!1162 = !DILocalVariable(name: "__next", scope: !1163, file: !38, line: 938, type: !198, align: 8)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !38, line: 938, column: 33)
!1164 = !DILocalVariable(name: "val", scope: !1165, file: !38, line: 938, type: !198, align: 8)
!1165 = distinct !DILexicalBlock(scope: !1163, file: !38, line: 938, column: 25)
!1166 = !DILocalVariable(name: "byte", scope: !1167, file: !38, line: 938, type: !198, align: 8)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !38, line: 938, column: 33)
!1168 = !DILocation(line: 0, scope: !1145)
!1169 = !DILocation(line: 0, scope: !754, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 936, column: 33, scope: !1145)
!1171 = !DILocation(line: 0, scope: !769, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 549, column: 9, scope: !754, inlinedAt: !1170)
!1173 = !DILocation(line: 0, scope: !775, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 24, column: 9, scope: !769, inlinedAt: !1172)
!1175 = !DILocation(line: 0, scope: !883, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 4935, column: 12, scope: !893, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 100, column: 30, scope: !910, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 168, column: 37, scope: !775, inlinedAt: !1174)
!1179 = !DILocation(line: 88, column: 9, scope: !883, inlinedAt: !1176)
!1180 = !DILocation(line: 4935, column: 9, scope: !893, inlinedAt: !1177)
!1181 = !DILocation(line: 4938, column: 21, scope: !893, inlinedAt: !1177)
!1182 = !DILocation(line: 0, scope: !904, inlinedAt: !1177)
!1183 = !DILocation(line: 4939, column: 23, scope: !904, inlinedAt: !1177)
!1184 = !DILocation(line: 0, scope: !906, inlinedAt: !1177)
!1185 = !DILocation(line: 4940, column: 21, scope: !906, inlinedAt: !1177)
!1186 = !DILocation(line: 0, scope: !893, inlinedAt: !1177)
!1187 = !DILocation(line: 0, scope: !783, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 168, column: 19, scope: !775, inlinedAt: !1174)
!1189 = !DILocation(line: 0, scope: !789, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1188)
!1191 = !DILocation(line: 0, scope: !795, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1190)
!1193 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1192)
!1194 = !DILocation(line: 0, scope: !1150)
!1195 = !DILocation(line: 0, scope: !589, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 936, column: 33, scope: !1152)
!1197 = !DILocation(line: 2196, column: 9, scope: !589, inlinedAt: !1196)
!1198 = !DILocation(line: 2196, column: 12, scope: !589, inlinedAt: !1196)
!1199 = !DILocation(line: 2197, column: 13, scope: !589, inlinedAt: !1196)
!1200 = !DILocation(line: 0, scope: !489, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 2198, column: 13, scope: !589, inlinedAt: !1196)
!1202 = !DILocation(line: 0, scope: !511, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 47, column: 9, scope: !489, inlinedAt: !1201)
!1204 = !DILocation(line: 174, column: 12, scope: !511, inlinedAt: !1203)
!1205 = !DILocation(line: 174, column: 9, scope: !511, inlinedAt: !1203)
!1206 = !DILocation(line: 943, column: 14, scope: !1145)
!1207 = !DILocation(line: 0, scope: !514, inlinedAt: !1203)
!1208 = !DILocation(line: 176, column: 13, scope: !514, inlinedAt: !1203)
!1209 = !DILocation(line: 0, scope: !535, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 178, column: 28, scope: !514, inlinedAt: !1203)
!1211 = !DILocation(line: 0, scope: !528, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1210)
!1213 = !DILocation(line: 0, scope: !520, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1212)
!1215 = !DILocation(line: 0, scope: !544, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 178, column: 53, scope: !514, inlinedAt: !1203)
!1217 = !DILocation(line: 5029, column: 21, scope: !544, inlinedAt: !1216)
!1218 = !DILocation(line: 0, scope: !552, inlinedAt: !1216)
!1219 = !DILocation(line: 5031, column: 13, scope: !552, inlinedAt: !1216)
!1220 = !DILocation(line: 0, scope: !554, inlinedAt: !1216)
!1221 = !DILocation(line: 0, scope: !188, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 5035, column: 37, scope: !554, inlinedAt: !1216)
!1223 = !DILocation(line: 0, scope: !175, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1222)
!1225 = !DILocation(line: 0, scope: !1152)
!1226 = !DILocation(line: 0, scope: !1156)
!1227 = !DILocation(line: 0, scope: !1159)
!1228 = !DILocation(line: 0, scope: !682, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 938, column: 33, scope: !1159)
!1230 = !DILocation(line: 0, scope: !687, inlinedAt: !1229)
!1231 = !DILocation(line: 0, scope: !188, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 643, column: 17, scope: !687, inlinedAt: !1229)
!1233 = !DILocation(line: 0, scope: !175, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1232)
!1235 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1234)
!1236 = !DILocation(line: 0, scope: !1161)
!1237 = !DILocation(line: 0, scope: !699, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 938, column: 33, scope: !1163)
!1239 = !DILocation(line: 3320, column: 9, scope: !699, inlinedAt: !1238)
!1240 = !DILocation(line: 3450, column: 21, scope: !699, inlinedAt: !1238)
!1241 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1214)
!1242 = !DILocation(line: 936, column: 23, scope: !1152)
!1243 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1224)
!1244 = !DILocation(line: 0, scope: !720, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 3365, column: 47, scope: !699, inlinedAt: !1238)
!1246 = !DILocation(line: 0, scope: !726, inlinedAt: !1245)
!1247 = !DILocation(line: 0, scope: !175, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 3402, column: 64, scope: !726, inlinedAt: !1245)
!1249 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1248)
!1250 = !DILocation(line: 0, scope: !1163)
!1251 = !DILocation(line: 0, scope: !1167)
!1252 = !DILocation(line: 939, column: 25, scope: !1167)
!1253 = !DILocation(line: 940, column: 25, scope: !1167)
!1254 = distinct !{!1254, !1255}
!1255 = !{!"llvm.loop.unroll.disable"}
!1256 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_impl", linkageName: "_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E", scope: !39, file: !38, line: 994, type: !339, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260, !1275, !1277, !1279, !1281}
!1258 = !DILocalVariable(name: "output", arg: 1, scope: !1256, file: !38, line: 994, type: !199)
!1259 = !DILocalVariable(name: "input", arg: 2, scope: !1256, file: !38, line: 994, type: !152)
!1260 = !DILocalVariable(name: "iter", scope: !1261, file: !38, line: 995, type: !1262, align: 8)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !38, line: 995, column: 17)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", scope: !448, file: !7, size: 576, align: 64, elements: !1263, templateParams: !1273, identifier: "b49781362a9b7bcd7a19af271fbaff88")
!1263 = !{!1264, !1265, !1271, !1272}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1262, file: !7, baseType: !452, size: 128, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1262, file: !7, baseType: !1266, size: 320, align: 64, offset: 128)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksExactMut<u8>", scope: !148, file: !7, size: 320, align: 64, elements: !1267, templateParams: !185, identifier: "aae376f1ffe56526116a66e37fd5e85e")
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1266, file: !7, baseType: !199, size: 128, align: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1266, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1266, file: !7, baseType: !36, size: 64, align: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1262, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1262, file: !7, baseType: !36, size: 64, align: 64, offset: 512)
!1273 = !{!473, !1274}
!1274 = !DITemplateTypeParameter(name: "B", type: !1266)
!1275 = !DILocalVariable(name: "__next", scope: !1276, file: !38, line: 995, type: !477, align: 8)
!1276 = distinct !DILexicalBlock(scope: !1261, file: !38, line: 995, column: 32)
!1277 = !DILocalVariable(name: "val", scope: !1278, file: !38, line: 995, type: !477, align: 8)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !38, line: 995, column: 21)
!1279 = !DILocalVariable(name: "b", scope: !1280, file: !38, line: 995, type: !151, align: 8)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !38, line: 995, column: 32)
!1281 = !DILocalVariable(name: "ac", scope: !1280, file: !38, line: 995, type: !199, align: 8)
!1282 = !DILocation(line: 0, scope: !1256)
!1283 = !DILocation(line: 0, scope: !188, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 1070, column: 63, scope: !1285, inlinedAt: !1299)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !146, line: 1065, column: 9)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !146, line: 1064, column: 9)
!1287 = distinct !DISubprogram(name: "split_at_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc16232f309fedb03E", scope: !147, file: !146, line: 1063, type: !1288, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1294)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1290, !199, !36}
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut [u8], &mut [u8])", file: !7, size: 256, align: 64, elements: !1291, templateParams: !34, identifier: "a99a11d1f26f4419acc009a3d2a3a192")
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1290, file: !7, baseType: !199, size: 128, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1290, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DILocalVariable(name: "self", arg: 1, scope: !1287, file: !146, line: 1063, type: !199)
!1296 = !DILocalVariable(name: "mid", arg: 2, scope: !1287, file: !146, line: 1063, type: !36)
!1297 = !DILocalVariable(name: "len", scope: !1286, file: !146, line: 1064, type: !36, align: 8)
!1298 = !DILocalVariable(name: "ptr", scope: !1285, file: !146, line: 1065, type: !181, align: 8)
!1299 = distinct !DILocation(line: 836, column: 26, scope: !1300, inlinedAt: !1313)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !146, line: 835, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !146, line: 834, column: 9)
!1302 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16chunks_exact_mut17hc3136e24e5f5b5e8E", scope: !147, file: !146, line: 832, type: !1303, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1266, !199, !36}
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1312}
!1306 = !DILocalVariable(name: "self", arg: 1, scope: !1302, file: !146, line: 832, type: !199)
!1307 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !1302, file: !146, line: 832, type: !36)
!1308 = !DILocalVariable(name: "rem", scope: !1301, file: !146, line: 834, type: !36, align: 8)
!1309 = !DILocalVariable(name: "len", scope: !1300, file: !146, line: 835, type: !36, align: 8)
!1310 = !DILocalVariable(name: "fst", scope: !1311, file: !146, line: 836, type: !199, align: 8)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !146, line: 836, column: 9)
!1312 = !DILocalVariable(name: "snd", scope: !1311, file: !146, line: 836, type: !199, align: 8)
!1313 = distinct !DILocation(line: 995, column: 49, scope: !1256)
!1314 = !DILocation(line: 0, scope: !175, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1284)
!1316 = !DILocalVariable(name: "other", arg: 2, scope: !1317, file: !755, line: 544, type: !1266)
!1317 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E", scope: !756, file: !755, line: 544, type: !1318, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1322, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1262, !452, !1266}
!1320 = !{!1321, !1316}
!1321 = !DILocalVariable(name: "self", arg: 1, scope: !1317, file: !755, line: 544, type: !452)
!1322 = !{!764, !1323}
!1323 = !DITemplateTypeParameter(name: "U", type: !1266)
!1324 = !DILocation(line: 0, scope: !1317, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 995, column: 32, scope: !1256)
!1326 = !DILocalVariable(name: "b", arg: 2, scope: !1327, file: !490, line: 23, type: !1266)
!1327 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h12977c675d42b4a6E", scope: !1262, file: !490, line: 23, type: !1318, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1273, retainedNodes: !1328)
!1328 = !{!1329, !1326}
!1329 = !DILocalVariable(name: "a", arg: 1, scope: !1327, file: !490, line: 23, type: !452)
!1330 = !DILocation(line: 0, scope: !1327, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 549, column: 9, scope: !1317, inlinedAt: !1325)
!1332 = !DILocalVariable(name: "b", arg: 2, scope: !1333, file: !490, line: 167, type: !1266)
!1333 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h8f9ea6a848983c35E", scope: !491, file: !490, line: 167, type: !1318, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1273, retainedNodes: !1334)
!1334 = !{!1335, !1332, !1336}
!1335 = !DILocalVariable(name: "a", arg: 1, scope: !1333, file: !490, line: 167, type: !452)
!1336 = !DILocalVariable(name: "len", scope: !1337, file: !490, line: 168, type: !36, align: 8)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !490, line: 168, column: 9)
!1338 = !DILocation(line: 0, scope: !1333, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 24, column: 9, scope: !1327, inlinedAt: !1331)
!1340 = !DILocation(line: 5228, column: 17, scope: !1341, inlinedAt: !1349)
!1341 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN95_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1cceedd3329a7aa7E", scope: !147, file: !146, line: 5227, type: !1342, scopeLine: 5227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1345)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!896, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksExactMut<u8>", baseType: !1266, size: 64, align: 64, dwarfAddressSpace: 0)
!1345 = !{!1346, !1347}
!1346 = !DILocalVariable(name: "self", arg: 1, scope: !1341, file: !146, line: 5227, type: !1344)
!1347 = !DILocalVariable(name: "n", scope: !1348, file: !146, line: 5228, type: !36, align: 8)
!1348 = distinct !DILexicalBlock(scope: !1341, file: !146, line: 5228, column: 9)
!1349 = distinct !DILocation(line: 100, column: 30, scope: !1350, inlinedAt: !1366)
!1350 = distinct !DISubprogram(name: "len<core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1078ae3eb8b6c1feE", scope: !912, file: !911, line: 99, type: !1351, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1364, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!36, !1344}
!1353 = !{!1354, !1355, !1357, !1358, !1360, !1361, !1363}
!1354 = !DILocalVariable(name: "self", arg: 1, scope: !1350, file: !911, line: 99, type: !1344)
!1355 = !DILocalVariable(name: "lower", scope: !1356, file: !911, line: 100, type: !36, align: 8)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !911, line: 100, column: 9)
!1357 = !DILocalVariable(name: "upper", scope: !1356, file: !911, line: 100, type: !82, align: 8)
!1358 = !DILocalVariable(name: "left_val", scope: !1359, file: !923, line: 45, type: !924, align: 8)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !923, line: 45, column: 13)
!1360 = !DILocalVariable(name: "right_val", scope: !1359, file: !923, line: 45, type: !924, align: 8)
!1361 = !DILocalVariable(name: "arg0", scope: !1362, file: !923, line: 52, type: !928, align: 8)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !923, line: 16, column: 38)
!1363 = !DILocalVariable(name: "arg1", scope: !1362, file: !923, line: 52, type: !928, align: 8)
!1364 = !{!1365}
!1365 = !DITemplateTypeParameter(name: "Self", type: !1266)
!1366 = distinct !DILocation(line: 168, column: 37, scope: !1333, inlinedAt: !1339)
!1367 = !DILocation(line: 0, scope: !783, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 168, column: 19, scope: !1333, inlinedAt: !1339)
!1369 = !DILocation(line: 0, scope: !789, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1368)
!1371 = !DILocation(line: 0, scope: !795, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1370)
!1373 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1372)
!1374 = !DILocation(line: 0, scope: !1261)
!1375 = !DILocalVariable(name: "self", arg: 1, scope: !1376, file: !490, line: 46, type: !1379)
!1376 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ef5217425d92cE", scope: !491, file: !490, line: 46, type: !1377, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1273, retainedNodes: !1380)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!494, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", baseType: !1262, size: 64, align: 64, dwarfAddressSpace: 0)
!1380 = !{!1375}
!1381 = !DILocation(line: 0, scope: !1376, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 995, column: 32, scope: !1276)
!1383 = !DILocalVariable(name: "self", arg: 1, scope: !1384, file: !490, line: 173, type: !1379)
!1384 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hbe3e5f48c327d6bcE", scope: !491, file: !490, line: 173, type: !1377, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1273, retainedNodes: !1385)
!1385 = !{!1383, !1386}
!1386 = !DILocalVariable(name: "i", scope: !1387, file: !490, line: 175, type: !36, align: 8)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !490, line: 175, column: 13)
!1388 = !DILocation(line: 0, scope: !1384, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 47, column: 9, scope: !1376, inlinedAt: !1382)
!1390 = !DILocation(line: 174, column: 12, scope: !1384, inlinedAt: !1389)
!1391 = !DILocation(line: 174, column: 9, scope: !1384, inlinedAt: !1389)
!1392 = !DILocation(line: 176, column: 13, scope: !1387, inlinedAt: !1389)
!1393 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 178, column: 28, scope: !1387, inlinedAt: !1389)
!1397 = !DILocation(line: 5306, column: 21, scope: !1398, inlinedAt: !1407)
!1398 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN103_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hcbe229f7d98987a1E", scope: !147, file: !146, line: 5305, type: !1399, scopeLine: 5305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1402)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!199, !1401, !36}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksExactMut<u8>", baseType: !1266, size: 64, align: 64, dwarfAddressSpace: 0)
!1402 = !{!1403, !1404, !1405}
!1403 = !DILocalVariable(name: "self", arg: 1, scope: !1398, file: !146, line: 5305, type: !1401)
!1404 = !DILocalVariable(name: "i", arg: 2, scope: !1398, file: !146, line: 5305, type: !36)
!1405 = !DILocalVariable(name: "start", scope: !1406, file: !146, line: 5306, type: !36, align: 8)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !146, line: 5306, column: 9)
!1407 = distinct !DILocation(line: 178, column: 53, scope: !1387, inlinedAt: !1389)
!1408 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 5308, column: 37, scope: !1406, inlinedAt: !1407)
!1411 = !DILocation(line: 996, column: 30, scope: !1280)
!1412 = !DILocation(line: 996, column: 21, scope: !1280)
!1413 = !DILocation(line: 997, column: 30, scope: !1280)
!1414 = !DILocation(line: 997, column: 21, scope: !1280)
!1415 = distinct !{!1415, !218}
!1416 = !DILocation(line: 999, column: 14, scope: !1256)
!1417 = !DILocation(line: 0, scope: !1387, inlinedAt: !1389)
!1418 = !DILocation(line: 0, scope: !535, inlinedAt: !1396)
!1419 = !DILocation(line: 0, scope: !528, inlinedAt: !1395)
!1420 = !DILocation(line: 0, scope: !520, inlinedAt: !1394)
!1421 = !DILocation(line: 0, scope: !1398, inlinedAt: !1407)
!1422 = !DILocation(line: 0, scope: !1406, inlinedAt: !1407)
!1423 = !DILocation(line: 0, scope: !188, inlinedAt: !1410)
!1424 = !DILocation(line: 0, scope: !175, inlinedAt: !1409)
!1425 = !DILocation(line: 0, scope: !1276)
!1426 = !DILocation(line: 0, scope: !1280)
!1427 = distinct !{!1427, !218}
!1428 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_slice_impl", linkageName: "_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E", scope: !39, file: !38, line: 1056, type: !339, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1429)
!1429 = !{!1430, !1431, !1432, !1434, !1436, !1438, !1440}
!1430 = !DILocalVariable(name: "output", arg: 1, scope: !1428, file: !38, line: 1056, type: !199)
!1431 = !DILocalVariable(name: "input", arg: 2, scope: !1428, file: !38, line: 1056, type: !152)
!1432 = !DILocalVariable(name: "iter", scope: !1433, file: !38, line: 1058, type: !1262, align: 8)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !38, line: 1058, column: 17)
!1434 = !DILocalVariable(name: "__next", scope: !1435, file: !38, line: 1058, type: !477, align: 8)
!1435 = distinct !DILexicalBlock(scope: !1433, file: !38, line: 1058, column: 32)
!1436 = !DILocalVariable(name: "val", scope: !1437, file: !38, line: 1058, type: !477, align: 8)
!1437 = distinct !DILexicalBlock(scope: !1435, file: !38, line: 1058, column: 21)
!1438 = !DILocalVariable(name: "b", scope: !1439, file: !38, line: 1058, type: !151, align: 8)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !38, line: 1058, column: 32)
!1440 = !DILocalVariable(name: "ac", scope: !1439, file: !38, line: 1058, type: !199, align: 8)
!1441 = !DILocation(line: 0, scope: !1428)
!1442 = !DILocation(line: 0, scope: !783, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1058, column: 40, scope: !1428)
!1444 = !DILocation(line: 0, scope: !789, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1443)
!1446 = !DILocation(line: 0, scope: !795, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1445)
!1448 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1447)
!1449 = !DILocation(line: 0, scope: !188, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 1070, column: 63, scope: !1285, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 836, column: 26, scope: !1300, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 1060, column: 26, scope: !1428)
!1453 = !DILocation(line: 0, scope: !175, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1450)
!1455 = !DILocation(line: 0, scope: !1317, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 1058, column: 32, scope: !1428)
!1457 = !DILocation(line: 0, scope: !1327, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 549, column: 9, scope: !1317, inlinedAt: !1456)
!1459 = !DILocation(line: 0, scope: !1333, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 24, column: 9, scope: !1327, inlinedAt: !1458)
!1461 = !DILocation(line: 5228, column: 17, scope: !1341, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 100, column: 30, scope: !1350, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 168, column: 37, scope: !1333, inlinedAt: !1460)
!1464 = !DILocation(line: 0, scope: !783, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 168, column: 19, scope: !1333, inlinedAt: !1460)
!1466 = !DILocation(line: 0, scope: !789, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1465)
!1468 = !DILocation(line: 0, scope: !795, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1467)
!1470 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1469)
!1471 = !DILocation(line: 0, scope: !1433)
!1472 = !DILocation(line: 0, scope: !1376, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 1058, column: 32, scope: !1435)
!1474 = !DILocation(line: 0, scope: !1384, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 47, column: 9, scope: !1376, inlinedAt: !1473)
!1476 = !DILocation(line: 174, column: 12, scope: !1384, inlinedAt: !1475)
!1477 = !DILocation(line: 174, column: 9, scope: !1384, inlinedAt: !1475)
!1478 = !DILocation(line: 176, column: 13, scope: !1387, inlinedAt: !1475)
!1479 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 178, column: 28, scope: !1387, inlinedAt: !1475)
!1483 = !DILocation(line: 5306, column: 21, scope: !1398, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 178, column: 53, scope: !1387, inlinedAt: !1475)
!1485 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 5308, column: 37, scope: !1406, inlinedAt: !1484)
!1488 = !DILocation(line: 1061, column: 30, scope: !1439)
!1489 = !DILocation(line: 1061, column: 21, scope: !1439)
!1490 = !DILocation(line: 1062, column: 30, scope: !1439)
!1491 = !DILocation(line: 1062, column: 21, scope: !1439)
!1492 = distinct !{!1492, !218}
!1493 = !DILocation(line: 1064, column: 14, scope: !1428)
!1494 = !DILocation(line: 0, scope: !1387, inlinedAt: !1475)
!1495 = !DILocation(line: 0, scope: !535, inlinedAt: !1482)
!1496 = !DILocation(line: 0, scope: !528, inlinedAt: !1481)
!1497 = !DILocation(line: 0, scope: !520, inlinedAt: !1480)
!1498 = !DILocation(line: 0, scope: !1398, inlinedAt: !1484)
!1499 = !DILocation(line: 0, scope: !1406, inlinedAt: !1484)
!1500 = !DILocation(line: 0, scope: !188, inlinedAt: !1487)
!1501 = !DILocation(line: 0, scope: !175, inlinedAt: !1486)
!1502 = !DILocation(line: 0, scope: !1435)
!1503 = !DILocation(line: 0, scope: !1439)
!1504 = distinct !{!1504, !218}
!1505 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_impl", linkageName: "_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E", scope: !39, file: !38, line: 1117, type: !339, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1506)
!1506 = !{!1507, !1508, !1509, !1517, !1519, !1521, !1523}
!1507 = !DILocalVariable(name: "output", arg: 1, scope: !1505, file: !38, line: 1117, type: !199)
!1508 = !DILocalVariable(name: "input", arg: 2, scope: !1505, file: !38, line: 1117, type: !152)
!1509 = !DILocalVariable(name: "iter", scope: !1510, file: !38, line: 1118, type: !1511, align: 8)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !38, line: 1118, column: 17)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", scope: !449, file: !7, size: 640, align: 64, elements: !1512, templateParams: !1515, identifier: "3135be1e7859e6e1a7b2c24ecea1b626")
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1511, file: !7, baseType: !1262, size: 576, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1511, file: !7, baseType: !36, size: 64, align: 64, offset: 576)
!1515 = !{!1516}
!1516 = !DITemplateTypeParameter(name: "I", type: !1262)
!1517 = !DILocalVariable(name: "__next", scope: !1518, file: !38, line: 1118, type: !477, align: 8)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !38, line: 1118, column: 32)
!1519 = !DILocalVariable(name: "val", scope: !1520, file: !38, line: 1118, type: !477, align: 8)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !38, line: 1118, column: 21)
!1521 = !DILocalVariable(name: "b", scope: !1522, file: !38, line: 1118, type: !151, align: 8)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !38, line: 1118, column: 32)
!1523 = !DILocalVariable(name: "ac", scope: !1522, file: !38, line: 1118, type: !199, align: 8)
!1524 = !DILocation(line: 0, scope: !1505)
!1525 = !DILocation(line: 0, scope: !188, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 1070, column: 63, scope: !1285, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 836, column: 26, scope: !1300, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 1118, column: 49, scope: !1505)
!1529 = !DILocation(line: 0, scope: !175, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1526)
!1531 = !DILocation(line: 0, scope: !1317, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 1118, column: 32, scope: !1505)
!1533 = !DILocation(line: 0, scope: !1327, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 549, column: 9, scope: !1317, inlinedAt: !1532)
!1535 = !DILocation(line: 0, scope: !1333, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 24, column: 9, scope: !1327, inlinedAt: !1534)
!1537 = !DILocation(line: 5228, column: 17, scope: !1341, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 100, column: 30, scope: !1350, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 168, column: 37, scope: !1333, inlinedAt: !1536)
!1540 = !DILocation(line: 0, scope: !783, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 168, column: 19, scope: !1333, inlinedAt: !1536)
!1542 = !DILocation(line: 0, scope: !789, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1541)
!1544 = !DILocation(line: 0, scope: !795, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1543)
!1546 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1545)
!1547 = !DILocation(line: 0, scope: !1510)
!1548 = !DILocalVariable(name: "self", arg: 1, scope: !1549, file: !590, line: 2195, type: !1552)
!1549 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE", scope: !591, file: !590, line: 2195, type: !1550, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1515, retainedNodes: !1553)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!494, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", baseType: !1511, size: 64, align: 64, dwarfAddressSpace: 0)
!1553 = !{!1548}
!1554 = !DILocation(line: 0, scope: !1549, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 1118, column: 32, scope: !1518)
!1556 = !DILocation(line: 174, column: 12, scope: !1384, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 47, column: 9, scope: !1376, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 2198, column: 13, scope: !1549, inlinedAt: !1555)
!1559 = !DILocation(line: 0, scope: !1376, inlinedAt: !1558)
!1560 = !DILocation(line: 0, scope: !1384, inlinedAt: !1557)
!1561 = !DILocation(line: 2196, column: 9, scope: !1549, inlinedAt: !1555)
!1562 = !DILocation(line: 176, column: 13, scope: !1387, inlinedAt: !1557)
!1563 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 178, column: 28, scope: !1387, inlinedAt: !1557)
!1567 = !DILocation(line: 5306, column: 21, scope: !1398, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 178, column: 53, scope: !1387, inlinedAt: !1557)
!1569 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 5308, column: 37, scope: !1406, inlinedAt: !1568)
!1572 = !DILocation(line: 1119, column: 30, scope: !1522)
!1573 = !DILocation(line: 1119, column: 21, scope: !1522)
!1574 = !DILocation(line: 1120, column: 30, scope: !1522)
!1575 = !DILocation(line: 1120, column: 21, scope: !1522)
!1576 = distinct !{!1576, !218}
!1577 = !DILocation(line: 1122, column: 14, scope: !1505)
!1578 = !DILocation(line: 2197, column: 13, scope: !1549, inlinedAt: !1555)
!1579 = !DILocation(line: 0, scope: !1387, inlinedAt: !1557)
!1580 = !DILocation(line: 0, scope: !535, inlinedAt: !1566)
!1581 = !DILocation(line: 0, scope: !528, inlinedAt: !1565)
!1582 = !DILocation(line: 0, scope: !520, inlinedAt: !1564)
!1583 = !DILocation(line: 0, scope: !1398, inlinedAt: !1568)
!1584 = !DILocation(line: 0, scope: !1406, inlinedAt: !1568)
!1585 = !DILocation(line: 0, scope: !188, inlinedAt: !1571)
!1586 = !DILocation(line: 0, scope: !175, inlinedAt: !1570)
!1587 = !DILocation(line: 0, scope: !1518)
!1588 = !DILocation(line: 0, scope: !1522)
!1589 = !DILocation(line: 2196, column: 12, scope: !1549, inlinedAt: !1555)
!1590 = distinct !{!1590, !1591, !218}
!1591 = !{!"llvm.loop.unroll.runtime.disable"}
!1592 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE", scope: !39, file: !38, line: 1178, type: !339, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1593)
!1593 = !{!1594, !1595, !1596, !1598, !1600, !1602, !1604, !1605, !1607, !1609, !1611, !1613}
!1594 = !DILocalVariable(name: "output", arg: 1, scope: !1592, file: !38, line: 1178, type: !199)
!1595 = !DILocalVariable(name: "input", arg: 2, scope: !1592, file: !38, line: 1178, type: !152)
!1596 = !DILocalVariable(name: "iter", scope: !1597, file: !38, line: 1179, type: !1511, align: 8)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !38, line: 1179, column: 17)
!1598 = !DILocalVariable(name: "__next", scope: !1599, file: !38, line: 1179, type: !477, align: 8)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !38, line: 1179, column: 33)
!1600 = !DILocalVariable(name: "val", scope: !1601, file: !38, line: 1179, type: !477, align: 8)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !38, line: 1179, column: 21)
!1602 = !DILocalVariable(name: "b", scope: !1603, file: !38, line: 1179, type: !48, align: 2)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !38, line: 1179, column: 33)
!1604 = !DILocalVariable(name: "ac", scope: !1603, file: !38, line: 1179, type: !199, align: 8)
!1605 = !DILocalVariable(name: "val", scope: !1606, file: !38, line: 1180, type: !48, align: 2)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !38, line: 1180, column: 21)
!1607 = !DILocalVariable(name: "iter", scope: !1608, file: !38, line: 1181, type: !634, align: 8)
!1608 = distinct !DILexicalBlock(scope: !1606, file: !38, line: 1181, column: 21)
!1609 = !DILocalVariable(name: "__next", scope: !1610, file: !38, line: 1181, type: !198, align: 8)
!1610 = distinct !DILexicalBlock(scope: !1608, file: !38, line: 1181, column: 33)
!1611 = !DILocalVariable(name: "val", scope: !1612, file: !38, line: 1181, type: !198, align: 8)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !38, line: 1181, column: 25)
!1613 = !DILocalVariable(name: "byte", scope: !1614, file: !38, line: 1181, type: !198, align: 8)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !38, line: 1181, column: 33)
!1615 = !DILocation(line: 0, scope: !1592)
!1616 = !DILocation(line: 0, scope: !188, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 1070, column: 63, scope: !1285, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 836, column: 26, scope: !1300, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 1179, column: 50, scope: !1592)
!1620 = !DILocation(line: 0, scope: !175, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1617)
!1622 = !DILocation(line: 0, scope: !1317, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 1179, column: 33, scope: !1592)
!1624 = !DILocation(line: 0, scope: !1327, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 549, column: 9, scope: !1317, inlinedAt: !1623)
!1626 = !DILocation(line: 0, scope: !1333, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 24, column: 9, scope: !1327, inlinedAt: !1625)
!1628 = !DILocation(line: 5228, column: 17, scope: !1341, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 100, column: 30, scope: !1350, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 168, column: 37, scope: !1333, inlinedAt: !1627)
!1631 = !DILocation(line: 0, scope: !783, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 168, column: 19, scope: !1333, inlinedAt: !1627)
!1633 = !DILocation(line: 0, scope: !789, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 929, column: 5, scope: !783, inlinedAt: !1632)
!1635 = !DILocation(line: 0, scope: !795, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 624, column: 9, scope: !789, inlinedAt: !1634)
!1637 = !DILocation(line: 951, column: 9, scope: !795, inlinedAt: !1636)
!1638 = !DILocation(line: 0, scope: !1597)
!1639 = !DILocation(line: 0, scope: !1549, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 1179, column: 33, scope: !1599)
!1641 = !DILocation(line: 2196, column: 9, scope: !1549, inlinedAt: !1640)
!1642 = !DILocation(line: 0, scope: !1376, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 2198, column: 13, scope: !1549, inlinedAt: !1640)
!1644 = !DILocation(line: 0, scope: !1384, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 47, column: 9, scope: !1376, inlinedAt: !1643)
!1646 = !DILocation(line: 174, column: 12, scope: !1384, inlinedAt: !1645)
!1647 = !DILocation(line: 174, column: 9, scope: !1384, inlinedAt: !1645)
!1648 = !DILocation(line: 1186, column: 14, scope: !1592)
!1649 = !DILocation(line: 0, scope: !1387, inlinedAt: !1645)
!1650 = !DILocation(line: 0, scope: !535, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 178, column: 28, scope: !1387, inlinedAt: !1645)
!1652 = !DILocation(line: 0, scope: !528, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 6302, column: 20, scope: !535, inlinedAt: !1651)
!1654 = !DILocation(line: 0, scope: !520, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 530, column: 18, scope: !528, inlinedAt: !1653)
!1656 = !DILocation(line: 159, column: 18, scope: !520, inlinedAt: !1655)
!1657 = !DILocation(line: 0, scope: !1398, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 178, column: 53, scope: !1387, inlinedAt: !1645)
!1659 = !DILocation(line: 5306, column: 21, scope: !1398, inlinedAt: !1658)
!1660 = !DILocation(line: 0, scope: !1406, inlinedAt: !1658)
!1661 = !DILocation(line: 0, scope: !188, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 5308, column: 37, scope: !1406, inlinedAt: !1658)
!1663 = !DILocation(line: 0, scope: !175, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1662)
!1665 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1664)
!1666 = !DILocation(line: 0, scope: !1599)
!1667 = !DILocation(line: 0, scope: !1603)
!1668 = !DILocation(line: 1179, column: 23, scope: !1599)
!1669 = !DILocation(line: 0, scope: !1606)
!1670 = !DILocation(line: 0, scope: !188, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 643, column: 17, scope: !687, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1181, column: 33, scope: !1606)
!1673 = !DILocation(line: 0, scope: !175, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1671)
!1675 = !DILocation(line: 0, scope: !1608)
!1676 = !DILocation(line: 0, scope: !175, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 3402, column: 64, scope: !726, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 3365, column: 47, scope: !699, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 1181, column: 33, scope: !1610)
!1680 = !DILocation(line: 0, scope: !1610)
!1681 = !DILocation(line: 0, scope: !1614)
!1682 = !DILocation(line: 1182, column: 25, scope: !1614)
!1683 = !DILocation(line: 1183, column: 25, scope: !1614)
!1684 = !DILocation(line: 176, column: 13, scope: !1387, inlinedAt: !1645)
!1685 = !DILocation(line: 2197, column: 13, scope: !1549, inlinedAt: !1640)
!1686 = !DILocation(line: 2196, column: 12, scope: !1549, inlinedAt: !1640)
