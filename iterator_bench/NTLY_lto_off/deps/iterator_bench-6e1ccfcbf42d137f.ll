; ModuleID = 'iterator_bench.efbuz6qn-cgu.0'
source_filename = "iterator_bench.efbuz6qn-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@alloc97 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\FA\02\00\00\15\00\00\00" }>, align 8
@alloc99 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00\FB\02\00\00\15\00\00\00" }>, align 8
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\002\03\00\00\15\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\003\03\00\00\15\00\00\00" }>, align 8
@alloc105 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00l\03\00\00\15\00\00\00" }>, align 8
@alloc107 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"\0A\00\00\00\00\00\00\00m\03\00\00\15\00\00\00" }>, align 8

; iterator_bench::optimal_unsafe_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench19optimal_unsafe_impl17h92c372e086c51d21E([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !37 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !52, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !53, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i64 0, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !73
  call void @llvm.dbg.value(metadata i64 320000, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !73
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !103
  br label %vector.body, !dbg !105

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !106
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !122
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !169
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !169
  %2 = shl nuw nsw i64 %index, 1, !dbg !170
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
  %12 = shl nuw nsw i64 %index.next, 1, !dbg !170
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
  call void @llvm.dbg.value(metadata i64 undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !73
  ret void, !dbg !219
}

; iterator_bench::c_style_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench23c_style_fixed_size_impl17h43d10f6a5cf74296E([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !220 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !222, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !223, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !235
  call void @llvm.dbg.value(metadata i64 320000, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !235
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !236
  br label %vector.body, !dbg !238

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !239
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !242
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !242
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !242
  %2 = shl nuw nsw i64 %index, 1, !dbg !243
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
  %12 = shl nuw nsw i64 %index.next, 1, !dbg !243
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
  call void @llvm.dbg.value(metadata i64 undef, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !235
  ret void, !dbg !249
}

; iterator_bench::c_style_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench29c_style_input_size_fixed_impl17hf735019108e7f115E([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !250 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !266
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !266
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !255, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 0, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 320000, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  br label %bb8, !dbg !270

bb5:                                              ; preds = %bb10.1
  call void @llvm.dbg.value(metadata i64 %0, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  ret void, !dbg !271

bb8:                                              ; preds = %bb10.1, %start
  %iter.sroa.0.016 = phi i64 [ 0, %start ], [ %6, %bb10.1 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !119, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !114, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !274
  %0 = or i64 %iter.sroa.0.016, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %0, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 %0, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !258, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !262, metadata !DIExpression()), !dbg !278
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.0.016, !dbg !279
  %b = load i16, i16* %1, align 2, !dbg !279
  call void @llvm.dbg.value(metadata i16 %b, metadata !264, metadata !DIExpression()), !dbg !280
  %_23 = shl nuw nsw i64 %iter.sroa.0.016, 1, !dbg !281
  %_26 = icmp ult i64 %_23, %output.1, !dbg !282
  br i1 %_26, label %bb9, label %panic1, !dbg !282, !prof !283, !misexpect !284

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23, !dbg !282
  %3 = trunc i16 %b to i8, !dbg !282
  store i8 %3, i8* %2, align 1, !dbg !282
  %_30 = or i64 %_23, 1, !dbg !285
  %_34 = icmp ult i64 %_30, %output.1, !dbg !286
  br i1 %_34, label %bb10, label %panic2, !dbg !286, !prof !283, !misexpect !284

bb10:                                             ; preds = %bb9
  %_28 = lshr i16 %b, 8, !dbg !287
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30, !dbg !286
  %5 = trunc i16 %_28 to i8, !dbg !286
  store i8 %5, i8* %4, align 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %0, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 %0, metadata !119, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 %0, metadata !114, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !274
  %6 = add nuw nsw i64 %iter.sroa.0.016, 2, !dbg !276
  call void @llvm.dbg.value(metadata i64 %6, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata i64 %0, metadata !258, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %0, metadata !262, metadata !DIExpression()), !dbg !278
  %7 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !279
  %b.1 = load i16, i16* %7, align 2, !dbg !279
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !264, metadata !DIExpression()), !dbg !280
  %_23.1 = shl nuw nsw i64 %0, 1, !dbg !281
  %_26.1 = icmp ult i64 %_23.1, %output.1, !dbg !282
  br i1 %_26.1, label %bb9.1, label %panic1, !dbg !282, !prof !283, !misexpect !284

panic1:                                           ; preds = %bb10, %bb8
  %_23.lcssa = phi i64 [ %_23, %bb8 ], [ %_23.1, %bb10 ], !dbg !281
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_23.lcssa, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc63 to %"core::panic::Location"*)), !dbg !282
  unreachable, !dbg !282

panic2:                                           ; preds = %bb9.1, %bb9
  %_30.lcssa = phi i64 [ %_30, %bb9 ], [ %_30.1, %bb9.1 ], !dbg !285
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_30.lcssa, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc65 to %"core::panic::Location"*)), !dbg !286
  unreachable, !dbg !286

bb9.1:                                            ; preds = %bb10
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23.1, !dbg !282
  %9 = trunc i16 %b.1 to i8, !dbg !282
  store i8 %9, i8* %8, align 1, !dbg !282
  %_30.1 = or i64 %_23.1, 1, !dbg !285
  %_34.1 = icmp ult i64 %_30.1, %output.1, !dbg !286
  br i1 %_34.1, label %bb10.1, label %panic2, !dbg !286, !prof !283, !misexpect !284

bb10.1:                                           ; preds = %bb9.1
  %_28.1 = lshr i16 %b.1, 8, !dbg !287
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30.1, !dbg !286
  %11 = trunc i16 %_28.1 to i8, !dbg !286
  store i8 %11, i8* %10, align 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %6, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !268
  %exitcond.1 = icmp eq i64 %6, 320000, !dbg !288
  br i1 %exitcond.1, label %bb5, label %bb8, !dbg !270
}

; iterator_bench::c_style_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench30c_style_output_size_fixed_impl17ha15e2855c52b1a36E([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !300 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !304, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !316
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !316
  call void @llvm.dbg.value(metadata i64 0, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !317
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !318
  %0 = icmp eq i64 %input.1, 0, !dbg !320
  br i1 %0, label %bb5, label %bb8, !dbg !322

bb5:                                              ; preds = %bb10, %start
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  ret void, !dbg !323

bb8:                                              ; preds = %start, %bb10
  %iter.sroa.0.016 = phi i64 [ %1, %bb10 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !119, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !114, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !326
  %1 = add nuw nsw i64 %iter.sroa.0.016, 1, !dbg !328
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !308, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !312, metadata !DIExpression()), !dbg !330
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.016, !dbg !331
  %b = load i16, i16* %2, align 2, !dbg !331
  call void @llvm.dbg.value(metadata i16 %b, metadata !314, metadata !DIExpression()), !dbg !332
  %_22 = shl nuw i64 %iter.sroa.0.016, 1, !dbg !333
  %exitcond = icmp eq i64 %iter.sroa.0.016, 320000, !dbg !334
  br i1 %exitcond, label %panic1, label %bb10, !dbg !334, !prof !335, !misexpect !284

bb10:                                             ; preds = %bb8
  %3 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_22, !dbg !334
  %4 = trunc i16 %b to i8, !dbg !334
  store i8 %4, i8* %3, align 1, !dbg !334
  %_29 = or i64 %_22, 1, !dbg !336
  %_27 = lshr i16 %b, 8, !dbg !337
  %5 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_29, !dbg !338
  %6 = trunc i16 %_27 to i8, !dbg !338
  store i8 %6, i8* %5, align 1, !dbg !338
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !317
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !318
  %exitcond20 = icmp eq i64 %1, %input.1, !dbg !320
  br i1 %exitcond20, label %bb5, label %bb8, !dbg !322

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_22, i64 640000, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc69 to %"core::panic::Location"*)), !dbg !334
  unreachable, !dbg !334
}

; iterator_bench::c_style_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench25c_style_unknown_size_impl17h4592c57a68316743E([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !339 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !355
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !355
  call void @llvm.dbg.value(metadata i64 0, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !356
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !357
  %0 = icmp eq i64 %input.1, 0, !dbg !359
  br i1 %0, label %bb5, label %bb8, !dbg !361

bb5:                                              ; preds = %bb10, %start
  call void @llvm.dbg.value(metadata i64 %1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  ret void, !dbg !362

bb8:                                              ; preds = %start, %bb10
  %iter.sroa.0.016 = phi i64 [ %1, %bb10 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !119, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !114, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !365
  %1 = add nuw i64 %iter.sroa.0.016, 1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !347, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.016, metadata !351, metadata !DIExpression()), !dbg !369
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.016, !dbg !370
  %b = load i16, i16* %2, align 2, !dbg !370
  call void @llvm.dbg.value(metadata i16 %b, metadata !353, metadata !DIExpression()), !dbg !371
  %_22 = shl i64 %iter.sroa.0.016, 1, !dbg !372
  %_25 = icmp ult i64 %_22, %output.1, !dbg !373
  br i1 %_25, label %bb9, label %panic1, !dbg !373, !prof !283, !misexpect !284

bb9:                                              ; preds = %bb8
  %3 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_22, !dbg !373
  %4 = trunc i16 %b to i8, !dbg !373
  store i8 %4, i8* %3, align 1, !dbg !373
  %_29 = or i64 %_22, 1, !dbg !374
  %_33 = icmp ult i64 %_29, %output.1, !dbg !375
  br i1 %_33, label %bb10, label %panic2, !dbg !375, !prof !283, !misexpect !284

bb10:                                             ; preds = %bb9
  %_27 = lshr i16 %b, 8, !dbg !376
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_29, !dbg !375
  %6 = trunc i16 %_27 to i8, !dbg !375
  store i8 %6, i8* %5, align 1, !dbg !375
  call void @llvm.dbg.value(metadata i64 %1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !357
  %exitcond = icmp eq i64 %1, %input.1, !dbg !359
  br i1 %exitcond, label %bb5, label %bb8, !dbg !361

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_22, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc75 to %"core::panic::Location"*)), !dbg !373
  unreachable, !dbg !373

panic2:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_29, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc77 to %"core::panic::Location"*)), !dbg !375
  unreachable, !dbg !375
}

; iterator_bench::c_style_unknown_size_limit_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31c_style_unknown_size_limit_impl17hd9c80f9c494269f2E([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !377 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !391
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !379, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !391
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !380, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !391
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !380, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !391
  call void @llvm.dbg.value(metadata i64 320000, metadata !392, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 320000, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i64 320000, metadata !407, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !415, metadata !DIExpression()), !dbg !419
  %0 = icmp ugt i64 %input.1, 320000, !dbg !419
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !419
  call void @llvm.dbg.value(metadata i64 0, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !422
  br label %bb8, !dbg !424

bb6:                                              ; preds = %bb11
  call void @llvm.dbg.value(metadata i64 %1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  ret void, !dbg !425

bb8:                                              ; preds = %start, %bb11
  %iter.sroa.0.019 = phi i64 [ 0, %start ], [ %1, %bb11 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.019, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.019, metadata !119, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.019, metadata !114, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !428
  %1 = add nuw i64 %iter.sroa.0.019, 1, !dbg !430
  call void @llvm.dbg.value(metadata i64 %1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata i64 %1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.019, metadata !383, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.019, metadata !387, metadata !DIExpression()), !dbg !432
  %exitcond = icmp eq i64 %iter.sroa.0.019, %input.1, !dbg !433
  br i1 %exitcond, label %panic, label %bb9, !dbg !433, !prof !335, !misexpect !284

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.019, !dbg !433
  %b = load i16, i16* %2, align 2, !dbg !433
  call void @llvm.dbg.value(metadata i16 %b, metadata !389, metadata !DIExpression()), !dbg !434
  %_23 = shl i64 %iter.sroa.0.019, 1, !dbg !435
  %_26 = icmp ult i64 %_23, %output.1, !dbg !436
  br i1 %_26, label %bb10, label %panic1, !dbg !436, !prof !283, !misexpect !284

bb10:                                             ; preds = %bb9
  %3 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23, !dbg !436
  %4 = trunc i16 %b to i8, !dbg !436
  store i8 %4, i8* %3, align 1, !dbg !436
  %_30 = or i64 %_23, 1, !dbg !437
  %_34 = icmp ult i64 %_30, %output.1, !dbg !438
  br i1 %_34, label %bb11, label %panic2, !dbg !438, !prof !283, !misexpect !284

bb11:                                             ; preds = %bb10
  %_28 = lshr i16 %b, 8, !dbg !439
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30, !dbg !438
  %6 = trunc i16 %_28 to i8, !dbg !438
  store i8 %6, i8* %5, align 1, !dbg !438
  call void @llvm.dbg.value(metadata i64 %1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !422
  %7 = icmp ult i64 %1, %.0.sroa.speculated.i.i.i, !dbg !440
  br i1 %7, label %bb8, label %bb6, !dbg !424

panic:                                            ; preds = %bb8
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %input.1, i64 %input.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc79 to %"core::panic::Location"*)), !dbg !433
  unreachable, !dbg !433

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_23, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc81 to %"core::panic::Location"*)), !dbg !436
  unreachable, !dbg !436

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 %_30, i64 %output.1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc83 to %"core::panic::Location"*)), !dbg !438
  unreachable, !dbg !438
}

; iterator_bench::zip_chunks_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench26zip_chunks_fixed_size_impl17hf9a18a34868dfa28E([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !442 {
_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !444, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !445, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !488
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !488
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !488
  call void @llvm.dbg.value(metadata i64 640000, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !488
  call void @llvm.dbg.value(metadata i64 2, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !488
  call void @llvm.dbg.value(metadata i64 0, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !488
  call void @llvm.dbg.value(metadata i64 320000, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !488
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !509
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !516
  br label %vector.body, !dbg !518

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit ], [ %index.next.1, %vector.body ], !dbg !519
  %0 = shl nuw i64 %index, 1, !dbg !520
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !535
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %0, !dbg !559
  %3 = bitcast i16* %1 to <8 x i16>*, !dbg !562
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !562
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !563
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !564
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !565
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !565
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !565
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !565
  %index.next = or i64 %index, 8, !dbg !519
  %8 = shl nuw i64 %index.next, 1, !dbg !520
  %9 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !535
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %8, !dbg !559
  %11 = bitcast i16* %9 to <8 x i16>*, !dbg !562
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !562
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !563
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !564
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !565
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !565
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !565
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !565
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !519
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !519
  br i1 %16, label %bb7, label %vector.body, !dbg !519, !llvm.loop !566

bb7:                                              ; preds = %vector.body
  ret void, !dbg !567
}

; iterator_bench::zip_chunks_fixed_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hc5909999cfcc9c5fE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !568 {
_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !570, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !571, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !588
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !572, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !588
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !588
  call void @llvm.dbg.value(metadata i64 640000, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !588
  call void @llvm.dbg.value(metadata i64 2, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !588
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !588
  call void @llvm.dbg.value(metadata i64 320000, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !588
  call void @llvm.dbg.value(metadata i64 320000, metadata !572, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !588
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !597
  br label %vector.body, !dbg !599

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit ], [ %index.next.1, %vector.body ], !dbg !600
  %0 = shl nuw i64 %index, 1, !dbg !603
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !605
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %0, !dbg !609
  %3 = bitcast i16* %1 to <8 x i16>*, !dbg !612
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !612
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !613
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !614
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !615
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !615
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !615
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !615
  %index.next = or i64 %index, 8, !dbg !600
  %8 = shl nuw i64 %index.next, 1, !dbg !603
  %9 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !605
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %8, !dbg !609
  %11 = bitcast i16* %9 to <8 x i16>*, !dbg !612
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !612
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !613
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !614
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !615
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !615
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !615
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !615
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !600
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !600
  br i1 %16, label %bb8, label %vector.body, !dbg !600, !llvm.loop !616

bb8:                                              ; preds = %vector.body
  ret void, !dbg !617
}

; iterator_bench::zip_chunks_fixed_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17h9bf15245cb43f941E([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !618 {
_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !620, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !621, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !653
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !653
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 640000, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 2, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 0, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 320000, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 320000, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !654
  br label %bb17.preheader, !dbg !656

bb17.preheader:                                   ; preds = %bb17.preheader, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit
  %iter.sroa.16.0113 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit ], [ %7, %bb17.preheader ]
  %iter.sroa.11.0112 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit ], [ %10, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !622, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !657
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !659
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !514, metadata !DIExpression()) #5, !dbg !661
  %0 = or i64 %iter.sroa.11.0112, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %0, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !557, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !548, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !549, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !541, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !542, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !669
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !527, metadata !DIExpression()) #5, !dbg !669
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0112, 1, !dbg !671
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !672
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #5, !dbg !673
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !673
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #5, !dbg !675
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !675
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !622, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %0, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !530, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #5, !dbg !677
  call void @llvm.dbg.value(metadata i16* undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i64 undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i64 undef, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !628, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8* undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i8* undef, metadata !685, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i64 undef, metadata !193, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 undef, metadata !184, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* undef, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i16 undef, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !714
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.0112, !dbg !716
  call void @llvm.dbg.value(metadata i16* %1, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  %b = load i16, i16* %1, align 2, !dbg !717
  call void @llvm.dbg.value(metadata i16 %b, metadata !628, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 %b, metadata !631, metadata !DIExpression()), !dbg !697
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i, !dbg !718
  call void @llvm.dbg.value(metadata i8* %2, metadata !685, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %2, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i8* %2, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i8* %2, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !622, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i8* %2, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %2, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !730
  %3 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !732
  call void @llvm.dbg.value(metadata i8* %3, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i8* %2, metadata !646, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %2, metadata !650, metadata !DIExpression()), !dbg !734
  %4 = trunc i16 %b to i8, !dbg !735
  store i8 %4, i8* %2, align 1, !dbg !735
  %5 = lshr i16 %b, 8, !dbg !736
  call void @llvm.dbg.value(metadata i16 %5, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* %3, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %3, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8* %3, metadata !633, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i8* %3, metadata !646, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %3, metadata !650, metadata !DIExpression()), !dbg !734
  %6 = trunc i16 %5 to i8, !dbg !735
  store i8 %6, i8* %3, align 1, !dbg !735
  call void @llvm.dbg.value(metadata i16 0, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !654
  call void @llvm.dbg.value(metadata i64 %0, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  %7 = add nsw i64 %iter.sroa.16.0113, -2, !dbg !737
  call void @llvm.dbg.value(metadata i64 %7, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %0, metadata !514, metadata !DIExpression()) #5, !dbg !661
  call void @llvm.dbg.value(metadata i64 %0, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %0, metadata !557, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i64 %0, metadata !549, metadata !DIExpression()) #5, !dbg !665
  call void @llvm.dbg.value(metadata i64 %0, metadata !542, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata i64 %0, metadata !527, metadata !DIExpression()) #5, !dbg !669
  %start1.i.i.i.i.1 = shl nuw i64 %0, 1, !dbg !671
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !528, metadata !DIExpression()) #5, !dbg !672
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()) #5, !dbg !673
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()) #5, !dbg !675
  call void @llvm.dbg.value(metadata i64 %7, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %0, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !530, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #5, !dbg !677
  call void @llvm.dbg.value(metadata i16* undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i64 undef, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !678
  call void @llvm.dbg.value(metadata i8* undef, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i64 undef, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !628, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 undef, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i8* undef, metadata !685, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* undef, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !716
  call void @llvm.dbg.value(metadata i16* %8, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !678
  %b.1 = load i16, i16* %8, align 2, !dbg !717
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !628, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !631, metadata !DIExpression()), !dbg !697
  %9 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i.1, !dbg !718
  call void @llvm.dbg.value(metadata i8* %9, metadata !685, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %9, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i8* %9, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  call void @llvm.dbg.value(metadata i8* %9, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !679
  call void @llvm.dbg.value(metadata i8* %9, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !678
  %10 = add nuw nsw i64 %iter.sroa.11.0112, 2, !dbg !662
  call void @llvm.dbg.value(metadata i64 %10, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i8* %9, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !730
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !732
  call void @llvm.dbg.value(metadata i8* %11, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i8* %9, metadata !646, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %9, metadata !650, metadata !DIExpression()), !dbg !734
  %12 = trunc i16 %b.1 to i8, !dbg !735
  store i8 %12, i8* %9, align 1, !dbg !735
  %13 = lshr i16 %b.1, 8, !dbg !736
  call void @llvm.dbg.value(metadata i16 %13, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* %11, metadata !725, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %11, metadata !183, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8* %11, metadata !633, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !696
  call void @llvm.dbg.value(metadata i8* %11, metadata !646, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %11, metadata !650, metadata !DIExpression()), !dbg !734
  %14 = trunc i16 %13 to i8, !dbg !735
  store i8 %14, i8* %11, align 1, !dbg !735
  call void @llvm.dbg.value(metadata i16 0, metadata !631, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i64 %7, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !653
  call void @llvm.dbg.value(metadata i64 %10, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !653
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !738
  br i1 %_2.i.1, label %bb8, label %bb17.preheader, !dbg !656

bb8:                                              ; preds = %bb17.preheader
  ret void, !dbg !739
}

; iterator_bench::zip_chunks_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17hfce1a1cc47296d7fE([640000 x i8]* align 1 dereferenceable(640000) %output, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !740 {
_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !742, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !753
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !753
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !767
  call void @llvm.dbg.value(metadata i64 640000, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !767
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !767
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !767
  call void @llvm.dbg.value(metadata i16* undef, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !767
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !773
  call void @llvm.dbg.value(metadata i64 640000, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !773
  call void @llvm.dbg.value(metadata i64 2, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !773
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !773
  call void @llvm.dbg.value(metadata i16* undef, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !773
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !781
  call void @llvm.dbg.value(metadata i64 640000, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !781
  call void @llvm.dbg.value(metadata i64 2, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !781
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !781
  call void @llvm.dbg.value(metadata i16* undef, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !781
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i64 320000, metadata !786, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 320000, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 320000, metadata !798, metadata !DIExpression()), !dbg !800
  %0 = icmp ult i64 %input.1, 320000, !dbg !800
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !800
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i16* undef, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !802
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 640000, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 2, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 0, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !802
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !803
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !805
  %_2.i.i68 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !807
  br i1 %_2.i.i68, label %bb7, label %bb10.preheader, !dbg !808

bb10.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !808
  br i1 %min.iters.check, label %bb10.preheader71, label %vector.ph, !dbg !808

bb10.preheader71:                                 ; preds = %middle.block, %bb10.preheader
  %iter.sroa.11.069.ph = phi i64 [ 0, %bb10.preheader ], [ %n.vec, %middle.block ]
  br label %bb10, !dbg !808

vector.ph:                                        ; preds = %bb10.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !808
  %1 = add nsw i64 %n.vec, -8, !dbg !808
  %2 = lshr exact i64 %1, 3, !dbg !808
  %3 = add nuw nsw i64 %2, 1, !dbg !808
  %xtraiter = and i64 %3, 1, !dbg !808
  %4 = icmp eq i64 %1, 0, !dbg !808
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !808

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %3, %xtraiter, !dbg !808
  br label %vector.body, !dbg !808

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !809
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %5 = shl nuw i64 %index, 1, !dbg !810
  %6 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !812
  %7 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %5, !dbg !816
  %8 = bitcast i16* %6 to <8 x i16>*, !dbg !819
  %wide.load = load <8 x i16>, <8 x i16>* %8, align 2, !dbg !819
  %9 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !820
  %10 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !821
  %11 = trunc <8 x i16> %10 to <8 x i8>, !dbg !822
  %12 = bitcast i8* %7 to <16 x i8>*, !dbg !822
  %interleaved.vec = shufflevector <8 x i8> %9, <8 x i8> %11, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !822
  store <16 x i8> %interleaved.vec, <16 x i8>* %12, align 1, !dbg !822
  %index.next = or i64 %index, 8, !dbg !809
  %13 = shl nuw i64 %index.next, 1, !dbg !810
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !812
  %15 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %13, !dbg !816
  %16 = bitcast i16* %14 to <8 x i16>*, !dbg !819
  %wide.load.1 = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !819
  %17 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !820
  %18 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !821
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !822
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !822
  %interleaved.vec.1 = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !822
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %20, align 1, !dbg !822
  %index.next.1 = add i64 %index, 16, !dbg !809
  %niter.nsub.1 = add i64 %niter, -2, !dbg !809
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !809
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !809, !llvm.loop !823

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !809
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !809

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %21 = shl nuw i64 %index.unr, 1, !dbg !810
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !812
  %23 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %21, !dbg !816
  %24 = bitcast i16* %22 to <8 x i16>*, !dbg !819
  %wide.load.epil = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !819
  %25 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !820
  %26 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !821
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !822
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !822
  %interleaved.vec.epil = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !822
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %28, align 1, !dbg !822
  br label %middle.block, !dbg !808

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !808
  br i1 %cmp.n, label %bb7, label %bb10.preheader71, !dbg !808

bb7:                                              ; preds = %bb10, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE.exit
  ret void, !dbg !824

bb10:                                             ; preds = %bb10.preheader71, %bb10
  %iter.sroa.11.069 = phi i64 [ %29, %bb10 ], [ %iter.sroa.11.069.ph, %bb10.preheader71 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !514, metadata !DIExpression()) #5, !dbg !825
  %29 = add nuw nsw i64 %iter.sroa.11.069, 1, !dbg !809
  call void @llvm.dbg.value(metadata i64 %29, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !557, metadata !DIExpression()) #5, !dbg !826
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()) #5, !dbg !827
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !549, metadata !DIExpression()) #5, !dbg !827
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()) #5, !dbg !828
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !542, metadata !DIExpression()) #5, !dbg !828
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !829
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.069, metadata !527, metadata !DIExpression()) #5, !dbg !829
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.069, 1, !dbg !810
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !530, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #5, !dbg !831
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #5, !dbg !832
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !832
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #5, !dbg !833
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !833
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.069, !dbg !812
  %31 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i, !dbg !816
  call void @llvm.dbg.value(metadata i16* %30, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !834
  call void @llvm.dbg.value(metadata i8* %31, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !834
  call void @llvm.dbg.value(metadata i64 2, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !834
  call void @llvm.dbg.value(metadata i8* %31, metadata !752, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !835
  call void @llvm.dbg.value(metadata i64 2, metadata !752, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !835
  %b = load i16, i16* %30, align 2, !dbg !819
  call void @llvm.dbg.value(metadata i16 %b, metadata !750, metadata !DIExpression()), !dbg !835
  %32 = trunc i16 %b to i8, !dbg !820
  store i8 %32, i8* %31, align 1, !dbg !820
  %_26 = lshr i16 %b, 8, !dbg !821
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !822
  %34 = trunc i16 %_26 to i8, !dbg !822
  store i8 %34, i8* %33, align 1, !dbg !822
  call void @llvm.dbg.value(metadata i64 %29, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !802
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !803
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !805
  %_2.i.i = icmp ult i64 %29, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !807
  br i1 %_2.i.i, label %bb10, label %bb7, !dbg !808, !llvm.loop !836
}

; iterator_bench::zip_chunks_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17h0ba47d61fa5df0c5E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !838 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !851
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !851
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !841, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !852
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !852
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !852
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !852
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !763, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !852
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !854
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !854
  call void @llvm.dbg.value(metadata i64 2, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !854
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !854
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !772, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !854
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i64 2, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !856
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !856
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !778, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !856
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !867
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !867
  %0 = icmp eq i64 %output.1, 0, !dbg !909
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !910
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !910
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !910
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !910
  call void @llvm.dbg.value(metadata i64 320000, metadata !783, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 320000, metadata !789, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i64 320000, metadata !795, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !915
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, 320000, !dbg !917
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 320000, !dbg !915
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !918
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !842, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !918
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 2, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !918
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !919
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !921
  %_2.i.i69 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !923
  br i1 %_2.i.i69, label %bb7, label %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit", !dbg !924

"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit": ; preds = %start, %bb11
  %iter.sroa.11.070 = phi i64 [ %2, %bb11 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !514, metadata !DIExpression()) #5, !dbg !925
  %2 = add nuw nsw i64 %iter.sroa.11.070, 1, !dbg !926
  call void @llvm.dbg.value(metadata i64 %2, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !557, metadata !DIExpression()) #5, !dbg !927
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !548, metadata !DIExpression()) #5, !dbg !929
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !549, metadata !DIExpression()) #5, !dbg !929
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !541, metadata !DIExpression()) #5, !dbg !931
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !542, metadata !DIExpression()) #5, !dbg !931
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !933
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !527, metadata !DIExpression()) #5, !dbg !933
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.070, 1, !dbg !935
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !936
  %3 = add nuw nsw i64 %start1.i.i.i, 2
  %4 = icmp ugt i64 %3, %output.1, !dbg !937
  %end.0.i.i.i = select i1 %4, i64 %output.1, i64 %3, !dbg !937
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i, metadata !530, metadata !DIExpression()) #5, !dbg !938
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !939
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !939
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !941
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !941
  %_23.i.i.i = sub i64 %end.0.i.i.i, %start1.i.i.i, !dbg !943
  %5 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.070, !dbg !944
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !945
  call void @llvm.dbg.value(metadata i16* %5, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !946
  call void @llvm.dbg.value(metadata i8* %6, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !946
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !946
  call void @llvm.dbg.value(metadata i8* %6, metadata !850, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !947
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !850, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !947
  %b = load i16, i16* %5, align 2, !dbg !948
  call void @llvm.dbg.value(metadata i16 %b, metadata !848, metadata !DIExpression()), !dbg !947
  %_24 = icmp eq i64 %_23.i.i.i, 0, !dbg !949
  br i1 %_24, label %panic, label %bb10, !dbg !949, !prof !335, !misexpect !284

bb7:                                              ; preds = %bb11, %start
  ret void, !dbg !950

bb10:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit"
  %7 = trunc i16 %b to i8, !dbg !949
  store i8 %7, i8* %6, align 1, !dbg !949
  %_30 = icmp eq i64 %_23.i.i.i, 1, !dbg !951
  br i1 %_30, label %panic1, label %bb11, !dbg !951, !prof !335, !misexpect !284

bb11:                                             ; preds = %bb10
  %_26 = lshr i16 %b, 8, !dbg !952
  %8 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !951
  %9 = trunc i16 %_26 to i8, !dbg !951
  store i8 %9, i8* %8, align 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %2, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !918
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !919
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !921
  %_2.i.i = icmp ult i64 %2, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !923
  br i1 %_2.i.i, label %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit", label %bb7, !dbg !924

panic:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc97 to %"core::panic::Location"*)), !dbg !949
  unreachable, !dbg !949

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc99 to %"core::panic::Location"*)), !dbg !951
  unreachable, !dbg !951
}

; iterator_bench::zip_chunks_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench28zip_chunks_unknown_size_impl17hf6884aebd9296e1eE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !953 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !955, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !966
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !955, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !966
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !956, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !966
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !956, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !966
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !967
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !967
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !967
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !967
  call void @llvm.dbg.value(metadata i16* undef, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !967
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !969
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !969
  call void @llvm.dbg.value(metadata i64 2, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !969
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !969
  call void @llvm.dbg.value(metadata i16* undef, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !969
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !971
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !971
  call void @llvm.dbg.value(metadata i64 2, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !971
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !971
  call void @llvm.dbg.value(metadata i16* undef, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !971
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !973
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !973
  %0 = icmp eq i64 %output.1, 0, !dbg !977
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !978
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !978
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !978
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !978
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !983
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !985
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !983
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i16* undef, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !986
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 2, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 0, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !986
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !987
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !989
  %_2.i.i69 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !991
  br i1 %_2.i.i69, label %bb7, label %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit", !dbg !992

"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit": ; preds = %start, %bb11
  %iter.sroa.11.070 = phi i64 [ %2, %bb11 ], [ 0, %start ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !514, metadata !DIExpression()) #5, !dbg !993
  %2 = add nuw i64 %iter.sroa.11.070, 1, !dbg !994
  call void @llvm.dbg.value(metadata i64 %2, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !557, metadata !DIExpression()) #5, !dbg !995
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()) #5, !dbg !997
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !549, metadata !DIExpression()) #5, !dbg !997
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()) #5, !dbg !999
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !542, metadata !DIExpression()) #5, !dbg !999
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.070, metadata !527, metadata !DIExpression()) #5, !dbg !1001
  %start1.i.i.i = shl i64 %iter.sroa.11.070, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1005, metadata !DIExpression()) #5, !dbg !1014
  call void @llvm.dbg.value(metadata i64 2, metadata !1010, metadata !DIExpression()) #5, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1016, metadata !DIExpression()) #5, !dbg !1029
  call void @llvm.dbg.value(metadata i64 2, metadata !1025, metadata !DIExpression()) #5, !dbg !1029
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %start1.i.i.i, i64 2) #5, !dbg !1031
  %4 = extractvalue { i64, i1 } %3, 0, !dbg !1031
  %5 = extractvalue { i64, i1 } %3, 1, !dbg !1031
  %6 = icmp ugt i64 %4, %output.1, !dbg !1032
  %7 = or i1 %5, %6, !dbg !1032
  %end.0.i.i.i = select i1 %7, i64 %output.1, i64 %4, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i, metadata !530, metadata !DIExpression()) #5, !dbg !1033
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1034
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1036
  %_23.i.i.i = sub i64 %end.0.i.i.i, %start1.i.i.i, !dbg !1038
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1039
  call void @llvm.dbg.value(metadata i16* undef, metadata !959, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %8, metadata !959, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !959, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1040
  call void @llvm.dbg.value(metadata i16* undef, metadata !963, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i8* %8, metadata !965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i, metadata !965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1041
  %_23 = icmp eq i64 %_23.i.i.i, 0, !dbg !1042
  br i1 %_23, label %panic, label %bb10, !dbg !1042, !prof !335, !misexpect !284

bb7:                                              ; preds = %bb11, %start
  ret void, !dbg !1043

bb10:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit"
  %9 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.070, !dbg !1044
  call void @llvm.dbg.value(metadata i16* %9, metadata !963, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i16* %9, metadata !959, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1040
  %_20 = load i16, i16* %9, align 2, !dbg !1045
  %10 = trunc i16 %_20 to i8, !dbg !1042
  store i8 %10, i8* %8, align 1, !dbg !1042
  %_29 = icmp eq i64 %_23.i.i.i, 1, !dbg !1046
  br i1 %_29, label %panic1, label %bb11, !dbg !1046, !prof !335, !misexpect !284

bb11:                                             ; preds = %bb10
  %_25 = lshr i16 %_20, 8, !dbg !1047
  %11 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1046
  %12 = trunc i16 %_25 to i8, !dbg !1046
  store i8 %12, i8* %11, align 1, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %2, metadata !957, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !986
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !987
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !989
  %_2.i.i = icmp ult i64 %2, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !991
  br i1 %_2.i.i, label %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit", label %bb7, !dbg !992

panic:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::Location"*)), !dbg !1042
  unreachable, !dbg !1042

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc103 to %"core::panic::Location"*)), !dbg !1046
  unreachable, !dbg !1046
}

; iterator_bench::zip_chunks_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hc0a7de8103b22ac7E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1048 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1050, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1061
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1051, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1051, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1061
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1062
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1062
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1062
  call void @llvm.dbg.value(metadata i16* undef, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1062
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1064
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1064
  call void @llvm.dbg.value(metadata i64 2, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1064
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1064
  call void @llvm.dbg.value(metadata i16* undef, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1064
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1066
  call void @llvm.dbg.value(metadata i64 2, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1066
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1066
  call void @llvm.dbg.value(metadata i16* undef, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1066
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1068
  %0 = icmp eq i64 %output.1, 0, !dbg !1072
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1073
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1073
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1073
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1078
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1080
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1078
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i16* undef, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 2, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 320000, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !1082
  br label %bb2.i, !dbg !1084

bb2.i:                                            ; preds = %start, %bb12
  %iter.sroa.16.0101 = phi i64 [ 320000, %start ], [ %2, %bb12 ]
  %iter.sroa.11.0100 = phi i64 [ 0, %start ], [ %3, %bb12 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0101, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1081
  %2 = add nsw i64 %iter.sroa.16.0101, -1, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %2, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !1086
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !1088
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0100, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1090
  br i1 %_2.i.i.i, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit", label %bb8, !dbg !1091

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit": ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !1086
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !514, metadata !DIExpression()) #5, !dbg !1092
  %3 = add nuw nsw i64 %iter.sroa.11.0100, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %3, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !557, metadata !DIExpression()) #5, !dbg !1094
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()) #5, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !549, metadata !DIExpression()) #5, !dbg !1096
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()) #5, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !542, metadata !DIExpression()) #5, !dbg !1098
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !527, metadata !DIExpression()) #5, !dbg !1100
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0100, 1, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !1103
  %4 = add nuw nsw i64 %start1.i.i.i.i, 2
  %5 = icmp ugt i64 %4, %output.1, !dbg !1104
  %end.0.i.i.i.i = select i1 %5, i64 %output.1, i64 %4, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !530, metadata !DIExpression()) #5, !dbg !1105
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1106
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1108
  %_23.i.i.i.i = sub i64 %end.0.i.i.i.i, %start1.i.i.i.i, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %2, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %3, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1081
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1111
  call void @llvm.dbg.value(metadata i16* undef, metadata !1054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %6, metadata !1054, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i.i, metadata !1054, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1112
  call void @llvm.dbg.value(metadata i16* undef, metadata !1058, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %6, metadata !1060, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %_23.i.i.i.i, metadata !1060, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1113
  %_24 = icmp eq i64 %_23.i.i.i.i, 0, !dbg !1114
  br i1 %_24, label %panic, label %bb11, !dbg !1114, !prof !335, !misexpect !284

bb8:                                              ; preds = %bb2.i, %bb12
  ret void, !dbg !1115

bb11:                                             ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit"
  %7 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0100, !dbg !1116
  call void @llvm.dbg.value(metadata i16* %7, metadata !1058, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16* %7, metadata !1054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  %_21 = load i16, i16* %7, align 2, !dbg !1117
  %8 = trunc i16 %_21 to i8, !dbg !1114
  store i8 %8, i8* %6, align 1, !dbg !1114
  %_30 = icmp eq i64 %_23.i.i.i.i, 1, !dbg !1118
  br i1 %_30, label %panic1, label %bb12, !dbg !1118, !prof !335, !misexpect !284

bb12:                                             ; preds = %bb11
  %_26 = lshr i16 %_21, 8, !dbg !1119
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1118
  %10 = trunc i16 %_26 to i8, !dbg !1118
  store i8 %10, i8* %9, align 1, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %2, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %3, metadata !1052, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1081
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !1082
  %_2.i = icmp eq i64 %2, 0, !dbg !1120
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1084

panic:                                            ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 0, i64 0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc105 to %"core::panic::Location"*)), !dbg !1114
  unreachable, !dbg !1114

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64 1, i64 1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc107 to %"core::panic::Location"*)), !dbg !1118
  unreachable, !dbg !1118
}

; iterator_bench::zip_chunks_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17h89c19ee62f7b590cE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1121 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1144
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1124, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1144
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i16* undef, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1147
  call void @llvm.dbg.value(metadata i64 2, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1147
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1147
  call void @llvm.dbg.value(metadata i16* undef, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1147
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1149
  call void @llvm.dbg.value(metadata i64 2, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1149
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1149
  call void @llvm.dbg.value(metadata i16* undef, metadata !778, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1149
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !858, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1151
  %0 = icmp eq i64 %output.1, 0, !dbg !1155
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1156
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1156
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1156
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1161
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1163
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1161
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i16* undef, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 2, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 0, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 320000, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !1165
  br label %bb2.i, !dbg !1167

bb6.loopexit:                                     ; preds = %bb17.prol.loopexit, %bb17, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit"
  call void @llvm.dbg.value(metadata i64 %9, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %10, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !589, metadata !DIExpression()) #5, !dbg !1165
  %_2.i = icmp eq i64 %9, 0, !dbg !1168
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1167

bb2.i:                                            ; preds = %start, %bb6.loopexit
  %iter.sroa.16.0113 = phi i64 [ 320000, %start ], [ %9, %bb6.loopexit ]
  %iter.sroa.11.0112 = phi i64 [ 0, %start ], [ %10, %bb6.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1164
  %2 = shl nuw nsw i64 %iter.sroa.11.0112, 1, !dbg !1169
  %3 = add nuw i64 %2, 2, !dbg !1169
  %4 = icmp ugt i64 %3, %output.1, !dbg !1169
  %umin = select i1 %4, i64 %output.1, i64 %3, !dbg !1169
  %5 = mul nsw i64 %iter.sroa.11.0112, -2, !dbg !1169
  %6 = add i64 %umin, %5, !dbg !1169
  %7 = add i64 %5, -1, !dbg !1169
  %8 = add i64 %umin, %7, !dbg !1169
  %9 = add nsw i64 %iter.sroa.16.0113, -1, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %9, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !1170
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !1172
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0112, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1174
  br i1 %_2.i.i.i, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit", label %bb8, !dbg !1175

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit": ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !489, metadata !DIExpression()) #5, !dbg !1170
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !511, metadata !DIExpression()) #5, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !514, metadata !DIExpression()) #5, !dbg !1176
  %10 = add nuw nsw i64 %iter.sroa.11.0112, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %10, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !557, metadata !DIExpression()) #5, !dbg !1178
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()) #5, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !549, metadata !DIExpression()) #5, !dbg !1180
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()) #5, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !542, metadata !DIExpression()) #5, !dbg !1182
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !526, metadata !DIExpression()) #5, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !527, metadata !DIExpression()) #5, !dbg !1184
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0112, 1, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !528, metadata !DIExpression()) #5, !dbg !1187
  %11 = add nuw nsw i64 %start1.i.i.i.i, 2
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression()) #5, !dbg !1188
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #5, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #5, !dbg !1189
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #5, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #5, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %9, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %10, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1164
  %12 = icmp ugt i64 %11, %output.1, !dbg !1193
  %end.0.i.i.i.i = select i1 %12, i64 %output.1, i64 %11, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !530, metadata !DIExpression()) #5, !dbg !1188
  call void @llvm.dbg.value(metadata i16* undef, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1194
  call void @llvm.dbg.value(metadata i8* undef, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1194
  call void @llvm.dbg.value(metadata i64 undef, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1194
  call void @llvm.dbg.value(metadata i8* undef, metadata !1133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1195
  call void @llvm.dbg.value(metadata i64 undef, metadata !1133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1195
  call void @llvm.dbg.value(metadata i16 undef, metadata !1131, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i16 undef, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1197
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1197
  call void @llvm.dbg.value(metadata i8* undef, metadata !685, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 undef, metadata !193, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 undef, metadata !184, metadata !DIExpression()), !dbg !1202
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %end.0.i.i.i.i, !dbg !1204
  call void @llvm.dbg.value(metadata i8* undef, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %13, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i16 undef, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1206
  %_13.i109 = icmp eq i64 %start1.i.i.i.i, %end.0.i.i.i.i, !dbg !1208
  br i1 %_13.i109, label %bb6.loopexit, label %bb17.preheader, !dbg !1209

bb17.preheader:                                   ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE.exit"
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0112, !dbg !1210
  call void @llvm.dbg.value(metadata i16* %14, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1194
  %b = load i16, i16* %14, align 2, !dbg !1211
  call void @llvm.dbg.value(metadata i16 %b, metadata !1131, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i16 %b, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i16 %b, metadata !1134, metadata !DIExpression()), !dbg !1196
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %15, metadata !685, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* %15, metadata !192, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %15, metadata !183, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %15, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %15, metadata !680, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %15, metadata !1133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %15, metadata !1127, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1194
  %xtraiter = and i64 %6, 7, !dbg !1209
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1209
  br i1 %lcmp.mod, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1209

bb17.prol:                                        ; preds = %bb17.preheader, %bb17.prol
  %val1.0111.prol = phi i16 [ %18, %bb17.prol ], [ %b, %bb17.preheader ]
  %iter2.sroa.0.0110.prol = phi i8* [ %16, %bb17.prol ], [ %15, %bb17.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %bb17.prol ], [ %xtraiter, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i16 %val1.0111.prol, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !183, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1216
  %16 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110.prol, i64 1, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %16, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1142, metadata !DIExpression()), !dbg !1220
  %17 = trunc i16 %val1.0111.prol to i8, !dbg !1221
  store i8 %17, i8* %iter2.sroa.0.0110.prol, align 1, !dbg !1221
  %18 = lshr i16 %val1.0111.prol, 8, !dbg !1222
  call void @llvm.dbg.value(metadata i16 %18, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1206
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !1209
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !1209
  br i1 %prol.iter.cmp, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1209, !llvm.loop !1223

bb17.prol.loopexit:                               ; preds = %bb17.prol, %bb17.preheader
  %val1.0111.unr = phi i16 [ %b, %bb17.preheader ], [ %18, %bb17.prol ]
  %iter2.sroa.0.0110.unr = phi i8* [ %15, %bb17.preheader ], [ %16, %bb17.prol ]
  %19 = icmp ult i64 %8, 7, !dbg !1209
  br i1 %19, label %bb6.loopexit, label %bb17, !dbg !1209

bb8:                                              ; preds = %bb2.i, %bb6.loopexit
  ret void, !dbg !1225

bb17:                                             ; preds = %bb17.prol.loopexit, %bb17
  %val1.0111 = phi i16 [ 0, %bb17 ], [ %val1.0111.unr, %bb17.prol.loopexit ]
  %iter2.sroa.0.0110 = phi i8* [ %30, %bb17 ], [ %iter2.sroa.0.0110.unr, %bb17.prol.loopexit ]
  call void @llvm.dbg.value(metadata i16 %val1.0111, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !719, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !183, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1216
  %20 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 1, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %20, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1142, metadata !DIExpression()), !dbg !1220
  %21 = trunc i16 %val1.0111 to i8, !dbg !1221
  store i8 %21, i8* %iter2.sroa.0.0110, align 1, !dbg !1221
  %22 = lshr i16 %val1.0111, 8, !dbg !1222
  call void @llvm.dbg.value(metadata i16 %22, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !698, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8* %20, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %20, metadata !183, metadata !DIExpression()), !dbg !1216
  %23 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 2, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %23, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %20, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %20, metadata !1142, metadata !DIExpression()), !dbg !1220
  %24 = trunc i16 %22 to i8, !dbg !1221
  store i8 %24, i8* %20, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %23, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %23, metadata !183, metadata !DIExpression()), !dbg !1216
  %25 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 3, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %25, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %23, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %23, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %23, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %25, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %25, metadata !183, metadata !DIExpression()), !dbg !1216
  %26 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 4, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %26, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %25, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %25, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %25, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %26, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %26, metadata !183, metadata !DIExpression()), !dbg !1216
  %27 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 5, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %27, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %26, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %26, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %26, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %27, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %27, metadata !183, metadata !DIExpression()), !dbg !1216
  %28 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 6, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %28, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %27, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %27, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %27, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %28, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %28, metadata !183, metadata !DIExpression()), !dbg !1216
  %29 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 7, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %29, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %28, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %28, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %28, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %29, metadata !725, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %29, metadata !183, metadata !DIExpression()), !dbg !1216
  %30 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 8, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %30, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %29, metadata !1138, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %29, metadata !1142, metadata !DIExpression()), !dbg !1220
  store i8 0, i8* %29, align 1, !dbg !1221
  call void @llvm.dbg.value(metadata i16 0, metadata !1134, metadata !DIExpression()), !dbg !1196
  %_13.i.7 = icmp eq i8* %30, %13, !dbg !1208
  br i1 %_13.i.7, label %bb6.loopexit, label %bb17, !dbg !1209
}

; iterator_bench::zip_chunks_exact_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17hd0ae6decc6b18109E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1226 {
_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1252
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1252
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1253
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1284
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata i8* undef, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata i64 2, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata i16* undef, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1300
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1296, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1300
  call void @llvm.dbg.value(metadata i64 2, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1300
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1300
  call void @llvm.dbg.value(metadata i16* undef, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1300
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata i8* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1308
  call void @llvm.dbg.value(metadata i16* undef, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1308
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1341
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1343
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1341
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i16* undef, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1230, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i8* undef, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1230, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 2, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 0, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1358
  %_2.i.i95 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1360
  br i1 %_2.i.i95, label %bb7, label %bb11.preheader, !dbg !1361

bb11.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1361
  br i1 %min.iters.check, label %bb11.preheader97, label %vector.ph, !dbg !1361

bb11.preheader97:                                 ; preds = %middle.block, %bb11.preheader
  %iter.sroa.11.096.ph = phi i64 [ 0, %bb11.preheader ], [ %n.vec, %middle.block ]
  br label %bb11, !dbg !1361

vector.ph:                                        ; preds = %bb11.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 9223372036854775800, !dbg !1361
  %1 = add nsw i64 %n.vec, -8, !dbg !1361
  %2 = lshr exact i64 %1, 3, !dbg !1361
  %3 = add nuw nsw i64 %2, 1, !dbg !1361
  %xtraiter = and i64 %3, 1, !dbg !1361
  %4 = icmp eq i64 %1, 0, !dbg !1361
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1361

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %3, %xtraiter, !dbg !1361
  br label %vector.body, !dbg !1361

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1362
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %5 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1363
  %6 = shl nuw i64 %index, 1, !dbg !1367
  %7 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %6, !dbg !1378
  %8 = bitcast i16* %5 to <8 x i16>*, !dbg !1381
  %wide.load = load <8 x i16>, <8 x i16>* %8, align 2, !dbg !1381
  %9 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1382
  %10 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1383
  %11 = trunc <8 x i16> %10 to <8 x i8>, !dbg !1384
  %12 = bitcast i8* %7 to <16 x i8>*, !dbg !1384
  %interleaved.vec = shufflevector <8 x i8> %9, <8 x i8> %11, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1384
  store <16 x i8> %interleaved.vec, <16 x i8>* %12, align 1, !dbg !1384
  %index.next = or i64 %index, 8, !dbg !1362
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1363
  %14 = shl nuw i64 %index.next, 1, !dbg !1367
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %14, !dbg !1378
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !1381
  %wide.load.1 = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !1381
  %17 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1382
  %18 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1383
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !1384
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !1384
  %interleaved.vec.1 = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1384
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %20, align 1, !dbg !1384
  %index.next.1 = add i64 %index, 16, !dbg !1362
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1362
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1362
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1362, !llvm.loop !1385

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1362
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1362

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1363
  %22 = shl nuw i64 %index.unr, 1, !dbg !1367
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %22, !dbg !1378
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !1381
  %wide.load.epil = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !1381
  %25 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1382
  %26 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1383
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !1384
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !1384
  %interleaved.vec.epil = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1384
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %28, align 1, !dbg !1384
  br label %middle.block, !dbg !1361

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1361
  br i1 %cmp.n, label %bb7, label %bb11.preheader97, !dbg !1361

bb7:                                              ; preds = %bb11, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  ret void, !dbg !1386

bb11:                                             ; preds = %bb11.preheader97, %bb11
  %iter.sroa.11.096 = phi i64 [ %31, %bb11 ], [ %iter.sroa.11.096.ph, %bb11.preheader97 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !1356, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !557, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !549, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !542, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !1374, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1392
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1393
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.096, metadata !1230, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1344
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.096, !dbg !1363
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.096, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1375, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1394
  %30 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1378
  %31 = add nuw nsw i64 %iter.sroa.11.096, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %31, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1344
  call void @llvm.dbg.value(metadata i16* %29, metadata !1245, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %30, metadata !1245, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1395
  call void @llvm.dbg.value(metadata i64 2, metadata !1245, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1395
  call void @llvm.dbg.value(metadata i16* %29, metadata !1249, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %30, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1396
  call void @llvm.dbg.value(metadata i64 2, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1396
  %_20 = load i16, i16* %29, align 2, !dbg !1381
  %32 = trunc i16 %_20 to i8, !dbg !1382
  store i8 %32, i8* %30, align 1, !dbg !1382
  %_25 = lshr i16 %_20, 8, !dbg !1383
  %33 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1384
  %34 = trunc i16 %_25 to i8, !dbg !1384
  store i8 %34, i8* %33, align 1, !dbg !1384
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1358
  %_2.i.i = icmp ult i64 %31, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1360
  br i1 %_2.i.i, label %bb11, label %bb7, !dbg !1361, !llvm.loop !1397
}

; iterator_bench::zip_chunks_exact_unknown_size_slice_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17hb8349f0013722554E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1398 {
_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1411
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1411
  call void @llvm.dbg.value(metadata i64 320000, metadata !783, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !786, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 320000, metadata !789, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !792, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 320000, metadata !795, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !798, metadata !DIExpression()), !dbg !1416
  %0 = icmp ult i64 %input.1, 320000, !dbg !1418
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !1416
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1419
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1423
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i8* undef, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i64 2, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata i16* undef, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1425
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1296, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 2, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1427
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1427
  call void @llvm.dbg.value(metadata i16* undef, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1427
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata i8* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1429
  call void @llvm.dbg.value(metadata i16* undef, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1429
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !783, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !789, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !795, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1438
  %1 = icmp ugt i64 %.0.sroa.speculated.i.i.i, %n.i.i.i.i.i, !dbg !1440
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %n.i.i.i.i.i, i64 %.0.sroa.speculated.i.i.i, !dbg !1438
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i16* undef, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1402, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i8* undef, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1402, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 2, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1444
  %_2.i.i96 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1446
  br i1 %_2.i.i96, label %bb10, label %bb14.preheader, !dbg !1447

bb14.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1447
  br i1 %min.iters.check, label %bb14.preheader98, label %vector.ph, !dbg !1447

bb14.preheader98:                                 ; preds = %middle.block, %bb14.preheader
  %iter.sroa.11.097.ph = phi i64 [ 0, %bb14.preheader ], [ %n.vec, %middle.block ]
  br label %bb14, !dbg !1447

vector.ph:                                        ; preds = %bb14.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !1447
  %2 = add nsw i64 %n.vec, -8, !dbg !1447
  %3 = lshr exact i64 %2, 3, !dbg !1447
  %4 = add nuw nsw i64 %3, 1, !dbg !1447
  %xtraiter = and i64 %4, 1, !dbg !1447
  %5 = icmp eq i64 %2, 0, !dbg !1447
  br i1 %5, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1447

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %4, %xtraiter, !dbg !1447
  br label %vector.body, !dbg !1447

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1448
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %6 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1449
  %7 = shl nuw i64 %index, 1, !dbg !1453
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %7, !dbg !1455
  %9 = bitcast i16* %6 to <8 x i16>*, !dbg !1458
  %wide.load = load <8 x i16>, <8 x i16>* %9, align 2, !dbg !1458
  %10 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1459
  %11 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1460
  %12 = trunc <8 x i16> %11 to <8 x i8>, !dbg !1461
  %13 = bitcast i8* %8 to <16 x i8>*, !dbg !1461
  %interleaved.vec = shufflevector <8 x i8> %10, <8 x i8> %12, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1461
  store <16 x i8> %interleaved.vec, <16 x i8>* %13, align 1, !dbg !1461
  %index.next = or i64 %index, 8, !dbg !1448
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1449
  %15 = shl nuw i64 %index.next, 1, !dbg !1453
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !1455
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !1458
  %wide.load.1 = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !1458
  %18 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1459
  %19 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1460
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !1461
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !1461
  %interleaved.vec.1 = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1461
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %21, align 1, !dbg !1461
  %index.next.1 = add i64 %index, 16, !dbg !1448
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1448
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1448
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1448, !llvm.loop !1462

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1448
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1448

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1449
  %23 = shl nuw i64 %index.unr, 1, !dbg !1453
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !1455
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !1458
  %wide.load.epil = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !1458
  %26 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1459
  %27 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1460
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !1461
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !1461
  %interleaved.vec.epil = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1461
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %29, align 1, !dbg !1461
  br label %middle.block, !dbg !1447

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1447
  br i1 %cmp.n, label %bb10, label %bb14.preheader98, !dbg !1447

bb10:                                             ; preds = %bb14, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  ret void, !dbg !1463

bb14:                                             ; preds = %bb14.preheader98, %bb14
  %iter.sroa.11.097 = phi i64 [ %32, %bb14 ], [ %iter.sroa.11.097.ph, %bb14.preheader98 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !1356, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !557, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !549, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !542, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !1374, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1469
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1470
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !1402, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1441
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.097, !dbg !1449
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.097, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1375, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1471
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1455
  %32 = add nuw nsw i64 %iter.sroa.11.097, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %32, metadata !1402, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i16* %30, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %31, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1472
  call void @llvm.dbg.value(metadata i64 2, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1472
  call void @llvm.dbg.value(metadata i16* %30, metadata !1408, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %31, metadata !1410, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1473
  call void @llvm.dbg.value(metadata i64 2, metadata !1410, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1473
  %_26 = load i16, i16* %30, align 2, !dbg !1458
  %33 = trunc i16 %_26 to i8, !dbg !1459
  store i8 %33, i8* %31, align 1, !dbg !1459
  %_31 = lshr i16 %_26, 8, !dbg !1460
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1461
  %35 = trunc i16 %_31 to i8, !dbg !1461
  store i8 %35, i8* %34, align 1, !dbg !1461
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1444
  %_2.i.i = icmp ult i64 %32, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1446
  br i1 %_2.i.i, label %bb14, label %bb10, !dbg !1447, !llvm.loop !1474
}

; iterator_bench::zip_chunks_exact_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17h1bcb5d8acefd81f5E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1475 {
_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1477, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1494
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1478, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1478, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1494
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1495
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1499
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata i8* undef, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata i64 2, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata i16* undef, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1501
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1296, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata i64 2, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata i16* undef, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1503
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata i8* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1505
  call void @llvm.dbg.value(metadata i16* undef, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1505
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1514
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1516
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1514
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i16* undef, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1479, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i8* undef, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 2, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 0, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 320000, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1524
  br label %bb2.i, !dbg !1526

bb2.i:                                            ; preds = %bb12.1, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  %iter.sroa.16.0135 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit ], [ %7, %bb12.1 ]
  %iter.sroa.11.0134 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit ], [ %10, %bb12.1 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1529
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0134, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1531
  br i1 %_2.i.i.i, label %bb12, label %bb8, !dbg !1532

bb8:                                              ; preds = %bb12.1, %bb12, %bb2.i
  ret void, !dbg !1533

bb12:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !1356, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !557, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !549, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !542, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !1374, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1543
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1544
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0134, metadata !1479, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0134, !dbg !1548
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0134, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1375, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1546
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1550
  %3 = or i64 %iter.sroa.11.0134, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %3, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i16* %1, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %2, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i64 2, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i16* %1, metadata !1491, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1553
  call void @llvm.dbg.value(metadata i64 2, metadata !1493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1553
  %_21 = load i16, i16* %1, align 2, !dbg !1554
  %4 = trunc i16 %_21 to i8, !dbg !1555
  store i8 %4, i8* %2, align 1, !dbg !1555
  %_26 = lshr i16 %_21, 8, !dbg !1556
  %5 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1557
  %6 = trunc i16 %_26 to i8, !dbg !1557
  store i8 %6, i8* %5, align 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %3, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0135, metadata !1479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %3, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  %7 = add nsw i64 %iter.sroa.16.0135, -2, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %7, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  %_2.i.i.i.1 = icmp ult i64 %3, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1531
  br i1 %_2.i.i.i.1, label %bb12.1, label %bb8, !dbg !1532

bb12.1:                                           ; preds = %bb12
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %3, metadata !1356, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %3, metadata !557, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %3, metadata !549, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %3, metadata !542, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %3, metadata !1374, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %3, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1543
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %3, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1544
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %3, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %7, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %3, metadata !1479, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %3, !dbg !1548
  %start1.i.i.i.i.1 = shl nuw i64 %3, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1375, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1546
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1550
  %10 = add nuw nsw i64 %iter.sroa.11.0134, 2, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %10, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i16* %8, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %9, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i64 2, metadata !1487, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1552
  call void @llvm.dbg.value(metadata i16* %8, metadata !1491, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8* %9, metadata !1493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1553
  call void @llvm.dbg.value(metadata i64 2, metadata !1493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1553
  %_21.1 = load i16, i16* %8, align 2, !dbg !1554
  %11 = trunc i16 %_21.1 to i8, !dbg !1555
  store i8 %11, i8* %9, align 1, !dbg !1555
  %_26.1 = lshr i16 %_21.1, 8, !dbg !1556
  %12 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1557
  %13 = trunc i16 %_26.1 to i8, !dbg !1557
  store i8 %13, i8* %12, align 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %7, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %10, metadata !1479, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1517
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1524
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1559
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1526
}

; iterator_bench::zip_chunks_exact_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h10e23baa91d25095E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1560 {
_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1562, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1562, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1583
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1583
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1584
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1588
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata i8* undef, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1286, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata i64 2, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata i16* undef, metadata !1291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1590
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1296, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1592
  call void @llvm.dbg.value(metadata i64 2, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1592
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1592
  call void @llvm.dbg.value(metadata i16* undef, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1592
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata i8* undef, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1594
  call void @llvm.dbg.value(metadata i16* undef, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1594
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !783, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !786, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !789, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !792, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !795, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !798, metadata !DIExpression()), !dbg !1603
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1605
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1603
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i16* undef, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1564, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i8* undef, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 2, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 0, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 320000, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1607
  br label %bb2.i, !dbg !1609

bb2.i:                                            ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1", %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit
  %iter.sroa.16.0147 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit ], [ %7, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1" ]
  %iter.sroa.11.0146 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E.exit ], [ %13, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1" ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1612
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0146, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1614
  br i1 %_2.i.i.i, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit", label %bb8, !dbg !1615

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit": ; preds = %bb2.i
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1356, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !557, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !549, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !542, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1374, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1625
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1626
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %6, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0146, !dbg !1630
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0146, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1375, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1628
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1632
  call void @llvm.dbg.value(metadata i16* %1, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i64 2, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %2, metadata !1572, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1634
  call void @llvm.dbg.value(metadata i64 2, metadata !1572, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1634
  %b = load i16, i16* %1, align 2, !dbg !1635
  call void @llvm.dbg.value(metadata i16 %b, metadata !1570, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8* %2, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1641
  call void @llvm.dbg.value(metadata i16 %b, metadata !1573, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* undef, metadata !1575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %2, metadata !1577, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %2, metadata !1581, metadata !DIExpression()), !dbg !1648
  %3 = trunc i16 %b to i8, !dbg !1649
  store i8 %3, i8* %2, align 1, !dbg !1649
  %4 = lshr i16 %b, 8, !dbg !1650
  call void @llvm.dbg.value(metadata i16 %4, metadata !1573, metadata !DIExpression()), !dbg !1642
  %iter2.sroa.0.0.ptr.1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !183, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1577, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1581, metadata !DIExpression()), !dbg !1648
  %5 = trunc i16 %4 to i8, !dbg !1649
  store i8 %5, i8* %iter2.sroa.0.0.ptr.1, align 1, !dbg !1649
  call void @llvm.dbg.value(metadata i16 0, metadata !1573, metadata !DIExpression()), !dbg !1642
  %6 = or i64 %iter.sroa.11.0146, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %6, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %6, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  %7 = add nsw i64 %iter.sroa.16.0147, -2, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %7, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  %_2.i.i.i.1 = icmp ult i64 %6, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1614
  br i1 %_2.i.i.i.1, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1", label %bb8, !dbg !1615

bb8:                                              ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1", %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit", %bb2.i
  ret void, !dbg !1653

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit.1": ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E.exit"
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1345, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1353, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %6, metadata !1356, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %6, metadata !557, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !548, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %6, metadata !549, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !541, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %6, metadata !542, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1373, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %6, metadata !1374, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %6, metadata !1375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1625
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %6, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1626
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %6, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %7, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %13, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %6, !dbg !1630
  %start1.i.i.i.i.1 = shl nuw i64 %6, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1375, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1628
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1632
  call void @llvm.dbg.value(metadata i16* %8, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %9, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i64 2, metadata !1566, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %9, metadata !1572, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1634
  call void @llvm.dbg.value(metadata i64 2, metadata !1572, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1634
  %b.1 = load i16, i16* %8, align 2, !dbg !1635
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1570, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8* %9, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1641
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1573, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* undef, metadata !1575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %9, metadata !1577, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %9, metadata !1581, metadata !DIExpression()), !dbg !1648
  %10 = trunc i16 %b.1 to i8, !dbg !1649
  store i8 %10, i8* %9, align 1, !dbg !1649
  %11 = lshr i16 %b.1, 8, !dbg !1650
  call void @llvm.dbg.value(metadata i16 %11, metadata !1573, metadata !DIExpression()), !dbg !1642
  %iter2.sroa.0.0.ptr.1.1 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !183, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1577, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1581, metadata !DIExpression()), !dbg !1648
  %12 = trunc i16 %11 to i8, !dbg !1649
  store i8 %12, i8* %iter2.sroa.0.0.ptr.1.1, align 1, !dbg !1649
  call void @llvm.dbg.value(metadata i16 0, metadata !1573, metadata !DIExpression()), !dbg !1642
  %13 = add nuw nsw i64 %iter.sroa.11.0146, 2, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %7, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %13, metadata !1564, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1606
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1518, metadata !DIExpression()), !dbg !1607
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1654
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1609
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hdef4fff11e167a6aE(i64, i64, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !4, producer: "clang LLVM (rustc version 1.46.0-nightly (0cd7ff7dd 2020-07-04))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !5, globals: !30)
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
!37 = distinct !DISubprogram(name: "optimal_unsafe_impl", linkageName: "_ZN14iterator_bench19optimal_unsafe_impl17h92c372e086c51d21E", scope: !39, file: !38, line: 132, type: !40, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !51)
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
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !57, file: !7, size: 128, align: 64, elements: !59, templateParams: !62, identifier: "3813a7d2135445a232f347f27ba719a5")
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
!75 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7377e91aba443670E", scope: !77, file: !76, line: 504, type: !80, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !101, retainedNodes: !98)
!76 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
!77 = !DINamespace(name: "{{impl}}", scope: !78)
!78 = !DINamespace(name: "range", scope: !79)
!79 = !DINamespace(name: "iter", scope: !9)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !97}
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !83, file: !7, size: 128, align: 64, elements: !84, identifier: "c571b0abf319dfa9e93716c0e8f74925")
!83 = !DINamespace(name: "option", scope: !9)
!84 = !{!85}
!85 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 128, align: 64, elements: !86, templateParams: !89, identifier: "c571b0abf319dfa9e93716c0e8f74925_variant_part", discriminator: !95)
!86 = !{!87, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !85, file: !7, baseType: !88, size: 128, align: 64, extraData: i64 0)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !82, file: !7, size: 128, align: 64, elements: !34, templateParams: !89, identifier: "c571b0abf319dfa9e93716c0e8f74925::None")
!89 = !{!90}
!90 = !DITemplateTypeParameter(name: "T", type: !36)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !85, file: !7, baseType: !92, size: 128, align: 64, extraData: i64 1)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !82, file: !7, size: 128, align: 64, elements: !93, templateParams: !89, identifier: "c571b0abf319dfa9e93716c0e8f74925::Some")
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
!107 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17he8f7cea0b71d01acE", scope: !109, file: !108, line: 3022, type: !111, scopeLine: 3022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !113)
!108 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "b610d63e687c1bb61890b7290628f313")
!109 = !DINamespace(name: "{{impl}}", scope: !110)
!110 = !DINamespace(name: "num", scope: !9)
!111 = !DISubroutineType(types: !112)
!112 = !{!36, !36, !36}
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "self", arg: 1, scope: !107, file: !108, line: 3022, type: !36)
!115 = !DILocalVariable(name: "rhs", arg: 2, scope: !107, file: !108, line: 3022, type: !36)
!116 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !121)
!117 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb1f15bbc026329b1E", scope: !77, file: !76, line: 191, type: !111, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !118)
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "start", arg: 1, scope: !117, file: !76, line: 191, type: !36)
!120 = !DILocalVariable(name: "n", arg: 2, scope: !117, file: !76, line: 191, type: !36)
!121 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !104)
!122 = !DILocation(line: 163, column: 18, scope: !123, inlinedAt: !137)
!123 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hc4fd7842b1f3eef8E", scope: !125, file: !124, line: 158, type: !128, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !132)
!124 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "1029a80e51f3b78113c12b9a07d56765")
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
!138 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h22d52918f68e87e7E", scope: !125, file: !124, line: 474, type: !139, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!130, !130, !36}
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "self", arg: 1, scope: !138, file: !124, line: 474, type: !130)
!143 = !DILocalVariable(name: "count", arg: 2, scope: !138, file: !124, line: 474, type: !36)
!144 = distinct !DILocation(line: 2991, column: 20, scope: !145, inlinedAt: !159)
!145 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h0d07783e15e78e5fE", scope: !147, file: !146, line: 2985, type: !149, scopeLine: 2985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !156)
!146 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9fd93c8a41addff7ba15d9096da1df6c")
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
!160 = distinct !DISubprogram(name: "get_unchecked<u16,usize>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h4e1357eed34b6cf8E", scope: !147, file: !146, line: 309, type: !161, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !166, retainedNodes: !163)
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
!175 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h3794fb2b0d32514eE", scope: !177, file: !176, line: 152, type: !179, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !182)
!176 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "238dec856f48b4ef677669c578abb280")
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
!188 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hf4366d4870c7c1c5E", scope: !177, file: !176, line: 525, type: !189, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !181, !36}
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "self", arg: 1, scope: !188, file: !176, line: 525, type: !181)
!193 = !DILocalVariable(name: "count", arg: 2, scope: !188, file: !176, line: 525, type: !36)
!194 = distinct !DILocation(line: 2997, column: 24, scope: !195, inlinedAt: !207)
!195 = distinct !DISubprogram(name: "get_unchecked_mut<u8>", linkageName: "_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6b6e947cea4fb3e2E", scope: !147, file: !146, line: 2995, type: !196, scopeLine: 2995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !204)
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
!208 = distinct !DISubprogram(name: "get_unchecked_mut<u8,usize>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hcbd492ac66f4578fE", scope: !147, file: !146, line: 341, type: !209, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !214, retainedNodes: !211)
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
!220 = distinct !DISubprogram(name: "c_style_fixed_size_impl", linkageName: "_ZN14iterator_bench23c_style_fixed_size_impl17h43d10f6a5cf74296E", scope: !39, file: !38, line: 190, type: !40, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !221)
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
!250 = distinct !DISubprogram(name: "c_style_input_size_fixed_impl", linkageName: "_ZN14iterator_bench29c_style_input_size_fixed_impl17hf735019108e7f115E", scope: !39, file: !38, line: 265, type: !251, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !253)
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
!284 = !{!"misexpect", i64 0, i64 2000, i64 1}
!285 = !DILocation(line: 269, column: 28, scope: !265)
!286 = !DILocation(line: 269, column: 21, scope: !265)
!287 = !DILocation(line: 269, column: 42, scope: !265)
!288 = !DILocation(line: 1137, column: 52, scope: !289, inlinedAt: !299)
!289 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h9b7a3066ee3b85a3E", scope: !291, file: !290, line: 1137, type: !293, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !296)
!290 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
!291 = !DINamespace(name: "{{impl}}", scope: !292)
!292 = !DINamespace(name: "impls", scope: !24)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !35, !35}
!295 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "self", arg: 1, scope: !289, file: !290, line: 1137, type: !35)
!298 = !DILocalVariable(name: "other", arg: 2, scope: !289, file: !290, line: 1137, type: !35)
!299 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !269)
!300 = distinct !DISubprogram(name: "c_style_output_size_fixed_impl", linkageName: "_ZN14iterator_bench30c_style_output_size_fixed_impl17ha15e2855c52b1a36E", scope: !39, file: !38, line: 326, type: !301, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !42, !152}
!303 = !{!304, !305, !306, !308, !310, !312, !314}
!304 = !DILocalVariable(name: "output", arg: 1, scope: !300, file: !38, line: 326, type: !42)
!305 = !DILocalVariable(name: "input", arg: 2, scope: !300, file: !38, line: 326, type: !152)
!306 = !DILocalVariable(name: "iter", scope: !307, file: !38, line: 327, type: !56, align: 8)
!307 = distinct !DILexicalBlock(scope: !300, file: !38, line: 327, column: 17)
!308 = !DILocalVariable(name: "__next", scope: !309, file: !38, line: 327, type: !36, align: 8)
!309 = distinct !DILexicalBlock(scope: !307, file: !38, line: 327, column: 26)
!310 = !DILocalVariable(name: "val", scope: !311, file: !38, line: 327, type: !36, align: 8)
!311 = distinct !DILexicalBlock(scope: !309, file: !38, line: 327, column: 21)
!312 = !DILocalVariable(name: "i", scope: !313, file: !38, line: 327, type: !36, align: 8)
!313 = distinct !DILexicalBlock(scope: !309, file: !38, line: 327, column: 26)
!314 = !DILocalVariable(name: "b", scope: !315, file: !38, line: 328, type: !48, align: 2)
!315 = distinct !DILexicalBlock(scope: !313, file: !38, line: 328, column: 21)
!316 = !DILocation(line: 0, scope: !300)
!317 = !DILocation(line: 0, scope: !307)
!318 = !DILocation(line: 0, scope: !75, inlinedAt: !319)
!319 = distinct !DILocation(line: 327, column: 26, scope: !309)
!320 = !DILocation(line: 1137, column: 52, scope: !289, inlinedAt: !321)
!321 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !319)
!322 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !319)
!323 = !DILocation(line: 332, column: 14, scope: !300)
!324 = !DILocation(line: 0, scope: !117, inlinedAt: !325)
!325 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !319)
!326 = !DILocation(line: 0, scope: !107, inlinedAt: !327)
!327 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !325)
!328 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !327)
!329 = !DILocation(line: 0, scope: !309)
!330 = !DILocation(line: 0, scope: !313)
!331 = !DILocation(line: 328, column: 29, scope: !313)
!332 = !DILocation(line: 0, scope: !315)
!333 = !DILocation(line: 329, column: 28, scope: !315)
!334 = !DILocation(line: 329, column: 21, scope: !315)
!335 = !{!"branch_weights", i32 1, i32 2000}
!336 = !DILocation(line: 330, column: 28, scope: !315)
!337 = !DILocation(line: 330, column: 42, scope: !315)
!338 = !DILocation(line: 330, column: 21, scope: !315)
!339 = distinct !DISubprogram(name: "c_style_unknown_size_impl", linkageName: "_ZN14iterator_bench25c_style_unknown_size_impl17h4592c57a68316743E", scope: !39, file: !38, line: 384, type: !340, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !199, !152}
!342 = !{!343, !344, !345, !347, !349, !351, !353}
!343 = !DILocalVariable(name: "output", arg: 1, scope: !339, file: !38, line: 384, type: !199)
!344 = !DILocalVariable(name: "input", arg: 2, scope: !339, file: !38, line: 384, type: !152)
!345 = !DILocalVariable(name: "iter", scope: !346, file: !38, line: 385, type: !56, align: 8)
!346 = distinct !DILexicalBlock(scope: !339, file: !38, line: 385, column: 17)
!347 = !DILocalVariable(name: "__next", scope: !348, file: !38, line: 385, type: !36, align: 8)
!348 = distinct !DILexicalBlock(scope: !346, file: !38, line: 385, column: 26)
!349 = !DILocalVariable(name: "val", scope: !350, file: !38, line: 385, type: !36, align: 8)
!350 = distinct !DILexicalBlock(scope: !348, file: !38, line: 385, column: 21)
!351 = !DILocalVariable(name: "i", scope: !352, file: !38, line: 385, type: !36, align: 8)
!352 = distinct !DILexicalBlock(scope: !348, file: !38, line: 385, column: 26)
!353 = !DILocalVariable(name: "b", scope: !354, file: !38, line: 386, type: !48, align: 2)
!354 = distinct !DILexicalBlock(scope: !352, file: !38, line: 386, column: 21)
!355 = !DILocation(line: 0, scope: !339)
!356 = !DILocation(line: 0, scope: !346)
!357 = !DILocation(line: 0, scope: !75, inlinedAt: !358)
!358 = distinct !DILocation(line: 385, column: 26, scope: !348)
!359 = !DILocation(line: 1137, column: 52, scope: !289, inlinedAt: !360)
!360 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !358)
!361 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !358)
!362 = !DILocation(line: 390, column: 14, scope: !339)
!363 = !DILocation(line: 0, scope: !117, inlinedAt: !364)
!364 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !358)
!365 = !DILocation(line: 0, scope: !107, inlinedAt: !366)
!366 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !364)
!367 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !366)
!368 = !DILocation(line: 0, scope: !348)
!369 = !DILocation(line: 0, scope: !352)
!370 = !DILocation(line: 386, column: 29, scope: !352)
!371 = !DILocation(line: 0, scope: !354)
!372 = !DILocation(line: 387, column: 28, scope: !354)
!373 = !DILocation(line: 387, column: 21, scope: !354)
!374 = !DILocation(line: 388, column: 28, scope: !354)
!375 = !DILocation(line: 388, column: 21, scope: !354)
!376 = !DILocation(line: 388, column: 42, scope: !354)
!377 = distinct !DISubprogram(name: "c_style_unknown_size_limit_impl", linkageName: "_ZN14iterator_bench31c_style_unknown_size_limit_impl17hd9c80f9c494269f2E", scope: !39, file: !38, line: 445, type: !340, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !378)
!378 = !{!379, !380, !381, !383, !385, !387, !389}
!379 = !DILocalVariable(name: "output", arg: 1, scope: !377, file: !38, line: 445, type: !199)
!380 = !DILocalVariable(name: "input", arg: 2, scope: !377, file: !38, line: 445, type: !152)
!381 = !DILocalVariable(name: "iter", scope: !382, file: !38, line: 447, type: !56, align: 8)
!382 = distinct !DILexicalBlock(scope: !377, file: !38, line: 447, column: 17)
!383 = !DILocalVariable(name: "__next", scope: !384, file: !38, line: 447, type: !36, align: 8)
!384 = distinct !DILexicalBlock(scope: !382, file: !38, line: 447, column: 26)
!385 = !DILocalVariable(name: "val", scope: !386, file: !38, line: 447, type: !36, align: 8)
!386 = distinct !DILexicalBlock(scope: !384, file: !38, line: 447, column: 21)
!387 = !DILocalVariable(name: "i", scope: !388, file: !38, line: 447, type: !36, align: 8)
!388 = distinct !DILexicalBlock(scope: !384, file: !38, line: 447, column: 26)
!389 = !DILocalVariable(name: "b", scope: !390, file: !38, line: 448, type: !48, align: 2)
!390 = distinct !DILexicalBlock(scope: !388, file: !38, line: 448, column: 21)
!391 = !DILocation(line: 0, scope: !377)
!392 = !DILocalVariable(name: "v1", arg: 1, scope: !393, file: !290, line: 994, type: !36)
!393 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3max17h0a80482fbcbf635aE", scope: !24, file: !290, line: 994, type: !111, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !394)
!394 = !{!392, !395}
!395 = !DILocalVariable(name: "v2", arg: 2, scope: !393, file: !290, line: 994, type: !36)
!396 = !DILocation(line: 0, scope: !393, inlinedAt: !397)
!397 = distinct !DILocation(line: 447, column: 29, scope: !377)
!398 = !DILocalVariable(name: "self", arg: 1, scope: !399, file: !290, line: 600, type: !36)
!399 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3Ord3max17hc9a85996583c417cE", scope: !400, file: !290, line: 600, type: !111, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !403, retainedNodes: !401)
!400 = !DINamespace(name: "Ord", scope: !24)
!401 = !{!398, !402}
!402 = !DILocalVariable(name: "other", arg: 2, scope: !399, file: !290, line: 600, type: !36)
!403 = !{!404}
!404 = !DITemplateTypeParameter(name: "Self", type: !36)
!405 = !DILocation(line: 0, scope: !399, inlinedAt: !406)
!406 = distinct !DILocation(line: 995, column: 5, scope: !393, inlinedAt: !397)
!407 = !DILocalVariable(name: "v1", arg: 1, scope: !408, file: !290, line: 1015, type: !36)
!408 = distinct !DISubprogram(name: "max_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6max_by17h7640138a0e67419dE", scope: !24, file: !290, line: 1015, type: !409, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !417, retainedNodes: !414)
!409 = !DISubroutineType(types: !410)
!410 = !{!36, !36, !36, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&usize, &usize) -> core::cmp::Ordering", baseType: !412, align: 8, dwarfAddressSpace: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!23, !35, !35}
!414 = !{!407, !415, !416}
!415 = !DILocalVariable(name: "v2", arg: 2, scope: !408, file: !290, line: 1015, type: !36)
!416 = !DILocalVariable(name: "compare", arg: 3, scope: !408, file: !290, line: 1015, type: !411)
!417 = !{!90, !418}
!418 = !DITemplateTypeParameter(name: "F", type: !411)
!419 = !DILocation(line: 0, scope: !408, inlinedAt: !420)
!420 = distinct !DILocation(line: 604, column: 9, scope: !399, inlinedAt: !406)
!421 = !DILocation(line: 0, scope: !382)
!422 = !DILocation(line: 0, scope: !75, inlinedAt: !423)
!423 = distinct !DILocation(line: 447, column: 26, scope: !384)
!424 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !423)
!425 = !DILocation(line: 452, column: 14, scope: !377)
!426 = !DILocation(line: 0, scope: !117, inlinedAt: !427)
!427 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !423)
!428 = !DILocation(line: 0, scope: !107, inlinedAt: !429)
!429 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !427)
!430 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !429)
!431 = !DILocation(line: 0, scope: !384)
!432 = !DILocation(line: 0, scope: !388)
!433 = !DILocation(line: 448, column: 29, scope: !388)
!434 = !DILocation(line: 0, scope: !390)
!435 = !DILocation(line: 449, column: 28, scope: !390)
!436 = !DILocation(line: 449, column: 21, scope: !390)
!437 = !DILocation(line: 450, column: 28, scope: !390)
!438 = !DILocation(line: 450, column: 21, scope: !390)
!439 = !DILocation(line: 450, column: 42, scope: !390)
!440 = !DILocation(line: 1137, column: 52, scope: !289, inlinedAt: !441)
!441 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !423)
!442 = distinct !DISubprogram(name: "zip_chunks_fixed_size_impl", linkageName: "_ZN14iterator_bench26zip_chunks_fixed_size_impl17hf9a18a34868dfa28E", scope: !39, file: !38, line: 505, type: !40, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !443)
!443 = !{!444, !445, !446, !476, !482, !484, !486}
!444 = !DILocalVariable(name: "output", arg: 1, scope: !442, file: !38, line: 505, type: !42)
!445 = !DILocalVariable(name: "input", arg: 2, scope: !442, file: !38, line: 505, type: !46)
!446 = !DILocalVariable(name: "iter", scope: !447, file: !38, line: 506, type: !448, align: 8)
!447 = distinct !DILexicalBlock(scope: !442, file: !38, line: 506, column: 17)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", scope: !449, file: !7, size: 448, align: 64, elements: !451, templateParams: !473, identifier: "823b919da3b5fc387ba0637a1047751d")
!449 = !DINamespace(name: "zip", scope: !450)
!450 = !DINamespace(name: "adapters", scope: !79)
!451 = !{!452, !466, !471, !472}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !448, file: !7, baseType: !453, size: 128, align: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<u16>", scope: !148, file: !7, size: 128, align: 64, elements: !454, templateParams: !135, identifier: "b720cfdca3fc7143c020d18963a11c57")
!454 = !{!455, !460, !461}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !453, file: !7, baseType: !456, size: 64, align: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u16>", scope: !457, file: !7, size: 64, align: 64, elements: !458, templateParams: !135, identifier: "c25d53e489e35922fbbce695b3c6f01f")
!457 = !DINamespace(name: "non_null", scope: !127)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !456, file: !7, baseType: !130, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !453, file: !7, baseType: !130, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !453, file: !7, baseType: !462, align: 8)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&u16>", scope: !463, file: !7, align: 8, elements: !34, templateParams: !464, identifier: "29154f24a259014e93a7ec740f2216e")
!463 = !DINamespace(name: "marker", scope: !9)
!464 = !{!465}
!465 = !DITemplateTypeParameter(name: "T", type: !151)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !448, file: !7, baseType: !467, size: 192, align: 64, offset: 128)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksMut<u8>", scope: !148, file: !7, size: 192, align: 64, elements: !468, templateParams: !185, identifier: "4d505ae2c10dcad68cf2b04cce53558")
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !467, file: !7, baseType: !199, size: 128, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !467, file: !7, baseType: !36, size: 64, align: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !448, file: !7, baseType: !36, size: 64, align: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !448, file: !7, baseType: !36, size: 64, align: 64, offset: 384)
!473 = !{!474, !475}
!474 = !DITemplateTypeParameter(name: "A", type: !453)
!475 = !DITemplateTypeParameter(name: "B", type: !467)
!476 = !DILocalVariable(name: "__next", scope: !477, file: !38, line: 506, type: !478, align: 8)
!477 = distinct !DILexicalBlock(scope: !447, file: !38, line: 506, column: 33)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&u16, &mut [u8])", file: !7, size: 192, align: 64, elements: !479, templateParams: !34, identifier: "da34b111579020308bcd12aa4b615188")
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !478, file: !7, baseType: !151, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !478, file: !7, baseType: !199, size: 128, align: 64, offset: 64)
!482 = !DILocalVariable(name: "val", scope: !483, file: !38, line: 506, type: !478, align: 8)
!483 = distinct !DILexicalBlock(scope: !477, file: !38, line: 506, column: 21)
!484 = !DILocalVariable(name: "b", scope: !485, file: !38, line: 506, type: !48, align: 2)
!485 = distinct !DILexicalBlock(scope: !477, file: !38, line: 506, column: 33)
!486 = !DILocalVariable(name: "ac", scope: !485, file: !38, line: 506, type: !199, align: 8)
!487 = !DILocation(line: 0, scope: !442)
!488 = !DILocation(line: 0, scope: !447)
!489 = !DILocalVariable(name: "self", arg: 1, scope: !490, file: !491, line: 46, type: !507)
!490 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9055d1952d7bf15E", scope: !492, file: !491, line: 46, type: !493, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !473, retainedNodes: !508)
!491 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/iter/adapters/zip.rs", directory: "", checksumkind: CSK_MD5, checksum: "f3eb2f902ea9ef422ff1bfca2897667a")
!492 = !DINamespace(name: "{{impl}}", scope: !449)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !507}
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(&u16, &mut [u8])>", scope: !83, file: !7, size: 192, align: 64, elements: !496, identifier: "7d4543ef6c050b68dcc0a29662b1f1")
!496 = !{!497}
!497 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 192, align: 64, elements: !498, templateParams: !501, identifier: "7d4543ef6c050b68dcc0a29662b1f1_variant_part", discriminator: !95)
!498 = !{!499, !503}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !497, file: !7, baseType: !500, size: 192, align: 64, extraData: i64 0)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !495, file: !7, size: 192, align: 64, elements: !34, templateParams: !501, identifier: "7d4543ef6c050b68dcc0a29662b1f1::None")
!501 = !{!502}
!502 = !DITemplateTypeParameter(name: "T", type: !478)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !497, file: !7, baseType: !504, size: 192, align: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !495, file: !7, size: 192, align: 64, elements: !505, templateParams: !501, identifier: "7d4543ef6c050b68dcc0a29662b1f1::Some")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !504, file: !7, baseType: !478, size: 192, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", baseType: !448, size: 64, align: 64, dwarfAddressSpace: 0)
!508 = !{!489}
!509 = !DILocation(line: 0, scope: !490, inlinedAt: !510)
!510 = distinct !DILocation(line: 506, column: 33, scope: !477)
!511 = !DILocalVariable(name: "self", arg: 1, scope: !512, file: !491, line: 173, type: !507)
!512 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4fb551669443af35E", scope: !492, file: !491, line: 173, type: !493, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !473, retainedNodes: !513)
!513 = !{!511, !514}
!514 = !DILocalVariable(name: "i", scope: !515, file: !491, line: 175, type: !36, align: 8)
!515 = distinct !DILexicalBlock(scope: !512, file: !491, line: 175, column: 13)
!516 = !DILocation(line: 0, scope: !512, inlinedAt: !517)
!517 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !510)
!518 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !517)
!519 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !517)
!520 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !534)
!521 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN98_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17h7630c908f7fb95f6E", scope: !147, file: !146, line: 5028, type: !522, scopeLine: 5028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !525)
!522 = !DISubroutineType(types: !523)
!523 = !{!199, !524, !36}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksMut<u8>", baseType: !467, size: 64, align: 64, dwarfAddressSpace: 0)
!525 = !{!526, !527, !528, !530, !532}
!526 = !DILocalVariable(name: "self", arg: 1, scope: !521, file: !146, line: 5028, type: !524)
!527 = !DILocalVariable(name: "i", arg: 2, scope: !521, file: !146, line: 5028, type: !36)
!528 = !DILocalVariable(name: "start", scope: !529, file: !146, line: 5029, type: !36, align: 8)
!529 = distinct !DILexicalBlock(scope: !521, file: !146, line: 5029, column: 9)
!530 = !DILocalVariable(name: "end", scope: !531, file: !146, line: 5030, type: !36, align: 8)
!531 = distinct !DILexicalBlock(scope: !529, file: !146, line: 5030, column: 9)
!532 = !DILocalVariable(name: "end", scope: !533, file: !146, line: 5032, type: !36, align: 8)
!533 = distinct !DILexicalBlock(scope: !529, file: !146, line: 5032, column: 13)
!534 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !517)
!535 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !543)
!536 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hcf12ea7cb1a8253cE", scope: !177, file: !176, line: 152, type: !537, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !540)
!537 = !DISubroutineType(types: !538)
!538 = !{!539, !539, !131}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!540 = !{!541, !542}
!541 = !DILocalVariable(name: "self", arg: 1, scope: !536, file: !176, line: 152, type: !539)
!542 = !DILocalVariable(name: "count", arg: 2, scope: !536, file: !176, line: 152, type: !131)
!543 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !550)
!544 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h4f87fd1e99b07231E", scope: !177, file: !176, line: 525, type: !545, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!539, !539, !36}
!547 = !{!548, !549}
!548 = !DILocalVariable(name: "self", arg: 1, scope: !544, file: !176, line: 525, type: !539)
!549 = !DILocalVariable(name: "count", arg: 2, scope: !544, file: !176, line: 525, type: !36)
!550 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !558)
!551 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN93_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17h1040c04e8b206f89E", scope: !147, file: !146, line: 6297, type: !552, scopeLine: 6297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !555)
!552 = !DISubroutineType(types: !553)
!553 = !{!151, !554, !36}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::Iter<u16>", baseType: !453, size: 64, align: 64, dwarfAddressSpace: 0)
!555 = !{!556, !557}
!556 = !DILocalVariable(name: "self", arg: 1, scope: !551, file: !146, line: 6297, type: !554)
!557 = !DILocalVariable(name: "i", arg: 2, scope: !551, file: !146, line: 6297, type: !36)
!558 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !517)
!559 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !560)
!560 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !561)
!561 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !534)
!562 = !DILocation(line: 506, column: 23, scope: !477)
!563 = !DILocation(line: 509, column: 21, scope: !485)
!564 = !DILocation(line: 510, column: 30, scope: !485)
!565 = !DILocation(line: 510, column: 21, scope: !485)
!566 = distinct !{!566, !218}
!567 = !DILocation(line: 512, column: 14, scope: !442)
!568 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_impl", linkageName: "_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hc5909999cfcc9c5fE", scope: !39, file: !38, line: 565, type: !40, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !569)
!569 = !{!570, !571, !572, !580, !582, !584, !586}
!570 = !DILocalVariable(name: "output", arg: 1, scope: !568, file: !38, line: 565, type: !42)
!571 = !DILocalVariable(name: "input", arg: 2, scope: !568, file: !38, line: 565, type: !46)
!572 = !DILocalVariable(name: "iter", scope: !573, file: !38, line: 566, type: !574, align: 8)
!573 = distinct !DILexicalBlock(scope: !568, file: !38, line: 566, column: 17)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", scope: !450, file: !7, size: 512, align: 64, elements: !575, templateParams: !578, identifier: "826a2b1eb37c8511ba1fa522e0cfaef9")
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !574, file: !7, baseType: !448, size: 448, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !574, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!578 = !{!579}
!579 = !DITemplateTypeParameter(name: "I", type: !448)
!580 = !DILocalVariable(name: "__next", scope: !581, file: !38, line: 566, type: !478, align: 8)
!581 = distinct !DILexicalBlock(scope: !573, file: !38, line: 566, column: 33)
!582 = !DILocalVariable(name: "val", scope: !583, file: !38, line: 566, type: !478, align: 8)
!583 = distinct !DILexicalBlock(scope: !581, file: !38, line: 566, column: 21)
!584 = !DILocalVariable(name: "b", scope: !585, file: !38, line: 566, type: !48, align: 2)
!585 = distinct !DILexicalBlock(scope: !581, file: !38, line: 566, column: 33)
!586 = !DILocalVariable(name: "ac", scope: !585, file: !38, line: 566, type: !199, align: 8)
!587 = !DILocation(line: 0, scope: !568)
!588 = !DILocation(line: 0, scope: !573)
!589 = !DILocalVariable(name: "self", arg: 1, scope: !590, file: !591, line: 2195, type: !595)
!590 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h780b64b506a02a7eE", scope: !592, file: !591, line: 2195, type: !593, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !578, retainedNodes: !596)
!591 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/iter/adapters/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea0d10848170548968a5df5bdc9565ca")
!592 = !DINamespace(name: "{{impl}}", scope: !450)
!593 = !DISubroutineType(types: !594)
!594 = !{!495, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", baseType: !574, size: 64, align: 64, dwarfAddressSpace: 0)
!596 = !{!589}
!597 = !DILocation(line: 0, scope: !590, inlinedAt: !598)
!598 = distinct !DILocation(line: 566, column: 33, scope: !581)
!599 = !DILocation(line: 2196, column: 9, scope: !590, inlinedAt: !598)
!600 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !601)
!601 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !602)
!602 = distinct !DILocation(line: 2198, column: 13, scope: !590, inlinedAt: !598)
!603 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !604)
!604 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !601)
!605 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !606)
!606 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !607)
!607 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !608)
!608 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !601)
!609 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !610)
!610 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !611)
!611 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !604)
!612 = !DILocation(line: 566, column: 23, scope: !581)
!613 = !DILocation(line: 569, column: 21, scope: !585)
!614 = !DILocation(line: 570, column: 30, scope: !585)
!615 = !DILocation(line: 570, column: 21, scope: !585)
!616 = distinct !{!616, !218}
!617 = !DILocation(line: 572, column: 14, scope: !568)
!618 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_iter_impl", linkageName: "_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17h9bf15245cb43f941E", scope: !39, file: !38, line: 628, type: !40, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !619)
!619 = !{!620, !621, !622, !624, !626, !628, !630, !631, !633, !646, !648, !650}
!620 = !DILocalVariable(name: "output", arg: 1, scope: !618, file: !38, line: 628, type: !42)
!621 = !DILocalVariable(name: "input", arg: 2, scope: !618, file: !38, line: 628, type: !46)
!622 = !DILocalVariable(name: "iter", scope: !623, file: !38, line: 629, type: !574, align: 8)
!623 = distinct !DILexicalBlock(scope: !618, file: !38, line: 629, column: 17)
!624 = !DILocalVariable(name: "__next", scope: !625, file: !38, line: 629, type: !478, align: 8)
!625 = distinct !DILexicalBlock(scope: !623, file: !38, line: 629, column: 33)
!626 = !DILocalVariable(name: "val", scope: !627, file: !38, line: 629, type: !478, align: 8)
!627 = distinct !DILexicalBlock(scope: !625, file: !38, line: 629, column: 21)
!628 = !DILocalVariable(name: "b", scope: !629, file: !38, line: 629, type: !48, align: 2)
!629 = distinct !DILexicalBlock(scope: !625, file: !38, line: 629, column: 33)
!630 = !DILocalVariable(name: "ac", scope: !629, file: !38, line: 629, type: !199, align: 8)
!631 = !DILocalVariable(name: "val", scope: !632, file: !38, line: 630, type: !48, align: 2)
!632 = distinct !DILexicalBlock(scope: !629, file: !38, line: 630, column: 21)
!633 = !DILocalVariable(name: "iter", scope: !634, file: !38, line: 636, type: !635, align: 8)
!634 = distinct !DILexicalBlock(scope: !632, file: !38, line: 636, column: 21)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<u8>", scope: !148, file: !7, size: 128, align: 64, elements: !636, templateParams: !185, identifier: "872bc8f93b3b05d2c3ef52a109148d82")
!636 = !{!637, !641, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !635, file: !7, baseType: !638, size: 64, align: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !457, file: !7, size: 64, align: 64, elements: !639, templateParams: !185, identifier: "c14b1ad1046f517476a4a0542cf59f91")
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !638, file: !7, baseType: !202, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !635, file: !7, baseType: !181, size: 64, align: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !635, file: !7, baseType: !643, align: 8)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut u8>", scope: !463, file: !7, align: 8, elements: !34, templateParams: !644, identifier: "4012bfb8fa47fb5245cbe9e554ecedb1")
!644 = !{!645}
!645 = !DITemplateTypeParameter(name: "T", type: !198)
!646 = !DILocalVariable(name: "__next", scope: !647, file: !38, line: 636, type: !198, align: 8)
!647 = distinct !DILexicalBlock(scope: !634, file: !38, line: 636, column: 33)
!648 = !DILocalVariable(name: "val", scope: !649, file: !38, line: 636, type: !198, align: 8)
!649 = distinct !DILexicalBlock(scope: !647, file: !38, line: 636, column: 25)
!650 = !DILocalVariable(name: "byte", scope: !651, file: !38, line: 636, type: !198, align: 8)
!651 = distinct !DILexicalBlock(scope: !647, file: !38, line: 636, column: 33)
!652 = !DILocation(line: 0, scope: !618)
!653 = !DILocation(line: 0, scope: !623)
!654 = !DILocation(line: 0, scope: !590, inlinedAt: !655)
!655 = distinct !DILocation(line: 629, column: 33, scope: !625)
!656 = !DILocation(line: 2196, column: 9, scope: !590, inlinedAt: !655)
!657 = !DILocation(line: 0, scope: !490, inlinedAt: !658)
!658 = distinct !DILocation(line: 2198, column: 13, scope: !590, inlinedAt: !655)
!659 = !DILocation(line: 0, scope: !512, inlinedAt: !660)
!660 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !658)
!661 = !DILocation(line: 0, scope: !515, inlinedAt: !660)
!662 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !660)
!663 = !DILocation(line: 0, scope: !551, inlinedAt: !664)
!664 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !660)
!665 = !DILocation(line: 0, scope: !544, inlinedAt: !666)
!666 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !664)
!667 = !DILocation(line: 0, scope: !536, inlinedAt: !668)
!668 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !666)
!669 = !DILocation(line: 0, scope: !521, inlinedAt: !670)
!670 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !660)
!671 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !670)
!672 = !DILocation(line: 0, scope: !529, inlinedAt: !670)
!673 = !DILocation(line: 0, scope: !188, inlinedAt: !674)
!674 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !670)
!675 = !DILocation(line: 0, scope: !175, inlinedAt: !676)
!676 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !674)
!677 = !DILocation(line: 0, scope: !531, inlinedAt: !670)
!678 = !DILocation(line: 0, scope: !625)
!679 = !DILocation(line: 0, scope: !629)
!680 = !DILocalVariable(name: "self", arg: 1, scope: !681, file: !146, line: 635, type: !199)
!681 = distinct !DISubprogram(name: "iter_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17he9dff206f74d7b22E", scope: !147, file: !146, line: 635, type: !682, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{!635, !199}
!684 = !{!680, !685, !687}
!685 = !DILocalVariable(name: "ptr", scope: !686, file: !146, line: 637, type: !181, align: 8)
!686 = distinct !DILexicalBlock(scope: !681, file: !146, line: 637, column: 13)
!687 = !DILocalVariable(name: "end", scope: !688, file: !146, line: 640, type: !181, align: 8)
!688 = distinct !DILexicalBlock(scope: !686, file: !146, line: 640, column: 13)
!689 = !DILocation(line: 0, scope: !681, inlinedAt: !690)
!690 = distinct !DILocation(line: 636, column: 33, scope: !632)
!691 = !DILocation(line: 0, scope: !686, inlinedAt: !690)
!692 = !DILocation(line: 0, scope: !188, inlinedAt: !693)
!693 = distinct !DILocation(line: 643, column: 17, scope: !686, inlinedAt: !690)
!694 = !DILocation(line: 0, scope: !175, inlinedAt: !695)
!695 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !693)
!696 = !DILocation(line: 0, scope: !634)
!697 = !DILocation(line: 0, scope: !632)
!698 = !DILocalVariable(name: "self", arg: 1, scope: !699, file: !146, line: 3443, type: !712)
!699 = distinct !DISubprogram(name: "next<u8>", linkageName: "_ZN88_$LT$core..slice..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd288b24bd0c7dbf6E", scope: !147, file: !146, line: 3443, type: !700, scopeLine: 3443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !713)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !712}
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut u8>", scope: !83, file: !7, size: 64, align: 64, elements: !703, identifier: "c2020776a338eecb5ad211a49d7a66b8")
!703 = !{!704}
!704 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 64, align: 64, elements: !705, templateParams: !644, identifier: "c2020776a338eecb5ad211a49d7a66b8_variant_part", discriminator: !95)
!705 = !{!706, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !704, file: !7, baseType: !707, size: 64, align: 64, extraData: i64 0)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !702, file: !7, size: 64, align: 64, elements: !34, templateParams: !644, identifier: "c2020776a338eecb5ad211a49d7a66b8::None")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !704, file: !7, baseType: !709, size: 64, align: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !702, file: !7, size: 64, align: 64, elements: !710, templateParams: !644, identifier: "c2020776a338eecb5ad211a49d7a66b8::Some")
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !709, file: !7, baseType: !198, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::IterMut<u8>", baseType: !635, size: 64, align: 64, dwarfAddressSpace: 0)
!713 = !{!698}
!714 = !DILocation(line: 0, scope: !699, inlinedAt: !715)
!715 = distinct !DILocation(line: 636, column: 33, scope: !647)
!716 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !668)
!717 = !DILocation(line: 629, column: 23, scope: !625)
!718 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !676)
!719 = !DILocalVariable(name: "self", arg: 1, scope: !720, file: !146, line: 3394, type: !712)
!720 = distinct !DISubprogram(name: "post_inc_start<u8>", linkageName: "_ZN4core5slice16IterMut$LT$T$GT$14post_inc_start17h9800810db92e4c30E", scope: !635, file: !146, line: 3394, type: !721, scopeLine: 3394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !723)
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
!733 = !DILocation(line: 0, scope: !647)
!734 = !DILocation(line: 0, scope: !651)
!735 = !DILocation(line: 637, column: 25, scope: !651)
!736 = !DILocation(line: 638, column: 25, scope: !651)
!737 = !DILocation(line: 2197, column: 13, scope: !590, inlinedAt: !655)
!738 = !DILocation(line: 2196, column: 12, scope: !590, inlinedAt: !655)
!739 = !DILocation(line: 641, column: 14, scope: !618)
!740 = distinct !DISubprogram(name: "zip_chunks_output_size_fixed_impl", linkageName: "_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17hfce1a1cc47296d7fE", scope: !39, file: !38, line: 696, type: !301, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !741)
!741 = !{!742, !743, !744, !746, !748, !750, !752}
!742 = !DILocalVariable(name: "output", arg: 1, scope: !740, file: !38, line: 696, type: !42)
!743 = !DILocalVariable(name: "input", arg: 2, scope: !740, file: !38, line: 696, type: !152)
!744 = !DILocalVariable(name: "iter", scope: !745, file: !38, line: 697, type: !448, align: 8)
!745 = distinct !DILexicalBlock(scope: !740, file: !38, line: 697, column: 17)
!746 = !DILocalVariable(name: "__next", scope: !747, file: !38, line: 697, type: !478, align: 8)
!747 = distinct !DILexicalBlock(scope: !745, file: !38, line: 697, column: 33)
!748 = !DILocalVariable(name: "val", scope: !749, file: !38, line: 697, type: !478, align: 8)
!749 = distinct !DILexicalBlock(scope: !747, file: !38, line: 697, column: 21)
!750 = !DILocalVariable(name: "b", scope: !751, file: !38, line: 697, type: !48, align: 2)
!751 = distinct !DILexicalBlock(scope: !747, file: !38, line: 697, column: 33)
!752 = !DILocalVariable(name: "ac", scope: !751, file: !38, line: 697, type: !199, align: 8)
!753 = !DILocation(line: 0, scope: !740)
!754 = !DILocalVariable(name: "other", arg: 2, scope: !755, file: !756, line: 544, type: !467)
!755 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17hf5b6db7b4d29e5bbE", scope: !757, file: !756, line: 544, type: !760, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !764, retainedNodes: !762)
!756 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/iter/traits/iterator.rs", directory: "", checksumkind: CSK_MD5, checksum: "0a260c106269e90d9859c7ba8686bda0")
!757 = !DINamespace(name: "Iterator", scope: !758)
!758 = !DINamespace(name: "iterator", scope: !759)
!759 = !DINamespace(name: "traits", scope: !79)
!760 = !DISubroutineType(types: !761)
!761 = !{!448, !453, !467}
!762 = !{!763, !754}
!763 = !DILocalVariable(name: "self", arg: 1, scope: !755, file: !756, line: 544, type: !453)
!764 = !{!765, !766}
!765 = !DITemplateTypeParameter(name: "Self", type: !453)
!766 = !DITemplateTypeParameter(name: "U", type: !467)
!767 = !DILocation(line: 0, scope: !755, inlinedAt: !768)
!768 = distinct !DILocation(line: 697, column: 33, scope: !740)
!769 = !DILocalVariable(name: "b", arg: 2, scope: !770, file: !491, line: 23, type: !467)
!770 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17hfc6154a4e9601477E", scope: !448, file: !491, line: 23, type: !760, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !473, retainedNodes: !771)
!771 = !{!772, !769}
!772 = !DILocalVariable(name: "a", arg: 1, scope: !770, file: !491, line: 23, type: !453)
!773 = !DILocation(line: 0, scope: !770, inlinedAt: !774)
!774 = distinct !DILocation(line: 549, column: 9, scope: !755, inlinedAt: !768)
!775 = !DILocalVariable(name: "b", arg: 2, scope: !776, file: !491, line: 167, type: !467)
!776 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17he07e0ad84d774326E", scope: !492, file: !491, line: 167, type: !760, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !473, retainedNodes: !777)
!777 = !{!778, !775, !779}
!778 = !DILocalVariable(name: "a", arg: 1, scope: !776, file: !491, line: 167, type: !453)
!779 = !DILocalVariable(name: "len", scope: !780, file: !491, line: 168, type: !36, align: 8)
!780 = distinct !DILexicalBlock(scope: !776, file: !491, line: 168, column: 9)
!781 = !DILocation(line: 0, scope: !776, inlinedAt: !782)
!782 = distinct !DILocation(line: 24, column: 9, scope: !770, inlinedAt: !774)
!783 = !DILocalVariable(name: "v1", arg: 1, scope: !784, file: !290, line: 928, type: !36)
!784 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3min17h35eefddb5ed1cad0E", scope: !24, file: !290, line: 928, type: !111, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !785)
!785 = !{!783, !786}
!786 = !DILocalVariable(name: "v2", arg: 2, scope: !784, file: !290, line: 928, type: !36)
!787 = !DILocation(line: 0, scope: !784, inlinedAt: !788)
!788 = distinct !DILocation(line: 168, column: 19, scope: !776, inlinedAt: !782)
!789 = !DILocalVariable(name: "self", arg: 1, scope: !790, file: !290, line: 620, type: !36)
!790 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3Ord3min17had78a13564467f9eE", scope: !400, file: !290, line: 620, type: !111, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !403, retainedNodes: !791)
!791 = !{!789, !792}
!792 = !DILocalVariable(name: "other", arg: 2, scope: !790, file: !290, line: 620, type: !36)
!793 = !DILocation(line: 0, scope: !790, inlinedAt: !794)
!794 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !788)
!795 = !DILocalVariable(name: "v1", arg: 1, scope: !796, file: !290, line: 949, type: !36)
!796 = distinct !DISubprogram(name: "min_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6min_by17h514497cc77916af9E", scope: !24, file: !290, line: 949, type: !409, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !417, retainedNodes: !797)
!797 = !{!795, !798, !799}
!798 = !DILocalVariable(name: "v2", arg: 2, scope: !796, file: !290, line: 949, type: !36)
!799 = !DILocalVariable(name: "compare", arg: 3, scope: !796, file: !290, line: 949, type: !411)
!800 = !DILocation(line: 0, scope: !796, inlinedAt: !801)
!801 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !794)
!802 = !DILocation(line: 0, scope: !745)
!803 = !DILocation(line: 0, scope: !490, inlinedAt: !804)
!804 = distinct !DILocation(line: 697, column: 33, scope: !747)
!805 = !DILocation(line: 0, scope: !512, inlinedAt: !806)
!806 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !804)
!807 = !DILocation(line: 174, column: 12, scope: !512, inlinedAt: !806)
!808 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !806)
!809 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !806)
!810 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !811)
!811 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !806)
!812 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !813)
!813 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !814)
!814 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !815)
!815 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !806)
!816 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !817)
!817 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !818)
!818 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !811)
!819 = !DILocation(line: 697, column: 23, scope: !747)
!820 = !DILocation(line: 700, column: 21, scope: !751)
!821 = !DILocation(line: 701, column: 30, scope: !751)
!822 = !DILocation(line: 701, column: 21, scope: !751)
!823 = distinct !{!823, !218}
!824 = !DILocation(line: 703, column: 14, scope: !740)
!825 = !DILocation(line: 0, scope: !515, inlinedAt: !806)
!826 = !DILocation(line: 0, scope: !551, inlinedAt: !815)
!827 = !DILocation(line: 0, scope: !544, inlinedAt: !814)
!828 = !DILocation(line: 0, scope: !536, inlinedAt: !813)
!829 = !DILocation(line: 0, scope: !521, inlinedAt: !811)
!830 = !DILocation(line: 0, scope: !529, inlinedAt: !811)
!831 = !DILocation(line: 0, scope: !531, inlinedAt: !811)
!832 = !DILocation(line: 0, scope: !188, inlinedAt: !818)
!833 = !DILocation(line: 0, scope: !175, inlinedAt: !817)
!834 = !DILocation(line: 0, scope: !747)
!835 = !DILocation(line: 0, scope: !751)
!836 = distinct !{!836, !837, !218}
!837 = !{!"llvm.loop.unroll.runtime.disable"}
!838 = distinct !DISubprogram(name: "zip_chunks_input_size_fixed_impl", linkageName: "_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17h0ba47d61fa5df0c5E", scope: !39, file: !38, line: 758, type: !251, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !839)
!839 = !{!840, !841, !842, !844, !846, !848, !850}
!840 = !DILocalVariable(name: "output", arg: 1, scope: !838, file: !38, line: 758, type: !199)
!841 = !DILocalVariable(name: "input", arg: 2, scope: !838, file: !38, line: 758, type: !46)
!842 = !DILocalVariable(name: "iter", scope: !843, file: !38, line: 759, type: !448, align: 8)
!843 = distinct !DILexicalBlock(scope: !838, file: !38, line: 759, column: 17)
!844 = !DILocalVariable(name: "__next", scope: !845, file: !38, line: 759, type: !478, align: 8)
!845 = distinct !DILexicalBlock(scope: !843, file: !38, line: 759, column: 33)
!846 = !DILocalVariable(name: "val", scope: !847, file: !38, line: 759, type: !478, align: 8)
!847 = distinct !DILexicalBlock(scope: !845, file: !38, line: 759, column: 21)
!848 = !DILocalVariable(name: "b", scope: !849, file: !38, line: 759, type: !48, align: 2)
!849 = distinct !DILexicalBlock(scope: !845, file: !38, line: 759, column: 33)
!850 = !DILocalVariable(name: "ac", scope: !849, file: !38, line: 759, type: !199, align: 8)
!851 = !DILocation(line: 0, scope: !838)
!852 = !DILocation(line: 0, scope: !755, inlinedAt: !853)
!853 = distinct !DILocation(line: 759, column: 33, scope: !838)
!854 = !DILocation(line: 0, scope: !770, inlinedAt: !855)
!855 = distinct !DILocation(line: 549, column: 9, scope: !755, inlinedAt: !853)
!856 = !DILocation(line: 0, scope: !776, inlinedAt: !857)
!857 = distinct !DILocation(line: 24, column: 9, scope: !770, inlinedAt: !855)
!858 = !DILocalVariable(name: "self", arg: 1, scope: !859, file: !146, line: 87, type: !862)
!859 = distinct !DISubprogram(name: "is_empty<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd22d1acc6baa3baaE", scope: !147, file: !146, line: 87, type: !860, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !866)
!860 = !DISubroutineType(types: !861)
!861 = !{!295, !862}
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !7, size: 128, align: 64, elements: !863, templateParams: !34, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !862, file: !7, baseType: !202, size: 64, align: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !862, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!866 = !{!858}
!867 = !DILocation(line: 0, scope: !859, inlinedAt: !868)
!868 = distinct !DILocation(line: 4935, column: 12, scope: !869, inlinedAt: !885)
!869 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN90_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7913c2b1ca04bad8E", scope: !147, file: !146, line: 4934, type: !870, scopeLine: 4934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !877)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !876}
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !7, size: 192, align: 64, elements: !873, templateParams: !34, identifier: "694daabb23d9965f86f6c6d58cd12123")
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !872, file: !7, baseType: !36, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !872, file: !7, baseType: !82, size: 128, align: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksMut<u8>", baseType: !467, size: 64, align: 64, dwarfAddressSpace: 0)
!877 = !{!878, !879, !881, !883}
!878 = !DILocalVariable(name: "self", arg: 1, scope: !869, file: !146, line: 4934, type: !876)
!879 = !DILocalVariable(name: "n", scope: !880, file: !146, line: 4938, type: !36, align: 8)
!880 = distinct !DILexicalBlock(scope: !869, file: !146, line: 4938, column: 13)
!881 = !DILocalVariable(name: "rem", scope: !882, file: !146, line: 4939, type: !36, align: 8)
!882 = distinct !DILexicalBlock(scope: !880, file: !146, line: 4939, column: 13)
!883 = !DILocalVariable(name: "n", scope: !884, file: !146, line: 4940, type: !36, align: 8)
!884 = distinct !DILexicalBlock(scope: !882, file: !146, line: 4940, column: 13)
!885 = distinct !DILocation(line: 100, column: 30, scope: !886, inlinedAt: !908)
!886 = distinct !DISubprogram(name: "len<core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h85ce69a79c782839E", scope: !888, file: !887, line: 99, type: !890, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !906, retainedNodes: !892)
!887 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/iter/traits/exact_size.rs", directory: "", checksumkind: CSK_MD5, checksum: "c5a2a65a6cb2198d813b7c8497205511")
!888 = !DINamespace(name: "ExactSizeIterator", scope: !889)
!889 = !DINamespace(name: "exact_size", scope: !759)
!890 = !DISubroutineType(types: !891)
!891 = !{!36, !876}
!892 = !{!893, !894, !896, !897, !901, !902, !905}
!893 = !DILocalVariable(name: "self", arg: 1, scope: !886, file: !887, line: 99, type: !876)
!894 = !DILocalVariable(name: "lower", scope: !895, file: !887, line: 100, type: !36, align: 8)
!895 = distinct !DILexicalBlock(scope: !886, file: !887, line: 100, column: 9)
!896 = !DILocalVariable(name: "upper", scope: !895, file: !887, line: 100, type: !82, align: 8)
!897 = !DILocalVariable(name: "left_val", scope: !898, file: !899, line: 45, type: !900, align: 8)
!898 = distinct !DILexicalBlock(scope: !895, file: !899, line: 45, column: 13)
!899 = !DIFile(filename: "/rustc/0cd7ff7ddfb75a38dca81ad3e76b1e984129e939/src/libcore/macros/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9d09c4b6426f63c56ee3af0375dc8f94")
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<usize>", baseType: !82, size: 64, align: 64, dwarfAddressSpace: 0)
!901 = !DILocalVariable(name: "right_val", scope: !898, file: !899, line: 45, type: !900, align: 8)
!902 = !DILocalVariable(name: "arg0", scope: !903, file: !899, line: 52, type: !904, align: 8)
!903 = distinct !DILexicalBlock(scope: !898, file: !899, line: 16, column: 38)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&core::option::Option<usize>", baseType: !900, size: 64, align: 64, dwarfAddressSpace: 0)
!905 = !DILocalVariable(name: "arg1", scope: !903, file: !899, line: 52, type: !904, align: 8)
!906 = !{!907}
!907 = !DITemplateTypeParameter(name: "Self", type: !467)
!908 = distinct !DILocation(line: 168, column: 37, scope: !776, inlinedAt: !857)
!909 = !DILocation(line: 88, column: 9, scope: !859, inlinedAt: !868)
!910 = !DILocation(line: 4935, column: 9, scope: !869, inlinedAt: !885)
!911 = !DILocation(line: 0, scope: !784, inlinedAt: !912)
!912 = distinct !DILocation(line: 168, column: 19, scope: !776, inlinedAt: !857)
!913 = !DILocation(line: 0, scope: !790, inlinedAt: !914)
!914 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !912)
!915 = !DILocation(line: 0, scope: !796, inlinedAt: !916)
!916 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !914)
!917 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !916)
!918 = !DILocation(line: 0, scope: !843)
!919 = !DILocation(line: 0, scope: !490, inlinedAt: !920)
!920 = distinct !DILocation(line: 759, column: 33, scope: !845)
!921 = !DILocation(line: 0, scope: !512, inlinedAt: !922)
!922 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !920)
!923 = !DILocation(line: 174, column: 12, scope: !512, inlinedAt: !922)
!924 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !922)
!925 = !DILocation(line: 0, scope: !515, inlinedAt: !922)
!926 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !922)
!927 = !DILocation(line: 0, scope: !551, inlinedAt: !928)
!928 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !922)
!929 = !DILocation(line: 0, scope: !544, inlinedAt: !930)
!930 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !928)
!931 = !DILocation(line: 0, scope: !536, inlinedAt: !932)
!932 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !930)
!933 = !DILocation(line: 0, scope: !521, inlinedAt: !934)
!934 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !922)
!935 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !934)
!936 = !DILocation(line: 0, scope: !529, inlinedAt: !934)
!937 = !DILocation(line: 5031, column: 13, scope: !529, inlinedAt: !934)
!938 = !DILocation(line: 0, scope: !531, inlinedAt: !934)
!939 = !DILocation(line: 0, scope: !188, inlinedAt: !940)
!940 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !934)
!941 = !DILocation(line: 0, scope: !175, inlinedAt: !942)
!942 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !940)
!943 = !DILocation(line: 5035, column: 69, scope: !531, inlinedAt: !934)
!944 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !932)
!945 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !942)
!946 = !DILocation(line: 0, scope: !845)
!947 = !DILocation(line: 0, scope: !849)
!948 = !DILocation(line: 759, column: 23, scope: !845)
!949 = !DILocation(line: 762, column: 21, scope: !849)
!950 = !DILocation(line: 765, column: 14, scope: !838)
!951 = !DILocation(line: 763, column: 21, scope: !849)
!952 = !DILocation(line: 763, column: 30, scope: !849)
!953 = distinct !DISubprogram(name: "zip_chunks_unknown_size_impl", linkageName: "_ZN14iterator_bench28zip_chunks_unknown_size_impl17hf6884aebd9296e1eE", scope: !39, file: !38, line: 816, type: !340, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !954)
!954 = !{!955, !956, !957, !959, !961, !963, !965}
!955 = !DILocalVariable(name: "output", arg: 1, scope: !953, file: !38, line: 816, type: !199)
!956 = !DILocalVariable(name: "input", arg: 2, scope: !953, file: !38, line: 816, type: !152)
!957 = !DILocalVariable(name: "iter", scope: !958, file: !38, line: 817, type: !448, align: 8)
!958 = distinct !DILexicalBlock(scope: !953, file: !38, line: 817, column: 17)
!959 = !DILocalVariable(name: "__next", scope: !960, file: !38, line: 817, type: !478, align: 8)
!960 = distinct !DILexicalBlock(scope: !958, file: !38, line: 817, column: 32)
!961 = !DILocalVariable(name: "val", scope: !962, file: !38, line: 817, type: !478, align: 8)
!962 = distinct !DILexicalBlock(scope: !960, file: !38, line: 817, column: 21)
!963 = !DILocalVariable(name: "b", scope: !964, file: !38, line: 817, type: !151, align: 8)
!964 = distinct !DILexicalBlock(scope: !960, file: !38, line: 817, column: 32)
!965 = !DILocalVariable(name: "ac", scope: !964, file: !38, line: 817, type: !199, align: 8)
!966 = !DILocation(line: 0, scope: !953)
!967 = !DILocation(line: 0, scope: !755, inlinedAt: !968)
!968 = distinct !DILocation(line: 817, column: 32, scope: !953)
!969 = !DILocation(line: 0, scope: !770, inlinedAt: !970)
!970 = distinct !DILocation(line: 549, column: 9, scope: !755, inlinedAt: !968)
!971 = !DILocation(line: 0, scope: !776, inlinedAt: !972)
!972 = distinct !DILocation(line: 24, column: 9, scope: !770, inlinedAt: !970)
!973 = !DILocation(line: 0, scope: !859, inlinedAt: !974)
!974 = distinct !DILocation(line: 4935, column: 12, scope: !869, inlinedAt: !975)
!975 = distinct !DILocation(line: 100, column: 30, scope: !886, inlinedAt: !976)
!976 = distinct !DILocation(line: 168, column: 37, scope: !776, inlinedAt: !972)
!977 = !DILocation(line: 88, column: 9, scope: !859, inlinedAt: !974)
!978 = !DILocation(line: 4935, column: 9, scope: !869, inlinedAt: !975)
!979 = !DILocation(line: 0, scope: !784, inlinedAt: !980)
!980 = distinct !DILocation(line: 168, column: 19, scope: !776, inlinedAt: !972)
!981 = !DILocation(line: 0, scope: !790, inlinedAt: !982)
!982 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !980)
!983 = !DILocation(line: 0, scope: !796, inlinedAt: !984)
!984 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !982)
!985 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !984)
!986 = !DILocation(line: 0, scope: !958)
!987 = !DILocation(line: 0, scope: !490, inlinedAt: !988)
!988 = distinct !DILocation(line: 817, column: 32, scope: !960)
!989 = !DILocation(line: 0, scope: !512, inlinedAt: !990)
!990 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !988)
!991 = !DILocation(line: 174, column: 12, scope: !512, inlinedAt: !990)
!992 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !990)
!993 = !DILocation(line: 0, scope: !515, inlinedAt: !990)
!994 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !990)
!995 = !DILocation(line: 0, scope: !551, inlinedAt: !996)
!996 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !990)
!997 = !DILocation(line: 0, scope: !544, inlinedAt: !998)
!998 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !996)
!999 = !DILocation(line: 0, scope: !536, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !998)
!1001 = !DILocation(line: 0, scope: !521, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !990)
!1003 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !1002)
!1004 = !DILocation(line: 0, scope: !529, inlinedAt: !1002)
!1005 = !DILocalVariable(name: "self", arg: 1, scope: !1006, file: !108, line: 3004, type: !36)
!1006 = distinct !DISubprogram(name: "checked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h1ef9399b60ef94d5E", scope: !109, file: !108, line: 3004, type: !1007, scopeLine: 3004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!82, !36, !36}
!1009 = !{!1005, !1010, !1011, !1013}
!1010 = !DILocalVariable(name: "rhs", arg: 2, scope: !1006, file: !108, line: 3004, type: !36)
!1011 = !DILocalVariable(name: "a", scope: !1012, file: !108, line: 3005, type: !36, align: 8)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !108, line: 3005, column: 17)
!1013 = !DILocalVariable(name: "b", scope: !1012, file: !108, line: 3005, type: !295, align: 1)
!1014 = !DILocation(line: 0, scope: !1006, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 5030, column: 25, scope: !529, inlinedAt: !1002)
!1016 = !DILocalVariable(name: "self", arg: 1, scope: !1017, file: !108, line: 3761, type: !36)
!1017 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h5cbeb46ab2555260E", scope: !109, file: !108, line: 3761, type: !1018, scopeLine: 3761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1024)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !36, !36}
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !7, size: 128, align: 64, elements: !1021, templateParams: !34, identifier: "532fa6618cdb3964411c84139beb9950")
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1020, file: !7, baseType: !36, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1020, file: !7, baseType: !295, size: 8, align: 8, offset: 64)
!1024 = !{!1016, !1025, !1026, !1028}
!1025 = !DILocalVariable(name: "rhs", arg: 2, scope: !1017, file: !108, line: 3761, type: !36)
!1026 = !DILocalVariable(name: "a", scope: !1027, file: !108, line: 3762, type: !96, align: 8)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !108, line: 3762, column: 17)
!1028 = !DILocalVariable(name: "b", scope: !1027, file: !108, line: 3762, type: !295, align: 1)
!1029 = !DILocation(line: 0, scope: !1017, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 3005, column: 30, scope: !1006, inlinedAt: !1015)
!1031 = !DILocation(line: 3762, column: 30, scope: !1017, inlinedAt: !1030)
!1032 = !DILocation(line: 5031, column: 13, scope: !529, inlinedAt: !1002)
!1033 = !DILocation(line: 0, scope: !531, inlinedAt: !1002)
!1034 = !DILocation(line: 0, scope: !188, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !1002)
!1036 = !DILocation(line: 0, scope: !175, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1035)
!1038 = !DILocation(line: 5035, column: 69, scope: !531, inlinedAt: !1002)
!1039 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1037)
!1040 = !DILocation(line: 0, scope: !960)
!1041 = !DILocation(line: 0, scope: !964)
!1042 = !DILocation(line: 818, column: 21, scope: !964)
!1043 = !DILocation(line: 821, column: 14, scope: !953)
!1044 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1000)
!1045 = !DILocation(line: 818, column: 30, scope: !964)
!1046 = !DILocation(line: 819, column: 21, scope: !964)
!1047 = !DILocation(line: 819, column: 30, scope: !964)
!1048 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_impl", linkageName: "_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hc0a7de8103b22ac7E", scope: !39, file: !38, line: 874, type: !340, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1049)
!1049 = !{!1050, !1051, !1052, !1054, !1056, !1058, !1060}
!1050 = !DILocalVariable(name: "output", arg: 1, scope: !1048, file: !38, line: 874, type: !199)
!1051 = !DILocalVariable(name: "input", arg: 2, scope: !1048, file: !38, line: 874, type: !152)
!1052 = !DILocalVariable(name: "iter", scope: !1053, file: !38, line: 875, type: !574, align: 8)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !38, line: 875, column: 17)
!1054 = !DILocalVariable(name: "__next", scope: !1055, file: !38, line: 875, type: !478, align: 8)
!1055 = distinct !DILexicalBlock(scope: !1053, file: !38, line: 875, column: 32)
!1056 = !DILocalVariable(name: "val", scope: !1057, file: !38, line: 875, type: !478, align: 8)
!1057 = distinct !DILexicalBlock(scope: !1055, file: !38, line: 875, column: 21)
!1058 = !DILocalVariable(name: "b", scope: !1059, file: !38, line: 875, type: !151, align: 8)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !38, line: 875, column: 32)
!1060 = !DILocalVariable(name: "ac", scope: !1059, file: !38, line: 875, type: !199, align: 8)
!1061 = !DILocation(line: 0, scope: !1048)
!1062 = !DILocation(line: 0, scope: !755, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 875, column: 32, scope: !1048)
!1064 = !DILocation(line: 0, scope: !770, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 549, column: 9, scope: !755, inlinedAt: !1063)
!1066 = !DILocation(line: 0, scope: !776, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 24, column: 9, scope: !770, inlinedAt: !1065)
!1068 = !DILocation(line: 0, scope: !859, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 4935, column: 12, scope: !869, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 100, column: 30, scope: !886, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 168, column: 37, scope: !776, inlinedAt: !1067)
!1072 = !DILocation(line: 88, column: 9, scope: !859, inlinedAt: !1069)
!1073 = !DILocation(line: 4935, column: 9, scope: !869, inlinedAt: !1070)
!1074 = !DILocation(line: 0, scope: !784, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 168, column: 19, scope: !776, inlinedAt: !1067)
!1076 = !DILocation(line: 0, scope: !790, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1075)
!1078 = !DILocation(line: 0, scope: !796, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1077)
!1080 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1079)
!1081 = !DILocation(line: 0, scope: !1053)
!1082 = !DILocation(line: 0, scope: !590, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 875, column: 32, scope: !1055)
!1084 = !DILocation(line: 2196, column: 9, scope: !590, inlinedAt: !1083)
!1085 = !DILocation(line: 2197, column: 13, scope: !590, inlinedAt: !1083)
!1086 = !DILocation(line: 0, scope: !490, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 2198, column: 13, scope: !590, inlinedAt: !1083)
!1088 = !DILocation(line: 0, scope: !512, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !1087)
!1090 = !DILocation(line: 174, column: 12, scope: !512, inlinedAt: !1089)
!1091 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !1089)
!1092 = !DILocation(line: 0, scope: !515, inlinedAt: !1089)
!1093 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !1089)
!1094 = !DILocation(line: 0, scope: !551, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !1089)
!1096 = !DILocation(line: 0, scope: !544, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1095)
!1098 = !DILocation(line: 0, scope: !536, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1097)
!1100 = !DILocation(line: 0, scope: !521, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !1089)
!1102 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !1101)
!1103 = !DILocation(line: 0, scope: !529, inlinedAt: !1101)
!1104 = !DILocation(line: 5031, column: 13, scope: !529, inlinedAt: !1101)
!1105 = !DILocation(line: 0, scope: !531, inlinedAt: !1101)
!1106 = !DILocation(line: 0, scope: !188, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !1101)
!1108 = !DILocation(line: 0, scope: !175, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1107)
!1110 = !DILocation(line: 5035, column: 69, scope: !531, inlinedAt: !1101)
!1111 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1109)
!1112 = !DILocation(line: 0, scope: !1055)
!1113 = !DILocation(line: 0, scope: !1059)
!1114 = !DILocation(line: 876, column: 21, scope: !1059)
!1115 = !DILocation(line: 879, column: 14, scope: !1048)
!1116 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1099)
!1117 = !DILocation(line: 876, column: 30, scope: !1059)
!1118 = !DILocation(line: 877, column: 21, scope: !1059)
!1119 = !DILocation(line: 877, column: 30, scope: !1059)
!1120 = !DILocation(line: 2196, column: 12, scope: !590, inlinedAt: !1083)
!1121 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17h89c19ee62f7b590cE", scope: !39, file: !38, line: 935, type: !340, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125, !1127, !1129, !1131, !1133, !1134, !1136, !1138, !1140, !1142}
!1123 = !DILocalVariable(name: "output", arg: 1, scope: !1121, file: !38, line: 935, type: !199)
!1124 = !DILocalVariable(name: "input", arg: 2, scope: !1121, file: !38, line: 935, type: !152)
!1125 = !DILocalVariable(name: "iter", scope: !1126, file: !38, line: 936, type: !574, align: 8)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !38, line: 936, column: 17)
!1127 = !DILocalVariable(name: "__next", scope: !1128, file: !38, line: 936, type: !478, align: 8)
!1128 = distinct !DILexicalBlock(scope: !1126, file: !38, line: 936, column: 33)
!1129 = !DILocalVariable(name: "val", scope: !1130, file: !38, line: 936, type: !478, align: 8)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !38, line: 936, column: 21)
!1131 = !DILocalVariable(name: "b", scope: !1132, file: !38, line: 936, type: !48, align: 2)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !38, line: 936, column: 33)
!1133 = !DILocalVariable(name: "ac", scope: !1132, file: !38, line: 936, type: !199, align: 8)
!1134 = !DILocalVariable(name: "val", scope: !1135, file: !38, line: 937, type: !48, align: 2)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !38, line: 937, column: 21)
!1136 = !DILocalVariable(name: "iter", scope: !1137, file: !38, line: 938, type: !635, align: 8)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !38, line: 938, column: 21)
!1138 = !DILocalVariable(name: "__next", scope: !1139, file: !38, line: 938, type: !198, align: 8)
!1139 = distinct !DILexicalBlock(scope: !1137, file: !38, line: 938, column: 33)
!1140 = !DILocalVariable(name: "val", scope: !1141, file: !38, line: 938, type: !198, align: 8)
!1141 = distinct !DILexicalBlock(scope: !1139, file: !38, line: 938, column: 25)
!1142 = !DILocalVariable(name: "byte", scope: !1143, file: !38, line: 938, type: !198, align: 8)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !38, line: 938, column: 33)
!1144 = !DILocation(line: 0, scope: !1121)
!1145 = !DILocation(line: 0, scope: !755, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 936, column: 33, scope: !1121)
!1147 = !DILocation(line: 0, scope: !770, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 549, column: 9, scope: !755, inlinedAt: !1146)
!1149 = !DILocation(line: 0, scope: !776, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 24, column: 9, scope: !770, inlinedAt: !1148)
!1151 = !DILocation(line: 0, scope: !859, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 4935, column: 12, scope: !869, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 100, column: 30, scope: !886, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 168, column: 37, scope: !776, inlinedAt: !1150)
!1155 = !DILocation(line: 88, column: 9, scope: !859, inlinedAt: !1152)
!1156 = !DILocation(line: 4935, column: 9, scope: !869, inlinedAt: !1153)
!1157 = !DILocation(line: 0, scope: !784, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 168, column: 19, scope: !776, inlinedAt: !1150)
!1159 = !DILocation(line: 0, scope: !790, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1158)
!1161 = !DILocation(line: 0, scope: !796, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1160)
!1163 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1162)
!1164 = !DILocation(line: 0, scope: !1126)
!1165 = !DILocation(line: 0, scope: !590, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 936, column: 33, scope: !1128)
!1167 = !DILocation(line: 2196, column: 9, scope: !590, inlinedAt: !1166)
!1168 = !DILocation(line: 2196, column: 12, scope: !590, inlinedAt: !1166)
!1169 = !DILocation(line: 2197, column: 13, scope: !590, inlinedAt: !1166)
!1170 = !DILocation(line: 0, scope: !490, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 2198, column: 13, scope: !590, inlinedAt: !1166)
!1172 = !DILocation(line: 0, scope: !512, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 47, column: 9, scope: !490, inlinedAt: !1171)
!1174 = !DILocation(line: 174, column: 12, scope: !512, inlinedAt: !1173)
!1175 = !DILocation(line: 174, column: 9, scope: !512, inlinedAt: !1173)
!1176 = !DILocation(line: 0, scope: !515, inlinedAt: !1173)
!1177 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !1173)
!1178 = !DILocation(line: 0, scope: !551, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 178, column: 28, scope: !515, inlinedAt: !1173)
!1180 = !DILocation(line: 0, scope: !544, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1179)
!1182 = !DILocation(line: 0, scope: !536, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1181)
!1184 = !DILocation(line: 0, scope: !521, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 178, column: 53, scope: !515, inlinedAt: !1173)
!1186 = !DILocation(line: 5029, column: 21, scope: !521, inlinedAt: !1185)
!1187 = !DILocation(line: 0, scope: !529, inlinedAt: !1185)
!1188 = !DILocation(line: 0, scope: !531, inlinedAt: !1185)
!1189 = !DILocation(line: 0, scope: !188, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 5035, column: 37, scope: !531, inlinedAt: !1185)
!1191 = !DILocation(line: 0, scope: !175, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1190)
!1193 = !DILocation(line: 5031, column: 13, scope: !529, inlinedAt: !1185)
!1194 = !DILocation(line: 0, scope: !1128)
!1195 = !DILocation(line: 0, scope: !1132)
!1196 = !DILocation(line: 0, scope: !1135)
!1197 = !DILocation(line: 0, scope: !681, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 938, column: 33, scope: !1135)
!1199 = !DILocation(line: 0, scope: !686, inlinedAt: !1198)
!1200 = !DILocation(line: 0, scope: !188, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 643, column: 17, scope: !686, inlinedAt: !1198)
!1202 = !DILocation(line: 0, scope: !175, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1201)
!1204 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1203)
!1205 = !DILocation(line: 0, scope: !1137)
!1206 = !DILocation(line: 0, scope: !699, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 938, column: 33, scope: !1139)
!1208 = !DILocation(line: 3320, column: 9, scope: !699, inlinedAt: !1207)
!1209 = !DILocation(line: 3450, column: 21, scope: !699, inlinedAt: !1207)
!1210 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1183)
!1211 = !DILocation(line: 936, column: 23, scope: !1128)
!1212 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1192)
!1213 = !DILocation(line: 0, scope: !720, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 3365, column: 47, scope: !699, inlinedAt: !1207)
!1215 = !DILocation(line: 0, scope: !726, inlinedAt: !1214)
!1216 = !DILocation(line: 0, scope: !175, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 3402, column: 64, scope: !726, inlinedAt: !1214)
!1218 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1217)
!1219 = !DILocation(line: 0, scope: !1139)
!1220 = !DILocation(line: 0, scope: !1143)
!1221 = !DILocation(line: 939, column: 25, scope: !1143)
!1222 = !DILocation(line: 940, column: 25, scope: !1143)
!1223 = distinct !{!1223, !1224}
!1224 = !{!"llvm.loop.unroll.disable"}
!1225 = !DILocation(line: 943, column: 14, scope: !1121)
!1226 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_impl", linkageName: "_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17hd0ae6decc6b18109E", scope: !39, file: !38, line: 994, type: !340, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1227)
!1227 = !{!1228, !1229, !1230, !1245, !1247, !1249, !1251}
!1228 = !DILocalVariable(name: "output", arg: 1, scope: !1226, file: !38, line: 994, type: !199)
!1229 = !DILocalVariable(name: "input", arg: 2, scope: !1226, file: !38, line: 994, type: !152)
!1230 = !DILocalVariable(name: "iter", scope: !1231, file: !38, line: 995, type: !1232, align: 8)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !38, line: 995, column: 17)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", scope: !449, file: !7, size: 576, align: 64, elements: !1233, templateParams: !1243, identifier: "102e2d9d481d66086df7d68e99a29d99")
!1233 = !{!1234, !1235, !1241, !1242}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1232, file: !7, baseType: !453, size: 128, align: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1232, file: !7, baseType: !1236, size: 320, align: 64, offset: 128)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksExactMut<u8>", scope: !148, file: !7, size: 320, align: 64, elements: !1237, templateParams: !185, identifier: "c64f49165738eeed8ae1fad89e4834d8")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1236, file: !7, baseType: !199, size: 128, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1236, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1236, file: !7, baseType: !36, size: 64, align: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1232, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1232, file: !7, baseType: !36, size: 64, align: 64, offset: 512)
!1243 = !{!474, !1244}
!1244 = !DITemplateTypeParameter(name: "B", type: !1236)
!1245 = !DILocalVariable(name: "__next", scope: !1246, file: !38, line: 995, type: !478, align: 8)
!1246 = distinct !DILexicalBlock(scope: !1231, file: !38, line: 995, column: 32)
!1247 = !DILocalVariable(name: "val", scope: !1248, file: !38, line: 995, type: !478, align: 8)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !38, line: 995, column: 21)
!1249 = !DILocalVariable(name: "b", scope: !1250, file: !38, line: 995, type: !151, align: 8)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !38, line: 995, column: 32)
!1251 = !DILocalVariable(name: "ac", scope: !1250, file: !38, line: 995, type: !199, align: 8)
!1252 = !DILocation(line: 0, scope: !1226)
!1253 = !DILocation(line: 0, scope: !188, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 1070, column: 63, scope: !1255, inlinedAt: !1269)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !146, line: 1065, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !146, line: 1064, column: 9)
!1257 = distinct !DISubprogram(name: "split_at_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ea582d6c2df6dd7E", scope: !147, file: !146, line: 1063, type: !1258, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1264)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !199, !36}
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut [u8], &mut [u8])", file: !7, size: 256, align: 64, elements: !1261, templateParams: !34, identifier: "a99a11d1f26f4419acc009a3d2a3a192")
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1260, file: !7, baseType: !199, size: 128, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1260, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "self", arg: 1, scope: !1257, file: !146, line: 1063, type: !199)
!1266 = !DILocalVariable(name: "mid", arg: 2, scope: !1257, file: !146, line: 1063, type: !36)
!1267 = !DILocalVariable(name: "len", scope: !1256, file: !146, line: 1064, type: !36, align: 8)
!1268 = !DILocalVariable(name: "ptr", scope: !1255, file: !146, line: 1065, type: !181, align: 8)
!1269 = distinct !DILocation(line: 836, column: 26, scope: !1270, inlinedAt: !1283)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !146, line: 835, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !146, line: 834, column: 9)
!1272 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16chunks_exact_mut17h1535796824de3ad3E", scope: !147, file: !146, line: 832, type: !1273, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1236, !199, !36}
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1282}
!1276 = !DILocalVariable(name: "self", arg: 1, scope: !1272, file: !146, line: 832, type: !199)
!1277 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !1272, file: !146, line: 832, type: !36)
!1278 = !DILocalVariable(name: "rem", scope: !1271, file: !146, line: 834, type: !36, align: 8)
!1279 = !DILocalVariable(name: "len", scope: !1270, file: !146, line: 835, type: !36, align: 8)
!1280 = !DILocalVariable(name: "fst", scope: !1281, file: !146, line: 836, type: !199, align: 8)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !146, line: 836, column: 9)
!1282 = !DILocalVariable(name: "snd", scope: !1281, file: !146, line: 836, type: !199, align: 8)
!1283 = distinct !DILocation(line: 995, column: 49, scope: !1226)
!1284 = !DILocation(line: 0, scope: !175, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1254)
!1286 = !DILocalVariable(name: "other", arg: 2, scope: !1287, file: !756, line: 544, type: !1236)
!1287 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17haf55894718e45533E", scope: !757, file: !756, line: 544, type: !1288, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1292, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1232, !453, !1236}
!1290 = !{!1291, !1286}
!1291 = !DILocalVariable(name: "self", arg: 1, scope: !1287, file: !756, line: 544, type: !453)
!1292 = !{!765, !1293}
!1293 = !DITemplateTypeParameter(name: "U", type: !1236)
!1294 = !DILocation(line: 0, scope: !1287, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 995, column: 32, scope: !1226)
!1296 = !DILocalVariable(name: "b", arg: 2, scope: !1297, file: !491, line: 23, type: !1236)
!1297 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h651e27e7bc5f4045E", scope: !1232, file: !491, line: 23, type: !1288, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1243, retainedNodes: !1298)
!1298 = !{!1299, !1296}
!1299 = !DILocalVariable(name: "a", arg: 1, scope: !1297, file: !491, line: 23, type: !453)
!1300 = !DILocation(line: 0, scope: !1297, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 549, column: 9, scope: !1287, inlinedAt: !1295)
!1302 = !DILocalVariable(name: "b", arg: 2, scope: !1303, file: !491, line: 167, type: !1236)
!1303 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hfddea1cbaf4c4ac3E", scope: !492, file: !491, line: 167, type: !1288, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1243, retainedNodes: !1304)
!1304 = !{!1305, !1302, !1306}
!1305 = !DILocalVariable(name: "a", arg: 1, scope: !1303, file: !491, line: 167, type: !453)
!1306 = !DILocalVariable(name: "len", scope: !1307, file: !491, line: 168, type: !36, align: 8)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !491, line: 168, column: 9)
!1308 = !DILocation(line: 0, scope: !1303, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 24, column: 9, scope: !1297, inlinedAt: !1301)
!1310 = !DILocation(line: 5228, column: 17, scope: !1311, inlinedAt: !1319)
!1311 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN95_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6e048086080b9e5cE", scope: !147, file: !146, line: 5227, type: !1312, scopeLine: 5227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1315)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!872, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksExactMut<u8>", baseType: !1236, size: 64, align: 64, dwarfAddressSpace: 0)
!1315 = !{!1316, !1317}
!1316 = !DILocalVariable(name: "self", arg: 1, scope: !1311, file: !146, line: 5227, type: !1314)
!1317 = !DILocalVariable(name: "n", scope: !1318, file: !146, line: 5228, type: !36, align: 8)
!1318 = distinct !DILexicalBlock(scope: !1311, file: !146, line: 5228, column: 9)
!1319 = distinct !DILocation(line: 100, column: 30, scope: !1320, inlinedAt: !1336)
!1320 = distinct !DISubprogram(name: "len<core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h4e00636f95a71250E", scope: !888, file: !887, line: 99, type: !1321, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1334, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!36, !1314}
!1323 = !{!1324, !1325, !1327, !1328, !1330, !1331, !1333}
!1324 = !DILocalVariable(name: "self", arg: 1, scope: !1320, file: !887, line: 99, type: !1314)
!1325 = !DILocalVariable(name: "lower", scope: !1326, file: !887, line: 100, type: !36, align: 8)
!1326 = distinct !DILexicalBlock(scope: !1320, file: !887, line: 100, column: 9)
!1327 = !DILocalVariable(name: "upper", scope: !1326, file: !887, line: 100, type: !82, align: 8)
!1328 = !DILocalVariable(name: "left_val", scope: !1329, file: !899, line: 45, type: !900, align: 8)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !899, line: 45, column: 13)
!1330 = !DILocalVariable(name: "right_val", scope: !1329, file: !899, line: 45, type: !900, align: 8)
!1331 = !DILocalVariable(name: "arg0", scope: !1332, file: !899, line: 52, type: !904, align: 8)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !899, line: 16, column: 38)
!1333 = !DILocalVariable(name: "arg1", scope: !1332, file: !899, line: 52, type: !904, align: 8)
!1334 = !{!1335}
!1335 = !DITemplateTypeParameter(name: "Self", type: !1236)
!1336 = distinct !DILocation(line: 168, column: 37, scope: !1303, inlinedAt: !1309)
!1337 = !DILocation(line: 0, scope: !784, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 168, column: 19, scope: !1303, inlinedAt: !1309)
!1339 = !DILocation(line: 0, scope: !790, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1338)
!1341 = !DILocation(line: 0, scope: !796, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1340)
!1343 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1342)
!1344 = !DILocation(line: 0, scope: !1231)
!1345 = !DILocalVariable(name: "self", arg: 1, scope: !1346, file: !491, line: 46, type: !1349)
!1346 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb454760213d8ee9E", scope: !492, file: !491, line: 46, type: !1347, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1243, retainedNodes: !1350)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!495, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", baseType: !1232, size: 64, align: 64, dwarfAddressSpace: 0)
!1350 = !{!1345}
!1351 = !DILocation(line: 0, scope: !1346, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 995, column: 32, scope: !1246)
!1353 = !DILocalVariable(name: "self", arg: 1, scope: !1354, file: !491, line: 173, type: !1349)
!1354 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17ha0408ae87a6a6699E", scope: !492, file: !491, line: 173, type: !1347, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1243, retainedNodes: !1355)
!1355 = !{!1353, !1356}
!1356 = !DILocalVariable(name: "i", scope: !1357, file: !491, line: 175, type: !36, align: 8)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !491, line: 175, column: 13)
!1358 = !DILocation(line: 0, scope: !1354, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 47, column: 9, scope: !1346, inlinedAt: !1352)
!1360 = !DILocation(line: 174, column: 12, scope: !1354, inlinedAt: !1359)
!1361 = !DILocation(line: 174, column: 9, scope: !1354, inlinedAt: !1359)
!1362 = !DILocation(line: 176, column: 13, scope: !1357, inlinedAt: !1359)
!1363 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 178, column: 28, scope: !1357, inlinedAt: !1359)
!1367 = !DILocation(line: 5306, column: 21, scope: !1368, inlinedAt: !1377)
!1368 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN103_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17h98fbfcbd8d0eb265E", scope: !147, file: !146, line: 5305, type: !1369, scopeLine: 5305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1372)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!199, !1371, !36}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksExactMut<u8>", baseType: !1236, size: 64, align: 64, dwarfAddressSpace: 0)
!1372 = !{!1373, !1374, !1375}
!1373 = !DILocalVariable(name: "self", arg: 1, scope: !1368, file: !146, line: 5305, type: !1371)
!1374 = !DILocalVariable(name: "i", arg: 2, scope: !1368, file: !146, line: 5305, type: !36)
!1375 = !DILocalVariable(name: "start", scope: !1376, file: !146, line: 5306, type: !36, align: 8)
!1376 = distinct !DILexicalBlock(scope: !1368, file: !146, line: 5306, column: 9)
!1377 = distinct !DILocation(line: 178, column: 53, scope: !1357, inlinedAt: !1359)
!1378 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 5308, column: 37, scope: !1376, inlinedAt: !1377)
!1381 = !DILocation(line: 996, column: 30, scope: !1250)
!1382 = !DILocation(line: 996, column: 21, scope: !1250)
!1383 = !DILocation(line: 997, column: 30, scope: !1250)
!1384 = !DILocation(line: 997, column: 21, scope: !1250)
!1385 = distinct !{!1385, !218}
!1386 = !DILocation(line: 999, column: 14, scope: !1226)
!1387 = !DILocation(line: 0, scope: !1357, inlinedAt: !1359)
!1388 = !DILocation(line: 0, scope: !551, inlinedAt: !1366)
!1389 = !DILocation(line: 0, scope: !544, inlinedAt: !1365)
!1390 = !DILocation(line: 0, scope: !536, inlinedAt: !1364)
!1391 = !DILocation(line: 0, scope: !1368, inlinedAt: !1377)
!1392 = !DILocation(line: 0, scope: !1376, inlinedAt: !1377)
!1393 = !DILocation(line: 0, scope: !188, inlinedAt: !1380)
!1394 = !DILocation(line: 0, scope: !175, inlinedAt: !1379)
!1395 = !DILocation(line: 0, scope: !1246)
!1396 = !DILocation(line: 0, scope: !1250)
!1397 = distinct !{!1397, !837, !218}
!1398 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_slice_impl", linkageName: "_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17hb8349f0013722554E", scope: !39, file: !38, line: 1056, type: !340, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1399)
!1399 = !{!1400, !1401, !1402, !1404, !1406, !1408, !1410}
!1400 = !DILocalVariable(name: "output", arg: 1, scope: !1398, file: !38, line: 1056, type: !199)
!1401 = !DILocalVariable(name: "input", arg: 2, scope: !1398, file: !38, line: 1056, type: !152)
!1402 = !DILocalVariable(name: "iter", scope: !1403, file: !38, line: 1058, type: !1232, align: 8)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !38, line: 1058, column: 17)
!1404 = !DILocalVariable(name: "__next", scope: !1405, file: !38, line: 1058, type: !478, align: 8)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !38, line: 1058, column: 32)
!1406 = !DILocalVariable(name: "val", scope: !1407, file: !38, line: 1058, type: !478, align: 8)
!1407 = distinct !DILexicalBlock(scope: !1405, file: !38, line: 1058, column: 21)
!1408 = !DILocalVariable(name: "b", scope: !1409, file: !38, line: 1058, type: !151, align: 8)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !38, line: 1058, column: 32)
!1410 = !DILocalVariable(name: "ac", scope: !1409, file: !38, line: 1058, type: !199, align: 8)
!1411 = !DILocation(line: 0, scope: !1398)
!1412 = !DILocation(line: 0, scope: !784, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 1058, column: 40, scope: !1398)
!1414 = !DILocation(line: 0, scope: !790, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1413)
!1416 = !DILocation(line: 0, scope: !796, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1415)
!1418 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1417)
!1419 = !DILocation(line: 0, scope: !188, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 1070, column: 63, scope: !1255, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 836, column: 26, scope: !1270, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 1060, column: 26, scope: !1398)
!1423 = !DILocation(line: 0, scope: !175, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1420)
!1425 = !DILocation(line: 0, scope: !1287, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 1058, column: 32, scope: !1398)
!1427 = !DILocation(line: 0, scope: !1297, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 549, column: 9, scope: !1287, inlinedAt: !1426)
!1429 = !DILocation(line: 0, scope: !1303, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 24, column: 9, scope: !1297, inlinedAt: !1428)
!1431 = !DILocation(line: 5228, column: 17, scope: !1311, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 100, column: 30, scope: !1320, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 168, column: 37, scope: !1303, inlinedAt: !1430)
!1434 = !DILocation(line: 0, scope: !784, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 168, column: 19, scope: !1303, inlinedAt: !1430)
!1436 = !DILocation(line: 0, scope: !790, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1435)
!1438 = !DILocation(line: 0, scope: !796, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1437)
!1440 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1439)
!1441 = !DILocation(line: 0, scope: !1403)
!1442 = !DILocation(line: 0, scope: !1346, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1058, column: 32, scope: !1405)
!1444 = !DILocation(line: 0, scope: !1354, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 47, column: 9, scope: !1346, inlinedAt: !1443)
!1446 = !DILocation(line: 174, column: 12, scope: !1354, inlinedAt: !1445)
!1447 = !DILocation(line: 174, column: 9, scope: !1354, inlinedAt: !1445)
!1448 = !DILocation(line: 176, column: 13, scope: !1357, inlinedAt: !1445)
!1449 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 178, column: 28, scope: !1357, inlinedAt: !1445)
!1453 = !DILocation(line: 5306, column: 21, scope: !1368, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 178, column: 53, scope: !1357, inlinedAt: !1445)
!1455 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 5308, column: 37, scope: !1376, inlinedAt: !1454)
!1458 = !DILocation(line: 1061, column: 30, scope: !1409)
!1459 = !DILocation(line: 1061, column: 21, scope: !1409)
!1460 = !DILocation(line: 1062, column: 30, scope: !1409)
!1461 = !DILocation(line: 1062, column: 21, scope: !1409)
!1462 = distinct !{!1462, !218}
!1463 = !DILocation(line: 1064, column: 14, scope: !1398)
!1464 = !DILocation(line: 0, scope: !1357, inlinedAt: !1445)
!1465 = !DILocation(line: 0, scope: !551, inlinedAt: !1452)
!1466 = !DILocation(line: 0, scope: !544, inlinedAt: !1451)
!1467 = !DILocation(line: 0, scope: !536, inlinedAt: !1450)
!1468 = !DILocation(line: 0, scope: !1368, inlinedAt: !1454)
!1469 = !DILocation(line: 0, scope: !1376, inlinedAt: !1454)
!1470 = !DILocation(line: 0, scope: !188, inlinedAt: !1457)
!1471 = !DILocation(line: 0, scope: !175, inlinedAt: !1456)
!1472 = !DILocation(line: 0, scope: !1405)
!1473 = !DILocation(line: 0, scope: !1409)
!1474 = distinct !{!1474, !837, !218}
!1475 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_impl", linkageName: "_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17h1bcb5d8acefd81f5E", scope: !39, file: !38, line: 1117, type: !340, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1476)
!1476 = !{!1477, !1478, !1479, !1487, !1489, !1491, !1493}
!1477 = !DILocalVariable(name: "output", arg: 1, scope: !1475, file: !38, line: 1117, type: !199)
!1478 = !DILocalVariable(name: "input", arg: 2, scope: !1475, file: !38, line: 1117, type: !152)
!1479 = !DILocalVariable(name: "iter", scope: !1480, file: !38, line: 1118, type: !1481, align: 8)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !38, line: 1118, column: 17)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", scope: !450, file: !7, size: 640, align: 64, elements: !1482, templateParams: !1485, identifier: "6ca0bdca3f7ea6dbd9edcaa1589144f1")
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1481, file: !7, baseType: !1232, size: 576, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1481, file: !7, baseType: !36, size: 64, align: 64, offset: 576)
!1485 = !{!1486}
!1486 = !DITemplateTypeParameter(name: "I", type: !1232)
!1487 = !DILocalVariable(name: "__next", scope: !1488, file: !38, line: 1118, type: !478, align: 8)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !38, line: 1118, column: 32)
!1489 = !DILocalVariable(name: "val", scope: !1490, file: !38, line: 1118, type: !478, align: 8)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !38, line: 1118, column: 21)
!1491 = !DILocalVariable(name: "b", scope: !1492, file: !38, line: 1118, type: !151, align: 8)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !38, line: 1118, column: 32)
!1493 = !DILocalVariable(name: "ac", scope: !1492, file: !38, line: 1118, type: !199, align: 8)
!1494 = !DILocation(line: 0, scope: !1475)
!1495 = !DILocation(line: 0, scope: !188, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 1070, column: 63, scope: !1255, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 836, column: 26, scope: !1270, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 1118, column: 49, scope: !1475)
!1499 = !DILocation(line: 0, scope: !175, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1496)
!1501 = !DILocation(line: 0, scope: !1287, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 1118, column: 32, scope: !1475)
!1503 = !DILocation(line: 0, scope: !1297, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 549, column: 9, scope: !1287, inlinedAt: !1502)
!1505 = !DILocation(line: 0, scope: !1303, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 24, column: 9, scope: !1297, inlinedAt: !1504)
!1507 = !DILocation(line: 5228, column: 17, scope: !1311, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 100, column: 30, scope: !1320, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 168, column: 37, scope: !1303, inlinedAt: !1506)
!1510 = !DILocation(line: 0, scope: !784, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 168, column: 19, scope: !1303, inlinedAt: !1506)
!1512 = !DILocation(line: 0, scope: !790, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1511)
!1514 = !DILocation(line: 0, scope: !796, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1513)
!1516 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1515)
!1517 = !DILocation(line: 0, scope: !1480)
!1518 = !DILocalVariable(name: "self", arg: 1, scope: !1519, file: !591, line: 2195, type: !1522)
!1519 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e128e6cd2a65106E", scope: !592, file: !591, line: 2195, type: !1520, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1485, retainedNodes: !1523)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!495, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", baseType: !1481, size: 64, align: 64, dwarfAddressSpace: 0)
!1523 = !{!1518}
!1524 = !DILocation(line: 0, scope: !1519, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 1118, column: 32, scope: !1488)
!1526 = !DILocation(line: 2196, column: 9, scope: !1519, inlinedAt: !1525)
!1527 = !DILocation(line: 0, scope: !1346, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 2198, column: 13, scope: !1519, inlinedAt: !1525)
!1529 = !DILocation(line: 0, scope: !1354, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 47, column: 9, scope: !1346, inlinedAt: !1528)
!1531 = !DILocation(line: 174, column: 12, scope: !1354, inlinedAt: !1530)
!1532 = !DILocation(line: 174, column: 9, scope: !1354, inlinedAt: !1530)
!1533 = !DILocation(line: 1122, column: 14, scope: !1475)
!1534 = !DILocation(line: 0, scope: !1357, inlinedAt: !1530)
!1535 = !DILocation(line: 0, scope: !551, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 178, column: 28, scope: !1357, inlinedAt: !1530)
!1537 = !DILocation(line: 0, scope: !544, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1536)
!1539 = !DILocation(line: 0, scope: !536, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1538)
!1541 = !DILocation(line: 0, scope: !1368, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 178, column: 53, scope: !1357, inlinedAt: !1530)
!1543 = !DILocation(line: 0, scope: !1376, inlinedAt: !1542)
!1544 = !DILocation(line: 0, scope: !188, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 5308, column: 37, scope: !1376, inlinedAt: !1542)
!1546 = !DILocation(line: 0, scope: !175, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1545)
!1548 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1540)
!1549 = !DILocation(line: 5306, column: 21, scope: !1368, inlinedAt: !1542)
!1550 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1547)
!1551 = !DILocation(line: 176, column: 13, scope: !1357, inlinedAt: !1530)
!1552 = !DILocation(line: 0, scope: !1488)
!1553 = !DILocation(line: 0, scope: !1492)
!1554 = !DILocation(line: 1119, column: 30, scope: !1492)
!1555 = !DILocation(line: 1119, column: 21, scope: !1492)
!1556 = !DILocation(line: 1120, column: 30, scope: !1492)
!1557 = !DILocation(line: 1120, column: 21, scope: !1492)
!1558 = !DILocation(line: 2197, column: 13, scope: !1519, inlinedAt: !1525)
!1559 = !DILocation(line: 2196, column: 12, scope: !1519, inlinedAt: !1525)
!1560 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h10e23baa91d25095E", scope: !39, file: !38, line: 1178, type: !340, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1561)
!1561 = !{!1562, !1563, !1564, !1566, !1568, !1570, !1572, !1573, !1575, !1577, !1579, !1581}
!1562 = !DILocalVariable(name: "output", arg: 1, scope: !1560, file: !38, line: 1178, type: !199)
!1563 = !DILocalVariable(name: "input", arg: 2, scope: !1560, file: !38, line: 1178, type: !152)
!1564 = !DILocalVariable(name: "iter", scope: !1565, file: !38, line: 1179, type: !1481, align: 8)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !38, line: 1179, column: 17)
!1566 = !DILocalVariable(name: "__next", scope: !1567, file: !38, line: 1179, type: !478, align: 8)
!1567 = distinct !DILexicalBlock(scope: !1565, file: !38, line: 1179, column: 33)
!1568 = !DILocalVariable(name: "val", scope: !1569, file: !38, line: 1179, type: !478, align: 8)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !38, line: 1179, column: 21)
!1570 = !DILocalVariable(name: "b", scope: !1571, file: !38, line: 1179, type: !48, align: 2)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !38, line: 1179, column: 33)
!1572 = !DILocalVariable(name: "ac", scope: !1571, file: !38, line: 1179, type: !199, align: 8)
!1573 = !DILocalVariable(name: "val", scope: !1574, file: !38, line: 1180, type: !48, align: 2)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !38, line: 1180, column: 21)
!1575 = !DILocalVariable(name: "iter", scope: !1576, file: !38, line: 1181, type: !635, align: 8)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !38, line: 1181, column: 21)
!1577 = !DILocalVariable(name: "__next", scope: !1578, file: !38, line: 1181, type: !198, align: 8)
!1578 = distinct !DILexicalBlock(scope: !1576, file: !38, line: 1181, column: 33)
!1579 = !DILocalVariable(name: "val", scope: !1580, file: !38, line: 1181, type: !198, align: 8)
!1580 = distinct !DILexicalBlock(scope: !1578, file: !38, line: 1181, column: 25)
!1581 = !DILocalVariable(name: "byte", scope: !1582, file: !38, line: 1181, type: !198, align: 8)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !38, line: 1181, column: 33)
!1583 = !DILocation(line: 0, scope: !1560)
!1584 = !DILocation(line: 0, scope: !188, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 1070, column: 63, scope: !1255, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 836, column: 26, scope: !1270, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1179, column: 50, scope: !1560)
!1588 = !DILocation(line: 0, scope: !175, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1585)
!1590 = !DILocation(line: 0, scope: !1287, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 1179, column: 33, scope: !1560)
!1592 = !DILocation(line: 0, scope: !1297, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 549, column: 9, scope: !1287, inlinedAt: !1591)
!1594 = !DILocation(line: 0, scope: !1303, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 24, column: 9, scope: !1297, inlinedAt: !1593)
!1596 = !DILocation(line: 5228, column: 17, scope: !1311, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 100, column: 30, scope: !1320, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 168, column: 37, scope: !1303, inlinedAt: !1595)
!1599 = !DILocation(line: 0, scope: !784, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 168, column: 19, scope: !1303, inlinedAt: !1595)
!1601 = !DILocation(line: 0, scope: !790, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 929, column: 5, scope: !784, inlinedAt: !1600)
!1603 = !DILocation(line: 0, scope: !796, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 624, column: 9, scope: !790, inlinedAt: !1602)
!1605 = !DILocation(line: 951, column: 9, scope: !796, inlinedAt: !1604)
!1606 = !DILocation(line: 0, scope: !1565)
!1607 = !DILocation(line: 0, scope: !1519, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 1179, column: 33, scope: !1567)
!1609 = !DILocation(line: 2196, column: 9, scope: !1519, inlinedAt: !1608)
!1610 = !DILocation(line: 0, scope: !1346, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 2198, column: 13, scope: !1519, inlinedAt: !1608)
!1612 = !DILocation(line: 0, scope: !1354, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 47, column: 9, scope: !1346, inlinedAt: !1611)
!1614 = !DILocation(line: 174, column: 12, scope: !1354, inlinedAt: !1613)
!1615 = !DILocation(line: 174, column: 9, scope: !1354, inlinedAt: !1613)
!1616 = !DILocation(line: 0, scope: !1357, inlinedAt: !1613)
!1617 = !DILocation(line: 0, scope: !551, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 178, column: 28, scope: !1357, inlinedAt: !1613)
!1619 = !DILocation(line: 0, scope: !544, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 6302, column: 20, scope: !551, inlinedAt: !1618)
!1621 = !DILocation(line: 0, scope: !536, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 530, column: 18, scope: !544, inlinedAt: !1620)
!1623 = !DILocation(line: 0, scope: !1368, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 178, column: 53, scope: !1357, inlinedAt: !1613)
!1625 = !DILocation(line: 0, scope: !1376, inlinedAt: !1624)
!1626 = !DILocation(line: 0, scope: !188, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 5308, column: 37, scope: !1376, inlinedAt: !1624)
!1628 = !DILocation(line: 0, scope: !175, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1627)
!1630 = !DILocation(line: 159, column: 18, scope: !536, inlinedAt: !1622)
!1631 = !DILocation(line: 5306, column: 21, scope: !1368, inlinedAt: !1624)
!1632 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1629)
!1633 = !DILocation(line: 0, scope: !1567)
!1634 = !DILocation(line: 0, scope: !1571)
!1635 = !DILocation(line: 1179, column: 23, scope: !1567)
!1636 = !DILocation(line: 0, scope: !188, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 643, column: 17, scope: !686, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 1181, column: 33, scope: !1574)
!1639 = !DILocation(line: 0, scope: !175, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1637)
!1641 = !DILocation(line: 0, scope: !1576)
!1642 = !DILocation(line: 0, scope: !1574)
!1643 = !DILocation(line: 0, scope: !175, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 3402, column: 64, scope: !726, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 3365, column: 47, scope: !699, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 1181, column: 33, scope: !1578)
!1647 = !DILocation(line: 0, scope: !1578)
!1648 = !DILocation(line: 0, scope: !1582)
!1649 = !DILocation(line: 1182, column: 25, scope: !1582)
!1650 = !DILocation(line: 1183, column: 25, scope: !1582)
!1651 = !DILocation(line: 176, column: 13, scope: !1357, inlinedAt: !1613)
!1652 = !DILocation(line: 2197, column: 13, scope: !1519, inlinedAt: !1608)
!1653 = !DILocation(line: 1186, column: 14, scope: !1560)
!1654 = !DILocation(line: 2196, column: 12, scope: !1519, inlinedAt: !1608)
