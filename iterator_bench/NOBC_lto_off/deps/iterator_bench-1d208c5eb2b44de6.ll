; ModuleID = 'iterator_bench.5f6e6zhf-cgu.0'
source_filename = "iterator_bench.5f6e6zhf-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>" = type { [0 x i64], { i16*, i16* }, [0 x i64], %"core::slice::ChunksMut<u8>", [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::slice::ChunksMut<u8>" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>" = type { [0 x i64], %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>" = type { [0 x i64], { i16*, i16* }, [0 x i64], %"core::slice::ChunksExactMut<u8>", [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::slice::ChunksExactMut<u8>" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>" = type { [0 x i64], %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", [0 x i64], i64, [0 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@_ZN14iterator_bench23c_style_fixed_size_impl17h342585e2e19b3e4eE = unnamed_addr alias void ([640000 x i8]*, [320000 x i16]*), void ([640000 x i8]*, [320000 x i16]*)* @_ZN14iterator_bench19optimal_unsafe_impl17h43d230ec30bc4b7bE

; iterator_bench::optimal_unsafe_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench19optimal_unsafe_impl17h43d230ec30bc4b7bE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !37 {
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

; iterator_bench::c_style_input_size_fixed_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench29c_style_input_size_fixed_impl17hcfe426a147d1500bE([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !220 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !236
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !236
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !225, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !237
  call void @llvm.dbg.value(metadata i64 320000, metadata !226, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !237
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !238
  br label %vector.body, !dbg !240

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !241
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !244
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !244
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !244
  %2 = shl nuw nsw i64 %index, 1, !dbg !245
  %3 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !246
  %4 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !247
  %5 = or i64 %2, 1, !dbg !248
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %5, !dbg !249
  %7 = trunc <8 x i16> %4 to <8 x i8>, !dbg !249
  %8 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !249
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !249
  %interleaved.vec = shufflevector <8 x i8> %3, <8 x i8> %7, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !249
  store <16 x i8> %interleaved.vec, <16 x i8>* %9, align 1, !dbg !249
  %index.next = or i64 %index, 8, !dbg !241
  %10 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !244
  %11 = bitcast i16* %10 to <8 x i16>*, !dbg !244
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !244
  %12 = shl nuw nsw i64 %index.next, 1, !dbg !245
  %13 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !246
  %14 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !247
  %15 = or i64 %12, 1, !dbg !248
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !249
  %17 = trunc <8 x i16> %14 to <8 x i8>, !dbg !249
  %18 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !249
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !249
  %interleaved.vec.1 = shufflevector <8 x i8> %13, <8 x i8> %17, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !249
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %19, align 1, !dbg !249
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !241
  %20 = icmp eq i64 %index.next.1, 320000, !dbg !241
  br i1 %20, label %bb5, label %vector.body, !dbg !241, !llvm.loop !250

bb5:                                              ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !237
  ret void, !dbg !251
}

; iterator_bench::c_style_output_size_fixed_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench30c_style_output_size_fixed_impl17hf1905e2e3293ab9bE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !252 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !256, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !268
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !268
  call void @llvm.dbg.value(metadata i64 0, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !269
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  %output14 = ptrtoint [640000 x i8]* %output to i64
  %0 = icmp eq i64 %input.1, 0, !dbg !272
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !284

bb7.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %input.1, 8, !dbg !284
  br i1 %min.iters.check, label %bb7.preheader19, label %vector.scevcheck, !dbg !284

bb7.preheader19:                                  ; preds = %middle.block, %vector.scevcheck, %bb7.preheader
  %iter.sroa.0.013.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb7.preheader ], [ %n.vec, %middle.block ]
  %1 = xor i64 %iter.sroa.0.013.ph, -1, !dbg !284
  %xtraiter = and i64 %input.1, 1, !dbg !284
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !284
  br i1 %lcmp.mod, label %bb7.prol.loopexit, label %bb7.prol, !dbg !284

bb7.prol:                                         ; preds = %bb7.preheader19
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !114, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !287
  %2 = or i64 %iter.sroa.0.013.ph, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %2, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !264, metadata !DIExpression()), !dbg !291
  %3 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.013.ph, !dbg !292
  %b.prol = load i16, i16* %3, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b.prol, metadata !266, metadata !DIExpression()), !dbg !293
  %_20.prol = shl i64 %iter.sroa.0.013.ph, 1, !dbg !294
  %4 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_20.prol, !dbg !295
  %5 = trunc i16 %b.prol to i8, !dbg !295
  store i8 %5, i8* %4, align 1, !dbg !295
  %_23.prol = lshr i16 %b.prol, 8, !dbg !296
  %_25.prol = or i64 %_20.prol, 1, !dbg !297
  %6 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_25.prol, !dbg !298
  %7 = trunc i16 %_23.prol to i8, !dbg !298
  store i8 %7, i8* %6, align 1, !dbg !298
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  br label %bb7.prol.loopexit, !dbg !284

bb7.prol.loopexit:                                ; preds = %bb7.preheader19, %bb7.prol
  %iter.sroa.0.013.unr = phi i64 [ %iter.sroa.0.013.ph, %bb7.preheader19 ], [ %2, %bb7.prol ]
  %8 = sub i64 0, %input.1, !dbg !284
  %9 = icmp eq i64 %1, %8, !dbg !284
  br i1 %9, label %bb5, label %bb7, !dbg !284

vector.scevcheck:                                 ; preds = %bb7.preheader
  %10 = add i64 %input.1, -1, !dbg !284
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !284
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !284
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !284
  %11 = xor i64 %output14, -1, !dbg !284
  %12 = icmp ugt i64 %mul.result, %11, !dbg !284
  %13 = or i1 %12, %mul.overflow, !dbg !284
  %scevgep = getelementptr [640000 x i8], [640000 x i8]* %output, i64 0, i64 1, !dbg !284
  %scevgep15 = ptrtoint i8* %scevgep to i64
  %mul16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !284
  %mul.result17 = extractvalue { i64, i1 } %mul16, 0, !dbg !284
  %mul.overflow18 = extractvalue { i64, i1 } %mul16, 1, !dbg !284
  %14 = xor i64 %scevgep15, -1, !dbg !284
  %15 = icmp ugt i64 %mul.result17, %14, !dbg !284
  %16 = or i1 %15, %mul.overflow18, !dbg !284
  %17 = or i1 %13, %16, !dbg !284
  br i1 %17, label %bb7.preheader19, label %vector.ph, !dbg !284

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %input.1, -8, !dbg !284
  %18 = add i64 %n.vec, -8, !dbg !284
  %19 = lshr exact i64 %18, 3, !dbg !284
  %20 = add nuw nsw i64 %19, 1, !dbg !284
  %xtraiter20 = and i64 %20, 1, !dbg !284
  %21 = icmp eq i64 %18, 0, !dbg !284
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !284

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %20, %xtraiter20, !dbg !284
  br label %vector.body, !dbg !284

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !289
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !292
  %23 = bitcast i16* %22 to <8 x i16>*, !dbg !292
  %wide.load = load <8 x i16>, <8 x i16>* %23, align 2, !dbg !292
  %24 = shl i64 %index, 1, !dbg !294
  %25 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !295
  %26 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !296
  %27 = or i64 %24, 1, !dbg !297
  %28 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %27, !dbg !298
  %29 = trunc <8 x i16> %26 to <8 x i8>, !dbg !298
  %30 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !298
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !298
  %interleaved.vec = shufflevector <8 x i8> %25, <8 x i8> %29, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !298
  store <16 x i8> %interleaved.vec, <16 x i8>* %31, align 1, !dbg !298
  %index.next = or i64 %index, 8, !dbg !289
  %32 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !292
  %33 = bitcast i16* %32 to <8 x i16>*, !dbg !292
  %wide.load.1 = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !292
  %34 = shl i64 %index.next, 1, !dbg !294
  %35 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !295
  %36 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !296
  %37 = or i64 %34, 1, !dbg !297
  %38 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %37, !dbg !298
  %39 = trunc <8 x i16> %36 to <8 x i8>, !dbg !298
  %40 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !298
  %41 = bitcast i8* %40 to <16 x i8>*, !dbg !298
  %interleaved.vec.1 = shufflevector <8 x i8> %35, <8 x i8> %39, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !298
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %41, align 1, !dbg !298
  %index.next.1 = add i64 %index, 16, !dbg !289
  %niter.nsub.1 = add i64 %niter, -2, !dbg !289
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !289
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !289, !llvm.loop !299

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod21 = icmp eq i64 %xtraiter20, 0, !dbg !289
  br i1 %lcmp.mod21, label %middle.block, label %vector.body.epil, !dbg !289

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %42 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !292
  %43 = bitcast i16* %42 to <8 x i16>*, !dbg !292
  %wide.load.epil = load <8 x i16>, <8 x i16>* %43, align 2, !dbg !292
  %44 = shl i64 %index.unr, 1, !dbg !294
  %45 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !295
  %46 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !296
  %47 = or i64 %44, 1, !dbg !297
  %48 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %47, !dbg !298
  %49 = trunc <8 x i16> %46 to <8 x i8>, !dbg !298
  %50 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !298
  %51 = bitcast i8* %50 to <16 x i8>*, !dbg !298
  %interleaved.vec.epil = shufflevector <8 x i8> %45, <8 x i8> %49, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !298
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %51, align 1, !dbg !298
  br label %middle.block, !dbg !284

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %input.1, !dbg !284
  br i1 %cmp.n, label %bb5, label %bb7.preheader19, !dbg !284

bb5:                                              ; preds = %bb7.prol.loopexit, %bb7, %middle.block, %start
  call void @llvm.dbg.value(metadata i64 %52, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  ret void, !dbg !300

bb7:                                              ; preds = %bb7.prol.loopexit, %bb7
  %iter.sroa.0.013 = phi i64 [ %58, %bb7 ], [ %iter.sroa.0.013.unr, %bb7.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !114, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !287
  %52 = add nuw i64 %iter.sroa.0.013, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %52, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !264, metadata !DIExpression()), !dbg !291
  %53 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.013, !dbg !292
  %b = load i16, i16* %53, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b, metadata !266, metadata !DIExpression()), !dbg !293
  %_20 = shl i64 %iter.sroa.0.013, 1, !dbg !294
  %54 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_20, !dbg !295
  %55 = trunc i16 %b to i8, !dbg !295
  store i8 %55, i8* %54, align 1, !dbg !295
  %_23 = lshr i16 %b, 8, !dbg !296
  %_25 = or i64 %_20, 1, !dbg !297
  %56 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_25, !dbg !298
  %57 = trunc i16 %_23 to i8, !dbg !298
  store i8 %57, i8* %56, align 1, !dbg !298
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i64 %52, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %52, metadata !114, metadata !DIExpression()), !dbg !287
  %58 = add nuw i64 %iter.sroa.0.013, 2, !dbg !289
  call void @llvm.dbg.value(metadata i64 %58, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  call void @llvm.dbg.value(metadata i64 %52, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %52, metadata !264, metadata !DIExpression()), !dbg !291
  %59 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %52, !dbg !292
  %b.1 = load i16, i16* %59, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !266, metadata !DIExpression()), !dbg !293
  %_20.1 = shl i64 %52, 1, !dbg !294
  %60 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_20.1, !dbg !295
  %61 = trunc i16 %b.1 to i8, !dbg !295
  store i8 %61, i8* %60, align 1, !dbg !295
  %_23.1 = lshr i16 %b.1, 8, !dbg !296
  %_25.1 = or i64 %_20.1, 1, !dbg !297
  %62 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_25.1, !dbg !298
  %63 = trunc i16 %_23.1 to i8, !dbg !298
  store i8 %63, i8* %62, align 1, !dbg !298
  %exitcond.1 = icmp eq i64 %58, %input.1, !dbg !272
  br i1 %exitcond.1, label %bb5, label %bb7, !dbg !284, !llvm.loop !301
}

; iterator_bench::c_style_unknown_size_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench25c_style_unknown_size_impl17ha4507c1657d6df17E([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !302 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !318
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !318
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !318
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !318
  call void @llvm.dbg.value(metadata i64 0, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !319
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  %output.014 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp eq i64 %input.1, 0, !dbg !322
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !324

bb7.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %input.1, 8, !dbg !324
  br i1 %min.iters.check, label %bb7.preheader19, label %vector.scevcheck, !dbg !324

bb7.preheader19:                                  ; preds = %middle.block, %vector.scevcheck, %bb7.preheader
  %iter.sroa.0.013.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb7.preheader ], [ %n.vec, %middle.block ]
  %1 = xor i64 %iter.sroa.0.013.ph, -1, !dbg !324
  %xtraiter = and i64 %input.1, 1, !dbg !324
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !324
  br i1 %lcmp.mod, label %bb7.prol.loopexit, label %bb7.prol, !dbg !324

bb7.prol:                                         ; preds = %bb7.preheader19
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !114, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !327
  %2 = or i64 %iter.sroa.0.013.ph, 1, !dbg !329
  call void @llvm.dbg.value(metadata i64 %2, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013.ph, metadata !314, metadata !DIExpression()), !dbg !331
  %3 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.013.ph, !dbg !332
  %b.prol = load i16, i16* %3, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b.prol, metadata !316, metadata !DIExpression()), !dbg !333
  %_20.prol = shl i64 %iter.sroa.0.013.ph, 1, !dbg !334
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_20.prol, !dbg !335
  %5 = trunc i16 %b.prol to i8, !dbg !335
  store i8 %5, i8* %4, align 1, !dbg !335
  %_23.prol = lshr i16 %b.prol, 8, !dbg !336
  %_25.prol = or i64 %_20.prol, 1, !dbg !337
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_25.prol, !dbg !338
  %7 = trunc i16 %_23.prol to i8, !dbg !338
  store i8 %7, i8* %6, align 1, !dbg !338
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  br label %bb7.prol.loopexit, !dbg !324

bb7.prol.loopexit:                                ; preds = %bb7.preheader19, %bb7.prol
  %iter.sroa.0.013.unr = phi i64 [ %iter.sroa.0.013.ph, %bb7.preheader19 ], [ %2, %bb7.prol ]
  %8 = sub i64 0, %input.1, !dbg !324
  %9 = icmp eq i64 %1, %8, !dbg !324
  br i1 %9, label %bb5, label %bb7, !dbg !324

vector.scevcheck:                                 ; preds = %bb7.preheader
  %10 = add i64 %input.1, -1, !dbg !324
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !324
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !324
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !324
  %11 = xor i64 %output.014, -1, !dbg !324
  %12 = icmp ugt i64 %mul.result, %11, !dbg !324
  %13 = or i1 %12, %mul.overflow, !dbg !324
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !324
  %scevgep15 = ptrtoint i8* %scevgep to i64
  %mul16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !324
  %mul.result17 = extractvalue { i64, i1 } %mul16, 0, !dbg !324
  %mul.overflow18 = extractvalue { i64, i1 } %mul16, 1, !dbg !324
  %14 = xor i64 %scevgep15, -1, !dbg !324
  %15 = icmp ugt i64 %mul.result17, %14, !dbg !324
  %16 = or i1 %15, %mul.overflow18, !dbg !324
  %17 = or i1 %13, %16, !dbg !324
  br i1 %17, label %bb7.preheader19, label %vector.ph, !dbg !324

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %input.1, -8, !dbg !324
  %18 = add i64 %n.vec, -8, !dbg !324
  %19 = lshr exact i64 %18, 3, !dbg !324
  %20 = add nuw nsw i64 %19, 1, !dbg !324
  %xtraiter20 = and i64 %20, 1, !dbg !324
  %21 = icmp eq i64 %18, 0, !dbg !324
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !324

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %20, %xtraiter20, !dbg !324
  br label %vector.body, !dbg !324

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !329
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !332
  %23 = bitcast i16* %22 to <8 x i16>*, !dbg !332
  %wide.load = load <8 x i16>, <8 x i16>* %23, align 2, !dbg !332
  %24 = shl i64 %index, 1, !dbg !334
  %25 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !335
  %26 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !336
  %27 = or i64 %24, 1, !dbg !337
  %28 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %27, !dbg !338
  %29 = trunc <8 x i16> %26 to <8 x i8>, !dbg !338
  %30 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !338
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !338
  %interleaved.vec = shufflevector <8 x i8> %25, <8 x i8> %29, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !338
  store <16 x i8> %interleaved.vec, <16 x i8>* %31, align 1, !dbg !338
  %index.next = or i64 %index, 8, !dbg !329
  %32 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !332
  %33 = bitcast i16* %32 to <8 x i16>*, !dbg !332
  %wide.load.1 = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !332
  %34 = shl i64 %index.next, 1, !dbg !334
  %35 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !335
  %36 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !336
  %37 = or i64 %34, 1, !dbg !337
  %38 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %37, !dbg !338
  %39 = trunc <8 x i16> %36 to <8 x i8>, !dbg !338
  %40 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !338
  %41 = bitcast i8* %40 to <16 x i8>*, !dbg !338
  %interleaved.vec.1 = shufflevector <8 x i8> %35, <8 x i8> %39, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !338
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %41, align 1, !dbg !338
  %index.next.1 = add i64 %index, 16, !dbg !329
  %niter.nsub.1 = add i64 %niter, -2, !dbg !329
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !329
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !329, !llvm.loop !339

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod21 = icmp eq i64 %xtraiter20, 0, !dbg !329
  br i1 %lcmp.mod21, label %middle.block, label %vector.body.epil, !dbg !329

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %42 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !332
  %43 = bitcast i16* %42 to <8 x i16>*, !dbg !332
  %wide.load.epil = load <8 x i16>, <8 x i16>* %43, align 2, !dbg !332
  %44 = shl i64 %index.unr, 1, !dbg !334
  %45 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !335
  %46 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !336
  %47 = or i64 %44, 1, !dbg !337
  %48 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %47, !dbg !338
  %49 = trunc <8 x i16> %46 to <8 x i8>, !dbg !338
  %50 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !338
  %51 = bitcast i8* %50 to <16 x i8>*, !dbg !338
  %interleaved.vec.epil = shufflevector <8 x i8> %45, <8 x i8> %49, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !338
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %51, align 1, !dbg !338
  br label %middle.block, !dbg !324

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %input.1, !dbg !324
  br i1 %cmp.n, label %bb5, label %bb7.preheader19, !dbg !324

bb5:                                              ; preds = %bb7.prol.loopexit, %bb7, %middle.block, %start
  call void @llvm.dbg.value(metadata i64 %52, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  ret void, !dbg !340

bb7:                                              ; preds = %bb7.prol.loopexit, %bb7
  %iter.sroa.0.013 = phi i64 [ %58, %bb7 ], [ %iter.sroa.0.013.unr, %bb7.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !114, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !327
  %52 = add nuw i64 %iter.sroa.0.013, 1, !dbg !329
  call void @llvm.dbg.value(metadata i64 %52, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !314, metadata !DIExpression()), !dbg !331
  %53 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.013, !dbg !332
  %b = load i16, i16* %53, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b, metadata !316, metadata !DIExpression()), !dbg !333
  %_20 = shl i64 %iter.sroa.0.013, 1, !dbg !334
  %54 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_20, !dbg !335
  %55 = trunc i16 %b to i8, !dbg !335
  store i8 %55, i8* %54, align 1, !dbg !335
  %_23 = lshr i16 %b, 8, !dbg !336
  %_25 = or i64 %_20, 1, !dbg !337
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_25, !dbg !338
  %57 = trunc i16 %_23 to i8, !dbg !338
  store i8 %57, i8* %56, align 1, !dbg !338
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i64 %52, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %52, metadata !114, metadata !DIExpression()), !dbg !327
  %58 = add nuw i64 %iter.sroa.0.013, 2, !dbg !329
  call void @llvm.dbg.value(metadata i64 %58, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !319
  call void @llvm.dbg.value(metadata i64 %52, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %52, metadata !314, metadata !DIExpression()), !dbg !331
  %59 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %52, !dbg !332
  %b.1 = load i16, i16* %59, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !316, metadata !DIExpression()), !dbg !333
  %_20.1 = shl i64 %52, 1, !dbg !334
  %60 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_20.1, !dbg !335
  %61 = trunc i16 %b.1 to i8, !dbg !335
  store i8 %61, i8* %60, align 1, !dbg !335
  %_23.1 = lshr i16 %b.1, 8, !dbg !336
  %_25.1 = or i64 %_20.1, 1, !dbg !337
  %62 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_25.1, !dbg !338
  %63 = trunc i16 %_23.1 to i8, !dbg !338
  store i8 %63, i8* %62, align 1, !dbg !338
  %exitcond.1 = icmp eq i64 %58, %input.1, !dbg !322
  br i1 %exitcond.1, label %bb5, label %bb7, !dbg !324, !llvm.loop !341
}

; iterator_bench::c_style_unknown_size_limit_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench31c_style_unknown_size_limit_impl17h959ca8c4442b3f9cE([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !342 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !356
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !356
  call void @llvm.dbg.value(metadata i64 320000, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i64 320000, metadata !363, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 320000, metadata !372, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !380, metadata !DIExpression()), !dbg !384
  %0 = icmp ugt i64 %input.1, 320000, !dbg !384
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !384
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !386
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !386
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !387
  %output.014 = ptrtoint [0 x i8]* %output.0 to i64
  %1 = add i64 %.0.sroa.speculated.i.i.i, -1, !dbg !389
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !389
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !389
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !389
  %2 = xor i64 %output.014, -1, !dbg !389
  %3 = icmp ugt i64 %mul.result, %2, !dbg !389
  %4 = or i1 %3, %mul.overflow, !dbg !389
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !389
  %scevgep15 = ptrtoint i8* %scevgep to i64
  %mul16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !389
  %mul.result17 = extractvalue { i64, i1 } %mul16, 0, !dbg !389
  %mul.overflow18 = extractvalue { i64, i1 } %mul16, 1, !dbg !389
  %5 = xor i64 %scevgep15, -1, !dbg !389
  %6 = icmp ugt i64 %mul.result17, %5, !dbg !389
  %7 = or i1 %6, %mul.overflow18, !dbg !389
  %8 = or i1 %4, %7, !dbg !389
  br i1 %8, label %bb8.preheader, label %vector.ph, !dbg !389

bb8.preheader:                                    ; preds = %middle.block, %start
  %iter.sroa.0.013.ph = phi i64 [ 0, %start ], [ %n.vec, %middle.block ]
  br label %bb8, !dbg !389

vector.ph:                                        ; preds = %start
  %n.vec = and i64 %.0.sroa.speculated.i.i.i, -8, !dbg !389
  %9 = add i64 %n.vec, -8, !dbg !389
  %10 = lshr exact i64 %9, 3, !dbg !389
  %11 = add nuw nsw i64 %10, 1, !dbg !389
  %xtraiter = and i64 %11, 1, !dbg !389
  %12 = icmp eq i64 %9, 0, !dbg !389
  br i1 %12, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !389

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %11, %xtraiter, !dbg !389
  br label %vector.body, !dbg !389

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !390
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !393
  %14 = bitcast i16* %13 to <8 x i16>*, !dbg !393
  %wide.load = load <8 x i16>, <8 x i16>* %14, align 2, !dbg !393
  %15 = shl i64 %index, 1, !dbg !394
  %16 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !395
  %17 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !396
  %18 = or i64 %15, 1, !dbg !397
  %19 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %18, !dbg !398
  %20 = trunc <8 x i16> %17 to <8 x i8>, !dbg !398
  %21 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !398
  %22 = bitcast i8* %21 to <16 x i8>*, !dbg !398
  %interleaved.vec = shufflevector <8 x i8> %16, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !398
  store <16 x i8> %interleaved.vec, <16 x i8>* %22, align 1, !dbg !398
  %index.next = or i64 %index, 8, !dbg !390
  %23 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !393
  %24 = bitcast i16* %23 to <8 x i16>*, !dbg !393
  %wide.load.1 = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !393
  %25 = shl i64 %index.next, 1, !dbg !394
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !395
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !396
  %28 = or i64 %25, 1, !dbg !397
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %28, !dbg !398
  %30 = trunc <8 x i16> %27 to <8 x i8>, !dbg !398
  %31 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !398
  %32 = bitcast i8* %31 to <16 x i8>*, !dbg !398
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %30, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !398
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %32, align 1, !dbg !398
  %index.next.1 = add i64 %index, 16, !dbg !390
  %niter.nsub.1 = add i64 %niter, -2, !dbg !390
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !390
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !390, !llvm.loop !399

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !390
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !390

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %33 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !393
  %34 = bitcast i16* %33 to <8 x i16>*, !dbg !393
  %wide.load.epil = load <8 x i16>, <8 x i16>* %34, align 2, !dbg !393
  %35 = shl i64 %index.unr, 1, !dbg !394
  %36 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !395
  %37 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !396
  %38 = or i64 %35, 1, !dbg !397
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %38, !dbg !398
  %40 = trunc <8 x i16> %37 to <8 x i8>, !dbg !398
  %41 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !398
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !398
  %interleaved.vec.epil = shufflevector <8 x i8> %36, <8 x i8> %40, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !398
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %42, align 1, !dbg !398
  br label %middle.block, !dbg !389

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i, %n.vec, !dbg !389
  br i1 %cmp.n, label %bb6, label %bb8.preheader, !dbg !389

bb6:                                              ; preds = %bb8, %middle.block
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !386
  ret void, !dbg !400

bb8:                                              ; preds = %bb8.preheader, %bb8
  %iter.sroa.0.013 = phi i64 [ %43, %bb8 ], [ %iter.sroa.0.013.ph, %bb8.preheader ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !386
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !119, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !114, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !402
  %43 = add nuw i64 %iter.sroa.0.013, 1, !dbg !390
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !386
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !348, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.013, metadata !352, metadata !DIExpression()), !dbg !404
  %44 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.013, !dbg !393
  %b = load i16, i16* %44, align 2, !dbg !393
  call void @llvm.dbg.value(metadata i16 %b, metadata !354, metadata !DIExpression()), !dbg !405
  %_21 = shl i64 %iter.sroa.0.013, 1, !dbg !394
  %45 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_21, !dbg !395
  %46 = trunc i16 %b to i8, !dbg !395
  store i8 %46, i8* %45, align 1, !dbg !395
  %_24 = lshr i16 %b, 8, !dbg !396
  %_26 = or i64 %_21, 1, !dbg !397
  %47 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_26, !dbg !398
  %48 = trunc i16 %_24 to i8, !dbg !398
  store i8 %48, i8* %47, align 1, !dbg !398
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !387
  %49 = icmp ult i64 %43, %.0.sroa.speculated.i.i.i, !dbg !406
  br i1 %49, label %bb8, label %bb6, !dbg !389, !llvm.loop !408
}

; iterator_bench::zip_chunks_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !409 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !411, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !412, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !455
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !413, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !455
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !455
  call void @llvm.dbg.value(metadata i64 640000, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !455
  call void @llvm.dbg.value(metadata i64 2, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !455
  call void @llvm.dbg.value(metadata i64 0, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !455
  call void @llvm.dbg.value(metadata i64 320000, metadata !413, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !476
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !483
  br label %vector.body, !dbg !485

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !486
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !487
  %1 = shl nuw i64 %index, 1, !dbg !511
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !526
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !529
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !529
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !530
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !531
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !532
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !532
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !532
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !532
  %index.next = or i64 %index, 8, !dbg !486
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !487
  %9 = shl nuw i64 %index.next, 1, !dbg !511
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !526
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !529
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !529
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !530
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !531
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !532
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !532
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !532
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !532
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !486
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !486
  br i1 %16, label %bb7, label %vector.body, !dbg !486, !llvm.loop !533

bb7:                                              ; preds = %vector.body
  ret void, !dbg !534
}

; iterator_bench::zip_chunks_fixed_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !535 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !537, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !538, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !555
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !539, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !555
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !555
  call void @llvm.dbg.value(metadata i64 640000, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !555
  call void @llvm.dbg.value(metadata i64 2, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !555
  call void @llvm.dbg.value(metadata i64 0, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !555
  call void @llvm.dbg.value(metadata i64 320000, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !555
  call void @llvm.dbg.value(metadata i64 320000, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !555
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !564
  br label %vector.body, !dbg !566

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !567
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !570
  %1 = shl nuw i64 %index, 1, !dbg !574
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !576
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !579
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !579
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !580
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !581
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !582
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !582
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !582
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !582
  %index.next = or i64 %index, 8, !dbg !567
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !570
  %9 = shl nuw i64 %index.next, 1, !dbg !574
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !576
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !579
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !579
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !580
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !581
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !582
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !582
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !582
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !582
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !567
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !567
  br i1 %16, label %bb8, label %vector.body, !dbg !567, !llvm.loop !583

bb8:                                              ; preds = %vector.body
  ret void, !dbg !584
}

; iterator_bench::zip_chunks_fixed_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !585 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !587, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !588, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !620
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !589, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !620
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 640000, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 2, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 0, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 320000, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 320000, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !621
  br label %bb17.preheader, !dbg !623

bb17.preheader:                                   ; preds = %bb17.preheader, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %iter.sroa.16.0113 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %7, %bb17.preheader ]
  %iter.sroa.11.0112 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %10, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !589, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !624
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !626
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !481, metadata !DIExpression()) #4, !dbg !628
  %0 = or i64 %iter.sroa.11.0112, 1, !dbg !629
  call void @llvm.dbg.value(metadata i64 %0, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !509, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !500, metadata !DIExpression()) #4, !dbg !632
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !501, metadata !DIExpression()) #4, !dbg !632
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !493, metadata !DIExpression()) #4, !dbg !634
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !494, metadata !DIExpression()) #4, !dbg !634
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !636
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !518, metadata !DIExpression()) #4, !dbg !636
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0112, 1, !dbg !638
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !639
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #4, !dbg !640
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !640
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #4, !dbg !642
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !642
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !589, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %0, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !521, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #4, !dbg !644
  call void @llvm.dbg.value(metadata i16* undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i8* undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i64 undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i8* undef, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i64 undef, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i16 undef, metadata !595, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i8* undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i64 undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i64 undef, metadata !193, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 undef, metadata !184, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i16 undef, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !665, metadata !DIExpression()), !dbg !681
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.0112, !dbg !683
  call void @llvm.dbg.value(metadata i16* %1, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !645
  %b = load i16, i16* %1, align 2, !dbg !684
  call void @llvm.dbg.value(metadata i16 %b, metadata !595, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i16 %b, metadata !598, metadata !DIExpression()), !dbg !664
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i, !dbg !685
  call void @llvm.dbg.value(metadata i8* %2, metadata !652, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8* %2, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i8* %2, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i8* %2, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !589, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i8* %2, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !686, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %2, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !697
  %3 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !699
  call void @llvm.dbg.value(metadata i8* %3, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i8* %2, metadata !613, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %2, metadata !617, metadata !DIExpression()), !dbg !701
  %4 = trunc i16 %b to i8, !dbg !702
  store i8 %4, i8* %2, align 1, !dbg !702
  %5 = lshr i16 %b, 8, !dbg !703
  call void @llvm.dbg.value(metadata i16 %5, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* %3, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %3, metadata !183, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* %3, metadata !600, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i8* %3, metadata !613, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %3, metadata !617, metadata !DIExpression()), !dbg !701
  %6 = trunc i16 %5 to i8, !dbg !702
  store i8 %6, i8* %3, align 1, !dbg !702
  call void @llvm.dbg.value(metadata i16 0, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !621
  call void @llvm.dbg.value(metadata i64 %0, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  %7 = add nsw i64 %iter.sroa.16.0113, -2, !dbg !704
  call void @llvm.dbg.value(metadata i64 %7, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %0, metadata !481, metadata !DIExpression()) #4, !dbg !628
  call void @llvm.dbg.value(metadata i64 %0, metadata !589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %0, metadata !509, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata i64 %0, metadata !501, metadata !DIExpression()) #4, !dbg !632
  call void @llvm.dbg.value(metadata i64 %0, metadata !494, metadata !DIExpression()) #4, !dbg !634
  call void @llvm.dbg.value(metadata i64 %0, metadata !518, metadata !DIExpression()) #4, !dbg !636
  %start1.i.i.i.i.1 = shl nuw i64 %0, 1, !dbg !638
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !519, metadata !DIExpression()) #4, !dbg !639
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()) #4, !dbg !640
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()) #4, !dbg !642
  call void @llvm.dbg.value(metadata i64 %7, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %0, metadata !589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !521, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #4, !dbg !644
  call void @llvm.dbg.value(metadata i16* undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i8* undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i64 undef, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !645
  call void @llvm.dbg.value(metadata i8* undef, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i64 undef, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i16 undef, metadata !595, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i16 undef, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i64 undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !683
  call void @llvm.dbg.value(metadata i16* %8, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !645
  %b.1 = load i16, i16* %8, align 2, !dbg !684
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !595, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !598, metadata !DIExpression()), !dbg !664
  %9 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i.1, !dbg !685
  call void @llvm.dbg.value(metadata i8* %9, metadata !652, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8* %9, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i8* %9, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !656
  call void @llvm.dbg.value(metadata i8* %9, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !646
  call void @llvm.dbg.value(metadata i8* %9, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !645
  %10 = add nuw nsw i64 %iter.sroa.11.0112, 2, !dbg !629
  call void @llvm.dbg.value(metadata i64 %10, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i8* %9, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !697
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !699
  call void @llvm.dbg.value(metadata i8* %11, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i8* %9, metadata !613, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %9, metadata !617, metadata !DIExpression()), !dbg !701
  %12 = trunc i16 %b.1 to i8, !dbg !702
  store i8 %12, i8* %9, align 1, !dbg !702
  %13 = lshr i16 %b.1, 8, !dbg !703
  call void @llvm.dbg.value(metadata i16 %13, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* %11, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %11, metadata !183, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* %11, metadata !600, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !663
  call void @llvm.dbg.value(metadata i8* %11, metadata !613, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %11, metadata !617, metadata !DIExpression()), !dbg !701
  %14 = trunc i16 %13 to i8, !dbg !702
  store i8 %14, i8* %11, align 1, !dbg !702
  call void @llvm.dbg.value(metadata i16 0, metadata !598, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64 %7, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !620
  call void @llvm.dbg.value(metadata i64 %10, metadata !589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !620
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !705
  br i1 %_2.i.1, label %bb8, label %bb17.preheader, !dbg !623

bb8:                                              ; preds = %bb17.preheader
  ret void, !dbg !706
}

; iterator_bench::zip_chunks_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E([640000 x i8]* align 1 dereferenceable(640000) %output, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !707 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !709, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !710, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !720
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !710, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !720
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !734
  call void @llvm.dbg.value(metadata i64 640000, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !734
  call void @llvm.dbg.value(metadata i64 2, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !734
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !734
  call void @llvm.dbg.value(metadata i16* undef, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !734
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !740
  call void @llvm.dbg.value(metadata i64 640000, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !740
  call void @llvm.dbg.value(metadata i64 2, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !740
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !740
  call void @llvm.dbg.value(metadata i16* undef, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !740
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !748
  call void @llvm.dbg.value(metadata i64 640000, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !748
  call void @llvm.dbg.value(metadata i64 2, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !748
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !748
  call void @llvm.dbg.value(metadata i16* undef, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !748
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 320000, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i64 320000, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i64 320000, metadata !765, metadata !DIExpression()), !dbg !767
  %0 = icmp ult i64 %input.1, 320000, !dbg !767
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !767
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i16* undef, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !769
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i64 640000, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i64 2, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i64 0, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !769
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !770
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !772
  %_2.i.i66 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !774
  br i1 %_2.i.i66, label %bb7, label %bb9.preheader, !dbg !775

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !775
  br i1 %min.iters.check, label %bb9.preheader68, label %vector.ph, !dbg !775

bb9.preheader68:                                  ; preds = %middle.block, %bb9.preheader
  %iter.sroa.11.067.ph = phi i64 [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !775

vector.ph:                                        ; preds = %bb9.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !775
  %1 = add nsw i64 %n.vec, -8, !dbg !775
  %2 = lshr exact i64 %1, 3, !dbg !775
  %3 = add nuw nsw i64 %2, 1, !dbg !775
  %xtraiter = and i64 %3, 1, !dbg !775
  %4 = icmp eq i64 %1, 0, !dbg !775
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !775

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %3, %xtraiter, !dbg !775
  br label %vector.body, !dbg !775

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !776
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %5 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !777
  %6 = shl nuw i64 %index, 1, !dbg !781
  %7 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %6, !dbg !783
  %8 = bitcast i16* %5 to <8 x i16>*, !dbg !786
  %wide.load = load <8 x i16>, <8 x i16>* %8, align 2, !dbg !786
  %9 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !787
  %10 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !788
  %11 = trunc <8 x i16> %10 to <8 x i8>, !dbg !789
  %12 = bitcast i8* %7 to <16 x i8>*, !dbg !789
  %interleaved.vec = shufflevector <8 x i8> %9, <8 x i8> %11, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !789
  store <16 x i8> %interleaved.vec, <16 x i8>* %12, align 1, !dbg !789
  %index.next = or i64 %index, 8, !dbg !776
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !777
  %14 = shl nuw i64 %index.next, 1, !dbg !781
  %15 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %14, !dbg !783
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !786
  %wide.load.1 = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !786
  %17 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !787
  %18 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !788
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !789
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !789
  %interleaved.vec.1 = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !789
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %20, align 1, !dbg !789
  %index.next.1 = add i64 %index, 16, !dbg !776
  %niter.nsub.1 = add i64 %niter, -2, !dbg !776
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !776
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !776, !llvm.loop !790

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !776
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !776

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !777
  %22 = shl nuw i64 %index.unr, 1, !dbg !781
  %23 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %22, !dbg !783
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !786
  %wide.load.epil = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !786
  %25 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !787
  %26 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !788
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !789
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !789
  %interleaved.vec.epil = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !789
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %28, align 1, !dbg !789
  br label %middle.block, !dbg !775

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !775
  br i1 %cmp.n, label %bb7, label %bb9.preheader68, !dbg !775

bb7:                                              ; preds = %bb9, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !791

bb9:                                              ; preds = %bb9.preheader68, %bb9
  %iter.sroa.11.067 = phi i64 [ %31, %bb9 ], [ %iter.sroa.11.067.ph, %bb9.preheader68 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !481, metadata !DIExpression()) #4, !dbg !792
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !509, metadata !DIExpression()) #4, !dbg !793
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()) #4, !dbg !794
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !501, metadata !DIExpression()) #4, !dbg !794
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()) #4, !dbg !795
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !494, metadata !DIExpression()) #4, !dbg !795
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !796
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !518, metadata !DIExpression()) #4, !dbg !796
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !519, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !797
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !798
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #4, !dbg !799
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !799
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #4, !dbg !800
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !800
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !711, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !769
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.067, !dbg !777
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.067, 1, !dbg !781
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !797
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !799
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !800
  %30 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i, !dbg !783
  %31 = add nuw nsw i64 %iter.sroa.11.067, 1, !dbg !776
  call void @llvm.dbg.value(metadata i64 %31, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i16* %29, metadata !713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !801
  call void @llvm.dbg.value(metadata i8* %30, metadata !713, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !801
  call void @llvm.dbg.value(metadata i64 undef, metadata !713, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !801
  call void @llvm.dbg.value(metadata i8* %30, metadata !719, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !802
  call void @llvm.dbg.value(metadata i64 undef, metadata !719, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !802
  %b = load i16, i16* %29, align 2, !dbg !786
  call void @llvm.dbg.value(metadata i16 %b, metadata !717, metadata !DIExpression()), !dbg !802
  %32 = trunc i16 %b to i8, !dbg !787
  store i8 %32, i8* %30, align 1, !dbg !787
  %_24 = lshr i16 %b, 8, !dbg !788
  %33 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !789
  %34 = trunc i16 %_24 to i8, !dbg !789
  store i8 %34, i8* %33, align 1, !dbg !789
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !770
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !772
  %_2.i.i = icmp ult i64 %31, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !774
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !775, !llvm.loop !803
}

; iterator_bench::zip_chunks_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !805 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !818
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !807, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !818
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !808, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !819
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !819
  call void @llvm.dbg.value(metadata i64 2, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !819
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !819
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !730, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !819
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !821
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !821
  call void @llvm.dbg.value(metadata i64 2, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !821
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !821
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !739, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !821
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !823
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !823
  call void @llvm.dbg.value(metadata i64 2, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !823
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !823
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !745, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !823
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !834
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !834
  %0 = icmp eq i64 %output.1, 0, !dbg !876
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !877
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !877
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !877
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !877
  call void @llvm.dbg.value(metadata i64 320000, metadata !750, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i64 320000, metadata !756, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i64 320000, metadata !762, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !882
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, 320000, !dbg !884
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 320000, !dbg !882
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !809, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 2, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !885
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !886
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !888
  %_2.i.i66 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !890
  br i1 %_2.i.i66, label %bb7, label %bb9.preheader, !dbg !891

bb9.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !891
  br i1 %min.iters.check, label %bb9.preheader68, label %vector.ph, !dbg !891

bb9.preheader68:                                  ; preds = %middle.block, %bb9.preheader
  %iter.sroa.11.067.ph = phi i64 [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !891

vector.ph:                                        ; preds = %bb9.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !891
  %2 = add nsw i64 %n.vec, -8, !dbg !891
  %3 = lshr exact i64 %2, 3, !dbg !891
  %4 = add nuw nsw i64 %3, 1, !dbg !891
  %xtraiter = and i64 %4, 1, !dbg !891
  %5 = icmp eq i64 %2, 0, !dbg !891
  br i1 %5, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !891

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %4, %xtraiter, !dbg !891
  br label %vector.body, !dbg !891

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !892
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %6 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !893
  %7 = shl nuw i64 %index, 1, !dbg !897
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %7, !dbg !899
  %9 = bitcast i16* %6 to <8 x i16>*, !dbg !902
  %wide.load = load <8 x i16>, <8 x i16>* %9, align 2, !dbg !902
  %10 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !903
  %11 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !904
  %12 = trunc <8 x i16> %11 to <8 x i8>, !dbg !905
  %13 = bitcast i8* %8 to <16 x i8>*, !dbg !905
  %interleaved.vec = shufflevector <8 x i8> %10, <8 x i8> %12, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !905
  store <16 x i8> %interleaved.vec, <16 x i8>* %13, align 1, !dbg !905
  %index.next = or i64 %index, 8, !dbg !892
  %14 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !893
  %15 = shl nuw i64 %index.next, 1, !dbg !897
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !899
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !902
  %wide.load.1 = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !902
  %18 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !903
  %19 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !904
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !905
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !905
  %interleaved.vec.1 = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !905
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %21, align 1, !dbg !905
  %index.next.1 = add i64 %index, 16, !dbg !892
  %niter.nsub.1 = add i64 %niter, -2, !dbg !892
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !892
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !892, !llvm.loop !906

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !892
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !892

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %22 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.unr, !dbg !893
  %23 = shl nuw i64 %index.unr, 1, !dbg !897
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !899
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !902
  %wide.load.epil = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !902
  %26 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !903
  %27 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !904
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !905
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !905
  %interleaved.vec.epil = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !905
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %29, align 1, !dbg !905
  br label %middle.block, !dbg !891

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !891
  br i1 %cmp.n, label %bb7, label %bb9.preheader68, !dbg !891

bb7:                                              ; preds = %bb9, %middle.block, %start
  ret void, !dbg !907

bb9:                                              ; preds = %bb9.preheader68, %bb9
  %iter.sroa.11.067 = phi i64 [ %32, %bb9 ], [ %iter.sroa.11.067.ph, %bb9.preheader68 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !481, metadata !DIExpression()) #4, !dbg !908
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !509, metadata !DIExpression()) #4, !dbg !909
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !500, metadata !DIExpression()) #4, !dbg !910
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !501, metadata !DIExpression()) #4, !dbg !910
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !493, metadata !DIExpression()) #4, !dbg !911
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !494, metadata !DIExpression()) #4, !dbg !911
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !912
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !518, metadata !DIExpression()) #4, !dbg !912
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !519, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !913
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !915
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !915
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !916
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !916
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !809, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !885
  %30 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.067, !dbg !893
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.067, 1, !dbg !897
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !913
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !915
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !916
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !899
  %32 = add nuw nsw i64 %iter.sroa.11.067, 1, !dbg !892
  call void @llvm.dbg.value(metadata i64 %32, metadata !809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i16* %30, metadata !811, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !917
  call void @llvm.dbg.value(metadata i8* %31, metadata !811, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !917
  call void @llvm.dbg.value(metadata i64 undef, metadata !811, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !917
  call void @llvm.dbg.value(metadata i8* %31, metadata !817, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !918
  call void @llvm.dbg.value(metadata i64 undef, metadata !817, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !918
  %b = load i16, i16* %30, align 2, !dbg !902
  call void @llvm.dbg.value(metadata i16 %b, metadata !815, metadata !DIExpression()), !dbg !918
  %33 = trunc i16 %b to i8, !dbg !903
  store i8 %33, i8* %31, align 1, !dbg !903
  %_24 = lshr i16 %b, 8, !dbg !904
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !905
  %35 = trunc i16 %_24 to i8, !dbg !905
  store i8 %35, i8* %34, align 1, !dbg !905
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !886
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !888
  %_2.i.i = icmp ult i64 %32, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !890
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !891, !llvm.loop !919
}

; iterator_bench::zip_chunks_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !920 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !922, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !933
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !922, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !933
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !923, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !933
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !923, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !933
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !934
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !934
  call void @llvm.dbg.value(metadata i64 2, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !934
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !934
  call void @llvm.dbg.value(metadata i16* undef, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !934
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !936
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !936
  call void @llvm.dbg.value(metadata i64 2, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !936
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !936
  call void @llvm.dbg.value(metadata i16* undef, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !936
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !938
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !938
  call void @llvm.dbg.value(metadata i64 2, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !938
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !938
  call void @llvm.dbg.value(metadata i16* undef, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !938
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !940
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !940
  %output.068 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp eq i64 %output.1, 0, !dbg !944
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !945
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !945
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !945
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !945
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !950
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !952
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !950
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i16* undef, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !953
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i64 2, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i64 0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !953
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !954
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !956
  %_2.i.i66 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !958
  br i1 %_2.i.i66, label %bb7, label %bb9.preheader, !dbg !959

bb9.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !959
  br i1 %min.iters.check, label %bb9.preheader73, label %vector.scevcheck, !dbg !959

bb9.preheader73:                                  ; preds = %middle.block, %vector.scevcheck, %bb9.preheader
  %iter.sroa.11.067.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !959

vector.scevcheck:                                 ; preds = %bb9.preheader
  %2 = add i64 %.0.sroa.speculated.i.i.i.i.i.i, -1, !dbg !959
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !959
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !959
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !959
  %3 = xor i64 %output.068, -1, !dbg !959
  %4 = icmp ugt i64 %mul.result, %3, !dbg !959
  %5 = or i1 %4, %mul.overflow, !dbg !959
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !959
  %scevgep69 = ptrtoint i8* %scevgep to i64
  %mul70 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !959
  %mul.result71 = extractvalue { i64, i1 } %mul70, 0, !dbg !959
  %mul.overflow72 = extractvalue { i64, i1 } %mul70, 1, !dbg !959
  %6 = xor i64 %scevgep69, -1, !dbg !959
  %7 = icmp ugt i64 %mul.result71, %6, !dbg !959
  %8 = or i1 %7, %mul.overflow72, !dbg !959
  %9 = or i1 %5, %8, !dbg !959
  br i1 %9, label %bb9.preheader73, label %vector.ph, !dbg !959

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, -8, !dbg !959
  %10 = add i64 %n.vec, -8, !dbg !959
  %11 = lshr exact i64 %10, 3, !dbg !959
  %12 = add nuw nsw i64 %11, 1, !dbg !959
  %xtraiter = and i64 %12, 1, !dbg !959
  %13 = icmp eq i64 %10, 0, !dbg !959
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !959

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %12, %xtraiter, !dbg !959
  br label %vector.body, !dbg !959

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !960
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !961
  %15 = shl i64 %index, 1, !dbg !965
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !967
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !970
  %wide.load = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !970
  %18 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !971
  %19 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !972
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !973
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !973
  %interleaved.vec = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !973
  store <16 x i8> %interleaved.vec, <16 x i8>* %21, align 1, !dbg !973
  %index.next = or i64 %index, 8, !dbg !960
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !961
  %23 = shl i64 %index.next, 1, !dbg !965
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !967
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !970
  %wide.load.1 = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !970
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !971
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !972
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !973
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !973
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !973
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %29, align 1, !dbg !973
  %index.next.1 = add i64 %index, 16, !dbg !960
  %niter.nsub.1 = add i64 %niter, -2, !dbg !960
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !960
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !960, !llvm.loop !974

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !960
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !960

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !961
  %31 = shl i64 %index.unr, 1, !dbg !965
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %31, !dbg !967
  %33 = bitcast i16* %30 to <8 x i16>*, !dbg !970
  %wide.load.epil = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !970
  %34 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !971
  %35 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !972
  %36 = trunc <8 x i16> %35 to <8 x i8>, !dbg !973
  %37 = bitcast i8* %32 to <16 x i8>*, !dbg !973
  %interleaved.vec.epil = shufflevector <8 x i8> %34, <8 x i8> %36, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !973
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %37, align 1, !dbg !973
  br label %middle.block, !dbg !959

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !959
  br i1 %cmp.n, label %bb7, label %bb9.preheader73, !dbg !959

bb7:                                              ; preds = %bb9, %middle.block, %start
  ret void, !dbg !975

bb9:                                              ; preds = %bb9.preheader73, %bb9
  %iter.sroa.11.067 = phi i64 [ %40, %bb9 ], [ %iter.sroa.11.067.ph, %bb9.preheader73 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !481, metadata !DIExpression()) #4, !dbg !976
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !509, metadata !DIExpression()) #4, !dbg !977
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()) #4, !dbg !978
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !501, metadata !DIExpression()) #4, !dbg !978
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()) #4, !dbg !979
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !494, metadata !DIExpression()) #4, !dbg !979
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !980
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !518, metadata !DIExpression()) #4, !dbg !980
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !519, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !981
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !982
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !983
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !983
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !984
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !984
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.067, metadata !924, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !953
  %38 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.067, !dbg !961
  %start1.i.i.i = shl i64 %iter.sroa.11.067, 1, !dbg !965
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !981
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !983
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !984
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !967
  %40 = add nuw i64 %iter.sroa.11.067, 1, !dbg !960
  call void @llvm.dbg.value(metadata i64 %40, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !953
  call void @llvm.dbg.value(metadata i16* %38, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !985
  call void @llvm.dbg.value(metadata i8* %39, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !985
  call void @llvm.dbg.value(metadata i64 undef, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !985
  call void @llvm.dbg.value(metadata i16* %38, metadata !930, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8* %39, metadata !932, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !986
  call void @llvm.dbg.value(metadata i64 undef, metadata !932, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !986
  %_20 = load i16, i16* %38, align 2, !dbg !970
  %41 = trunc i16 %_20 to i8, !dbg !971
  store i8 %41, i8* %39, align 1, !dbg !971
  %_23 = lshr i16 %_20, 8, !dbg !972
  %42 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !973
  %43 = trunc i16 %_23 to i8, !dbg !973
  store i8 %43, i8* %42, align 1, !dbg !973
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !954
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !956
  %_2.i.i = icmp ult i64 %40, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !958
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !959, !llvm.loop !987
}

; iterator_bench::zip_chunks_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !988 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !990, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !990, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !991, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !991, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1001
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1002
  call void @llvm.dbg.value(metadata i64 2, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1002
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1002
  call void @llvm.dbg.value(metadata i16* undef, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1002
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1004
  call void @llvm.dbg.value(metadata i64 2, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1004
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1004
  call void @llvm.dbg.value(metadata i16* undef, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1004
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1006
  call void @llvm.dbg.value(metadata i64 2, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1006
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1006
  call void @llvm.dbg.value(metadata i16* undef, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1006
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1008
  %0 = icmp eq i64 %output.1, 0, !dbg !1012
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1013
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1013
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1013
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1018
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1020
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1018
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i16* undef, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 2, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 320000, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !1022
  br label %bb2.i, !dbg !1024

bb2.i:                                            ; preds = %bb10.1, %start
  %iter.sroa.16.098 = phi i64 [ 320000, %start ], [ %8, %bb10.1 ]
  %iter.sroa.11.097 = phi i64 [ 0, %start ], [ %11, %bb10.1 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !1025
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !1027
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.097, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1029
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1030

bb8:                                              ; preds = %bb10.1, %bb10, %bb2.i
  ret void, !dbg !1031

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !1025
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !481, metadata !DIExpression()) #4, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !509, metadata !DIExpression()) #4, !dbg !1033
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()) #4, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !501, metadata !DIExpression()) #4, !dbg !1035
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()) #4, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !494, metadata !DIExpression()) #4, !dbg !1037
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !518, metadata !DIExpression()) #4, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !519, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1041
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !1042
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1043
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.097, metadata !992, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.097, !dbg !1047
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.097, 1, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !1045
  %3 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1049
  %4 = or i64 %iter.sroa.11.097, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i16* %2, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %3, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i64 undef, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i16* %2, metadata !998, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %3, metadata !1000, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1052
  call void @llvm.dbg.value(metadata i64 undef, metadata !1000, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1052
  %_21 = load i16, i16* %2, align 2, !dbg !1053
  %5 = trunc i16 %_21 to i8, !dbg !1054
  store i8 %5, i8* %3, align 1, !dbg !1054
  %_24 = lshr i16 %_21, 8, !dbg !1055
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1056
  %7 = trunc i16 %_24 to i8, !dbg !1056
  store i8 %7, i8* %6, align 1, !dbg !1056
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.098, metadata !992, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  %8 = add nsw i64 %iter.sroa.16.098, -2, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %8, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  %_2.i.i.i.1 = icmp ult i64 %4, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1029
  br i1 %_2.i.i.i.1, label %bb10.1, label %bb8, !dbg !1030

bb10.1:                                           ; preds = %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !1025
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %4, metadata !481, metadata !DIExpression()) #4, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %4, metadata !509, metadata !DIExpression()) #4, !dbg !1033
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()) #4, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %4, metadata !501, metadata !DIExpression()) #4, !dbg !1035
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()) #4, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %4, metadata !494, metadata !DIExpression()) #4, !dbg !1037
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %4, metadata !518, metadata !DIExpression()) #4, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %4, metadata !519, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1041
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !1042
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %4, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1043
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %4, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #4, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %8, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  %9 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %4, !dbg !1047
  %start1.i.i.i.i.1 = shl nuw i64 %4, 1, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !519, metadata !DIExpression()) #4, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()) #4, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()) #4, !dbg !1045
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1049
  %11 = add nuw nsw i64 %iter.sroa.11.097, 2, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %11, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i16* %9, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %10, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i64 undef, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1051
  call void @llvm.dbg.value(metadata i16* %9, metadata !998, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %10, metadata !1000, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1052
  call void @llvm.dbg.value(metadata i64 undef, metadata !1000, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1052
  %_21.1 = load i16, i16* %9, align 2, !dbg !1053
  %12 = trunc i16 %_21.1 to i8, !dbg !1054
  store i8 %12, i8* %10, align 1, !dbg !1054
  %_24.1 = lshr i16 %_21.1, 8, !dbg !1055
  %13 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1056
  %14 = trunc i16 %_24.1 to i8, !dbg !1056
  store i8 %14, i8* %13, align 1, !dbg !1056
  call void @llvm.dbg.value(metadata i64 %8, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %11, metadata !992, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1021
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !1022
  %_2.i.1 = icmp eq i64 %8, 0, !dbg !1058
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1024
}

; iterator_bench::zip_chunks_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1059 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1062, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1062, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i64 2, metadata !721, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i16* undef, metadata !730, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1085
  call void @llvm.dbg.value(metadata i64 2, metadata !736, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1085
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1085
  call void @llvm.dbg.value(metadata i16* undef, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1085
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1087
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1087
  call void @llvm.dbg.value(metadata i64 2, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1087
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1087
  call void @llvm.dbg.value(metadata i16* undef, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1087
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1089
  %0 = icmp eq i64 %output.1, 0, !dbg !1093
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1094
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1094
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1094
  %_3.sroa.8.0.i.i.i.i = select i1 %0, i64 0, i64 %n.0.i.i.i.i.i, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1099
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1101
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1099
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i16* undef, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 2, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 0, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 320000, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !1103
  br label %bb2.i, !dbg !1105

bb6.loopexit:                                     ; preds = %bb17.prol.loopexit, %bb17, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E.exit"
  call void @llvm.dbg.value(metadata i64 %9, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %10, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !556, metadata !DIExpression()) #4, !dbg !1103
  %_2.i = icmp eq i64 %9, 0, !dbg !1106
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1105

bb2.i:                                            ; preds = %start, %bb6.loopexit
  %iter.sroa.16.0113 = phi i64 [ 320000, %start ], [ %9, %bb6.loopexit ]
  %iter.sroa.11.0112 = phi i64 [ 0, %start ], [ %10, %bb6.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0113, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1102
  %2 = shl nuw nsw i64 %iter.sroa.11.0112, 1, !dbg !1107
  %3 = add nuw i64 %2, 2, !dbg !1107
  %4 = icmp ugt i64 %3, %output.1, !dbg !1107
  %umin = select i1 %4, i64 %output.1, i64 %3, !dbg !1107
  %5 = mul nsw i64 %iter.sroa.11.0112, -2, !dbg !1107
  %6 = add i64 %umin, %5, !dbg !1107
  %7 = add i64 %5, -1, !dbg !1107
  %8 = add i64 %umin, %7, !dbg !1107
  %9 = add nsw i64 %iter.sroa.16.0113, -1, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %9, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !1108
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !1110
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0112, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1112
  br i1 %_2.i.i.i, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E.exit", label %bb8, !dbg !1113

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E.exit": ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !456, metadata !DIExpression()) #4, !dbg !1108
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !478, metadata !DIExpression()) #4, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !481, metadata !DIExpression()) #4, !dbg !1114
  %10 = add nuw nsw i64 %iter.sroa.11.0112, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %10, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !509, metadata !DIExpression()) #4, !dbg !1116
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()) #4, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !501, metadata !DIExpression()) #4, !dbg !1118
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()) #4, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !494, metadata !DIExpression()) #4, !dbg !1120
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !517, metadata !DIExpression()) #4, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0112, metadata !518, metadata !DIExpression()) #4, !dbg !1122
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0112, 1, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !519, metadata !DIExpression()) #4, !dbg !1125
  %11 = add nuw nsw i64 %start1.i.i.i.i, 2
  call void @llvm.dbg.value(metadata i64 undef, metadata !521, metadata !DIExpression()) #4, !dbg !1126
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !1127
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %9, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %10, metadata !1063, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1102
  %12 = icmp ugt i64 %11, %output.1, !dbg !1131
  %end.0.i.i.i.i = select i1 %12, i64 %output.1, i64 %11, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !521, metadata !DIExpression()) #4, !dbg !1126
  call void @llvm.dbg.value(metadata i16* undef, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1132
  call void @llvm.dbg.value(metadata i8* undef, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1132
  call void @llvm.dbg.value(metadata i64 undef, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1132
  call void @llvm.dbg.value(metadata i8* undef, metadata !1071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1133
  call void @llvm.dbg.value(metadata i64 undef, metadata !1071, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1133
  call void @llvm.dbg.value(metadata i16 undef, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i16 undef, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1135
  call void @llvm.dbg.value(metadata i64 undef, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1135
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 undef, metadata !193, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 undef, metadata !184, metadata !DIExpression()), !dbg !1140
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %end.0.i.i.i.i, !dbg !1142
  call void @llvm.dbg.value(metadata i8* undef, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %13, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i16 undef, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !665, metadata !DIExpression()), !dbg !1144
  %_13.i109 = icmp eq i64 %start1.i.i.i.i, %end.0.i.i.i.i, !dbg !1146
  br i1 %_13.i109, label %bb6.loopexit, label %bb17.preheader, !dbg !1147

bb17.preheader:                                   ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E.exit"
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0112, !dbg !1148
  call void @llvm.dbg.value(metadata i16* %14, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1132
  %b = load i16, i16* %14, align 2, !dbg !1149
  call void @llvm.dbg.value(metadata i16 %b, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i16 %b, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i16 %b, metadata !1072, metadata !DIExpression()), !dbg !1134
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %15, metadata !652, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %15, metadata !192, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %15, metadata !183, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %15, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %15, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1135
  call void @llvm.dbg.value(metadata i8* %15, metadata !1071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1133
  call void @llvm.dbg.value(metadata i8* %15, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1132
  %xtraiter = and i64 %6, 7, !dbg !1147
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1147
  br i1 %lcmp.mod, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1147

bb17.prol:                                        ; preds = %bb17.preheader, %bb17.prol
  %val1.0111.prol = phi i16 [ %18, %bb17.prol ], [ %b, %bb17.preheader ]
  %iter2.sroa.0.0110.prol = phi i8* [ %16, %bb17.prol ], [ %15, %bb17.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %bb17.prol ], [ %xtraiter, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i16 %val1.0111.prol, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !686, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !183, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1154
  %16 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110.prol, i64 1, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %16, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110.prol, metadata !1080, metadata !DIExpression()), !dbg !1158
  %17 = trunc i16 %val1.0111.prol to i8, !dbg !1159
  store i8 %17, i8* %iter2.sroa.0.0110.prol, align 1, !dbg !1159
  %18 = lshr i16 %val1.0111.prol, 8, !dbg !1160
  call void @llvm.dbg.value(metadata i16 %18, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !665, metadata !DIExpression()), !dbg !1144
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !1147
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !1147
  br i1 %prol.iter.cmp, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1147, !llvm.loop !1161

bb17.prol.loopexit:                               ; preds = %bb17.prol, %bb17.preheader
  %val1.0111.unr = phi i16 [ %b, %bb17.preheader ], [ %18, %bb17.prol ]
  %iter2.sroa.0.0110.unr = phi i8* [ %15, %bb17.preheader ], [ %16, %bb17.prol ]
  %19 = icmp ult i64 %8, 7, !dbg !1147
  br i1 %19, label %bb6.loopexit, label %bb17, !dbg !1147

bb8:                                              ; preds = %bb2.i, %bb6.loopexit
  ret void, !dbg !1163

bb17:                                             ; preds = %bb17.prol.loopexit, %bb17
  %val1.0111 = phi i16 [ 0, %bb17 ], [ %val1.0111.unr, %bb17.prol.loopexit ]
  %iter2.sroa.0.0110 = phi i8* [ %30, %bb17 ], [ %iter2.sroa.0.0110.unr, %bb17.prol.loopexit ]
  call void @llvm.dbg.value(metadata i16 %val1.0111, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !686, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !183, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1154
  %20 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 1, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %20, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0110, metadata !1080, metadata !DIExpression()), !dbg !1158
  %21 = trunc i16 %val1.0111 to i8, !dbg !1159
  store i8 %21, i8* %iter2.sroa.0.0110, align 1, !dbg !1159
  %22 = lshr i16 %val1.0111, 8, !dbg !1160
  call void @llvm.dbg.value(metadata i16 %22, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !665, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %20, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %20, metadata !183, metadata !DIExpression()), !dbg !1154
  %23 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 2, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %23, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %20, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %20, metadata !1080, metadata !DIExpression()), !dbg !1158
  %24 = trunc i16 %22 to i8, !dbg !1159
  store i8 %24, i8* %20, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %23, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %23, metadata !183, metadata !DIExpression()), !dbg !1154
  %25 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 3, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %25, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %23, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %23, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %23, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %25, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %25, metadata !183, metadata !DIExpression()), !dbg !1154
  %26 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 4, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %26, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %25, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %25, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %25, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %26, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %26, metadata !183, metadata !DIExpression()), !dbg !1154
  %27 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 5, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %27, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %26, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %26, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %26, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %27, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %27, metadata !183, metadata !DIExpression()), !dbg !1154
  %28 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 6, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %28, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %27, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %27, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %27, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %28, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %28, metadata !183, metadata !DIExpression()), !dbg !1154
  %29 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 7, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %29, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %28, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %28, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %28, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %29, metadata !692, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %29, metadata !183, metadata !DIExpression()), !dbg !1154
  %30 = getelementptr inbounds i8, i8* %iter2.sroa.0.0110, i64 8, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %30, metadata !1074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %29, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %29, metadata !1080, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %29, align 1, !dbg !1159
  call void @llvm.dbg.value(metadata i16 0, metadata !1072, metadata !DIExpression()), !dbg !1134
  %_13.i.7 = icmp eq i8* %30, %13, !dbg !1146
  br i1 %_13.i.7, label %bb6.loopexit, label %bb17, !dbg !1147
}

; iterator_bench::zip_chunks_exact_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1164 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1166, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1166, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1190
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1190
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1191
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1222
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata i8* undef, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata i64 2, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata i16* undef, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1232
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1234, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  call void @llvm.dbg.value(metadata i64 2, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1238
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  call void @llvm.dbg.value(metadata i16* undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 2, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i16* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1246
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1279
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1281
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1279
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i16* undef, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1168, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i8* undef, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1168, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 2, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 0, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1296
  %_2.i.i93 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1298
  br i1 %_2.i.i93, label %bb7, label %bb9.preheader, !dbg !1299

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1299
  br i1 %min.iters.check, label %bb9.preheader95, label %vector.ph, !dbg !1299

bb9.preheader95:                                  ; preds = %middle.block, %bb9.preheader
  %iter.sroa.11.094.ph = phi i64 [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !1299

vector.ph:                                        ; preds = %bb9.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 9223372036854775800, !dbg !1299
  %1 = add nsw i64 %n.vec, -8, !dbg !1299
  %2 = lshr exact i64 %1, 3, !dbg !1299
  %3 = add nuw nsw i64 %2, 1, !dbg !1299
  %xtraiter = and i64 %3, 1, !dbg !1299
  %4 = icmp eq i64 %1, 0, !dbg !1299
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1299

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %3, %xtraiter, !dbg !1299
  br label %vector.body, !dbg !1299

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1300
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %5 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1301
  %6 = shl nuw i64 %index, 1, !dbg !1305
  %7 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %6, !dbg !1316
  %8 = bitcast i16* %5 to <8 x i16>*, !dbg !1319
  %wide.load = load <8 x i16>, <8 x i16>* %8, align 2, !dbg !1319
  %9 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1320
  %10 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1321
  %11 = trunc <8 x i16> %10 to <8 x i8>, !dbg !1322
  %12 = bitcast i8* %7 to <16 x i8>*, !dbg !1322
  %interleaved.vec = shufflevector <8 x i8> %9, <8 x i8> %11, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1322
  store <16 x i8> %interleaved.vec, <16 x i8>* %12, align 1, !dbg !1322
  %index.next = or i64 %index, 8, !dbg !1300
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1301
  %14 = shl nuw i64 %index.next, 1, !dbg !1305
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %14, !dbg !1316
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !1319
  %wide.load.1 = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !1319
  %17 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1320
  %18 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1321
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !1322
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !1322
  %interleaved.vec.1 = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1322
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %20, align 1, !dbg !1322
  %index.next.1 = add i64 %index, 16, !dbg !1300
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1300
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1300
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1300, !llvm.loop !1323

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1300
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1300

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1301
  %22 = shl nuw i64 %index.unr, 1, !dbg !1305
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %22, !dbg !1316
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !1319
  %wide.load.epil = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !1319
  %25 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1320
  %26 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1321
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !1322
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !1322
  %interleaved.vec.epil = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1322
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %28, align 1, !dbg !1322
  br label %middle.block, !dbg !1299

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1299
  br i1 %cmp.n, label %bb7, label %bb9.preheader95, !dbg !1299

bb7:                                              ; preds = %bb9, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1324

bb9:                                              ; preds = %bb9.preheader95, %bb9
  %iter.sroa.11.094 = phi i64 [ %31, %bb9 ], [ %iter.sroa.11.094.ph, %bb9.preheader95 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !1294, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !509, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !501, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !494, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !1312, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1330
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1331
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1332
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.094, metadata !1168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1282
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.094, !dbg !1301
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.094, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1313, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1332
  %30 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1316
  %31 = add nuw nsw i64 %iter.sroa.11.094, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %31, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1282
  call void @llvm.dbg.value(metadata i16* %29, metadata !1183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1333
  call void @llvm.dbg.value(metadata i8* %30, metadata !1183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1333
  call void @llvm.dbg.value(metadata i64 undef, metadata !1183, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1333
  call void @llvm.dbg.value(metadata i16* %29, metadata !1187, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %30, metadata !1189, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1334
  call void @llvm.dbg.value(metadata i64 undef, metadata !1189, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1334
  %_20 = load i16, i16* %29, align 2, !dbg !1319
  %32 = trunc i16 %_20 to i8, !dbg !1320
  store i8 %32, i8* %30, align 1, !dbg !1320
  %_23 = lshr i16 %_20, 8, !dbg !1321
  %33 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1322
  %34 = trunc i16 %_23 to i8, !dbg !1322
  store i8 %34, i8* %33, align 1, !dbg !1322
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1296
  %_2.i.i = icmp ult i64 %31, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1298
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !1299, !llvm.loop !1335
}

; iterator_bench::zip_chunks_exact_unknown_size_slice_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1336 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1338, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1338, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1349
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1349
  call void @llvm.dbg.value(metadata i64 320000, metadata !750, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 320000, metadata !756, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 320000, metadata !762, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1354
  %0 = icmp ult i64 %input.1, 320000, !dbg !1356
  %.0.sroa.speculated.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !1354
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1357
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1361
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata i8* undef, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata i64 2, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata i16* undef, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1363
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1234, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 2, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i16* undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata i64 2, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1367
  call void @llvm.dbg.value(metadata i16* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1367
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !750, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1376
  %1 = icmp ugt i64 %.0.sroa.speculated.i.i.i, %n.i.i.i.i.i, !dbg !1378
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %1, i64 %n.i.i.i.i.i, i64 %.0.sroa.speculated.i.i.i, !dbg !1376
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i16* undef, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1340, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i8* undef, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1382
  %_2.i.i94 = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, 0, !dbg !1384
  br i1 %_2.i.i94, label %bb10, label %bb12.preheader, !dbg !1385

bb12.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i.i.i.i.i, 8, !dbg !1385
  br i1 %min.iters.check, label %bb12.preheader96, label %vector.ph, !dbg !1385

bb12.preheader96:                                 ; preds = %middle.block, %bb12.preheader
  %iter.sroa.11.095.ph = phi i64 [ 0, %bb12.preheader ], [ %n.vec, %middle.block ]
  br label %bb12, !dbg !1385

vector.ph:                                        ; preds = %bb12.preheader
  %n.vec = and i64 %.0.sroa.speculated.i.i.i.i.i.i, 524280, !dbg !1385
  %2 = add nsw i64 %n.vec, -8, !dbg !1385
  %3 = lshr exact i64 %2, 3, !dbg !1385
  %4 = add nuw nsw i64 %3, 1, !dbg !1385
  %xtraiter = and i64 %4, 1, !dbg !1385
  %5 = icmp eq i64 %2, 0, !dbg !1385
  br i1 %5, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1385

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %4, %xtraiter, !dbg !1385
  br label %vector.body, !dbg !1385

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1386
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %6 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1387
  %7 = shl nuw i64 %index, 1, !dbg !1391
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %7, !dbg !1393
  %9 = bitcast i16* %6 to <8 x i16>*, !dbg !1396
  %wide.load = load <8 x i16>, <8 x i16>* %9, align 2, !dbg !1396
  %10 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1397
  %11 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1398
  %12 = trunc <8 x i16> %11 to <8 x i8>, !dbg !1399
  %13 = bitcast i8* %8 to <16 x i8>*, !dbg !1399
  %interleaved.vec = shufflevector <8 x i8> %10, <8 x i8> %12, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1399
  store <16 x i8> %interleaved.vec, <16 x i8>* %13, align 1, !dbg !1399
  %index.next = or i64 %index, 8, !dbg !1386
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1387
  %15 = shl nuw i64 %index.next, 1, !dbg !1391
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !1393
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !1396
  %wide.load.1 = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !1396
  %18 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1397
  %19 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1398
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !1399
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !1399
  %interleaved.vec.1 = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1399
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %21, align 1, !dbg !1399
  %index.next.1 = add i64 %index, 16, !dbg !1386
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1386
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1386
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1386, !llvm.loop !1400

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1386
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1386

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1387
  %23 = shl nuw i64 %index.unr, 1, !dbg !1391
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !1393
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !1396
  %wide.load.epil = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !1396
  %26 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1397
  %27 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1398
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !1399
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !1399
  %interleaved.vec.epil = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1399
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %29, align 1, !dbg !1399
  br label %middle.block, !dbg !1385

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i.i.i.i.i, %n.vec, !dbg !1385
  br i1 %cmp.n, label %bb10, label %bb12.preheader96, !dbg !1385

bb10:                                             ; preds = %bb12, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1401

bb12:                                             ; preds = %bb12.preheader96, %bb12
  %iter.sroa.11.095 = phi i64 [ %32, %bb12 ], [ %iter.sroa.11.095.ph, %bb12.preheader96 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !1294, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !509, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !501, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !494, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !1312, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1407
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1408
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.095, metadata !1340, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1379
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.095, !dbg !1387
  %start1.i.i.i = shl nuw i64 %iter.sroa.11.095, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1313, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1409
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1393
  %32 = add nuw nsw i64 %iter.sroa.11.095, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %32, metadata !1340, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1379
  call void @llvm.dbg.value(metadata i16* %30, metadata !1342, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %31, metadata !1342, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1410
  call void @llvm.dbg.value(metadata i64 undef, metadata !1342, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1410
  call void @llvm.dbg.value(metadata i16* %30, metadata !1346, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %31, metadata !1348, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1411
  call void @llvm.dbg.value(metadata i64 undef, metadata !1348, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1411
  %_26 = load i16, i16* %30, align 2, !dbg !1396
  %33 = trunc i16 %_26 to i8, !dbg !1397
  store i8 %33, i8* %31, align 1, !dbg !1397
  %_29 = lshr i16 %_26, 8, !dbg !1398
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1399
  %35 = trunc i16 %_29 to i8, !dbg !1399
  store i8 %35, i8* %34, align 1, !dbg !1399
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1382
  %_2.i.i = icmp ult i64 %32, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1384
  br i1 %_2.i.i, label %bb12, label %bb10, !dbg !1385, !llvm.loop !1412
}

; iterator_bench::zip_chunks_exact_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1413 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1432
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1432
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1433
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1437
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata i8* undef, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata i64 2, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata i16* undef, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1234, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i64 2, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata i16* undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1441
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata i64 2, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1443
  call void @llvm.dbg.value(metadata i16* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1443
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1452
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1454
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1452
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i16* undef, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1417, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i8* undef, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 2, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 0, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 320000, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1462
  br label %bb2.i, !dbg !1464

bb2.i:                                            ; preds = %bb10.1, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %iter.sroa.16.0133 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %7, %bb10.1 ]
  %iter.sroa.11.0132 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %10, %bb10.1 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1467
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0132, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1469
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1470

bb8:                                              ; preds = %bb10.1, %bb10, %bb2.i
  ret void, !dbg !1471

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !1294, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !509, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !501, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !494, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !1312, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1481
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1482
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0132, metadata !1417, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0132, !dbg !1486
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0132, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1313, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1484
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1488
  %3 = or i64 %iter.sroa.11.0132, 1, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %3, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i16* %1, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %2, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i64 undef, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i16* %1, metadata !1429, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8* %2, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1491
  call void @llvm.dbg.value(metadata i64 undef, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1491
  %_21 = load i16, i16* %1, align 2, !dbg !1492
  %4 = trunc i16 %_21 to i8, !dbg !1493
  store i8 %4, i8* %2, align 1, !dbg !1493
  %_24 = lshr i16 %_21, 8, !dbg !1494
  %5 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1495
  %6 = trunc i16 %_24 to i8, !dbg !1495
  store i8 %6, i8* %5, align 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %3, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0133, metadata !1417, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %3, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  %7 = add nsw i64 %iter.sroa.16.0133, -2, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %7, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  %_2.i.i.i.1 = icmp ult i64 %3, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1469
  br i1 %_2.i.i.i.1, label %bb10.1, label %bb8, !dbg !1470

bb10.1:                                           ; preds = %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %3, metadata !1294, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %3, metadata !509, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %3, metadata !501, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %3, metadata !494, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %3, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1481
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %3, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1482
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %3, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %7, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %3, metadata !1417, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %3, !dbg !1486
  %start1.i.i.i.i.1 = shl nuw i64 %3, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1313, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1484
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1488
  %10 = add nuw nsw i64 %iter.sroa.11.0132, 2, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %10, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i16* %8, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %9, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i64 undef, metadata !1425, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1490
  call void @llvm.dbg.value(metadata i16* %8, metadata !1429, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8* %9, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1491
  call void @llvm.dbg.value(metadata i64 undef, metadata !1431, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1491
  %_21.1 = load i16, i16* %8, align 2, !dbg !1492
  %11 = trunc i16 %_21.1 to i8, !dbg !1493
  store i8 %11, i8* %9, align 1, !dbg !1493
  %_24.1 = lshr i16 %_21.1, 8, !dbg !1494
  %12 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1495
  %13 = trunc i16 %_24.1 to i8, !dbg !1495
  store i8 %13, i8* %12, align 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %7, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %10, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1462
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1497
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1464
}

; iterator_bench::zip_chunks_exact_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1498 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1521
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1501, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1501, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1521
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1522
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1526
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata i8* undef, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1224, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata i64 2, metadata !1224, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata i16* undef, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1528
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1530
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1234, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1530
  call void @llvm.dbg.value(metadata i64 2, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1530
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1530
  call void @llvm.dbg.value(metadata i16* undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1530
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata i64 2, metadata !1240, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1532
  call void @llvm.dbg.value(metadata i16* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !750, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1541
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1543
  %.0.sroa.speculated.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1541
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i16* undef, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1502, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i8* undef, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 2, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %.0.sroa.speculated.i.i.i.i.i.i, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 320000, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1545
  br label %bb2.i, !dbg !1547

bb2.i:                                            ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1", %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %iter.sroa.16.0147 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %7, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1" ]
  %iter.sroa.11.0146 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %13, %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1" ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1550
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0146, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1552
  br i1 %_2.i.i.i, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit", label %bb8, !dbg !1553

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit": ; preds = %bb2.i
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1294, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !509, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !501, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !494, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1312, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1563
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1564
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0146, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %6, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0146, !dbg !1568
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0146, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1313, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1566
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1570
  call void @llvm.dbg.value(metadata i16* %1, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %2, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i64 2, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %2, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1572
  call void @llvm.dbg.value(metadata i64 2, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1572
  %b = load i16, i16* %1, align 2, !dbg !1573
  call void @llvm.dbg.value(metadata i16 %b, metadata !1508, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %2, metadata !1513, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i16 %b, metadata !1511, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* undef, metadata !1513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i8* %2, metadata !1515, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %2, metadata !1519, metadata !DIExpression()), !dbg !1586
  %3 = trunc i16 %b to i8, !dbg !1587
  store i8 %3, i8* %2, align 1, !dbg !1587
  %4 = lshr i16 %b, 8, !dbg !1588
  call void @llvm.dbg.value(metadata i16 %4, metadata !1511, metadata !DIExpression()), !dbg !1580
  %iter2.sroa.0.0.ptr.1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !183, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1515, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1519, metadata !DIExpression()), !dbg !1586
  %5 = trunc i16 %4 to i8, !dbg !1587
  store i8 %5, i8* %iter2.sroa.0.0.ptr.1, align 1, !dbg !1587
  call void @llvm.dbg.value(metadata i16 0, metadata !1511, metadata !DIExpression()), !dbg !1580
  %6 = or i64 %iter.sroa.11.0146, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %6, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %iter.sroa.16.0147, metadata !1502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %6, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  %7 = add nsw i64 %iter.sroa.16.0147, -2, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %7, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  %_2.i.i.i.1 = icmp ult i64 %6, %.0.sroa.speculated.i.i.i.i.i.i, !dbg !1552
  br i1 %_2.i.i.i.1, label %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1", label %bb8, !dbg !1553

bb8:                                              ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1", %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit", %bb2.i
  ret void, !dbg !1591

"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit.1": ; preds = %"_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE.exit"
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1283, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1291, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %6, metadata !1294, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %6, metadata !509, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !500, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %6, metadata !501, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !493, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %6, metadata !494, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 %6, metadata !1312, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 %6, metadata !1313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1563
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %6, metadata !193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1564
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %6, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %7, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %13, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %6, !dbg !1568
  %start1.i.i.i.i.1 = shl nuw i64 %6, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1313, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1566
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1570
  call void @llvm.dbg.value(metadata i16* %8, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %9, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i64 2, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %9, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1572
  call void @llvm.dbg.value(metadata i64 2, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1572
  %b.1 = load i16, i16* %8, align 2, !dbg !1573
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1508, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %9, metadata !1513, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1511, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* undef, metadata !1513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i8* %9, metadata !1515, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %9, metadata !1519, metadata !DIExpression()), !dbg !1586
  %10 = trunc i16 %b.1 to i8, !dbg !1587
  store i8 %10, i8* %9, align 1, !dbg !1587
  %11 = lshr i16 %b.1, 8, !dbg !1588
  call void @llvm.dbg.value(metadata i16 %11, metadata !1511, metadata !DIExpression()), !dbg !1580
  %iter2.sroa.0.0.ptr.1.1 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !183, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1515, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1519, metadata !DIExpression()), !dbg !1586
  %12 = trunc i16 %11 to i8, !dbg !1587
  store i8 %12, i8* %iter2.sroa.0.0.ptr.1.1, align 1, !dbg !1587
  call void @llvm.dbg.value(metadata i16 0, metadata !1511, metadata !DIExpression()), !dbg !1580
  %13 = add nuw nsw i64 %iter.sroa.11.0146, 2, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %7, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %13, metadata !1502, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1544
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1456, metadata !DIExpression()), !dbg !1545
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1592
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1547
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!76 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
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
!108 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "b610d63e687c1bb61890b7290628f313")
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
!124 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "1029a80e51f3b78113c12b9a07d56765")
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
!146 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9fd93c8a41addff7ba15d9096da1df6c")
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
!176 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "238dec856f48b4ef677669c578abb280")
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
!220 = distinct !DISubprogram(name: "c_style_input_size_fixed_impl", linkageName: "_ZN14iterator_bench29c_style_input_size_fixed_impl17hcfe426a147d1500bE", scope: !39, file: !38, line: 265, type: !221, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !199, !46}
!223 = !{!224, !225, !226, !228, !230, !232, !234}
!224 = !DILocalVariable(name: "output", arg: 1, scope: !220, file: !38, line: 265, type: !199)
!225 = !DILocalVariable(name: "input", arg: 2, scope: !220, file: !38, line: 265, type: !46)
!226 = !DILocalVariable(name: "iter", scope: !227, file: !38, line: 266, type: !56, align: 8)
!227 = distinct !DILexicalBlock(scope: !220, file: !38, line: 266, column: 17)
!228 = !DILocalVariable(name: "__next", scope: !229, file: !38, line: 266, type: !36, align: 8)
!229 = distinct !DILexicalBlock(scope: !227, file: !38, line: 266, column: 26)
!230 = !DILocalVariable(name: "val", scope: !231, file: !38, line: 266, type: !36, align: 8)
!231 = distinct !DILexicalBlock(scope: !229, file: !38, line: 266, column: 21)
!232 = !DILocalVariable(name: "i", scope: !233, file: !38, line: 266, type: !36, align: 8)
!233 = distinct !DILexicalBlock(scope: !229, file: !38, line: 266, column: 26)
!234 = !DILocalVariable(name: "b", scope: !235, file: !38, line: 267, type: !48, align: 2)
!235 = distinct !DILexicalBlock(scope: !233, file: !38, line: 267, column: 21)
!236 = !DILocation(line: 0, scope: !220)
!237 = !DILocation(line: 0, scope: !227)
!238 = !DILocation(line: 0, scope: !75, inlinedAt: !239)
!239 = distinct !DILocation(line: 266, column: 26, scope: !229)
!240 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !239)
!241 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !242)
!242 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !243)
!243 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !239)
!244 = !DILocation(line: 267, column: 29, scope: !233)
!245 = !DILocation(line: 268, column: 28, scope: !235)
!246 = !DILocation(line: 268, column: 21, scope: !235)
!247 = !DILocation(line: 269, column: 42, scope: !235)
!248 = !DILocation(line: 269, column: 28, scope: !235)
!249 = !DILocation(line: 269, column: 21, scope: !235)
!250 = distinct !{!250, !218}
!251 = !DILocation(line: 271, column: 14, scope: !220)
!252 = distinct !DISubprogram(name: "c_style_output_size_fixed_impl", linkageName: "_ZN14iterator_bench30c_style_output_size_fixed_impl17hf1905e2e3293ab9bE", scope: !39, file: !38, line: 326, type: !253, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !42, !152}
!255 = !{!256, !257, !258, !260, !262, !264, !266}
!256 = !DILocalVariable(name: "output", arg: 1, scope: !252, file: !38, line: 326, type: !42)
!257 = !DILocalVariable(name: "input", arg: 2, scope: !252, file: !38, line: 326, type: !152)
!258 = !DILocalVariable(name: "iter", scope: !259, file: !38, line: 327, type: !56, align: 8)
!259 = distinct !DILexicalBlock(scope: !252, file: !38, line: 327, column: 17)
!260 = !DILocalVariable(name: "__next", scope: !261, file: !38, line: 327, type: !36, align: 8)
!261 = distinct !DILexicalBlock(scope: !259, file: !38, line: 327, column: 26)
!262 = !DILocalVariable(name: "val", scope: !263, file: !38, line: 327, type: !36, align: 8)
!263 = distinct !DILexicalBlock(scope: !261, file: !38, line: 327, column: 21)
!264 = !DILocalVariable(name: "i", scope: !265, file: !38, line: 327, type: !36, align: 8)
!265 = distinct !DILexicalBlock(scope: !261, file: !38, line: 327, column: 26)
!266 = !DILocalVariable(name: "b", scope: !267, file: !38, line: 328, type: !48, align: 2)
!267 = distinct !DILexicalBlock(scope: !265, file: !38, line: 328, column: 21)
!268 = !DILocation(line: 0, scope: !252)
!269 = !DILocation(line: 0, scope: !259)
!270 = !DILocation(line: 0, scope: !75, inlinedAt: !271)
!271 = distinct !DILocation(line: 327, column: 26, scope: !261)
!272 = !DILocation(line: 1137, column: 52, scope: !273, inlinedAt: !283)
!273 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h697d7385366f3475E", scope: !275, file: !274, line: 1137, type: !277, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !280)
!274 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
!275 = !DINamespace(name: "{{impl}}", scope: !276)
!276 = !DINamespace(name: "impls", scope: !24)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !35, !35}
!279 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "self", arg: 1, scope: !273, file: !274, line: 1137, type: !35)
!282 = !DILocalVariable(name: "other", arg: 2, scope: !273, file: !274, line: 1137, type: !35)
!283 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !271)
!284 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !271)
!285 = !DILocation(line: 0, scope: !117, inlinedAt: !286)
!286 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !271)
!287 = !DILocation(line: 0, scope: !107, inlinedAt: !288)
!288 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !286)
!289 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !288)
!290 = !DILocation(line: 0, scope: !261)
!291 = !DILocation(line: 0, scope: !265)
!292 = !DILocation(line: 328, column: 29, scope: !265)
!293 = !DILocation(line: 0, scope: !267)
!294 = !DILocation(line: 329, column: 28, scope: !267)
!295 = !DILocation(line: 329, column: 21, scope: !267)
!296 = !DILocation(line: 330, column: 42, scope: !267)
!297 = !DILocation(line: 330, column: 28, scope: !267)
!298 = !DILocation(line: 330, column: 21, scope: !267)
!299 = distinct !{!299, !218}
!300 = !DILocation(line: 332, column: 14, scope: !252)
!301 = distinct !{!301, !218}
!302 = distinct !DISubprogram(name: "c_style_unknown_size_impl", linkageName: "_ZN14iterator_bench25c_style_unknown_size_impl17ha4507c1657d6df17E", scope: !39, file: !38, line: 384, type: !303, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !199, !152}
!305 = !{!306, !307, !308, !310, !312, !314, !316}
!306 = !DILocalVariable(name: "output", arg: 1, scope: !302, file: !38, line: 384, type: !199)
!307 = !DILocalVariable(name: "input", arg: 2, scope: !302, file: !38, line: 384, type: !152)
!308 = !DILocalVariable(name: "iter", scope: !309, file: !38, line: 385, type: !56, align: 8)
!309 = distinct !DILexicalBlock(scope: !302, file: !38, line: 385, column: 17)
!310 = !DILocalVariable(name: "__next", scope: !311, file: !38, line: 385, type: !36, align: 8)
!311 = distinct !DILexicalBlock(scope: !309, file: !38, line: 385, column: 26)
!312 = !DILocalVariable(name: "val", scope: !313, file: !38, line: 385, type: !36, align: 8)
!313 = distinct !DILexicalBlock(scope: !311, file: !38, line: 385, column: 21)
!314 = !DILocalVariable(name: "i", scope: !315, file: !38, line: 385, type: !36, align: 8)
!315 = distinct !DILexicalBlock(scope: !311, file: !38, line: 385, column: 26)
!316 = !DILocalVariable(name: "b", scope: !317, file: !38, line: 386, type: !48, align: 2)
!317 = distinct !DILexicalBlock(scope: !315, file: !38, line: 386, column: 21)
!318 = !DILocation(line: 0, scope: !302)
!319 = !DILocation(line: 0, scope: !309)
!320 = !DILocation(line: 0, scope: !75, inlinedAt: !321)
!321 = distinct !DILocation(line: 385, column: 26, scope: !311)
!322 = !DILocation(line: 1137, column: 52, scope: !273, inlinedAt: !323)
!323 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !321)
!324 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !321)
!325 = !DILocation(line: 0, scope: !117, inlinedAt: !326)
!326 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !321)
!327 = !DILocation(line: 0, scope: !107, inlinedAt: !328)
!328 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !326)
!329 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !328)
!330 = !DILocation(line: 0, scope: !311)
!331 = !DILocation(line: 0, scope: !315)
!332 = !DILocation(line: 386, column: 29, scope: !315)
!333 = !DILocation(line: 0, scope: !317)
!334 = !DILocation(line: 387, column: 28, scope: !317)
!335 = !DILocation(line: 387, column: 21, scope: !317)
!336 = !DILocation(line: 388, column: 42, scope: !317)
!337 = !DILocation(line: 388, column: 28, scope: !317)
!338 = !DILocation(line: 388, column: 21, scope: !317)
!339 = distinct !{!339, !218}
!340 = !DILocation(line: 390, column: 14, scope: !302)
!341 = distinct !{!341, !218}
!342 = distinct !DISubprogram(name: "c_style_unknown_size_limit_impl", linkageName: "_ZN14iterator_bench31c_style_unknown_size_limit_impl17h959ca8c4442b3f9cE", scope: !39, file: !38, line: 445, type: !303, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !343)
!343 = !{!344, !345, !346, !348, !350, !352, !354}
!344 = !DILocalVariable(name: "output", arg: 1, scope: !342, file: !38, line: 445, type: !199)
!345 = !DILocalVariable(name: "input", arg: 2, scope: !342, file: !38, line: 445, type: !152)
!346 = !DILocalVariable(name: "iter", scope: !347, file: !38, line: 447, type: !56, align: 8)
!347 = distinct !DILexicalBlock(scope: !342, file: !38, line: 447, column: 17)
!348 = !DILocalVariable(name: "__next", scope: !349, file: !38, line: 447, type: !36, align: 8)
!349 = distinct !DILexicalBlock(scope: !347, file: !38, line: 447, column: 26)
!350 = !DILocalVariable(name: "val", scope: !351, file: !38, line: 447, type: !36, align: 8)
!351 = distinct !DILexicalBlock(scope: !349, file: !38, line: 447, column: 21)
!352 = !DILocalVariable(name: "i", scope: !353, file: !38, line: 447, type: !36, align: 8)
!353 = distinct !DILexicalBlock(scope: !349, file: !38, line: 447, column: 26)
!354 = !DILocalVariable(name: "b", scope: !355, file: !38, line: 448, type: !48, align: 2)
!355 = distinct !DILexicalBlock(scope: !353, file: !38, line: 448, column: 21)
!356 = !DILocation(line: 0, scope: !342)
!357 = !DILocalVariable(name: "v1", arg: 1, scope: !358, file: !274, line: 994, type: !36)
!358 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3max17hd69510cf96ce65d3E", scope: !24, file: !274, line: 994, type: !111, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !359)
!359 = !{!357, !360}
!360 = !DILocalVariable(name: "v2", arg: 2, scope: !358, file: !274, line: 994, type: !36)
!361 = !DILocation(line: 0, scope: !358, inlinedAt: !362)
!362 = distinct !DILocation(line: 447, column: 29, scope: !342)
!363 = !DILocalVariable(name: "self", arg: 1, scope: !364, file: !274, line: 600, type: !36)
!364 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3Ord3max17hf04816fbfc63fc99E", scope: !365, file: !274, line: 600, type: !111, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !368, retainedNodes: !366)
!365 = !DINamespace(name: "Ord", scope: !24)
!366 = !{!363, !367}
!367 = !DILocalVariable(name: "other", arg: 2, scope: !364, file: !274, line: 600, type: !36)
!368 = !{!369}
!369 = !DITemplateTypeParameter(name: "Self", type: !36)
!370 = !DILocation(line: 0, scope: !364, inlinedAt: !371)
!371 = distinct !DILocation(line: 995, column: 5, scope: !358, inlinedAt: !362)
!372 = !DILocalVariable(name: "v1", arg: 1, scope: !373, file: !274, line: 1015, type: !36)
!373 = distinct !DISubprogram(name: "max_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6max_by17h45a7a595acc422f8E", scope: !24, file: !274, line: 1015, type: !374, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !382, retainedNodes: !379)
!374 = !DISubroutineType(types: !375)
!375 = !{!36, !36, !36, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&usize, &usize) -> core::cmp::Ordering", baseType: !377, align: 8, dwarfAddressSpace: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!23, !35, !35}
!379 = !{!372, !380, !381}
!380 = !DILocalVariable(name: "v2", arg: 2, scope: !373, file: !274, line: 1015, type: !36)
!381 = !DILocalVariable(name: "compare", arg: 3, scope: !373, file: !274, line: 1015, type: !376)
!382 = !{!90, !383}
!383 = !DITemplateTypeParameter(name: "F", type: !376)
!384 = !DILocation(line: 0, scope: !373, inlinedAt: !385)
!385 = distinct !DILocation(line: 604, column: 9, scope: !364, inlinedAt: !371)
!386 = !DILocation(line: 0, scope: !347)
!387 = !DILocation(line: 0, scope: !75, inlinedAt: !388)
!388 = distinct !DILocation(line: 447, column: 26, scope: !349)
!389 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !388)
!390 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !391)
!391 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !392)
!392 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !388)
!393 = !DILocation(line: 448, column: 29, scope: !353)
!394 = !DILocation(line: 449, column: 28, scope: !355)
!395 = !DILocation(line: 449, column: 21, scope: !355)
!396 = !DILocation(line: 450, column: 42, scope: !355)
!397 = !DILocation(line: 450, column: 28, scope: !355)
!398 = !DILocation(line: 450, column: 21, scope: !355)
!399 = distinct !{!399, !218}
!400 = !DILocation(line: 452, column: 14, scope: !342)
!401 = !DILocation(line: 0, scope: !117, inlinedAt: !392)
!402 = !DILocation(line: 0, scope: !107, inlinedAt: !391)
!403 = !DILocation(line: 0, scope: !349)
!404 = !DILocation(line: 0, scope: !353)
!405 = !DILocation(line: 0, scope: !355)
!406 = !DILocation(line: 1137, column: 52, scope: !273, inlinedAt: !407)
!407 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !388)
!408 = distinct !{!408, !218}
!409 = distinct !DISubprogram(name: "zip_chunks_fixed_size_impl", linkageName: "_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE", scope: !39, file: !38, line: 505, type: !40, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !410)
!410 = !{!411, !412, !413, !443, !449, !451, !453}
!411 = !DILocalVariable(name: "output", arg: 1, scope: !409, file: !38, line: 505, type: !42)
!412 = !DILocalVariable(name: "input", arg: 2, scope: !409, file: !38, line: 505, type: !46)
!413 = !DILocalVariable(name: "iter", scope: !414, file: !38, line: 506, type: !415, align: 8)
!414 = distinct !DILexicalBlock(scope: !409, file: !38, line: 506, column: 17)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", scope: !416, file: !7, size: 448, align: 64, elements: !418, templateParams: !440, identifier: "2603922c5128e7d2a0c421e882eb59e8")
!416 = !DINamespace(name: "zip", scope: !417)
!417 = !DINamespace(name: "adapters", scope: !79)
!418 = !{!419, !433, !438, !439}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !415, file: !7, baseType: !420, size: 128, align: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<u16>", scope: !148, file: !7, size: 128, align: 64, elements: !421, templateParams: !135, identifier: "3b6f625891d0497522e6ef9adb8e48b9")
!421 = !{!422, !427, !428}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !420, file: !7, baseType: !423, size: 64, align: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u16>", scope: !424, file: !7, size: 64, align: 64, elements: !425, templateParams: !135, identifier: "93f0871a8bbbfb515b6ec5299845b747")
!424 = !DINamespace(name: "non_null", scope: !127)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !423, file: !7, baseType: !130, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !420, file: !7, baseType: !130, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !420, file: !7, baseType: !429, align: 8)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&u16>", scope: !430, file: !7, align: 8, elements: !34, templateParams: !431, identifier: "b0f09a0ff467ada3bd7ae1b7c7b8c070")
!430 = !DINamespace(name: "marker", scope: !9)
!431 = !{!432}
!432 = !DITemplateTypeParameter(name: "T", type: !151)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !415, file: !7, baseType: !434, size: 192, align: 64, offset: 128)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksMut<u8>", scope: !148, file: !7, size: 192, align: 64, elements: !435, templateParams: !185, identifier: "3d60118ea8ab2507bfb6d9d594c44bd8")
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !434, file: !7, baseType: !199, size: 128, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !434, file: !7, baseType: !36, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !415, file: !7, baseType: !36, size: 64, align: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !415, file: !7, baseType: !36, size: 64, align: 64, offset: 384)
!440 = !{!441, !442}
!441 = !DITemplateTypeParameter(name: "A", type: !420)
!442 = !DITemplateTypeParameter(name: "B", type: !434)
!443 = !DILocalVariable(name: "__next", scope: !444, file: !38, line: 506, type: !445, align: 8)
!444 = distinct !DILexicalBlock(scope: !414, file: !38, line: 506, column: 33)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&u16, &mut [u8])", file: !7, size: 192, align: 64, elements: !446, templateParams: !34, identifier: "da34b111579020308bcd12aa4b615188")
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !445, file: !7, baseType: !151, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !445, file: !7, baseType: !199, size: 128, align: 64, offset: 64)
!449 = !DILocalVariable(name: "val", scope: !450, file: !38, line: 506, type: !445, align: 8)
!450 = distinct !DILexicalBlock(scope: !444, file: !38, line: 506, column: 21)
!451 = !DILocalVariable(name: "b", scope: !452, file: !38, line: 506, type: !48, align: 2)
!452 = distinct !DILexicalBlock(scope: !444, file: !38, line: 506, column: 33)
!453 = !DILocalVariable(name: "ac", scope: !452, file: !38, line: 506, type: !199, align: 8)
!454 = !DILocation(line: 0, scope: !409)
!455 = !DILocation(line: 0, scope: !414)
!456 = !DILocalVariable(name: "self", arg: 1, scope: !457, file: !458, line: 46, type: !474)
!457 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h261f1104123b97a0E", scope: !459, file: !458, line: 46, type: !460, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !440, retainedNodes: !475)
!458 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/iter/adapters/zip.rs", directory: "", checksumkind: CSK_MD5, checksum: "f3eb2f902ea9ef422ff1bfca2897667a")
!459 = !DINamespace(name: "{{impl}}", scope: !416)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !474}
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(&u16, &mut [u8])>", scope: !83, file: !7, size: 192, align: 64, elements: !463, identifier: "94209b0a14e89d36c0760065ce090683")
!463 = !{!464}
!464 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 192, align: 64, elements: !465, templateParams: !468, identifier: "94209b0a14e89d36c0760065ce090683_variant_part", discriminator: !95)
!465 = !{!466, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !464, file: !7, baseType: !467, size: 192, align: 64, extraData: i64 0)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !462, file: !7, size: 192, align: 64, elements: !34, templateParams: !468, identifier: "94209b0a14e89d36c0760065ce090683::None")
!468 = !{!469}
!469 = !DITemplateTypeParameter(name: "T", type: !445)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !464, file: !7, baseType: !471, size: 192, align: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !462, file: !7, size: 192, align: 64, elements: !472, templateParams: !468, identifier: "94209b0a14e89d36c0760065ce090683::Some")
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !471, file: !7, baseType: !445, size: 192, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", baseType: !415, size: 64, align: 64, dwarfAddressSpace: 0)
!475 = !{!456}
!476 = !DILocation(line: 0, scope: !457, inlinedAt: !477)
!477 = distinct !DILocation(line: 506, column: 33, scope: !444)
!478 = !DILocalVariable(name: "self", arg: 1, scope: !479, file: !458, line: 173, type: !474)
!479 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4340cb2fc3d57d84E", scope: !459, file: !458, line: 173, type: !460, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !440, retainedNodes: !480)
!480 = !{!478, !481}
!481 = !DILocalVariable(name: "i", scope: !482, file: !458, line: 175, type: !36, align: 8)
!482 = distinct !DILexicalBlock(scope: !479, file: !458, line: 175, column: 13)
!483 = !DILocation(line: 0, scope: !479, inlinedAt: !484)
!484 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !477)
!485 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !484)
!486 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !484)
!487 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !495)
!488 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h92aca73ecbe6dcdaE", scope: !177, file: !176, line: 152, type: !489, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !492)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !491, !131}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "self", arg: 1, scope: !488, file: !176, line: 152, type: !491)
!494 = !DILocalVariable(name: "count", arg: 2, scope: !488, file: !176, line: 152, type: !131)
!495 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !502)
!496 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hb4031df3ce20c655E", scope: !177, file: !176, line: 525, type: !497, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!491, !491, !36}
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "self", arg: 1, scope: !496, file: !176, line: 525, type: !491)
!501 = !DILocalVariable(name: "count", arg: 2, scope: !496, file: !176, line: 525, type: !36)
!502 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !510)
!503 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN93_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hefa02adb481ff826E", scope: !147, file: !146, line: 6297, type: !504, scopeLine: 6297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !507)
!504 = !DISubroutineType(types: !505)
!505 = !{!151, !506, !36}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::Iter<u16>", baseType: !420, size: 64, align: 64, dwarfAddressSpace: 0)
!507 = !{!508, !509}
!508 = !DILocalVariable(name: "self", arg: 1, scope: !503, file: !146, line: 6297, type: !506)
!509 = !DILocalVariable(name: "i", arg: 2, scope: !503, file: !146, line: 6297, type: !36)
!510 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !484)
!511 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !525)
!512 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN98_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hb5619e58b7fe560aE", scope: !147, file: !146, line: 5028, type: !513, scopeLine: 5028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{!199, !515, !36}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksMut<u8>", baseType: !434, size: 64, align: 64, dwarfAddressSpace: 0)
!516 = !{!517, !518, !519, !521, !523}
!517 = !DILocalVariable(name: "self", arg: 1, scope: !512, file: !146, line: 5028, type: !515)
!518 = !DILocalVariable(name: "i", arg: 2, scope: !512, file: !146, line: 5028, type: !36)
!519 = !DILocalVariable(name: "start", scope: !520, file: !146, line: 5029, type: !36, align: 8)
!520 = distinct !DILexicalBlock(scope: !512, file: !146, line: 5029, column: 9)
!521 = !DILocalVariable(name: "end", scope: !522, file: !146, line: 5030, type: !36, align: 8)
!522 = distinct !DILexicalBlock(scope: !520, file: !146, line: 5030, column: 9)
!523 = !DILocalVariable(name: "end", scope: !524, file: !146, line: 5032, type: !36, align: 8)
!524 = distinct !DILexicalBlock(scope: !520, file: !146, line: 5032, column: 13)
!525 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !484)
!526 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !527)
!527 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !528)
!528 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !525)
!529 = !DILocation(line: 506, column: 23, scope: !444)
!530 = !DILocation(line: 509, column: 21, scope: !452)
!531 = !DILocation(line: 510, column: 30, scope: !452)
!532 = !DILocation(line: 510, column: 21, scope: !452)
!533 = distinct !{!533, !218}
!534 = !DILocation(line: 512, column: 14, scope: !409)
!535 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_impl", linkageName: "_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE", scope: !39, file: !38, line: 565, type: !40, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !536)
!536 = !{!537, !538, !539, !547, !549, !551, !553}
!537 = !DILocalVariable(name: "output", arg: 1, scope: !535, file: !38, line: 565, type: !42)
!538 = !DILocalVariable(name: "input", arg: 2, scope: !535, file: !38, line: 565, type: !46)
!539 = !DILocalVariable(name: "iter", scope: !540, file: !38, line: 566, type: !541, align: 8)
!540 = distinct !DILexicalBlock(scope: !535, file: !38, line: 566, column: 17)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", scope: !417, file: !7, size: 512, align: 64, elements: !542, templateParams: !545, identifier: "8a349ab4c0331bdbde1ff71b2d8993b6")
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !541, file: !7, baseType: !415, size: 448, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !541, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!545 = !{!546}
!546 = !DITemplateTypeParameter(name: "I", type: !415)
!547 = !DILocalVariable(name: "__next", scope: !548, file: !38, line: 566, type: !445, align: 8)
!548 = distinct !DILexicalBlock(scope: !540, file: !38, line: 566, column: 33)
!549 = !DILocalVariable(name: "val", scope: !550, file: !38, line: 566, type: !445, align: 8)
!550 = distinct !DILexicalBlock(scope: !548, file: !38, line: 566, column: 21)
!551 = !DILocalVariable(name: "b", scope: !552, file: !38, line: 566, type: !48, align: 2)
!552 = distinct !DILexicalBlock(scope: !548, file: !38, line: 566, column: 33)
!553 = !DILocalVariable(name: "ac", scope: !552, file: !38, line: 566, type: !199, align: 8)
!554 = !DILocation(line: 0, scope: !535)
!555 = !DILocation(line: 0, scope: !540)
!556 = !DILocalVariable(name: "self", arg: 1, scope: !557, file: !558, line: 2195, type: !562)
!557 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E", scope: !559, file: !558, line: 2195, type: !560, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !545, retainedNodes: !563)
!558 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/iter/adapters/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea0d10848170548968a5df5bdc9565ca")
!559 = !DINamespace(name: "{{impl}}", scope: !417)
!560 = !DISubroutineType(types: !561)
!561 = !{!462, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", baseType: !541, size: 64, align: 64, dwarfAddressSpace: 0)
!563 = !{!556}
!564 = !DILocation(line: 0, scope: !557, inlinedAt: !565)
!565 = distinct !DILocation(line: 566, column: 33, scope: !548)
!566 = !DILocation(line: 2196, column: 9, scope: !557, inlinedAt: !565)
!567 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !568)
!568 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !569)
!569 = distinct !DILocation(line: 2198, column: 13, scope: !557, inlinedAt: !565)
!570 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !571)
!571 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !572)
!572 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !573)
!573 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !568)
!574 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !575)
!575 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !568)
!576 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !577)
!577 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !578)
!578 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !575)
!579 = !DILocation(line: 566, column: 23, scope: !548)
!580 = !DILocation(line: 569, column: 21, scope: !552)
!581 = !DILocation(line: 570, column: 30, scope: !552)
!582 = !DILocation(line: 570, column: 21, scope: !552)
!583 = distinct !{!583, !218}
!584 = !DILocation(line: 572, column: 14, scope: !535)
!585 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_iter_impl", linkageName: "_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E", scope: !39, file: !38, line: 628, type: !40, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !586)
!586 = !{!587, !588, !589, !591, !593, !595, !597, !598, !600, !613, !615, !617}
!587 = !DILocalVariable(name: "output", arg: 1, scope: !585, file: !38, line: 628, type: !42)
!588 = !DILocalVariable(name: "input", arg: 2, scope: !585, file: !38, line: 628, type: !46)
!589 = !DILocalVariable(name: "iter", scope: !590, file: !38, line: 629, type: !541, align: 8)
!590 = distinct !DILexicalBlock(scope: !585, file: !38, line: 629, column: 17)
!591 = !DILocalVariable(name: "__next", scope: !592, file: !38, line: 629, type: !445, align: 8)
!592 = distinct !DILexicalBlock(scope: !590, file: !38, line: 629, column: 33)
!593 = !DILocalVariable(name: "val", scope: !594, file: !38, line: 629, type: !445, align: 8)
!594 = distinct !DILexicalBlock(scope: !592, file: !38, line: 629, column: 21)
!595 = !DILocalVariable(name: "b", scope: !596, file: !38, line: 629, type: !48, align: 2)
!596 = distinct !DILexicalBlock(scope: !592, file: !38, line: 629, column: 33)
!597 = !DILocalVariable(name: "ac", scope: !596, file: !38, line: 629, type: !199, align: 8)
!598 = !DILocalVariable(name: "val", scope: !599, file: !38, line: 630, type: !48, align: 2)
!599 = distinct !DILexicalBlock(scope: !596, file: !38, line: 630, column: 21)
!600 = !DILocalVariable(name: "iter", scope: !601, file: !38, line: 636, type: !602, align: 8)
!601 = distinct !DILexicalBlock(scope: !599, file: !38, line: 636, column: 21)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<u8>", scope: !148, file: !7, size: 128, align: 64, elements: !603, templateParams: !185, identifier: "131574891c4d713bf80e93f001cfe21a")
!603 = !{!604, !608, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !602, file: !7, baseType: !605, size: 64, align: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !424, file: !7, size: 64, align: 64, elements: !606, templateParams: !185, identifier: "b3dafaa6879eff18f86da9cac8f804d8")
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !605, file: !7, baseType: !202, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !602, file: !7, baseType: !181, size: 64, align: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !602, file: !7, baseType: !610, align: 8)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut u8>", scope: !430, file: !7, align: 8, elements: !34, templateParams: !611, identifier: "499867ef99fce33131fbefe362fffb15")
!611 = !{!612}
!612 = !DITemplateTypeParameter(name: "T", type: !198)
!613 = !DILocalVariable(name: "__next", scope: !614, file: !38, line: 636, type: !198, align: 8)
!614 = distinct !DILexicalBlock(scope: !601, file: !38, line: 636, column: 33)
!615 = !DILocalVariable(name: "val", scope: !616, file: !38, line: 636, type: !198, align: 8)
!616 = distinct !DILexicalBlock(scope: !614, file: !38, line: 636, column: 25)
!617 = !DILocalVariable(name: "byte", scope: !618, file: !38, line: 636, type: !198, align: 8)
!618 = distinct !DILexicalBlock(scope: !614, file: !38, line: 636, column: 33)
!619 = !DILocation(line: 0, scope: !585)
!620 = !DILocation(line: 0, scope: !590)
!621 = !DILocation(line: 0, scope: !557, inlinedAt: !622)
!622 = distinct !DILocation(line: 629, column: 33, scope: !592)
!623 = !DILocation(line: 2196, column: 9, scope: !557, inlinedAt: !622)
!624 = !DILocation(line: 0, scope: !457, inlinedAt: !625)
!625 = distinct !DILocation(line: 2198, column: 13, scope: !557, inlinedAt: !622)
!626 = !DILocation(line: 0, scope: !479, inlinedAt: !627)
!627 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !625)
!628 = !DILocation(line: 0, scope: !482, inlinedAt: !627)
!629 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !627)
!630 = !DILocation(line: 0, scope: !503, inlinedAt: !631)
!631 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !627)
!632 = !DILocation(line: 0, scope: !496, inlinedAt: !633)
!633 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !631)
!634 = !DILocation(line: 0, scope: !488, inlinedAt: !635)
!635 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !633)
!636 = !DILocation(line: 0, scope: !512, inlinedAt: !637)
!637 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !627)
!638 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !637)
!639 = !DILocation(line: 0, scope: !520, inlinedAt: !637)
!640 = !DILocation(line: 0, scope: !188, inlinedAt: !641)
!641 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !637)
!642 = !DILocation(line: 0, scope: !175, inlinedAt: !643)
!643 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !641)
!644 = !DILocation(line: 0, scope: !522, inlinedAt: !637)
!645 = !DILocation(line: 0, scope: !592)
!646 = !DILocation(line: 0, scope: !596)
!647 = !DILocalVariable(name: "self", arg: 1, scope: !648, file: !146, line: 635, type: !199)
!648 = distinct !DISubprogram(name: "iter_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h90f197b382361b0eE", scope: !147, file: !146, line: 635, type: !649, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{!602, !199}
!651 = !{!647, !652, !654}
!652 = !DILocalVariable(name: "ptr", scope: !653, file: !146, line: 637, type: !181, align: 8)
!653 = distinct !DILexicalBlock(scope: !648, file: !146, line: 637, column: 13)
!654 = !DILocalVariable(name: "end", scope: !655, file: !146, line: 640, type: !181, align: 8)
!655 = distinct !DILexicalBlock(scope: !653, file: !146, line: 640, column: 13)
!656 = !DILocation(line: 0, scope: !648, inlinedAt: !657)
!657 = distinct !DILocation(line: 636, column: 33, scope: !599)
!658 = !DILocation(line: 0, scope: !653, inlinedAt: !657)
!659 = !DILocation(line: 0, scope: !188, inlinedAt: !660)
!660 = distinct !DILocation(line: 643, column: 17, scope: !653, inlinedAt: !657)
!661 = !DILocation(line: 0, scope: !175, inlinedAt: !662)
!662 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !660)
!663 = !DILocation(line: 0, scope: !601)
!664 = !DILocation(line: 0, scope: !599)
!665 = !DILocalVariable(name: "self", arg: 1, scope: !666, file: !146, line: 3443, type: !679)
!666 = distinct !DISubprogram(name: "next<u8>", linkageName: "_ZN88_$LT$core..slice..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf3848b4d7a3667cE", scope: !147, file: !146, line: 3443, type: !667, scopeLine: 3443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !680)
!667 = !DISubroutineType(types: !668)
!668 = !{!669, !679}
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut u8>", scope: !83, file: !7, size: 64, align: 64, elements: !670, identifier: "4693619c9850a0bbea224d9522f4ac97")
!670 = !{!671}
!671 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 64, align: 64, elements: !672, templateParams: !611, identifier: "4693619c9850a0bbea224d9522f4ac97_variant_part", discriminator: !95)
!672 = !{!673, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !671, file: !7, baseType: !674, size: 64, align: 64, extraData: i64 0)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !669, file: !7, size: 64, align: 64, elements: !34, templateParams: !611, identifier: "4693619c9850a0bbea224d9522f4ac97::None")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !671, file: !7, baseType: !676, size: 64, align: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !669, file: !7, size: 64, align: 64, elements: !677, templateParams: !611, identifier: "4693619c9850a0bbea224d9522f4ac97::Some")
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !676, file: !7, baseType: !198, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::IterMut<u8>", baseType: !602, size: 64, align: 64, dwarfAddressSpace: 0)
!680 = !{!665}
!681 = !DILocation(line: 0, scope: !666, inlinedAt: !682)
!682 = distinct !DILocation(line: 636, column: 33, scope: !614)
!683 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !635)
!684 = !DILocation(line: 629, column: 23, scope: !592)
!685 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !643)
!686 = !DILocalVariable(name: "self", arg: 1, scope: !687, file: !146, line: 3394, type: !679)
!687 = distinct !DISubprogram(name: "post_inc_start<u8>", linkageName: "_ZN4core5slice16IterMut$LT$T$GT$14post_inc_start17h64859f2dabdeed42E", scope: !602, file: !146, line: 3394, type: !688, scopeLine: 3394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!181, !679, !131}
!690 = !{!686, !691, !692}
!691 = !DILocalVariable(name: "offset", arg: 2, scope: !687, file: !146, line: 3394, type: !131)
!692 = !DILocalVariable(name: "old", scope: !693, file: !146, line: 3399, type: !181, align: 8)
!693 = distinct !DILexicalBlock(scope: !687, file: !146, line: 3399, column: 21)
!694 = !DILocation(line: 0, scope: !687, inlinedAt: !695)
!695 = distinct !DILocation(line: 3365, column: 47, scope: !666, inlinedAt: !682)
!696 = !DILocation(line: 0, scope: !693, inlinedAt: !695)
!697 = !DILocation(line: 0, scope: !175, inlinedAt: !698)
!698 = distinct !DILocation(line: 3402, column: 64, scope: !693, inlinedAt: !695)
!699 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !698)
!700 = !DILocation(line: 0, scope: !614)
!701 = !DILocation(line: 0, scope: !618)
!702 = !DILocation(line: 637, column: 25, scope: !618)
!703 = !DILocation(line: 638, column: 25, scope: !618)
!704 = !DILocation(line: 2197, column: 13, scope: !557, inlinedAt: !622)
!705 = !DILocation(line: 2196, column: 12, scope: !557, inlinedAt: !622)
!706 = !DILocation(line: 641, column: 14, scope: !585)
!707 = distinct !DISubprogram(name: "zip_chunks_output_size_fixed_impl", linkageName: "_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E", scope: !39, file: !38, line: 696, type: !253, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !708)
!708 = !{!709, !710, !711, !713, !715, !717, !719}
!709 = !DILocalVariable(name: "output", arg: 1, scope: !707, file: !38, line: 696, type: !42)
!710 = !DILocalVariable(name: "input", arg: 2, scope: !707, file: !38, line: 696, type: !152)
!711 = !DILocalVariable(name: "iter", scope: !712, file: !38, line: 697, type: !415, align: 8)
!712 = distinct !DILexicalBlock(scope: !707, file: !38, line: 697, column: 17)
!713 = !DILocalVariable(name: "__next", scope: !714, file: !38, line: 697, type: !445, align: 8)
!714 = distinct !DILexicalBlock(scope: !712, file: !38, line: 697, column: 33)
!715 = !DILocalVariable(name: "val", scope: !716, file: !38, line: 697, type: !445, align: 8)
!716 = distinct !DILexicalBlock(scope: !714, file: !38, line: 697, column: 21)
!717 = !DILocalVariable(name: "b", scope: !718, file: !38, line: 697, type: !48, align: 2)
!718 = distinct !DILexicalBlock(scope: !714, file: !38, line: 697, column: 33)
!719 = !DILocalVariable(name: "ac", scope: !718, file: !38, line: 697, type: !199, align: 8)
!720 = !DILocation(line: 0, scope: !707)
!721 = !DILocalVariable(name: "other", arg: 2, scope: !722, file: !723, line: 544, type: !434)
!722 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE", scope: !724, file: !723, line: 544, type: !727, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !731, retainedNodes: !729)
!723 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/iter/traits/iterator.rs", directory: "", checksumkind: CSK_MD5, checksum: "0166ca0c6191a2d150960a0c0ce0a671")
!724 = !DINamespace(name: "Iterator", scope: !725)
!725 = !DINamespace(name: "iterator", scope: !726)
!726 = !DINamespace(name: "traits", scope: !79)
!727 = !DISubroutineType(types: !728)
!728 = !{!415, !420, !434}
!729 = !{!730, !721}
!730 = !DILocalVariable(name: "self", arg: 1, scope: !722, file: !723, line: 544, type: !420)
!731 = !{!732, !733}
!732 = !DITemplateTypeParameter(name: "Self", type: !420)
!733 = !DITemplateTypeParameter(name: "U", type: !434)
!734 = !DILocation(line: 0, scope: !722, inlinedAt: !735)
!735 = distinct !DILocation(line: 697, column: 33, scope: !707)
!736 = !DILocalVariable(name: "b", arg: 2, scope: !737, file: !458, line: 23, type: !434)
!737 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h2569a0b947fe83edE", scope: !415, file: !458, line: 23, type: !727, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !440, retainedNodes: !738)
!738 = !{!739, !736}
!739 = !DILocalVariable(name: "a", arg: 1, scope: !737, file: !458, line: 23, type: !420)
!740 = !DILocation(line: 0, scope: !737, inlinedAt: !741)
!741 = distinct !DILocation(line: 549, column: 9, scope: !722, inlinedAt: !735)
!742 = !DILocalVariable(name: "b", arg: 2, scope: !743, file: !458, line: 167, type: !434)
!743 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h7ee0f5579a0a9c12E", scope: !459, file: !458, line: 167, type: !727, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !440, retainedNodes: !744)
!744 = !{!745, !742, !746}
!745 = !DILocalVariable(name: "a", arg: 1, scope: !743, file: !458, line: 167, type: !420)
!746 = !DILocalVariable(name: "len", scope: !747, file: !458, line: 168, type: !36, align: 8)
!747 = distinct !DILexicalBlock(scope: !743, file: !458, line: 168, column: 9)
!748 = !DILocation(line: 0, scope: !743, inlinedAt: !749)
!749 = distinct !DILocation(line: 24, column: 9, scope: !737, inlinedAt: !741)
!750 = !DILocalVariable(name: "v1", arg: 1, scope: !751, file: !274, line: 928, type: !36)
!751 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3min17h7e0528a2ee9ad63bE", scope: !24, file: !274, line: 928, type: !111, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !752)
!752 = !{!750, !753}
!753 = !DILocalVariable(name: "v2", arg: 2, scope: !751, file: !274, line: 928, type: !36)
!754 = !DILocation(line: 0, scope: !751, inlinedAt: !755)
!755 = distinct !DILocation(line: 168, column: 19, scope: !743, inlinedAt: !749)
!756 = !DILocalVariable(name: "self", arg: 1, scope: !757, file: !274, line: 620, type: !36)
!757 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3Ord3min17h13b573a50e7044f8E", scope: !365, file: !274, line: 620, type: !111, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !368, retainedNodes: !758)
!758 = !{!756, !759}
!759 = !DILocalVariable(name: "other", arg: 2, scope: !757, file: !274, line: 620, type: !36)
!760 = !DILocation(line: 0, scope: !757, inlinedAt: !761)
!761 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !755)
!762 = !DILocalVariable(name: "v1", arg: 1, scope: !763, file: !274, line: 949, type: !36)
!763 = distinct !DISubprogram(name: "min_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6min_by17hc292495f6fa20b8bE", scope: !24, file: !274, line: 949, type: !374, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !382, retainedNodes: !764)
!764 = !{!762, !765, !766}
!765 = !DILocalVariable(name: "v2", arg: 2, scope: !763, file: !274, line: 949, type: !36)
!766 = !DILocalVariable(name: "compare", arg: 3, scope: !763, file: !274, line: 949, type: !376)
!767 = !DILocation(line: 0, scope: !763, inlinedAt: !768)
!768 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !761)
!769 = !DILocation(line: 0, scope: !712)
!770 = !DILocation(line: 0, scope: !457, inlinedAt: !771)
!771 = distinct !DILocation(line: 697, column: 33, scope: !714)
!772 = !DILocation(line: 0, scope: !479, inlinedAt: !773)
!773 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !771)
!774 = !DILocation(line: 174, column: 12, scope: !479, inlinedAt: !773)
!775 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !773)
!776 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !773)
!777 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !778)
!778 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !779)
!779 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !780)
!780 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !773)
!781 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !782)
!782 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !773)
!783 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !784)
!784 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !785)
!785 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !782)
!786 = !DILocation(line: 697, column: 23, scope: !714)
!787 = !DILocation(line: 700, column: 21, scope: !718)
!788 = !DILocation(line: 701, column: 30, scope: !718)
!789 = !DILocation(line: 701, column: 21, scope: !718)
!790 = distinct !{!790, !218}
!791 = !DILocation(line: 703, column: 14, scope: !707)
!792 = !DILocation(line: 0, scope: !482, inlinedAt: !773)
!793 = !DILocation(line: 0, scope: !503, inlinedAt: !780)
!794 = !DILocation(line: 0, scope: !496, inlinedAt: !779)
!795 = !DILocation(line: 0, scope: !488, inlinedAt: !778)
!796 = !DILocation(line: 0, scope: !512, inlinedAt: !782)
!797 = !DILocation(line: 0, scope: !520, inlinedAt: !782)
!798 = !DILocation(line: 0, scope: !522, inlinedAt: !782)
!799 = !DILocation(line: 0, scope: !188, inlinedAt: !785)
!800 = !DILocation(line: 0, scope: !175, inlinedAt: !784)
!801 = !DILocation(line: 0, scope: !714)
!802 = !DILocation(line: 0, scope: !718)
!803 = distinct !{!803, !804, !218}
!804 = !{!"llvm.loop.unroll.runtime.disable"}
!805 = distinct !DISubprogram(name: "zip_chunks_input_size_fixed_impl", linkageName: "_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E", scope: !39, file: !38, line: 758, type: !221, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !806)
!806 = !{!807, !808, !809, !811, !813, !815, !817}
!807 = !DILocalVariable(name: "output", arg: 1, scope: !805, file: !38, line: 758, type: !199)
!808 = !DILocalVariable(name: "input", arg: 2, scope: !805, file: !38, line: 758, type: !46)
!809 = !DILocalVariable(name: "iter", scope: !810, file: !38, line: 759, type: !415, align: 8)
!810 = distinct !DILexicalBlock(scope: !805, file: !38, line: 759, column: 17)
!811 = !DILocalVariable(name: "__next", scope: !812, file: !38, line: 759, type: !445, align: 8)
!812 = distinct !DILexicalBlock(scope: !810, file: !38, line: 759, column: 33)
!813 = !DILocalVariable(name: "val", scope: !814, file: !38, line: 759, type: !445, align: 8)
!814 = distinct !DILexicalBlock(scope: !812, file: !38, line: 759, column: 21)
!815 = !DILocalVariable(name: "b", scope: !816, file: !38, line: 759, type: !48, align: 2)
!816 = distinct !DILexicalBlock(scope: !812, file: !38, line: 759, column: 33)
!817 = !DILocalVariable(name: "ac", scope: !816, file: !38, line: 759, type: !199, align: 8)
!818 = !DILocation(line: 0, scope: !805)
!819 = !DILocation(line: 0, scope: !722, inlinedAt: !820)
!820 = distinct !DILocation(line: 759, column: 33, scope: !805)
!821 = !DILocation(line: 0, scope: !737, inlinedAt: !822)
!822 = distinct !DILocation(line: 549, column: 9, scope: !722, inlinedAt: !820)
!823 = !DILocation(line: 0, scope: !743, inlinedAt: !824)
!824 = distinct !DILocation(line: 24, column: 9, scope: !737, inlinedAt: !822)
!825 = !DILocalVariable(name: "self", arg: 1, scope: !826, file: !146, line: 87, type: !829)
!826 = distinct !DISubprogram(name: "is_empty<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h9d6962c70a36da18E", scope: !147, file: !146, line: 87, type: !827, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !833)
!827 = !DISubroutineType(types: !828)
!828 = !{!279, !829}
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !7, size: 128, align: 64, elements: !830, templateParams: !34, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !829, file: !7, baseType: !202, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !829, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!833 = !{!825}
!834 = !DILocation(line: 0, scope: !826, inlinedAt: !835)
!835 = distinct !DILocation(line: 4935, column: 12, scope: !836, inlinedAt: !852)
!836 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN90_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h18a0b32c47ed7d4eE", scope: !147, file: !146, line: 4934, type: !837, scopeLine: 4934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !844)
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !843}
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !7, size: 192, align: 64, elements: !840, templateParams: !34, identifier: "ae4a49683e9045cf9186fc547f540cbb")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !839, file: !7, baseType: !36, size: 64, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !839, file: !7, baseType: !82, size: 128, align: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksMut<u8>", baseType: !434, size: 64, align: 64, dwarfAddressSpace: 0)
!844 = !{!845, !846, !848, !850}
!845 = !DILocalVariable(name: "self", arg: 1, scope: !836, file: !146, line: 4934, type: !843)
!846 = !DILocalVariable(name: "n", scope: !847, file: !146, line: 4938, type: !36, align: 8)
!847 = distinct !DILexicalBlock(scope: !836, file: !146, line: 4938, column: 13)
!848 = !DILocalVariable(name: "rem", scope: !849, file: !146, line: 4939, type: !36, align: 8)
!849 = distinct !DILexicalBlock(scope: !847, file: !146, line: 4939, column: 13)
!850 = !DILocalVariable(name: "n", scope: !851, file: !146, line: 4940, type: !36, align: 8)
!851 = distinct !DILexicalBlock(scope: !849, file: !146, line: 4940, column: 13)
!852 = distinct !DILocation(line: 100, column: 30, scope: !853, inlinedAt: !875)
!853 = distinct !DISubprogram(name: "len<core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h9c14d9505784f1cfE", scope: !855, file: !854, line: 99, type: !857, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !873, retainedNodes: !859)
!854 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/iter/traits/exact_size.rs", directory: "", checksumkind: CSK_MD5, checksum: "c5a2a65a6cb2198d813b7c8497205511")
!855 = !DINamespace(name: "ExactSizeIterator", scope: !856)
!856 = !DINamespace(name: "exact_size", scope: !726)
!857 = !DISubroutineType(types: !858)
!858 = !{!36, !843}
!859 = !{!860, !861, !863, !864, !868, !869, !872}
!860 = !DILocalVariable(name: "self", arg: 1, scope: !853, file: !854, line: 99, type: !843)
!861 = !DILocalVariable(name: "lower", scope: !862, file: !854, line: 100, type: !36, align: 8)
!862 = distinct !DILexicalBlock(scope: !853, file: !854, line: 100, column: 9)
!863 = !DILocalVariable(name: "upper", scope: !862, file: !854, line: 100, type: !82, align: 8)
!864 = !DILocalVariable(name: "left_val", scope: !865, file: !866, line: 45, type: !867, align: 8)
!865 = distinct !DILexicalBlock(scope: !862, file: !866, line: 45, column: 13)
!866 = !DIFile(filename: "/benchdata/rust/rust-nobc/src/libcore/macros/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9d09c4b6426f63c56ee3af0375dc8f94")
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<usize>", baseType: !82, size: 64, align: 64, dwarfAddressSpace: 0)
!868 = !DILocalVariable(name: "right_val", scope: !865, file: !866, line: 45, type: !867, align: 8)
!869 = !DILocalVariable(name: "arg0", scope: !870, file: !866, line: 52, type: !871, align: 8)
!870 = distinct !DILexicalBlock(scope: !865, file: !866, line: 16, column: 38)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&core::option::Option<usize>", baseType: !867, size: 64, align: 64, dwarfAddressSpace: 0)
!872 = !DILocalVariable(name: "arg1", scope: !870, file: !866, line: 52, type: !871, align: 8)
!873 = !{!874}
!874 = !DITemplateTypeParameter(name: "Self", type: !434)
!875 = distinct !DILocation(line: 168, column: 37, scope: !743, inlinedAt: !824)
!876 = !DILocation(line: 88, column: 9, scope: !826, inlinedAt: !835)
!877 = !DILocation(line: 4935, column: 9, scope: !836, inlinedAt: !852)
!878 = !DILocation(line: 0, scope: !751, inlinedAt: !879)
!879 = distinct !DILocation(line: 168, column: 19, scope: !743, inlinedAt: !824)
!880 = !DILocation(line: 0, scope: !757, inlinedAt: !881)
!881 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !879)
!882 = !DILocation(line: 0, scope: !763, inlinedAt: !883)
!883 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !881)
!884 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !883)
!885 = !DILocation(line: 0, scope: !810)
!886 = !DILocation(line: 0, scope: !457, inlinedAt: !887)
!887 = distinct !DILocation(line: 759, column: 33, scope: !812)
!888 = !DILocation(line: 0, scope: !479, inlinedAt: !889)
!889 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !887)
!890 = !DILocation(line: 174, column: 12, scope: !479, inlinedAt: !889)
!891 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !889)
!892 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !889)
!893 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !894)
!894 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !895)
!895 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !896)
!896 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !889)
!897 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !898)
!898 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !889)
!899 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !900)
!900 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !901)
!901 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !898)
!902 = !DILocation(line: 759, column: 23, scope: !812)
!903 = !DILocation(line: 762, column: 21, scope: !816)
!904 = !DILocation(line: 763, column: 30, scope: !816)
!905 = !DILocation(line: 763, column: 21, scope: !816)
!906 = distinct !{!906, !218}
!907 = !DILocation(line: 765, column: 14, scope: !805)
!908 = !DILocation(line: 0, scope: !482, inlinedAt: !889)
!909 = !DILocation(line: 0, scope: !503, inlinedAt: !896)
!910 = !DILocation(line: 0, scope: !496, inlinedAt: !895)
!911 = !DILocation(line: 0, scope: !488, inlinedAt: !894)
!912 = !DILocation(line: 0, scope: !512, inlinedAt: !898)
!913 = !DILocation(line: 0, scope: !520, inlinedAt: !898)
!914 = !DILocation(line: 0, scope: !522, inlinedAt: !898)
!915 = !DILocation(line: 0, scope: !188, inlinedAt: !901)
!916 = !DILocation(line: 0, scope: !175, inlinedAt: !900)
!917 = !DILocation(line: 0, scope: !812)
!918 = !DILocation(line: 0, scope: !816)
!919 = distinct !{!919, !804, !218}
!920 = distinct !DISubprogram(name: "zip_chunks_unknown_size_impl", linkageName: "_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE", scope: !39, file: !38, line: 816, type: !303, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !921)
!921 = !{!922, !923, !924, !926, !928, !930, !932}
!922 = !DILocalVariable(name: "output", arg: 1, scope: !920, file: !38, line: 816, type: !199)
!923 = !DILocalVariable(name: "input", arg: 2, scope: !920, file: !38, line: 816, type: !152)
!924 = !DILocalVariable(name: "iter", scope: !925, file: !38, line: 817, type: !415, align: 8)
!925 = distinct !DILexicalBlock(scope: !920, file: !38, line: 817, column: 17)
!926 = !DILocalVariable(name: "__next", scope: !927, file: !38, line: 817, type: !445, align: 8)
!927 = distinct !DILexicalBlock(scope: !925, file: !38, line: 817, column: 32)
!928 = !DILocalVariable(name: "val", scope: !929, file: !38, line: 817, type: !445, align: 8)
!929 = distinct !DILexicalBlock(scope: !927, file: !38, line: 817, column: 21)
!930 = !DILocalVariable(name: "b", scope: !931, file: !38, line: 817, type: !151, align: 8)
!931 = distinct !DILexicalBlock(scope: !927, file: !38, line: 817, column: 32)
!932 = !DILocalVariable(name: "ac", scope: !931, file: !38, line: 817, type: !199, align: 8)
!933 = !DILocation(line: 0, scope: !920)
!934 = !DILocation(line: 0, scope: !722, inlinedAt: !935)
!935 = distinct !DILocation(line: 817, column: 32, scope: !920)
!936 = !DILocation(line: 0, scope: !737, inlinedAt: !937)
!937 = distinct !DILocation(line: 549, column: 9, scope: !722, inlinedAt: !935)
!938 = !DILocation(line: 0, scope: !743, inlinedAt: !939)
!939 = distinct !DILocation(line: 24, column: 9, scope: !737, inlinedAt: !937)
!940 = !DILocation(line: 0, scope: !826, inlinedAt: !941)
!941 = distinct !DILocation(line: 4935, column: 12, scope: !836, inlinedAt: !942)
!942 = distinct !DILocation(line: 100, column: 30, scope: !853, inlinedAt: !943)
!943 = distinct !DILocation(line: 168, column: 37, scope: !743, inlinedAt: !939)
!944 = !DILocation(line: 88, column: 9, scope: !826, inlinedAt: !941)
!945 = !DILocation(line: 4935, column: 9, scope: !836, inlinedAt: !942)
!946 = !DILocation(line: 0, scope: !751, inlinedAt: !947)
!947 = distinct !DILocation(line: 168, column: 19, scope: !743, inlinedAt: !939)
!948 = !DILocation(line: 0, scope: !757, inlinedAt: !949)
!949 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !947)
!950 = !DILocation(line: 0, scope: !763, inlinedAt: !951)
!951 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !949)
!952 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !951)
!953 = !DILocation(line: 0, scope: !925)
!954 = !DILocation(line: 0, scope: !457, inlinedAt: !955)
!955 = distinct !DILocation(line: 817, column: 32, scope: !927)
!956 = !DILocation(line: 0, scope: !479, inlinedAt: !957)
!957 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !955)
!958 = !DILocation(line: 174, column: 12, scope: !479, inlinedAt: !957)
!959 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !957)
!960 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !957)
!961 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !962)
!962 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !963)
!963 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !964)
!964 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !957)
!965 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !966)
!966 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !957)
!967 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !968)
!968 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !969)
!969 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !966)
!970 = !DILocation(line: 818, column: 30, scope: !931)
!971 = !DILocation(line: 818, column: 21, scope: !931)
!972 = !DILocation(line: 819, column: 30, scope: !931)
!973 = !DILocation(line: 819, column: 21, scope: !931)
!974 = distinct !{!974, !218}
!975 = !DILocation(line: 821, column: 14, scope: !920)
!976 = !DILocation(line: 0, scope: !482, inlinedAt: !957)
!977 = !DILocation(line: 0, scope: !503, inlinedAt: !964)
!978 = !DILocation(line: 0, scope: !496, inlinedAt: !963)
!979 = !DILocation(line: 0, scope: !488, inlinedAt: !962)
!980 = !DILocation(line: 0, scope: !512, inlinedAt: !966)
!981 = !DILocation(line: 0, scope: !520, inlinedAt: !966)
!982 = !DILocation(line: 0, scope: !522, inlinedAt: !966)
!983 = !DILocation(line: 0, scope: !188, inlinedAt: !969)
!984 = !DILocation(line: 0, scope: !175, inlinedAt: !968)
!985 = !DILocation(line: 0, scope: !927)
!986 = !DILocation(line: 0, scope: !931)
!987 = distinct !{!987, !218}
!988 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_impl", linkageName: "_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E", scope: !39, file: !38, line: 874, type: !303, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !989)
!989 = !{!990, !991, !992, !994, !996, !998, !1000}
!990 = !DILocalVariable(name: "output", arg: 1, scope: !988, file: !38, line: 874, type: !199)
!991 = !DILocalVariable(name: "input", arg: 2, scope: !988, file: !38, line: 874, type: !152)
!992 = !DILocalVariable(name: "iter", scope: !993, file: !38, line: 875, type: !541, align: 8)
!993 = distinct !DILexicalBlock(scope: !988, file: !38, line: 875, column: 17)
!994 = !DILocalVariable(name: "__next", scope: !995, file: !38, line: 875, type: !445, align: 8)
!995 = distinct !DILexicalBlock(scope: !993, file: !38, line: 875, column: 32)
!996 = !DILocalVariable(name: "val", scope: !997, file: !38, line: 875, type: !445, align: 8)
!997 = distinct !DILexicalBlock(scope: !995, file: !38, line: 875, column: 21)
!998 = !DILocalVariable(name: "b", scope: !999, file: !38, line: 875, type: !151, align: 8)
!999 = distinct !DILexicalBlock(scope: !995, file: !38, line: 875, column: 32)
!1000 = !DILocalVariable(name: "ac", scope: !999, file: !38, line: 875, type: !199, align: 8)
!1001 = !DILocation(line: 0, scope: !988)
!1002 = !DILocation(line: 0, scope: !722, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 875, column: 32, scope: !988)
!1004 = !DILocation(line: 0, scope: !737, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 549, column: 9, scope: !722, inlinedAt: !1003)
!1006 = !DILocation(line: 0, scope: !743, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 24, column: 9, scope: !737, inlinedAt: !1005)
!1008 = !DILocation(line: 0, scope: !826, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 4935, column: 12, scope: !836, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 100, column: 30, scope: !853, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 168, column: 37, scope: !743, inlinedAt: !1007)
!1012 = !DILocation(line: 88, column: 9, scope: !826, inlinedAt: !1009)
!1013 = !DILocation(line: 4935, column: 9, scope: !836, inlinedAt: !1010)
!1014 = !DILocation(line: 0, scope: !751, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 168, column: 19, scope: !743, inlinedAt: !1007)
!1016 = !DILocation(line: 0, scope: !757, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1015)
!1018 = !DILocation(line: 0, scope: !763, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1017)
!1020 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1019)
!1021 = !DILocation(line: 0, scope: !993)
!1022 = !DILocation(line: 0, scope: !557, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 875, column: 32, scope: !995)
!1024 = !DILocation(line: 2196, column: 9, scope: !557, inlinedAt: !1023)
!1025 = !DILocation(line: 0, scope: !457, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 2198, column: 13, scope: !557, inlinedAt: !1023)
!1027 = !DILocation(line: 0, scope: !479, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !1026)
!1029 = !DILocation(line: 174, column: 12, scope: !479, inlinedAt: !1028)
!1030 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !1028)
!1031 = !DILocation(line: 879, column: 14, scope: !988)
!1032 = !DILocation(line: 0, scope: !482, inlinedAt: !1028)
!1033 = !DILocation(line: 0, scope: !503, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !1028)
!1035 = !DILocation(line: 0, scope: !496, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1034)
!1037 = !DILocation(line: 0, scope: !488, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1036)
!1039 = !DILocation(line: 0, scope: !512, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !1028)
!1041 = !DILocation(line: 0, scope: !520, inlinedAt: !1040)
!1042 = !DILocation(line: 0, scope: !522, inlinedAt: !1040)
!1043 = !DILocation(line: 0, scope: !188, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !1040)
!1045 = !DILocation(line: 0, scope: !175, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1044)
!1047 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1038)
!1048 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !1040)
!1049 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1046)
!1050 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !1028)
!1051 = !DILocation(line: 0, scope: !995)
!1052 = !DILocation(line: 0, scope: !999)
!1053 = !DILocation(line: 876, column: 30, scope: !999)
!1054 = !DILocation(line: 876, column: 21, scope: !999)
!1055 = !DILocation(line: 877, column: 30, scope: !999)
!1056 = !DILocation(line: 877, column: 21, scope: !999)
!1057 = !DILocation(line: 2197, column: 13, scope: !557, inlinedAt: !1023)
!1058 = !DILocation(line: 2196, column: 12, scope: !557, inlinedAt: !1023)
!1059 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E", scope: !39, file: !38, line: 935, type: !303, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063, !1065, !1067, !1069, !1071, !1072, !1074, !1076, !1078, !1080}
!1061 = !DILocalVariable(name: "output", arg: 1, scope: !1059, file: !38, line: 935, type: !199)
!1062 = !DILocalVariable(name: "input", arg: 2, scope: !1059, file: !38, line: 935, type: !152)
!1063 = !DILocalVariable(name: "iter", scope: !1064, file: !38, line: 936, type: !541, align: 8)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !38, line: 936, column: 17)
!1065 = !DILocalVariable(name: "__next", scope: !1066, file: !38, line: 936, type: !445, align: 8)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !38, line: 936, column: 33)
!1067 = !DILocalVariable(name: "val", scope: !1068, file: !38, line: 936, type: !445, align: 8)
!1068 = distinct !DILexicalBlock(scope: !1066, file: !38, line: 936, column: 21)
!1069 = !DILocalVariable(name: "b", scope: !1070, file: !38, line: 936, type: !48, align: 2)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !38, line: 936, column: 33)
!1071 = !DILocalVariable(name: "ac", scope: !1070, file: !38, line: 936, type: !199, align: 8)
!1072 = !DILocalVariable(name: "val", scope: !1073, file: !38, line: 937, type: !48, align: 2)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !38, line: 937, column: 21)
!1074 = !DILocalVariable(name: "iter", scope: !1075, file: !38, line: 938, type: !602, align: 8)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !38, line: 938, column: 21)
!1076 = !DILocalVariable(name: "__next", scope: !1077, file: !38, line: 938, type: !198, align: 8)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !38, line: 938, column: 33)
!1078 = !DILocalVariable(name: "val", scope: !1079, file: !38, line: 938, type: !198, align: 8)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !38, line: 938, column: 25)
!1080 = !DILocalVariable(name: "byte", scope: !1081, file: !38, line: 938, type: !198, align: 8)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !38, line: 938, column: 33)
!1082 = !DILocation(line: 0, scope: !1059)
!1083 = !DILocation(line: 0, scope: !722, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 936, column: 33, scope: !1059)
!1085 = !DILocation(line: 0, scope: !737, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 549, column: 9, scope: !722, inlinedAt: !1084)
!1087 = !DILocation(line: 0, scope: !743, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 24, column: 9, scope: !737, inlinedAt: !1086)
!1089 = !DILocation(line: 0, scope: !826, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 4935, column: 12, scope: !836, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 100, column: 30, scope: !853, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 168, column: 37, scope: !743, inlinedAt: !1088)
!1093 = !DILocation(line: 88, column: 9, scope: !826, inlinedAt: !1090)
!1094 = !DILocation(line: 4935, column: 9, scope: !836, inlinedAt: !1091)
!1095 = !DILocation(line: 0, scope: !751, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 168, column: 19, scope: !743, inlinedAt: !1088)
!1097 = !DILocation(line: 0, scope: !757, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1096)
!1099 = !DILocation(line: 0, scope: !763, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1098)
!1101 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1100)
!1102 = !DILocation(line: 0, scope: !1064)
!1103 = !DILocation(line: 0, scope: !557, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 936, column: 33, scope: !1066)
!1105 = !DILocation(line: 2196, column: 9, scope: !557, inlinedAt: !1104)
!1106 = !DILocation(line: 2196, column: 12, scope: !557, inlinedAt: !1104)
!1107 = !DILocation(line: 2197, column: 13, scope: !557, inlinedAt: !1104)
!1108 = !DILocation(line: 0, scope: !457, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 2198, column: 13, scope: !557, inlinedAt: !1104)
!1110 = !DILocation(line: 0, scope: !479, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 47, column: 9, scope: !457, inlinedAt: !1109)
!1112 = !DILocation(line: 174, column: 12, scope: !479, inlinedAt: !1111)
!1113 = !DILocation(line: 174, column: 9, scope: !479, inlinedAt: !1111)
!1114 = !DILocation(line: 0, scope: !482, inlinedAt: !1111)
!1115 = !DILocation(line: 176, column: 13, scope: !482, inlinedAt: !1111)
!1116 = !DILocation(line: 0, scope: !503, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 178, column: 28, scope: !482, inlinedAt: !1111)
!1118 = !DILocation(line: 0, scope: !496, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1117)
!1120 = !DILocation(line: 0, scope: !488, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1119)
!1122 = !DILocation(line: 0, scope: !512, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 178, column: 53, scope: !482, inlinedAt: !1111)
!1124 = !DILocation(line: 5029, column: 21, scope: !512, inlinedAt: !1123)
!1125 = !DILocation(line: 0, scope: !520, inlinedAt: !1123)
!1126 = !DILocation(line: 0, scope: !522, inlinedAt: !1123)
!1127 = !DILocation(line: 0, scope: !188, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 5035, column: 37, scope: !522, inlinedAt: !1123)
!1129 = !DILocation(line: 0, scope: !175, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1128)
!1131 = !DILocation(line: 5031, column: 13, scope: !520, inlinedAt: !1123)
!1132 = !DILocation(line: 0, scope: !1066)
!1133 = !DILocation(line: 0, scope: !1070)
!1134 = !DILocation(line: 0, scope: !1073)
!1135 = !DILocation(line: 0, scope: !648, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 938, column: 33, scope: !1073)
!1137 = !DILocation(line: 0, scope: !653, inlinedAt: !1136)
!1138 = !DILocation(line: 0, scope: !188, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 643, column: 17, scope: !653, inlinedAt: !1136)
!1140 = !DILocation(line: 0, scope: !175, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1139)
!1142 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1141)
!1143 = !DILocation(line: 0, scope: !1075)
!1144 = !DILocation(line: 0, scope: !666, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 938, column: 33, scope: !1077)
!1146 = !DILocation(line: 3320, column: 9, scope: !666, inlinedAt: !1145)
!1147 = !DILocation(line: 3450, column: 21, scope: !666, inlinedAt: !1145)
!1148 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1121)
!1149 = !DILocation(line: 936, column: 23, scope: !1066)
!1150 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1130)
!1151 = !DILocation(line: 0, scope: !687, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 3365, column: 47, scope: !666, inlinedAt: !1145)
!1153 = !DILocation(line: 0, scope: !693, inlinedAt: !1152)
!1154 = !DILocation(line: 0, scope: !175, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 3402, column: 64, scope: !693, inlinedAt: !1152)
!1156 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1155)
!1157 = !DILocation(line: 0, scope: !1077)
!1158 = !DILocation(line: 0, scope: !1081)
!1159 = !DILocation(line: 939, column: 25, scope: !1081)
!1160 = !DILocation(line: 940, column: 25, scope: !1081)
!1161 = distinct !{!1161, !1162}
!1162 = !{!"llvm.loop.unroll.disable"}
!1163 = !DILocation(line: 943, column: 14, scope: !1059)
!1164 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_impl", linkageName: "_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E", scope: !39, file: !38, line: 994, type: !303, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1165)
!1165 = !{!1166, !1167, !1168, !1183, !1185, !1187, !1189}
!1166 = !DILocalVariable(name: "output", arg: 1, scope: !1164, file: !38, line: 994, type: !199)
!1167 = !DILocalVariable(name: "input", arg: 2, scope: !1164, file: !38, line: 994, type: !152)
!1168 = !DILocalVariable(name: "iter", scope: !1169, file: !38, line: 995, type: !1170, align: 8)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !38, line: 995, column: 17)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", scope: !416, file: !7, size: 576, align: 64, elements: !1171, templateParams: !1181, identifier: "b49781362a9b7bcd7a19af271fbaff88")
!1171 = !{!1172, !1173, !1179, !1180}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1170, file: !7, baseType: !420, size: 128, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1170, file: !7, baseType: !1174, size: 320, align: 64, offset: 128)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksExactMut<u8>", scope: !148, file: !7, size: 320, align: 64, elements: !1175, templateParams: !185, identifier: "aae376f1ffe56526116a66e37fd5e85e")
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1174, file: !7, baseType: !199, size: 128, align: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1174, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1174, file: !7, baseType: !36, size: 64, align: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1170, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1170, file: !7, baseType: !36, size: 64, align: 64, offset: 512)
!1181 = !{!441, !1182}
!1182 = !DITemplateTypeParameter(name: "B", type: !1174)
!1183 = !DILocalVariable(name: "__next", scope: !1184, file: !38, line: 995, type: !445, align: 8)
!1184 = distinct !DILexicalBlock(scope: !1169, file: !38, line: 995, column: 32)
!1185 = !DILocalVariable(name: "val", scope: !1186, file: !38, line: 995, type: !445, align: 8)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !38, line: 995, column: 21)
!1187 = !DILocalVariable(name: "b", scope: !1188, file: !38, line: 995, type: !151, align: 8)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !38, line: 995, column: 32)
!1189 = !DILocalVariable(name: "ac", scope: !1188, file: !38, line: 995, type: !199, align: 8)
!1190 = !DILocation(line: 0, scope: !1164)
!1191 = !DILocation(line: 0, scope: !188, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 1070, column: 63, scope: !1193, inlinedAt: !1207)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !146, line: 1065, column: 9)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !146, line: 1064, column: 9)
!1195 = distinct !DISubprogram(name: "split_at_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc16232f309fedb03E", scope: !147, file: !146, line: 1063, type: !1196, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1202)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1198, !199, !36}
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut [u8], &mut [u8])", file: !7, size: 256, align: 64, elements: !1199, templateParams: !34, identifier: "a99a11d1f26f4419acc009a3d2a3a192")
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1198, file: !7, baseType: !199, size: 128, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1198, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DILocalVariable(name: "self", arg: 1, scope: !1195, file: !146, line: 1063, type: !199)
!1204 = !DILocalVariable(name: "mid", arg: 2, scope: !1195, file: !146, line: 1063, type: !36)
!1205 = !DILocalVariable(name: "len", scope: !1194, file: !146, line: 1064, type: !36, align: 8)
!1206 = !DILocalVariable(name: "ptr", scope: !1193, file: !146, line: 1065, type: !181, align: 8)
!1207 = distinct !DILocation(line: 836, column: 26, scope: !1208, inlinedAt: !1221)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !146, line: 835, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !146, line: 834, column: 9)
!1210 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16chunks_exact_mut17hc3136e24e5f5b5e8E", scope: !147, file: !146, line: 832, type: !1211, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1174, !199, !36}
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1220}
!1214 = !DILocalVariable(name: "self", arg: 1, scope: !1210, file: !146, line: 832, type: !199)
!1215 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !1210, file: !146, line: 832, type: !36)
!1216 = !DILocalVariable(name: "rem", scope: !1209, file: !146, line: 834, type: !36, align: 8)
!1217 = !DILocalVariable(name: "len", scope: !1208, file: !146, line: 835, type: !36, align: 8)
!1218 = !DILocalVariable(name: "fst", scope: !1219, file: !146, line: 836, type: !199, align: 8)
!1219 = distinct !DILexicalBlock(scope: !1208, file: !146, line: 836, column: 9)
!1220 = !DILocalVariable(name: "snd", scope: !1219, file: !146, line: 836, type: !199, align: 8)
!1221 = distinct !DILocation(line: 995, column: 49, scope: !1164)
!1222 = !DILocation(line: 0, scope: !175, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1192)
!1224 = !DILocalVariable(name: "other", arg: 2, scope: !1225, file: !723, line: 544, type: !1174)
!1225 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E", scope: !724, file: !723, line: 544, type: !1226, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1230, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1170, !420, !1174}
!1228 = !{!1229, !1224}
!1229 = !DILocalVariable(name: "self", arg: 1, scope: !1225, file: !723, line: 544, type: !420)
!1230 = !{!732, !1231}
!1231 = !DITemplateTypeParameter(name: "U", type: !1174)
!1232 = !DILocation(line: 0, scope: !1225, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 995, column: 32, scope: !1164)
!1234 = !DILocalVariable(name: "b", arg: 2, scope: !1235, file: !458, line: 23, type: !1174)
!1235 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h12977c675d42b4a6E", scope: !1170, file: !458, line: 23, type: !1226, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1181, retainedNodes: !1236)
!1236 = !{!1237, !1234}
!1237 = !DILocalVariable(name: "a", arg: 1, scope: !1235, file: !458, line: 23, type: !420)
!1238 = !DILocation(line: 0, scope: !1235, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 549, column: 9, scope: !1225, inlinedAt: !1233)
!1240 = !DILocalVariable(name: "b", arg: 2, scope: !1241, file: !458, line: 167, type: !1174)
!1241 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h8f9ea6a848983c35E", scope: !459, file: !458, line: 167, type: !1226, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1181, retainedNodes: !1242)
!1242 = !{!1243, !1240, !1244}
!1243 = !DILocalVariable(name: "a", arg: 1, scope: !1241, file: !458, line: 167, type: !420)
!1244 = !DILocalVariable(name: "len", scope: !1245, file: !458, line: 168, type: !36, align: 8)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !458, line: 168, column: 9)
!1246 = !DILocation(line: 0, scope: !1241, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 24, column: 9, scope: !1235, inlinedAt: !1239)
!1248 = !DILocation(line: 5228, column: 17, scope: !1249, inlinedAt: !1257)
!1249 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN95_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1cceedd3329a7aa7E", scope: !147, file: !146, line: 5227, type: !1250, scopeLine: 5227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1253)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!839, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksExactMut<u8>", baseType: !1174, size: 64, align: 64, dwarfAddressSpace: 0)
!1253 = !{!1254, !1255}
!1254 = !DILocalVariable(name: "self", arg: 1, scope: !1249, file: !146, line: 5227, type: !1252)
!1255 = !DILocalVariable(name: "n", scope: !1256, file: !146, line: 5228, type: !36, align: 8)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !146, line: 5228, column: 9)
!1257 = distinct !DILocation(line: 100, column: 30, scope: !1258, inlinedAt: !1274)
!1258 = distinct !DISubprogram(name: "len<core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1078ae3eb8b6c1feE", scope: !855, file: !854, line: 99, type: !1259, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1272, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!36, !1252}
!1261 = !{!1262, !1263, !1265, !1266, !1268, !1269, !1271}
!1262 = !DILocalVariable(name: "self", arg: 1, scope: !1258, file: !854, line: 99, type: !1252)
!1263 = !DILocalVariable(name: "lower", scope: !1264, file: !854, line: 100, type: !36, align: 8)
!1264 = distinct !DILexicalBlock(scope: !1258, file: !854, line: 100, column: 9)
!1265 = !DILocalVariable(name: "upper", scope: !1264, file: !854, line: 100, type: !82, align: 8)
!1266 = !DILocalVariable(name: "left_val", scope: !1267, file: !866, line: 45, type: !867, align: 8)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !866, line: 45, column: 13)
!1268 = !DILocalVariable(name: "right_val", scope: !1267, file: !866, line: 45, type: !867, align: 8)
!1269 = !DILocalVariable(name: "arg0", scope: !1270, file: !866, line: 52, type: !871, align: 8)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !866, line: 16, column: 38)
!1271 = !DILocalVariable(name: "arg1", scope: !1270, file: !866, line: 52, type: !871, align: 8)
!1272 = !{!1273}
!1273 = !DITemplateTypeParameter(name: "Self", type: !1174)
!1274 = distinct !DILocation(line: 168, column: 37, scope: !1241, inlinedAt: !1247)
!1275 = !DILocation(line: 0, scope: !751, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 168, column: 19, scope: !1241, inlinedAt: !1247)
!1277 = !DILocation(line: 0, scope: !757, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1276)
!1279 = !DILocation(line: 0, scope: !763, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1278)
!1281 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1280)
!1282 = !DILocation(line: 0, scope: !1169)
!1283 = !DILocalVariable(name: "self", arg: 1, scope: !1284, file: !458, line: 46, type: !1287)
!1284 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ef5217425d92cE", scope: !459, file: !458, line: 46, type: !1285, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1181, retainedNodes: !1288)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!462, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", baseType: !1170, size: 64, align: 64, dwarfAddressSpace: 0)
!1288 = !{!1283}
!1289 = !DILocation(line: 0, scope: !1284, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 995, column: 32, scope: !1184)
!1291 = !DILocalVariable(name: "self", arg: 1, scope: !1292, file: !458, line: 173, type: !1287)
!1292 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hbe3e5f48c327d6bcE", scope: !459, file: !458, line: 173, type: !1285, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1181, retainedNodes: !1293)
!1293 = !{!1291, !1294}
!1294 = !DILocalVariable(name: "i", scope: !1295, file: !458, line: 175, type: !36, align: 8)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !458, line: 175, column: 13)
!1296 = !DILocation(line: 0, scope: !1292, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 47, column: 9, scope: !1284, inlinedAt: !1290)
!1298 = !DILocation(line: 174, column: 12, scope: !1292, inlinedAt: !1297)
!1299 = !DILocation(line: 174, column: 9, scope: !1292, inlinedAt: !1297)
!1300 = !DILocation(line: 176, column: 13, scope: !1295, inlinedAt: !1297)
!1301 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 178, column: 28, scope: !1295, inlinedAt: !1297)
!1305 = !DILocation(line: 5306, column: 21, scope: !1306, inlinedAt: !1315)
!1306 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN103_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hcbe229f7d98987a1E", scope: !147, file: !146, line: 5305, type: !1307, scopeLine: 5305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1310)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!199, !1309, !36}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksExactMut<u8>", baseType: !1174, size: 64, align: 64, dwarfAddressSpace: 0)
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "self", arg: 1, scope: !1306, file: !146, line: 5305, type: !1309)
!1312 = !DILocalVariable(name: "i", arg: 2, scope: !1306, file: !146, line: 5305, type: !36)
!1313 = !DILocalVariable(name: "start", scope: !1314, file: !146, line: 5306, type: !36, align: 8)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !146, line: 5306, column: 9)
!1315 = distinct !DILocation(line: 178, column: 53, scope: !1295, inlinedAt: !1297)
!1316 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 5308, column: 37, scope: !1314, inlinedAt: !1315)
!1319 = !DILocation(line: 996, column: 30, scope: !1188)
!1320 = !DILocation(line: 996, column: 21, scope: !1188)
!1321 = !DILocation(line: 997, column: 30, scope: !1188)
!1322 = !DILocation(line: 997, column: 21, scope: !1188)
!1323 = distinct !{!1323, !218}
!1324 = !DILocation(line: 999, column: 14, scope: !1164)
!1325 = !DILocation(line: 0, scope: !1295, inlinedAt: !1297)
!1326 = !DILocation(line: 0, scope: !503, inlinedAt: !1304)
!1327 = !DILocation(line: 0, scope: !496, inlinedAt: !1303)
!1328 = !DILocation(line: 0, scope: !488, inlinedAt: !1302)
!1329 = !DILocation(line: 0, scope: !1306, inlinedAt: !1315)
!1330 = !DILocation(line: 0, scope: !1314, inlinedAt: !1315)
!1331 = !DILocation(line: 0, scope: !188, inlinedAt: !1318)
!1332 = !DILocation(line: 0, scope: !175, inlinedAt: !1317)
!1333 = !DILocation(line: 0, scope: !1184)
!1334 = !DILocation(line: 0, scope: !1188)
!1335 = distinct !{!1335, !804, !218}
!1336 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_slice_impl", linkageName: "_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E", scope: !39, file: !38, line: 1056, type: !303, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340, !1342, !1344, !1346, !1348}
!1338 = !DILocalVariable(name: "output", arg: 1, scope: !1336, file: !38, line: 1056, type: !199)
!1339 = !DILocalVariable(name: "input", arg: 2, scope: !1336, file: !38, line: 1056, type: !152)
!1340 = !DILocalVariable(name: "iter", scope: !1341, file: !38, line: 1058, type: !1170, align: 8)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !38, line: 1058, column: 17)
!1342 = !DILocalVariable(name: "__next", scope: !1343, file: !38, line: 1058, type: !445, align: 8)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !38, line: 1058, column: 32)
!1344 = !DILocalVariable(name: "val", scope: !1345, file: !38, line: 1058, type: !445, align: 8)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !38, line: 1058, column: 21)
!1346 = !DILocalVariable(name: "b", scope: !1347, file: !38, line: 1058, type: !151, align: 8)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !38, line: 1058, column: 32)
!1348 = !DILocalVariable(name: "ac", scope: !1347, file: !38, line: 1058, type: !199, align: 8)
!1349 = !DILocation(line: 0, scope: !1336)
!1350 = !DILocation(line: 0, scope: !751, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 1058, column: 40, scope: !1336)
!1352 = !DILocation(line: 0, scope: !757, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1351)
!1354 = !DILocation(line: 0, scope: !763, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1353)
!1356 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1355)
!1357 = !DILocation(line: 0, scope: !188, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 1070, column: 63, scope: !1193, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 836, column: 26, scope: !1208, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 1060, column: 26, scope: !1336)
!1361 = !DILocation(line: 0, scope: !175, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1358)
!1363 = !DILocation(line: 0, scope: !1225, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 1058, column: 32, scope: !1336)
!1365 = !DILocation(line: 0, scope: !1235, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 549, column: 9, scope: !1225, inlinedAt: !1364)
!1367 = !DILocation(line: 0, scope: !1241, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 24, column: 9, scope: !1235, inlinedAt: !1366)
!1369 = !DILocation(line: 5228, column: 17, scope: !1249, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 100, column: 30, scope: !1258, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 168, column: 37, scope: !1241, inlinedAt: !1368)
!1372 = !DILocation(line: 0, scope: !751, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 168, column: 19, scope: !1241, inlinedAt: !1368)
!1374 = !DILocation(line: 0, scope: !757, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1373)
!1376 = !DILocation(line: 0, scope: !763, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1375)
!1378 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1377)
!1379 = !DILocation(line: 0, scope: !1341)
!1380 = !DILocation(line: 0, scope: !1284, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 1058, column: 32, scope: !1343)
!1382 = !DILocation(line: 0, scope: !1292, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 47, column: 9, scope: !1284, inlinedAt: !1381)
!1384 = !DILocation(line: 174, column: 12, scope: !1292, inlinedAt: !1383)
!1385 = !DILocation(line: 174, column: 9, scope: !1292, inlinedAt: !1383)
!1386 = !DILocation(line: 176, column: 13, scope: !1295, inlinedAt: !1383)
!1387 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 178, column: 28, scope: !1295, inlinedAt: !1383)
!1391 = !DILocation(line: 5306, column: 21, scope: !1306, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 178, column: 53, scope: !1295, inlinedAt: !1383)
!1393 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 5308, column: 37, scope: !1314, inlinedAt: !1392)
!1396 = !DILocation(line: 1061, column: 30, scope: !1347)
!1397 = !DILocation(line: 1061, column: 21, scope: !1347)
!1398 = !DILocation(line: 1062, column: 30, scope: !1347)
!1399 = !DILocation(line: 1062, column: 21, scope: !1347)
!1400 = distinct !{!1400, !218}
!1401 = !DILocation(line: 1064, column: 14, scope: !1336)
!1402 = !DILocation(line: 0, scope: !1295, inlinedAt: !1383)
!1403 = !DILocation(line: 0, scope: !503, inlinedAt: !1390)
!1404 = !DILocation(line: 0, scope: !496, inlinedAt: !1389)
!1405 = !DILocation(line: 0, scope: !488, inlinedAt: !1388)
!1406 = !DILocation(line: 0, scope: !1306, inlinedAt: !1392)
!1407 = !DILocation(line: 0, scope: !1314, inlinedAt: !1392)
!1408 = !DILocation(line: 0, scope: !188, inlinedAt: !1395)
!1409 = !DILocation(line: 0, scope: !175, inlinedAt: !1394)
!1410 = !DILocation(line: 0, scope: !1343)
!1411 = !DILocation(line: 0, scope: !1347)
!1412 = distinct !{!1412, !804, !218}
!1413 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_impl", linkageName: "_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E", scope: !39, file: !38, line: 1117, type: !303, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1414)
!1414 = !{!1415, !1416, !1417, !1425, !1427, !1429, !1431}
!1415 = !DILocalVariable(name: "output", arg: 1, scope: !1413, file: !38, line: 1117, type: !199)
!1416 = !DILocalVariable(name: "input", arg: 2, scope: !1413, file: !38, line: 1117, type: !152)
!1417 = !DILocalVariable(name: "iter", scope: !1418, file: !38, line: 1118, type: !1419, align: 8)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !38, line: 1118, column: 17)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", scope: !417, file: !7, size: 640, align: 64, elements: !1420, templateParams: !1423, identifier: "3135be1e7859e6e1a7b2c24ecea1b626")
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1419, file: !7, baseType: !1170, size: 576, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1419, file: !7, baseType: !36, size: 64, align: 64, offset: 576)
!1423 = !{!1424}
!1424 = !DITemplateTypeParameter(name: "I", type: !1170)
!1425 = !DILocalVariable(name: "__next", scope: !1426, file: !38, line: 1118, type: !445, align: 8)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !38, line: 1118, column: 32)
!1427 = !DILocalVariable(name: "val", scope: !1428, file: !38, line: 1118, type: !445, align: 8)
!1428 = distinct !DILexicalBlock(scope: !1426, file: !38, line: 1118, column: 21)
!1429 = !DILocalVariable(name: "b", scope: !1430, file: !38, line: 1118, type: !151, align: 8)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !38, line: 1118, column: 32)
!1431 = !DILocalVariable(name: "ac", scope: !1430, file: !38, line: 1118, type: !199, align: 8)
!1432 = !DILocation(line: 0, scope: !1413)
!1433 = !DILocation(line: 0, scope: !188, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 1070, column: 63, scope: !1193, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 836, column: 26, scope: !1208, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 1118, column: 49, scope: !1413)
!1437 = !DILocation(line: 0, scope: !175, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1434)
!1439 = !DILocation(line: 0, scope: !1225, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 1118, column: 32, scope: !1413)
!1441 = !DILocation(line: 0, scope: !1235, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 549, column: 9, scope: !1225, inlinedAt: !1440)
!1443 = !DILocation(line: 0, scope: !1241, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 24, column: 9, scope: !1235, inlinedAt: !1442)
!1445 = !DILocation(line: 5228, column: 17, scope: !1249, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 100, column: 30, scope: !1258, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 168, column: 37, scope: !1241, inlinedAt: !1444)
!1448 = !DILocation(line: 0, scope: !751, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 168, column: 19, scope: !1241, inlinedAt: !1444)
!1450 = !DILocation(line: 0, scope: !757, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1449)
!1452 = !DILocation(line: 0, scope: !763, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1451)
!1454 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1453)
!1455 = !DILocation(line: 0, scope: !1418)
!1456 = !DILocalVariable(name: "self", arg: 1, scope: !1457, file: !558, line: 2195, type: !1460)
!1457 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE", scope: !559, file: !558, line: 2195, type: !1458, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1423, retainedNodes: !1461)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!462, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", baseType: !1419, size: 64, align: 64, dwarfAddressSpace: 0)
!1461 = !{!1456}
!1462 = !DILocation(line: 0, scope: !1457, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 1118, column: 32, scope: !1426)
!1464 = !DILocation(line: 2196, column: 9, scope: !1457, inlinedAt: !1463)
!1465 = !DILocation(line: 0, scope: !1284, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 2198, column: 13, scope: !1457, inlinedAt: !1463)
!1467 = !DILocation(line: 0, scope: !1292, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 47, column: 9, scope: !1284, inlinedAt: !1466)
!1469 = !DILocation(line: 174, column: 12, scope: !1292, inlinedAt: !1468)
!1470 = !DILocation(line: 174, column: 9, scope: !1292, inlinedAt: !1468)
!1471 = !DILocation(line: 1122, column: 14, scope: !1413)
!1472 = !DILocation(line: 0, scope: !1295, inlinedAt: !1468)
!1473 = !DILocation(line: 0, scope: !503, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 178, column: 28, scope: !1295, inlinedAt: !1468)
!1475 = !DILocation(line: 0, scope: !496, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1474)
!1477 = !DILocation(line: 0, scope: !488, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1476)
!1479 = !DILocation(line: 0, scope: !1306, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 178, column: 53, scope: !1295, inlinedAt: !1468)
!1481 = !DILocation(line: 0, scope: !1314, inlinedAt: !1480)
!1482 = !DILocation(line: 0, scope: !188, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 5308, column: 37, scope: !1314, inlinedAt: !1480)
!1484 = !DILocation(line: 0, scope: !175, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1483)
!1486 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1478)
!1487 = !DILocation(line: 5306, column: 21, scope: !1306, inlinedAt: !1480)
!1488 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1485)
!1489 = !DILocation(line: 176, column: 13, scope: !1295, inlinedAt: !1468)
!1490 = !DILocation(line: 0, scope: !1426)
!1491 = !DILocation(line: 0, scope: !1430)
!1492 = !DILocation(line: 1119, column: 30, scope: !1430)
!1493 = !DILocation(line: 1119, column: 21, scope: !1430)
!1494 = !DILocation(line: 1120, column: 30, scope: !1430)
!1495 = !DILocation(line: 1120, column: 21, scope: !1430)
!1496 = !DILocation(line: 2197, column: 13, scope: !1457, inlinedAt: !1463)
!1497 = !DILocation(line: 2196, column: 12, scope: !1457, inlinedAt: !1463)
!1498 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE", scope: !39, file: !38, line: 1178, type: !303, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1504, !1506, !1508, !1510, !1511, !1513, !1515, !1517, !1519}
!1500 = !DILocalVariable(name: "output", arg: 1, scope: !1498, file: !38, line: 1178, type: !199)
!1501 = !DILocalVariable(name: "input", arg: 2, scope: !1498, file: !38, line: 1178, type: !152)
!1502 = !DILocalVariable(name: "iter", scope: !1503, file: !38, line: 1179, type: !1419, align: 8)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !38, line: 1179, column: 17)
!1504 = !DILocalVariable(name: "__next", scope: !1505, file: !38, line: 1179, type: !445, align: 8)
!1505 = distinct !DILexicalBlock(scope: !1503, file: !38, line: 1179, column: 33)
!1506 = !DILocalVariable(name: "val", scope: !1507, file: !38, line: 1179, type: !445, align: 8)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !38, line: 1179, column: 21)
!1508 = !DILocalVariable(name: "b", scope: !1509, file: !38, line: 1179, type: !48, align: 2)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !38, line: 1179, column: 33)
!1510 = !DILocalVariable(name: "ac", scope: !1509, file: !38, line: 1179, type: !199, align: 8)
!1511 = !DILocalVariable(name: "val", scope: !1512, file: !38, line: 1180, type: !48, align: 2)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !38, line: 1180, column: 21)
!1513 = !DILocalVariable(name: "iter", scope: !1514, file: !38, line: 1181, type: !602, align: 8)
!1514 = distinct !DILexicalBlock(scope: !1512, file: !38, line: 1181, column: 21)
!1515 = !DILocalVariable(name: "__next", scope: !1516, file: !38, line: 1181, type: !198, align: 8)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !38, line: 1181, column: 33)
!1517 = !DILocalVariable(name: "val", scope: !1518, file: !38, line: 1181, type: !198, align: 8)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !38, line: 1181, column: 25)
!1519 = !DILocalVariable(name: "byte", scope: !1520, file: !38, line: 1181, type: !198, align: 8)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !38, line: 1181, column: 33)
!1521 = !DILocation(line: 0, scope: !1498)
!1522 = !DILocation(line: 0, scope: !188, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 1070, column: 63, scope: !1193, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 836, column: 26, scope: !1208, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 1179, column: 50, scope: !1498)
!1526 = !DILocation(line: 0, scope: !175, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1523)
!1528 = !DILocation(line: 0, scope: !1225, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 1179, column: 33, scope: !1498)
!1530 = !DILocation(line: 0, scope: !1235, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 549, column: 9, scope: !1225, inlinedAt: !1529)
!1532 = !DILocation(line: 0, scope: !1241, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 24, column: 9, scope: !1235, inlinedAt: !1531)
!1534 = !DILocation(line: 5228, column: 17, scope: !1249, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 100, column: 30, scope: !1258, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 168, column: 37, scope: !1241, inlinedAt: !1533)
!1537 = !DILocation(line: 0, scope: !751, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 168, column: 19, scope: !1241, inlinedAt: !1533)
!1539 = !DILocation(line: 0, scope: !757, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 929, column: 5, scope: !751, inlinedAt: !1538)
!1541 = !DILocation(line: 0, scope: !763, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 624, column: 9, scope: !757, inlinedAt: !1540)
!1543 = !DILocation(line: 951, column: 9, scope: !763, inlinedAt: !1542)
!1544 = !DILocation(line: 0, scope: !1503)
!1545 = !DILocation(line: 0, scope: !1457, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 1179, column: 33, scope: !1505)
!1547 = !DILocation(line: 2196, column: 9, scope: !1457, inlinedAt: !1546)
!1548 = !DILocation(line: 0, scope: !1284, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 2198, column: 13, scope: !1457, inlinedAt: !1546)
!1550 = !DILocation(line: 0, scope: !1292, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 47, column: 9, scope: !1284, inlinedAt: !1549)
!1552 = !DILocation(line: 174, column: 12, scope: !1292, inlinedAt: !1551)
!1553 = !DILocation(line: 174, column: 9, scope: !1292, inlinedAt: !1551)
!1554 = !DILocation(line: 0, scope: !1295, inlinedAt: !1551)
!1555 = !DILocation(line: 0, scope: !503, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 178, column: 28, scope: !1295, inlinedAt: !1551)
!1557 = !DILocation(line: 0, scope: !496, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 6302, column: 20, scope: !503, inlinedAt: !1556)
!1559 = !DILocation(line: 0, scope: !488, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 530, column: 18, scope: !496, inlinedAt: !1558)
!1561 = !DILocation(line: 0, scope: !1306, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 178, column: 53, scope: !1295, inlinedAt: !1551)
!1563 = !DILocation(line: 0, scope: !1314, inlinedAt: !1562)
!1564 = !DILocation(line: 0, scope: !188, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 5308, column: 37, scope: !1314, inlinedAt: !1562)
!1566 = !DILocation(line: 0, scope: !175, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1565)
!1568 = !DILocation(line: 159, column: 18, scope: !488, inlinedAt: !1560)
!1569 = !DILocation(line: 5306, column: 21, scope: !1306, inlinedAt: !1562)
!1570 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1567)
!1571 = !DILocation(line: 0, scope: !1505)
!1572 = !DILocation(line: 0, scope: !1509)
!1573 = !DILocation(line: 1179, column: 23, scope: !1505)
!1574 = !DILocation(line: 0, scope: !188, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 643, column: 17, scope: !653, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1181, column: 33, scope: !1512)
!1577 = !DILocation(line: 0, scope: !175, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1575)
!1579 = !DILocation(line: 0, scope: !1514)
!1580 = !DILocation(line: 0, scope: !1512)
!1581 = !DILocation(line: 0, scope: !175, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 3402, column: 64, scope: !693, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 3365, column: 47, scope: !666, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 1181, column: 33, scope: !1516)
!1585 = !DILocation(line: 0, scope: !1516)
!1586 = !DILocation(line: 0, scope: !1520)
!1587 = !DILocation(line: 1182, column: 25, scope: !1520)
!1588 = !DILocation(line: 1183, column: 25, scope: !1520)
!1589 = !DILocation(line: 176, column: 13, scope: !1295, inlinedAt: !1551)
!1590 = !DILocation(line: 2197, column: 13, scope: !1457, inlinedAt: !1546)
!1591 = !DILocation(line: 1186, column: 14, scope: !1498)
!1592 = !DILocation(line: 2196, column: 12, scope: !1457, inlinedAt: !1546)
