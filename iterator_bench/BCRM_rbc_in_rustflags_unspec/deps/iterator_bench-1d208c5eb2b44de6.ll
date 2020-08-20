; ModuleID = 'iterator_bench.5f6e6zhf-cgu.0'
source_filename = "iterator_bench.5f6e6zhf-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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

; iterator_bench::c_style_input_size_fixed_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench29c_style_input_size_fixed_impl17hcfe426a147d1500bE([0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias nocapture readonly align 2 dereferenceable(640000) %input) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !220 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !236
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !224, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !236
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !225, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !226, metadata !DIExpression(DW_OP_deref)), !dbg !237
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !238
  br label %vector.body, !dbg !240

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.1, %vector.body ], !dbg !241
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !244
  %1 = bitcast i16* %0 to <8 x i16>*, !dbg !244
  %wide.load = load <8 x i16>, <8 x i16>* %1, align 2, !dbg !244
  %2 = shl nuw i64 %index, 1, !dbg !245
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
  %12 = shl nuw i64 %index.next, 1, !dbg !245
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
  ret void, !dbg !251
}

; iterator_bench::c_style_output_size_fixed_impl
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_ZN14iterator_bench30c_style_output_size_fixed_impl17hf1905e2e3293ab9bE([640000 x i8]* nocapture align 1 dereferenceable(640000) %output, [0 x i16]* noalias nocapture nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !252 {
start:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !256, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !268
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !268
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !258, metadata !DIExpression(DW_OP_deref)), !dbg !269
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  %output15 = ptrtoint [640000 x i8]* %output to i64
  %0 = icmp eq i64 %input.1, 0, !dbg !272
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !284

bb7.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %input.1, 8, !dbg !284
  br i1 %min.iters.check, label %bb7.preheader20, label %vector.scevcheck, !dbg !284

bb7.preheader20:                                  ; preds = %middle.block, %vector.scevcheck, %bb7.preheader
  %iter.sroa.0.014.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb7.preheader ], [ %n.vec, %middle.block ]
  %1 = xor i64 %iter.sroa.0.014.ph, -1, !dbg !284
  %xtraiter = and i64 %input.1, 1, !dbg !284
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !284
  br i1 %lcmp.mod, label %bb7.prol.loopexit, label %bb7.prol, !dbg !284

bb7.prol:                                         ; preds = %bb7.preheader20
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !114, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !287
  %2 = or i64 %iter.sroa.0.014.ph, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !264, metadata !DIExpression()), !dbg !291
  %3 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.014.ph, !dbg !292
  %b.prol = load i16, i16* %3, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b.prol, metadata !266, metadata !DIExpression()), !dbg !293
  %_22.prol = shl i64 %iter.sroa.0.014.ph, 1, !dbg !294
  %4 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_22.prol, !dbg !295
  %5 = trunc i16 %b.prol to i8, !dbg !295
  store i8 %5, i8* %4, align 1, !dbg !295
  %_27.prol = lshr i16 %b.prol, 8, !dbg !296
  %_29.prol = or i64 %_22.prol, 1, !dbg !297
  %6 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_29.prol, !dbg !298
  %7 = trunc i16 %_27.prol to i8, !dbg !298
  store i8 %7, i8* %6, align 1, !dbg !298
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !258, metadata !DIExpression(DW_OP_deref)), !dbg !269
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  br label %bb7.prol.loopexit, !dbg !284

bb7.prol.loopexit:                                ; preds = %bb7.preheader20, %bb7.prol
  %iter.sroa.0.014.unr = phi i64 [ %iter.sroa.0.014.ph, %bb7.preheader20 ], [ %2, %bb7.prol ]
  %8 = sub i64 0, %input.1, !dbg !284
  %9 = icmp eq i64 %1, %8, !dbg !284
  br i1 %9, label %bb5, label %bb7, !dbg !284

vector.scevcheck:                                 ; preds = %bb7.preheader
  %10 = add i64 %input.1, -1, !dbg !284
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !284
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !284
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !284
  %11 = xor i64 %output15, -1, !dbg !284
  %12 = icmp ugt i64 %mul.result, %11, !dbg !284
  %13 = or i1 %12, %mul.overflow, !dbg !284
  %scevgep = getelementptr [640000 x i8], [640000 x i8]* %output, i64 0, i64 1, !dbg !284
  %scevgep16 = ptrtoint i8* %scevgep to i64
  %mul17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !284
  %mul.result18 = extractvalue { i64, i1 } %mul17, 0, !dbg !284
  %mul.overflow19 = extractvalue { i64, i1 } %mul17, 1, !dbg !284
  %14 = xor i64 %scevgep16, -1, !dbg !284
  %15 = icmp ugt i64 %mul.result18, %14, !dbg !284
  %16 = or i1 %15, %mul.overflow19, !dbg !284
  %17 = or i1 %13, %16, !dbg !284
  br i1 %17, label %bb7.preheader20, label %vector.ph, !dbg !284

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %input.1, -8, !dbg !284
  %18 = add i64 %n.vec, -8, !dbg !284
  %19 = lshr exact i64 %18, 3, !dbg !284
  %20 = add nuw nsw i64 %19, 1, !dbg !284
  %xtraiter21 = and i64 %20, 1, !dbg !284
  %21 = icmp eq i64 %18, 0, !dbg !284
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !284

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %20, %xtraiter21, !dbg !284
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
  %lcmp.mod22 = icmp eq i64 %xtraiter21, 0, !dbg !289
  br i1 %lcmp.mod22, label %middle.block, label %vector.body.epil, !dbg !289

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
  br i1 %cmp.n, label %bb5, label %bb7.preheader20, !dbg !284

bb5:                                              ; preds = %bb7.prol.loopexit, %bb7, %middle.block, %start
  ret void, !dbg !300

bb7:                                              ; preds = %bb7.prol.loopexit, %bb7
  %iter.sroa.0.014 = phi i64 [ %58, %bb7 ], [ %iter.sroa.0.014.unr, %bb7.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !114, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !287
  %52 = add nuw i64 %iter.sroa.0.014, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !264, metadata !DIExpression()), !dbg !291
  %53 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.014, !dbg !292
  %b = load i16, i16* %53, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b, metadata !266, metadata !DIExpression()), !dbg !293
  %_22 = shl i64 %iter.sroa.0.014, 1, !dbg !294
  %54 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_22, !dbg !295
  %55 = trunc i16 %b to i8, !dbg !295
  store i8 %55, i8* %54, align 1, !dbg !295
  %_27 = lshr i16 %b, 8, !dbg !296
  %_29 = or i64 %_22, 1, !dbg !297
  %56 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_29, !dbg !298
  %57 = trunc i16 %_27 to i8, !dbg !298
  store i8 %57, i8* %56, align 1, !dbg !298
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !258, metadata !DIExpression(DW_OP_deref)), !dbg !269
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i64 %52, metadata !119, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %52, metadata !114, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !287
  %58 = add nuw i64 %iter.sroa.0.014, 2, !dbg !289
  call void @llvm.dbg.value(metadata i64 %52, metadata !260, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %52, metadata !264, metadata !DIExpression()), !dbg !291
  %59 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %52, !dbg !292
  %b.1 = load i16, i16* %59, align 2, !dbg !292
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !266, metadata !DIExpression()), !dbg !293
  %_22.1 = shl i64 %52, 1, !dbg !294
  %60 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_22.1, !dbg !295
  %61 = trunc i16 %b.1 to i8, !dbg !295
  store i8 %61, i8* %60, align 1, !dbg !295
  %_27.1 = lshr i16 %b.1, 8, !dbg !296
  %_29.1 = or i64 %_22.1, 1, !dbg !297
  %62 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %_29.1, !dbg !298
  %63 = trunc i16 %_27.1 to i8, !dbg !298
  store i8 %63, i8* %62, align 1, !dbg !298
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !258, metadata !DIExpression(DW_OP_deref)), !dbg !269
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !270
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
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !308, metadata !DIExpression(DW_OP_deref)), !dbg !319
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  %output.015 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp eq i64 %input.1, 0, !dbg !322
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !324

bb7.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i64 %input.1, 8, !dbg !324
  br i1 %min.iters.check, label %bb7.preheader20, label %vector.scevcheck, !dbg !324

bb7.preheader20:                                  ; preds = %middle.block, %vector.scevcheck, %bb7.preheader
  %iter.sroa.0.014.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb7.preheader ], [ %n.vec, %middle.block ]
  %1 = xor i64 %iter.sroa.0.014.ph, -1, !dbg !324
  %xtraiter = and i64 %input.1, 1, !dbg !324
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !324
  br i1 %lcmp.mod, label %bb7.prol.loopexit, label %bb7.prol, !dbg !324

bb7.prol:                                         ; preds = %bb7.preheader20
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !114, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !327
  %2 = or i64 %iter.sroa.0.014.ph, 1, !dbg !329
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014.ph, metadata !314, metadata !DIExpression()), !dbg !331
  %3 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.014.ph, !dbg !332
  %b.prol = load i16, i16* %3, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b.prol, metadata !316, metadata !DIExpression()), !dbg !333
  %_22.prol = shl i64 %iter.sroa.0.014.ph, 1, !dbg !334
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_22.prol, !dbg !335
  %5 = trunc i16 %b.prol to i8, !dbg !335
  store i8 %5, i8* %4, align 1, !dbg !335
  %_27.prol = lshr i16 %b.prol, 8, !dbg !336
  %_29.prol = or i64 %_22.prol, 1, !dbg !337
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_29.prol, !dbg !338
  %7 = trunc i16 %_27.prol to i8, !dbg !338
  store i8 %7, i8* %6, align 1, !dbg !338
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !308, metadata !DIExpression(DW_OP_deref)), !dbg !319
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  br label %bb7.prol.loopexit, !dbg !324

bb7.prol.loopexit:                                ; preds = %bb7.preheader20, %bb7.prol
  %iter.sroa.0.014.unr = phi i64 [ %iter.sroa.0.014.ph, %bb7.preheader20 ], [ %2, %bb7.prol ]
  %8 = sub i64 0, %input.1, !dbg !324
  %9 = icmp eq i64 %1, %8, !dbg !324
  br i1 %9, label %bb5, label %bb7, !dbg !324

vector.scevcheck:                                 ; preds = %bb7.preheader
  %10 = add i64 %input.1, -1, !dbg !324
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !324
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !324
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !324
  %11 = xor i64 %output.015, -1, !dbg !324
  %12 = icmp ugt i64 %mul.result, %11, !dbg !324
  %13 = or i1 %12, %mul.overflow, !dbg !324
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !324
  %scevgep16 = ptrtoint i8* %scevgep to i64
  %mul17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 2), !dbg !324
  %mul.result18 = extractvalue { i64, i1 } %mul17, 0, !dbg !324
  %mul.overflow19 = extractvalue { i64, i1 } %mul17, 1, !dbg !324
  %14 = xor i64 %scevgep16, -1, !dbg !324
  %15 = icmp ugt i64 %mul.result18, %14, !dbg !324
  %16 = or i1 %15, %mul.overflow19, !dbg !324
  %17 = or i1 %13, %16, !dbg !324
  br i1 %17, label %bb7.preheader20, label %vector.ph, !dbg !324

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %input.1, -8, !dbg !324
  %18 = add i64 %n.vec, -8, !dbg !324
  %19 = lshr exact i64 %18, 3, !dbg !324
  %20 = add nuw nsw i64 %19, 1, !dbg !324
  %xtraiter21 = and i64 %20, 1, !dbg !324
  %21 = icmp eq i64 %18, 0, !dbg !324
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !324

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %20, %xtraiter21, !dbg !324
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
  %lcmp.mod22 = icmp eq i64 %xtraiter21, 0, !dbg !329
  br i1 %lcmp.mod22, label %middle.block, label %vector.body.epil, !dbg !329

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
  br i1 %cmp.n, label %bb5, label %bb7.preheader20, !dbg !324

bb5:                                              ; preds = %bb7.prol.loopexit, %bb7, %middle.block, %start
  ret void, !dbg !340

bb7:                                              ; preds = %bb7.prol.loopexit, %bb7
  %iter.sroa.0.014 = phi i64 [ %58, %bb7 ], [ %iter.sroa.0.014.unr, %bb7.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !114, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !327
  %52 = add nuw i64 %iter.sroa.0.014, 1, !dbg !329
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !314, metadata !DIExpression()), !dbg !331
  %53 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.014, !dbg !332
  %b = load i16, i16* %53, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b, metadata !316, metadata !DIExpression()), !dbg !333
  %_22 = shl i64 %iter.sroa.0.014, 1, !dbg !334
  %54 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_22, !dbg !335
  %55 = trunc i16 %b to i8, !dbg !335
  store i8 %55, i8* %54, align 1, !dbg !335
  %_27 = lshr i16 %b, 8, !dbg !336
  %_29 = or i64 %_22, 1, !dbg !337
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_29, !dbg !338
  %57 = trunc i16 %_27 to i8, !dbg !338
  store i8 %57, i8* %56, align 1, !dbg !338
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !308, metadata !DIExpression(DW_OP_deref)), !dbg !319
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i64 %52, metadata !119, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %52, metadata !114, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !327
  %58 = add nuw i64 %iter.sroa.0.014, 2, !dbg !329
  call void @llvm.dbg.value(metadata i64 %52, metadata !310, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %52, metadata !314, metadata !DIExpression()), !dbg !331
  %59 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %52, !dbg !332
  %b.1 = load i16, i16* %59, align 2, !dbg !332
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !316, metadata !DIExpression()), !dbg !333
  %_22.1 = shl i64 %52, 1, !dbg !334
  %60 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_22.1, !dbg !335
  %61 = trunc i16 %b.1 to i8, !dbg !335
  store i8 %61, i8* %60, align 1, !dbg !335
  %_27.1 = lshr i16 %b.1, 8, !dbg !336
  %_29.1 = or i64 %_22.1, 1, !dbg !337
  %62 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_29.1, !dbg !338
  %63 = trunc i16 %_27.1 to i8, !dbg !338
  store i8 %63, i8* %62, align 1, !dbg !338
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !308, metadata !DIExpression(DW_OP_deref)), !dbg !319
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !320
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
  call void @llvm.dbg.value(metadata i64 320000, metadata !372, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !380, metadata !DIExpression()), !dbg !384
  %0 = icmp ugt i64 %input.1, 320000, !dbg !386
  %.0.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !386
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !346, metadata !DIExpression(DW_OP_deref)), !dbg !387
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !388
  %output.015 = ptrtoint [0 x i8]* %output.0 to i64
  %1 = add i64 %.0.i.i.i, -1, !dbg !390
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !390
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !390
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !390
  %2 = xor i64 %output.015, -1, !dbg !390
  %3 = icmp ugt i64 %mul.result, %2, !dbg !390
  %4 = or i1 %3, %mul.overflow, !dbg !390
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !390
  %scevgep16 = ptrtoint i8* %scevgep to i64
  %mul17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !390
  %mul.result18 = extractvalue { i64, i1 } %mul17, 0, !dbg !390
  %mul.overflow19 = extractvalue { i64, i1 } %mul17, 1, !dbg !390
  %5 = xor i64 %scevgep16, -1, !dbg !390
  %6 = icmp ugt i64 %mul.result18, %5, !dbg !390
  %7 = or i1 %6, %mul.overflow19, !dbg !390
  %8 = or i1 %4, %7, !dbg !390
  br i1 %8, label %bb8.preheader, label %vector.ph, !dbg !390

bb8.preheader:                                    ; preds = %middle.block, %start
  %iter.sroa.0.014.ph = phi i64 [ 0, %start ], [ %n.vec, %middle.block ]
  br label %bb8, !dbg !390

vector.ph:                                        ; preds = %start
  %n.vec = and i64 %.0.i.i.i, -8, !dbg !390
  %9 = add i64 %n.vec, -8, !dbg !390
  %10 = lshr exact i64 %9, 3, !dbg !390
  %11 = add nuw nsw i64 %10, 1, !dbg !390
  %xtraiter = and i64 %11, 1, !dbg !390
  %12 = icmp eq i64 %9, 0, !dbg !390
  br i1 %12, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !390

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %11, %xtraiter, !dbg !390
  br label %vector.body, !dbg !390

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !391
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !394
  %14 = bitcast i16* %13 to <8 x i16>*, !dbg !394
  %wide.load = load <8 x i16>, <8 x i16>* %14, align 2, !dbg !394
  %15 = shl i64 %index, 1, !dbg !395
  %16 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !396
  %17 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !397
  %18 = or i64 %15, 1, !dbg !398
  %19 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %18, !dbg !399
  %20 = trunc <8 x i16> %17 to <8 x i8>, !dbg !399
  %21 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !399
  %22 = bitcast i8* %21 to <16 x i8>*, !dbg !399
  %interleaved.vec = shufflevector <8 x i8> %16, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !399
  store <16 x i8> %interleaved.vec, <16 x i8>* %22, align 1, !dbg !399
  %index.next = or i64 %index, 8, !dbg !391
  %23 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !394
  %24 = bitcast i16* %23 to <8 x i16>*, !dbg !394
  %wide.load.1 = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !394
  %25 = shl i64 %index.next, 1, !dbg !395
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !396
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !397
  %28 = or i64 %25, 1, !dbg !398
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %28, !dbg !399
  %30 = trunc <8 x i16> %27 to <8 x i8>, !dbg !399
  %31 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !399
  %32 = bitcast i8* %31 to <16 x i8>*, !dbg !399
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %30, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !399
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %32, align 1, !dbg !399
  %index.next.1 = add i64 %index, 16, !dbg !391
  %niter.nsub.1 = add i64 %niter, -2, !dbg !391
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !391
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !391, !llvm.loop !400

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !391
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !391

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %33 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !394
  %34 = bitcast i16* %33 to <8 x i16>*, !dbg !394
  %wide.load.epil = load <8 x i16>, <8 x i16>* %34, align 2, !dbg !394
  %35 = shl i64 %index.unr, 1, !dbg !395
  %36 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !396
  %37 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !397
  %38 = or i64 %35, 1, !dbg !398
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %38, !dbg !399
  %40 = trunc <8 x i16> %37 to <8 x i8>, !dbg !399
  %41 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !399
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !399
  %interleaved.vec.epil = shufflevector <8 x i8> %36, <8 x i8> %40, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !399
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %42, align 1, !dbg !399
  br label %middle.block, !dbg !390

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec, !dbg !390
  br i1 %cmp.n, label %bb6, label %bb8.preheader, !dbg !390

bb6:                                              ; preds = %bb8, %middle.block
  ret void, !dbg !401

bb8:                                              ; preds = %bb8.preheader, %bb8
  %iter.sroa.0.014 = phi i64 [ %43, %bb8 ], [ %iter.sroa.0.014.ph, %bb8.preheader ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !119, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 1, metadata !120, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !114, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 1, metadata !115, metadata !DIExpression()), !dbg !403
  %43 = add nuw i64 %iter.sroa.0.014, 1, !dbg !391
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !348, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %iter.sroa.0.014, metadata !352, metadata !DIExpression()), !dbg !405
  %44 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.0.014, !dbg !394
  %b = load i16, i16* %44, align 2, !dbg !394
  call void @llvm.dbg.value(metadata i16 %b, metadata !354, metadata !DIExpression()), !dbg !406
  %_23 = shl i64 %iter.sroa.0.014, 1, !dbg !395
  %45 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_23, !dbg !396
  %46 = trunc i16 %b to i8, !dbg !396
  store i8 %46, i8* %45, align 1, !dbg !396
  %_28 = lshr i16 %b, 8, !dbg !397
  %_30 = or i64 %_23, 1, !dbg !398
  %47 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %_30, !dbg !399
  %48 = trunc i16 %_28 to i8, !dbg !399
  store i8 %48, i8* %47, align 1, !dbg !399
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !346, metadata !DIExpression(DW_OP_deref)), !dbg !387
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !74, metadata !DIExpression()), !dbg !388
  %49 = icmp ult i64 %43, %.0.i.i.i, !dbg !407
  br i1 %49, label %bb8, label %bb6, !dbg !390, !llvm.loop !409
}

; iterator_bench::zip_chunks_fixed_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !410 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !412, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !413, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !414, metadata !DIExpression(DW_OP_deref)), !dbg !456
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !477
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !484
  br label %vector.body, !dbg !486

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !487
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !488
  %1 = shl nuw i64 %index, 1, !dbg !512
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !527
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !530
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !530
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !531
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !532
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !533
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !533
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !533
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !533
  %index.next = or i64 %index, 8, !dbg !487
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !488
  %9 = shl nuw i64 %index.next, 1, !dbg !512
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !527
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !530
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !530
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !531
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !532
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !533
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !533
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !533
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !533
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !487
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !487
  br i1 %16, label %bb7, label %vector.body, !dbg !487, !llvm.loop !534

bb7:                                              ; preds = %vector.body
  ret void, !dbg !535
}

; iterator_bench::zip_chunks_fixed_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !536 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !538, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !539, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !540, metadata !DIExpression(DW_OP_deref)), !dbg !556
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !565
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !567
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !569
  br label %vector.body, !dbg !571

vector.body:                                      ; preds = %vector.body, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %index = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %index.next.1, %vector.body ], !dbg !572
  %0 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !573
  %1 = shl nuw i64 %index, 1, !dbg !577
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %1, !dbg !579
  %3 = bitcast i16* %0 to <8 x i16>*, !dbg !582
  %wide.load = load <8 x i16>, <8 x i16>* %3, align 2, !dbg !582
  %4 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !583
  %5 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !584
  %6 = trunc <8 x i16> %5 to <8 x i8>, !dbg !585
  %7 = bitcast i8* %2 to <16 x i8>*, !dbg !585
  %interleaved.vec = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !585
  store <16 x i8> %interleaved.vec, <16 x i8>* %7, align 1, !dbg !585
  %index.next = or i64 %index, 8, !dbg !572
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !573
  %9 = shl nuw i64 %index.next, 1, !dbg !577
  %10 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %9, !dbg !579
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !582
  %wide.load.1 = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !582
  %12 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !583
  %13 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !584
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !585
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !585
  %interleaved.vec.1 = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !585
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %15, align 1, !dbg !585
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !572
  %16 = icmp eq i64 %index.next.1, 320000, !dbg !572
  br i1 %16, label %bb8, label %vector.body, !dbg !572, !llvm.loop !586

bb8:                                              ; preds = %vector.body
  ret void, !dbg !587
}

; iterator_bench::zip_chunks_fixed_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E([640000 x i8]* align 1 dereferenceable(640000) %output, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !588 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !590, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !591, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !592, metadata !DIExpression(DW_OP_deref)), !dbg !623
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !624
  br label %bb17.preheader, !dbg !626

bb8:                                              ; preds = %bb17.preheader
  ret void, !dbg !627

bb17.preheader:                                   ; preds = %bb17.preheader, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %iter.sroa.16.0116 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %7, %bb17.preheader ]
  %iter.sroa.11.0115 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %10, %bb17.preheader ]
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !628
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !628
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !482, metadata !DIExpression()) #4, !dbg !632
  %0 = or i64 %iter.sroa.11.0115, 1, !dbg !633
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !510, metadata !DIExpression()) #4, !dbg !634
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !501, metadata !DIExpression()) #4, !dbg !636
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !502, metadata !DIExpression()) #4, !dbg !636
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !494, metadata !DIExpression()) #4, !dbg !638
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !495, metadata !DIExpression()) #4, !dbg !638
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !640
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !519, metadata !DIExpression()) #4, !dbg !640
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0115, 1, !dbg !642
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !643
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !522, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #4, !dbg !644
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #4, !dbg !645
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !645
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #4, !dbg !647
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !647
  call void @llvm.dbg.value(metadata i16* undef, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !649
  call void @llvm.dbg.value(metadata i8* undef, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !649
  call void @llvm.dbg.value(metadata i8* undef, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !650
  call void @llvm.dbg.value(metadata i16 undef, metadata !598, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i16 undef, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i16 undef, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  %1 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.0115, !dbg !687
  call void @llvm.dbg.value(metadata i16* %1, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !649
  %b = load i16, i16* %1, align 2, !dbg !688
  call void @llvm.dbg.value(metadata i16 %b, metadata !598, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i16 %b, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 %b, metadata !601, metadata !DIExpression()), !dbg !651
  %2 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i, !dbg !689
  call void @llvm.dbg.value(metadata i8* %2, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i8* %2, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  call void @llvm.dbg.value(metadata i8* %2, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !650
  call void @llvm.dbg.value(metadata i8* %2, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !649
  call void @llvm.dbg.value(metadata i16 %b, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %2, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !701
  %3 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !703
  call void @llvm.dbg.value(metadata i8* %2, metadata !616, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %2, metadata !620, metadata !DIExpression()), !dbg !705
  %4 = trunc i16 %b to i8, !dbg !706
  store i8 %4, i8* %2, align 1, !dbg !706
  %5 = lshr i16 %b, 8, !dbg !707
  call void @llvm.dbg.value(metadata i16 %5, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i16 %5, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %3, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %3, metadata !183, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %3, metadata !616, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %3, metadata !620, metadata !DIExpression()), !dbg !705
  %6 = trunc i16 %5 to i8, !dbg !706
  store i8 %6, i8* %3, align 1, !dbg !706
  call void @llvm.dbg.value(metadata i16 0, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !592, metadata !DIExpression(DW_OP_deref)), !dbg !623
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !624
  %7 = add nsw i64 %iter.sroa.16.0116, -2, !dbg !708
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !628
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !628
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !630
  call void @llvm.dbg.value(metadata i64 %0, metadata !482, metadata !DIExpression()) #4, !dbg !632
  call void @llvm.dbg.value(metadata i64 %0, metadata !510, metadata !DIExpression()) #4, !dbg !634
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !501, metadata !DIExpression()) #4, !dbg !636
  call void @llvm.dbg.value(metadata i64 %0, metadata !502, metadata !DIExpression()) #4, !dbg !636
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !494, metadata !DIExpression()) #4, !dbg !638
  call void @llvm.dbg.value(metadata i64 %0, metadata !495, metadata !DIExpression()) #4, !dbg !638
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !640
  call void @llvm.dbg.value(metadata i64 %0, metadata !519, metadata !DIExpression()) #4, !dbg !640
  %start1.i.i.i.i.1 = shl nuw i64 %0, 1, !dbg !642
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !520, metadata !DIExpression()) #4, !dbg !643
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !522, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #4, !dbg !644
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #4, !dbg !645
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()) #4, !dbg !645
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #4, !dbg !647
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()) #4, !dbg !647
  call void @llvm.dbg.value(metadata i16* undef, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !649
  call void @llvm.dbg.value(metadata i8* undef, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !649
  call void @llvm.dbg.value(metadata i8* undef, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !650
  call void @llvm.dbg.value(metadata i16 undef, metadata !598, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i16 undef, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i16 undef, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  %8 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %0, !dbg !687
  call void @llvm.dbg.value(metadata i16* %8, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !649
  %b.1 = load i16, i16* %8, align 2, !dbg !688
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !598, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !601, metadata !DIExpression()), !dbg !651
  %9 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i.i.1, !dbg !689
  call void @llvm.dbg.value(metadata i8* %9, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i8* %9, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  call void @llvm.dbg.value(metadata i8* %9, metadata !600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !650
  call void @llvm.dbg.value(metadata i8* %9, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !649
  %10 = add nuw nsw i64 %iter.sroa.11.0115, 2, !dbg !633
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %9, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !701
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !703
  call void @llvm.dbg.value(metadata i8* %9, metadata !616, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %9, metadata !620, metadata !DIExpression()), !dbg !705
  %12 = trunc i16 %b.1 to i8, !dbg !706
  store i8 %12, i8* %9, align 1, !dbg !706
  %13 = lshr i16 %b.1, 8, !dbg !707
  call void @llvm.dbg.value(metadata i16 %13, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i16 %13, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %11, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %11, metadata !183, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %11, metadata !616, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %11, metadata !620, metadata !DIExpression()), !dbg !705
  %14 = trunc i16 %13 to i8, !dbg !706
  store i8 %14, i8* %11, align 1, !dbg !706
  call void @llvm.dbg.value(metadata i16 0, metadata !601, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !668
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !592, metadata !DIExpression(DW_OP_deref)), !dbg !623
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !624
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !709
  br i1 %_2.i.1, label %bb8, label %bb17.preheader, !dbg !626
}

; iterator_bench::zip_chunks_output_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E([640000 x i8]* align 1 dereferenceable(640000) %output, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !710 {
_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit:
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !712, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !723
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !713, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !723
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !737
  call void @llvm.dbg.value(metadata i64 640000, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !737
  call void @llvm.dbg.value(metadata i64 2, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !737
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !737
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !743
  call void @llvm.dbg.value(metadata i64 640000, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !743
  call void @llvm.dbg.value(metadata i64 2, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !743
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !743
  call void @llvm.dbg.value(metadata i64 640000, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !751
  call void @llvm.dbg.value(metadata i64 2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !751
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i64 320000, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i64 320000, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 320000, metadata !768, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 320000, metadata !768, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !770
  %output72 = ptrtoint [640000 x i8]* %output to i64
  %0 = icmp ult i64 %input.1, 320000, !dbg !772
  %.0.i.i.i.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !772
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !714, metadata !DIExpression(DW_OP_deref)), !dbg !773
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !774
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !776
  %_2.i.i70 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !778
  br i1 %_2.i.i70, label %bb7, label %bb9.preheader, !dbg !779

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i, 8, !dbg !779
  br i1 %min.iters.check, label %bb9.preheader77, label %vector.scevcheck, !dbg !779

bb9.preheader77:                                  ; preds = %middle.block, %vector.scevcheck, %bb9.preheader
  %iter.sroa.11.071.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !779

vector.scevcheck:                                 ; preds = %bb9.preheader
  %1 = add nsw i64 %.0.i.i.i.i.i.i, -1, !dbg !779
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !779
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !779
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !779
  %2 = xor i64 %output72, -1, !dbg !779
  %3 = icmp ugt i64 %mul.result, %2, !dbg !779
  %4 = or i1 %3, %mul.overflow, !dbg !779
  %scevgep = getelementptr [640000 x i8], [640000 x i8]* %output, i64 0, i64 1, !dbg !779
  %scevgep73 = ptrtoint i8* %scevgep to i64
  %mul74 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !779
  %mul.result75 = extractvalue { i64, i1 } %mul74, 0, !dbg !779
  %mul.overflow76 = extractvalue { i64, i1 } %mul74, 1, !dbg !779
  %5 = xor i64 %scevgep73, -1, !dbg !779
  %6 = icmp ugt i64 %mul.result75, %5, !dbg !779
  %7 = or i1 %6, %mul.overflow76, !dbg !779
  %8 = or i1 %4, %7, !dbg !779
  br i1 %8, label %bb9.preheader77, label %vector.ph, !dbg !779

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i, 524280, !dbg !779
  %9 = add nsw i64 %n.vec, -8, !dbg !779
  %10 = lshr exact i64 %9, 3, !dbg !779
  %11 = add nuw nsw i64 %10, 1, !dbg !779
  %xtraiter = and i64 %11, 1, !dbg !779
  %12 = icmp eq i64 %9, 0, !dbg !779
  br i1 %12, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !779

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %11, %xtraiter, !dbg !779
  br label %vector.body, !dbg !779

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !780
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !781
  %14 = shl i64 %index, 1, !dbg !785
  %15 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %14, !dbg !787
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !790
  %wide.load = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !790
  %17 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !791
  %18 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !792
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !793
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !793
  %interleaved.vec = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !793
  store <16 x i8> %interleaved.vec, <16 x i8>* %20, align 1, !dbg !793
  %index.next = or i64 %index, 8, !dbg !780
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !781
  %22 = shl i64 %index.next, 1, !dbg !785
  %23 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %22, !dbg !787
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !790
  %wide.load.1 = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !790
  %25 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !791
  %26 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !792
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !793
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !793
  %interleaved.vec.1 = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !793
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %28, align 1, !dbg !793
  %index.next.1 = add i64 %index, 16, !dbg !780
  %niter.nsub.1 = add i64 %niter, -2, !dbg !780
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !780
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !780, !llvm.loop !794

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !780
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !780

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !781
  %30 = shl i64 %index.unr, 1, !dbg !785
  %31 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %30, !dbg !787
  %32 = bitcast i16* %29 to <8 x i16>*, !dbg !790
  %wide.load.epil = load <8 x i16>, <8 x i16>* %32, align 2, !dbg !790
  %33 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !791
  %34 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !792
  %35 = trunc <8 x i16> %34 to <8 x i8>, !dbg !793
  %36 = bitcast i8* %31 to <16 x i8>*, !dbg !793
  %interleaved.vec.epil = shufflevector <8 x i8> %33, <8 x i8> %35, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !793
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %36, align 1, !dbg !793
  br label %middle.block, !dbg !779

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec, !dbg !779
  br i1 %cmp.n, label %bb7, label %bb9.preheader77, !dbg !779

bb7:                                              ; preds = %bb9, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !795

bb9:                                              ; preds = %bb9.preheader77, %bb9
  %iter.sroa.11.071 = phi i64 [ %37, %bb9 ], [ %iter.sroa.11.071.ph, %bb9.preheader77 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !482, metadata !DIExpression()) #4, !dbg !796
  %37 = add nuw i64 %iter.sroa.11.071, 1, !dbg !780
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !510, metadata !DIExpression()) #4, !dbg !797
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()) #4, !dbg !798
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !502, metadata !DIExpression()) #4, !dbg !798
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()) #4, !dbg !799
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !495, metadata !DIExpression()) #4, !dbg !799
  %38 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.071, !dbg !781
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !800
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !519, metadata !DIExpression()) #4, !dbg !800
  %start1.i.i.i = shl i64 %iter.sroa.11.071, 1, !dbg !785
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !801
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !802
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !192, metadata !DIExpression()) #4, !dbg !803
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !803
  call void @llvm.dbg.value(metadata [640000 x i8]* %output, metadata !183, metadata !DIExpression()) #4, !dbg !804
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !804
  %39 = getelementptr inbounds [640000 x i8], [640000 x i8]* %output, i64 0, i64 %start1.i.i.i, !dbg !787
  call void @llvm.dbg.value(metadata i16* %38, metadata !716, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !805
  call void @llvm.dbg.value(metadata i8* %39, metadata !716, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !805
  call void @llvm.dbg.value(metadata i8* %39, metadata !722, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !806
  %b = load i16, i16* %38, align 2, !dbg !790
  call void @llvm.dbg.value(metadata i16 %b, metadata !720, metadata !DIExpression()), !dbg !806
  %40 = trunc i16 %b to i8, !dbg !791
  store i8 %40, i8* %39, align 1, !dbg !791
  %_26 = lshr i16 %b, 8, !dbg !792
  %41 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !793
  %42 = trunc i16 %_26 to i8, !dbg !793
  store i8 %42, i8* %41, align 1, !dbg !793
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !714, metadata !DIExpression(DW_OP_deref)), !dbg !773
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !774
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !776
  %_2.i.i = icmp ult i64 %37, %.0.i.i.i.i.i.i, !dbg !778
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !779, !llvm.loop !807
}

; iterator_bench::zip_chunks_input_size_fixed_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [320000 x i16]* noalias readonly align 2 dereferenceable(640000) %input) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !808 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !810, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !821
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !810, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !821
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !811, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !822
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !822
  call void @llvm.dbg.value(metadata i64 2, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !822
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !822
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !733, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !822
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !824
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !824
  call void @llvm.dbg.value(metadata i64 2, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !824
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !824
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !742, metadata !DIExpression(DW_OP_plus_uconst, 640000, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !824
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !826
  call void @llvm.dbg.value(metadata i64 2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !826
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !837
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !837
  %output.078 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp eq i64 %output.1, 0, !dbg !879
  br i1 %0, label %bb7, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !880

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start
  call void @llvm.dbg.value(metadata i64 undef, metadata !849, metadata !DIExpression()), !dbg !881
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !882
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !849, metadata !DIExpression()), !dbg !881
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !883
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !851, metadata !DIExpression()), !dbg !884
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !885
  call void @llvm.dbg.value(metadata i64 320000, metadata !753, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 320000, metadata !759, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64 320000, metadata !765, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !890
  %1 = icmp ult i64 %n.0.i.i.i.i.i, 320000, !dbg !892
  call void @llvm.dbg.value(metadata i64 %n.0.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i64 320000, metadata !765, metadata !DIExpression()), !dbg !890
  br i1 %1, label %2, label %bb9.preheader, !dbg !892

2:                                                ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !812, metadata !DIExpression(DW_OP_deref)), !dbg !893
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !894
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !896
  %_2.i.i72 = icmp eq i64 %n.0.i.i.i.i.i, 0, !dbg !898
  br i1 %_2.i.i72, label %bb7, label %bb9.preheader, !dbg !899

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %2
  %3 = phi i64 [ %n.0.i.i.i.i.i, %2 ], [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ]
  %min.iters.check = icmp ult i64 %3, 8, !dbg !899
  br i1 %min.iters.check, label %bb9.preheader83, label %vector.scevcheck, !dbg !899

bb9.preheader83:                                  ; preds = %middle.block, %vector.scevcheck, %bb9.preheader
  %iter.sroa.11.073.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %3, 1, !dbg !899
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !899
  br i1 %lcmp.mod, label %bb9.prol.loopexit, label %bb9.prol, !dbg !899

bb9.prol:                                         ; preds = %bb9.preheader83
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073.ph, metadata !482, metadata !DIExpression()) #4, !dbg !900
  %4 = or i64 %iter.sroa.11.073.ph, 1, !dbg !901
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073.ph, metadata !510, metadata !DIExpression()) #4, !dbg !902
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !501, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073.ph, metadata !502, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !494, metadata !DIExpression()) #4, !dbg !906
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073.ph, metadata !495, metadata !DIExpression()) #4, !dbg !906
  %5 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.073.ph, !dbg !908
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !909
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073.ph, metadata !519, metadata !DIExpression()) #4, !dbg !909
  %start1.i.i.i.prol = shl i64 %iter.sroa.11.073.ph, 1, !dbg !911
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.prol, metadata !520, metadata !DIExpression()) #4, !dbg !912
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !913
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.prol, metadata !193, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !916
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.prol, metadata !184, metadata !DIExpression()) #4, !dbg !916
  %6 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.prol, !dbg !918
  call void @llvm.dbg.value(metadata i16* %5, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %6, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %6, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !920
  %b.prol = load i16, i16* %5, align 2, !dbg !921
  call void @llvm.dbg.value(metadata i16 %b.prol, metadata !818, metadata !DIExpression()), !dbg !920
  %7 = trunc i16 %b.prol to i8, !dbg !922
  store i8 %7, i8* %6, align 1, !dbg !922
  %_26.prol = lshr i16 %b.prol, 8, !dbg !923
  %8 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !924
  %9 = trunc i16 %_26.prol to i8, !dbg !924
  store i8 %9, i8* %8, align 1, !dbg !924
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !812, metadata !DIExpression(DW_OP_deref)), !dbg !893
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !894
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !896
  br label %bb9.prol.loopexit, !dbg !899

bb9.prol.loopexit:                                ; preds = %bb9.preheader83, %bb9.prol
  %iter.sroa.11.073.unr = phi i64 [ %iter.sroa.11.073.ph, %bb9.preheader83 ], [ %4, %bb9.prol ]
  %10 = or i64 %iter.sroa.11.073.ph, 1, !dbg !899
  %11 = icmp eq i64 %3, %10, !dbg !899
  br i1 %11, label %bb7, label %bb9, !dbg !899

vector.scevcheck:                                 ; preds = %bb9.preheader
  %12 = add i64 %3, -1, !dbg !899
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 2), !dbg !899
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !899
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !899
  %13 = xor i64 %output.078, -1, !dbg !899
  %14 = icmp ugt i64 %mul.result, %13, !dbg !899
  %15 = or i1 %14, %mul.overflow, !dbg !899
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !899
  %scevgep79 = ptrtoint i8* %scevgep to i64
  %mul80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 2), !dbg !899
  %mul.result81 = extractvalue { i64, i1 } %mul80, 0, !dbg !899
  %mul.overflow82 = extractvalue { i64, i1 } %mul80, 1, !dbg !899
  %16 = xor i64 %scevgep79, -1, !dbg !899
  %17 = icmp ugt i64 %mul.result81, %16, !dbg !899
  %18 = or i1 %17, %mul.overflow82, !dbg !899
  %19 = or i1 %15, %18, !dbg !899
  br i1 %19, label %bb9.preheader83, label %vector.ph, !dbg !899

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %3, -8, !dbg !899
  %20 = add i64 %n.vec, -8, !dbg !899
  %21 = lshr exact i64 %20, 3, !dbg !899
  %22 = add nuw nsw i64 %21, 1, !dbg !899
  %xtraiter84 = and i64 %22, 1, !dbg !899
  %23 = icmp eq i64 %20, 0, !dbg !899
  br i1 %23, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !899

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %22, %xtraiter84, !dbg !899
  br label %vector.body, !dbg !899

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !901
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %24 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index, !dbg !908
  %25 = shl i64 %index, 1, !dbg !911
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %25, !dbg !918
  %27 = bitcast i16* %24 to <8 x i16>*, !dbg !921
  %wide.load = load <8 x i16>, <8 x i16>* %27, align 2, !dbg !921
  %28 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !922
  %29 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !923
  %30 = trunc <8 x i16> %29 to <8 x i8>, !dbg !924
  %31 = bitcast i8* %26 to <16 x i8>*, !dbg !924
  %interleaved.vec = shufflevector <8 x i8> %28, <8 x i8> %30, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !924
  store <16 x i8> %interleaved.vec, <16 x i8>* %31, align 1, !dbg !924
  %index.next = or i64 %index, 8, !dbg !901
  %32 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.next, !dbg !908
  %33 = shl i64 %index.next, 1, !dbg !911
  %34 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %33, !dbg !918
  %35 = bitcast i16* %32 to <8 x i16>*, !dbg !921
  %wide.load.1 = load <8 x i16>, <8 x i16>* %35, align 2, !dbg !921
  %36 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !922
  %37 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !923
  %38 = trunc <8 x i16> %37 to <8 x i8>, !dbg !924
  %39 = bitcast i8* %34 to <16 x i8>*, !dbg !924
  %interleaved.vec.1 = shufflevector <8 x i8> %36, <8 x i8> %38, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !924
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %39, align 1, !dbg !924
  %index.next.1 = add i64 %index, 16, !dbg !901
  %niter.nsub.1 = add i64 %niter, -2, !dbg !901
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !901
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !901, !llvm.loop !925

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod85 = icmp eq i64 %xtraiter84, 0, !dbg !901
  br i1 %lcmp.mod85, label %middle.block, label %vector.body.epil, !dbg !901

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %40 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %index.unr, !dbg !908
  %41 = shl i64 %index.unr, 1, !dbg !911
  %42 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %41, !dbg !918
  %43 = bitcast i16* %40 to <8 x i16>*, !dbg !921
  %wide.load.epil = load <8 x i16>, <8 x i16>* %43, align 2, !dbg !921
  %44 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !922
  %45 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !923
  %46 = trunc <8 x i16> %45 to <8 x i8>, !dbg !924
  %47 = bitcast i8* %42 to <16 x i8>*, !dbg !924
  %interleaved.vec.epil = shufflevector <8 x i8> %44, <8 x i8> %46, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !924
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %47, align 1, !dbg !924
  br label %middle.block, !dbg !899

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !899
  br i1 %cmp.n, label %bb7, label %bb9.preheader83, !dbg !899

bb7:                                              ; preds = %bb9.prol.loopexit, %bb9, %middle.block, %start, %2
  ret void, !dbg !926

bb9:                                              ; preds = %bb9.prol.loopexit, %bb9
  %iter.sroa.11.073 = phi i64 [ %54, %bb9 ], [ %iter.sroa.11.073.unr, %bb9.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !482, metadata !DIExpression()) #4, !dbg !900
  %48 = add nuw i64 %iter.sroa.11.073, 1, !dbg !901
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !510, metadata !DIExpression()) #4, !dbg !902
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !501, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !502, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !494, metadata !DIExpression()) #4, !dbg !906
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !495, metadata !DIExpression()) #4, !dbg !906
  %49 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %iter.sroa.11.073, !dbg !908
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !909
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.073, metadata !519, metadata !DIExpression()) #4, !dbg !909
  %start1.i.i.i = shl i64 %iter.sroa.11.073, 1, !dbg !911
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !912
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !913
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !916
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !916
  %50 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !918
  call void @llvm.dbg.value(metadata i16* %49, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %50, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %50, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !920
  %b = load i16, i16* %49, align 2, !dbg !921
  call void @llvm.dbg.value(metadata i16 %b, metadata !818, metadata !DIExpression()), !dbg !920
  %51 = trunc i16 %b to i8, !dbg !922
  store i8 %51, i8* %50, align 1, !dbg !922
  %_26 = lshr i16 %b, 8, !dbg !923
  %52 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !924
  %53 = trunc i16 %_26 to i8, !dbg !924
  store i8 %53, i8* %52, align 1, !dbg !924
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !812, metadata !DIExpression(DW_OP_deref)), !dbg !893
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !894
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !896
  call void @llvm.dbg.value(metadata i64 %48, metadata !482, metadata !DIExpression()) #4, !dbg !900
  %54 = add nuw i64 %iter.sroa.11.073, 2, !dbg !901
  call void @llvm.dbg.value(metadata i64 %48, metadata !510, metadata !DIExpression()) #4, !dbg !902
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !501, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata i64 %48, metadata !502, metadata !DIExpression()) #4, !dbg !904
  call void @llvm.dbg.value(metadata [320000 x i16]* %input, metadata !494, metadata !DIExpression()) #4, !dbg !906
  call void @llvm.dbg.value(metadata i64 %48, metadata !495, metadata !DIExpression()) #4, !dbg !906
  %55 = getelementptr inbounds [320000 x i16], [320000 x i16]* %input, i64 0, i64 %48, !dbg !908
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !909
  call void @llvm.dbg.value(metadata i64 %48, metadata !519, metadata !DIExpression()) #4, !dbg !909
  %start1.i.i.i.1 = shl i64 %48, 1, !dbg !911
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.1, metadata !520, metadata !DIExpression()) #4, !dbg !912
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !913
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.1, metadata !193, metadata !DIExpression()) #4, !dbg !914
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !916
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.1, metadata !184, metadata !DIExpression()) #4, !dbg !916
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.1, !dbg !918
  call void @llvm.dbg.value(metadata i16* %55, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %56, metadata !814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !919
  call void @llvm.dbg.value(metadata i8* %56, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !920
  %b.1 = load i16, i16* %55, align 2, !dbg !921
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !818, metadata !DIExpression()), !dbg !920
  %57 = trunc i16 %b.1 to i8, !dbg !922
  store i8 %57, i8* %56, align 1, !dbg !922
  %_26.1 = lshr i16 %b.1, 8, !dbg !923
  %58 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !924
  %59 = trunc i16 %_26.1 to i8, !dbg !924
  store i8 %59, i8* %58, align 1, !dbg !924
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !812, metadata !DIExpression(DW_OP_deref)), !dbg !893
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !894
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !896
  %exitcond.1 = icmp eq i64 %54, %3, !dbg !898
  br i1 %exitcond.1, label %bb7, label %bb9, !dbg !899, !llvm.loop !927
}

; iterator_bench::zip_chunks_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !928 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !941
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !941
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !941
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !931, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !941
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !942
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !942
  call void @llvm.dbg.value(metadata i64 2, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !942
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !942
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !944
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !944
  call void @llvm.dbg.value(metadata i64 2, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !944
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !944
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !946
  call void @llvm.dbg.value(metadata i64 2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !946
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !948
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !948
  %output.072 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp eq i64 %output.1, 0, !dbg !952
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !953

bb7.i.i.i.i.i:                                    ; preds = %start
  call void @llvm.dbg.value(metadata i64 undef, metadata !849, metadata !DIExpression()), !dbg !954
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !849, metadata !DIExpression()), !dbg !954
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !956
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !851, metadata !DIExpression()), !dbg !957
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !958
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !953

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !959
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !964
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !966
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !964
  %.0.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !966
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !932, metadata !DIExpression(DW_OP_deref)), !dbg !967
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !968
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !970
  %_2.i.i70 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !972
  br i1 %_2.i.i70, label %bb7, label %bb9.preheader, !dbg !973

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i, 8, !dbg !973
  br i1 %min.iters.check, label %bb9.preheader77, label %vector.scevcheck, !dbg !973

bb9.preheader77:                                  ; preds = %middle.block, %vector.scevcheck, %bb9.preheader
  %iter.sroa.11.071.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !973

vector.scevcheck:                                 ; preds = %bb9.preheader
  %2 = add i64 %.0.i.i.i.i.i.i, -1, !dbg !973
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !973
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !973
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !973
  %3 = xor i64 %output.072, -1, !dbg !973
  %4 = icmp ugt i64 %mul.result, %3, !dbg !973
  %5 = or i1 %4, %mul.overflow, !dbg !973
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !973
  %scevgep73 = ptrtoint i8* %scevgep to i64
  %mul74 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !973
  %mul.result75 = extractvalue { i64, i1 } %mul74, 0, !dbg !973
  %mul.overflow76 = extractvalue { i64, i1 } %mul74, 1, !dbg !973
  %6 = xor i64 %scevgep73, -1, !dbg !973
  %7 = icmp ugt i64 %mul.result75, %6, !dbg !973
  %8 = or i1 %7, %mul.overflow76, !dbg !973
  %9 = or i1 %5, %8, !dbg !973
  br i1 %9, label %bb9.preheader77, label %vector.ph, !dbg !973

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i, -8, !dbg !973
  %10 = add i64 %n.vec, -8, !dbg !973
  %11 = lshr exact i64 %10, 3, !dbg !973
  %12 = add nuw nsw i64 %11, 1, !dbg !973
  %xtraiter = and i64 %12, 1, !dbg !973
  %13 = icmp eq i64 %10, 0, !dbg !973
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !973

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %12, %xtraiter, !dbg !973
  br label %vector.body, !dbg !973

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !974
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !975
  %15 = shl i64 %index, 1, !dbg !979
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !981
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !984
  %wide.load = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !984
  %18 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !985
  %19 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !986
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !987
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !987
  %interleaved.vec = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !987
  store <16 x i8> %interleaved.vec, <16 x i8>* %21, align 1, !dbg !987
  %index.next = or i64 %index, 8, !dbg !974
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !975
  %23 = shl i64 %index.next, 1, !dbg !979
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !981
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !984
  %wide.load.1 = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !984
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !985
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !986
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !987
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !987
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !987
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %29, align 1, !dbg !987
  %index.next.1 = add i64 %index, 16, !dbg !974
  %niter.nsub.1 = add i64 %niter, -2, !dbg !974
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !974
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !974, !llvm.loop !988

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !974
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !974

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !975
  %31 = shl i64 %index.unr, 1, !dbg !979
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %31, !dbg !981
  %33 = bitcast i16* %30 to <8 x i16>*, !dbg !984
  %wide.load.epil = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !984
  %34 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !985
  %35 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !986
  %36 = trunc <8 x i16> %35 to <8 x i8>, !dbg !987
  %37 = bitcast i8* %32 to <16 x i8>*, !dbg !987
  %interleaved.vec.epil = shufflevector <8 x i8> %34, <8 x i8> %36, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !987
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %37, align 1, !dbg !987
  br label %middle.block, !dbg !973

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec, !dbg !973
  br i1 %cmp.n, label %bb7, label %bb9.preheader77, !dbg !973

bb7:                                              ; preds = %bb9, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !989

bb9:                                              ; preds = %bb9.preheader77, %bb9
  %iter.sroa.11.071 = phi i64 [ %38, %bb9 ], [ %iter.sroa.11.071.ph, %bb9.preheader77 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !482, metadata !DIExpression()) #4, !dbg !990
  %38 = add nuw i64 %iter.sroa.11.071, 1, !dbg !974
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !510, metadata !DIExpression()) #4, !dbg !991
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()) #4, !dbg !992
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !502, metadata !DIExpression()) #4, !dbg !992
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()) #4, !dbg !993
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !495, metadata !DIExpression()) #4, !dbg !993
  %39 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.071, !dbg !975
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !994
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.071, metadata !519, metadata !DIExpression()) #4, !dbg !994
  %start1.i.i.i = shl i64 %iter.sroa.11.071, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !995
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !996
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !997
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !997
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !998
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !998
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !981
  call void @llvm.dbg.value(metadata i16* %39, metadata !934, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  call void @llvm.dbg.value(metadata i8* %40, metadata !934, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  call void @llvm.dbg.value(metadata i16* %39, metadata !938, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %40, metadata !940, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1000
  %_20 = load i16, i16* %39, align 2, !dbg !984
  %41 = trunc i16 %_20 to i8, !dbg !985
  store i8 %41, i8* %40, align 1, !dbg !985
  %_25 = lshr i16 %_20, 8, !dbg !986
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !987
  %43 = trunc i16 %_25 to i8, !dbg !987
  store i8 %43, i8* %42, align 1, !dbg !987
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !932, metadata !DIExpression(DW_OP_deref)), !dbg !967
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !968
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !970
  %_2.i.i = icmp ult i64 %38, %.0.i.i.i.i.i.i, !dbg !972
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !973, !llvm.loop !1001
}

; iterator_bench::zip_chunks_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1002 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1004, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1004, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1005, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1005, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1015
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1016
  call void @llvm.dbg.value(metadata i64 2, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1016
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1016
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1018
  call void @llvm.dbg.value(metadata i64 2, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1018
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1020
  call void @llvm.dbg.value(metadata i64 2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1020
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1022
  %0 = icmp eq i64 %output.1, 0, !dbg !1026
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !1027

bb7.i.i.i.i.i:                                    ; preds = %start
  call void @llvm.dbg.value(metadata i64 undef, metadata !849, metadata !DIExpression()), !dbg !1028
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !849, metadata !DIExpression()), !dbg !1028
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !851, metadata !DIExpression()), !dbg !1031
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1032
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !1027

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !1033
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1038
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1038
  %.0.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1040
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1006, metadata !DIExpression(DW_OP_deref)), !dbg !1041
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !1042
  %_2.i.i.i101 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !1044
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !1047
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !1048
  br i1 %_2.i.i.i101, label %bb8, label %bb10.preheader, !dbg !1049

bb10.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  %2 = add i64 %.0.i.i.i.i.i.i, -1, !dbg !1049
  %3 = icmp ult i64 %2, 319999, !dbg !1049
  %umin = select i1 %3, i64 %2, i64 319999, !dbg !1049
  %4 = add nuw nsw i64 %umin, 1, !dbg !1049
  %min.iters.check = icmp ult i64 %4, 8, !dbg !1049
  br i1 %min.iters.check, label %bb10.preheader108, label %vector.ph, !dbg !1049

bb10.preheader108:                                ; preds = %middle.block, %bb10.preheader
  %iter.sroa.16.0103.ph = phi i64 [ 320000, %bb10.preheader ], [ %ind.end, %middle.block ]
  %iter.sroa.11.0102.ph = phi i64 [ 0, %bb10.preheader ], [ %n.vec, %middle.block ]
  br label %bb10, !dbg !1049

vector.ph:                                        ; preds = %bb10.preheader
  %n.vec = and i64 %4, 1048568, !dbg !1049
  %ind.end = sub nsw i64 320000, %n.vec, !dbg !1049
  %5 = add nsw i64 %n.vec, -8, !dbg !1049
  %6 = lshr exact i64 %5, 3, !dbg !1049
  %7 = add nuw nsw i64 %6, 1, !dbg !1049
  %xtraiter = and i64 %7, 1, !dbg !1049
  %8 = icmp eq i64 %5, 0, !dbg !1049
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1049

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %7, %xtraiter, !dbg !1049
  br label %vector.body, !dbg !1049

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1050
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %9 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1051
  %10 = shl nuw i64 %index, 1, !dbg !1055
  %11 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %10, !dbg !1057
  %12 = bitcast i16* %9 to <8 x i16>*, !dbg !1060
  %wide.load = load <8 x i16>, <8 x i16>* %12, align 2, !dbg !1060
  %13 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1061
  %14 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1062
  %15 = trunc <8 x i16> %14 to <8 x i8>, !dbg !1063
  %16 = bitcast i8* %11 to <16 x i8>*, !dbg !1063
  %interleaved.vec = shufflevector <8 x i8> %13, <8 x i8> %15, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1063
  store <16 x i8> %interleaved.vec, <16 x i8>* %16, align 1, !dbg !1063
  %index.next = or i64 %index, 8, !dbg !1050
  %17 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1051
  %18 = shl nuw i64 %index.next, 1, !dbg !1055
  %19 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %18, !dbg !1057
  %20 = bitcast i16* %17 to <8 x i16>*, !dbg !1060
  %wide.load.1 = load <8 x i16>, <8 x i16>* %20, align 2, !dbg !1060
  %21 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1061
  %22 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1062
  %23 = trunc <8 x i16> %22 to <8 x i8>, !dbg !1063
  %24 = bitcast i8* %19 to <16 x i8>*, !dbg !1063
  %interleaved.vec.1 = shufflevector <8 x i8> %21, <8 x i8> %23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1063
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %24, align 1, !dbg !1063
  %index.next.1 = add i64 %index, 16, !dbg !1050
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1050
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1050
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1050, !llvm.loop !1064

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1050
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1050

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %25 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1051
  %26 = shl nuw i64 %index.unr, 1, !dbg !1055
  %27 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %26, !dbg !1057
  %28 = bitcast i16* %25 to <8 x i16>*, !dbg !1060
  %wide.load.epil = load <8 x i16>, <8 x i16>* %28, align 2, !dbg !1060
  %29 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1061
  %30 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1062
  %31 = trunc <8 x i16> %30 to <8 x i8>, !dbg !1063
  %32 = bitcast i8* %27 to <16 x i8>*, !dbg !1063
  %interleaved.vec.epil = shufflevector <8 x i8> %29, <8 x i8> %31, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1063
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %32, align 1, !dbg !1063
  br label %middle.block, !dbg !1049

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %4, %n.vec, !dbg !1049
  br i1 %cmp.n, label %bb8, label %bb10.preheader108, !dbg !1049

bb8:                                              ; preds = %bb10, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit
  ret void, !dbg !1065

bb10:                                             ; preds = %bb10.preheader108, %bb10
  %iter.sroa.16.0103 = phi i64 [ %33, %bb10 ], [ %iter.sroa.16.0103.ph, %bb10.preheader108 ]
  %iter.sroa.11.0102 = phi i64 [ %34, %bb10 ], [ %iter.sroa.11.0102.ph, %bb10.preheader108 ]
  %33 = add nsw i64 %iter.sroa.16.0103, -1, !dbg !1066
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !1047
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0102, metadata !482, metadata !DIExpression()) #4, !dbg !1067
  %34 = add nuw nsw i64 %iter.sroa.11.0102, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0102, metadata !510, metadata !DIExpression()) #4, !dbg !1068
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()) #4, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0102, metadata !502, metadata !DIExpression()) #4, !dbg !1069
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()) #4, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0102, metadata !495, metadata !DIExpression()) #4, !dbg !1070
  %35 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0102, !dbg !1051
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0102, metadata !519, metadata !DIExpression()) #4, !dbg !1071
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0102, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !1072
  call void @llvm.dbg.value(metadata i64 undef, metadata !522, metadata !DIExpression()) #4, !dbg !1073
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !1074
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !1075
  %36 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1057
  call void @llvm.dbg.value(metadata i16* %35, metadata !1008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %36, metadata !1008, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  call void @llvm.dbg.value(metadata i16* %35, metadata !1012, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %36, metadata !1014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1077
  %_21 = load i16, i16* %35, align 2, !dbg !1060
  %37 = trunc i16 %_21 to i8, !dbg !1061
  store i8 %37, i8* %36, align 1, !dbg !1061
  %_26 = lshr i16 %_21, 8, !dbg !1062
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1063
  %39 = trunc i16 %_26 to i8, !dbg !1063
  store i8 %39, i8* %38, align 1, !dbg !1063
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1006, metadata !DIExpression(DW_OP_deref)), !dbg !1041
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !1042
  %_2.i = icmp ne i64 %33, 0, !dbg !1078
  %_2.i.i.i = icmp ult i64 %34, %.0.i.i.i.i.i.i, !dbg !1044
  %or.cond = and i1 %_2.i.i.i, %_2.i, !dbg !1049
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !1047
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !1048
  br i1 %or.cond, label %bb10, label %bb8, !dbg !1049, !llvm.loop !1079
}

; iterator_bench::zip_chunks_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1081 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1083, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1104
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1104
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1105
  call void @llvm.dbg.value(metadata i64 2, metadata !724, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1105
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1105
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1107
  call void @llvm.dbg.value(metadata i64 2, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1107
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1109
  call void @llvm.dbg.value(metadata i64 2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1109
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !828, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1111
  %0 = icmp eq i64 %output.1, 0, !dbg !1115
  br i1 %0, label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, label %bb7.i.i.i.i.i, !dbg !1116

bb7.i.i.i.i.i:                                    ; preds = %start
  call void @llvm.dbg.value(metadata i64 undef, metadata !849, metadata !DIExpression()), !dbg !1117
  %n1.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %n1.i.i.i.i.i, metadata !849, metadata !DIExpression()), !dbg !1117
  %rem.i.i.i.i.i = and i64 %output.1, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %rem.i.i.i.i.i, metadata !851, metadata !DIExpression()), !dbg !1120
  %n.0.i.i.i.i.i = add nuw i64 %n1.i.i.i.i.i, %rem.i.i.i.i.i, !dbg !1121
  br label %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, !dbg !1116

_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit: ; preds = %start, %bb7.i.i.i.i.i
  %_3.sroa.8.0.i.i.i.i = phi i64 [ %n.0.i.i.i.i.i, %bb7.i.i.i.i.i ], [ 0, %start ], !dbg !1122
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1127
  %1 = icmp ult i64 %_3.sroa.8.0.i.i.i.i, %input.1, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %_3.sroa.8.0.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1127
  %.0.i.i.i.i.i.i = select i1 %1, i64 %_3.sroa.8.0.i.i.i.i, i64 %input.1, !dbg !1129
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1085, metadata !DIExpression(DW_OP_deref)), !dbg !1130
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !1131
  br label %bb2.i, !dbg !1133

bb6.loopexit:                                     ; preds = %bb17.prol.loopexit, %bb17, %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !1085, metadata !DIExpression(DW_OP_deref)), !dbg !1130
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !557, metadata !DIExpression()) #4, !dbg !1131
  %_2.i = icmp eq i64 %9, 0, !dbg !1134
  br i1 %_2.i, label %bb8, label %bb2.i, !dbg !1133

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit, %bb6.loopexit
  %iter.sroa.16.0116 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %9, %bb6.loopexit ]
  %iter.sroa.11.0115 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE.exit ], [ %10, %bb6.loopexit ]
  %2 = shl nuw nsw i64 %iter.sroa.11.0115, 1, !dbg !1135
  %3 = add nuw i64 %2, 2, !dbg !1135
  %4 = icmp ugt i64 %3, %output.1, !dbg !1135
  %umin = select i1 %4, i64 %output.1, i64 %3, !dbg !1135
  %5 = mul nsw i64 %iter.sroa.11.0115, -2, !dbg !1135
  %6 = add i64 %umin, %5, !dbg !1135
  %7 = add i64 %5, -1, !dbg !1135
  %8 = add i64 %umin, %7, !dbg !1135
  %9 = add nsw i64 %iter.sroa.16.0116, -1, !dbg !1135
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !1136
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !1138
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0115, %.0.i.i.i.i.i.i, !dbg !1140
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1141

bb8:                                              ; preds = %bb6.loopexit, %bb2.i
  ret void, !dbg !1142

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !457, metadata !DIExpression()) #4, !dbg !1136
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>"* undef, metadata !479, metadata !DIExpression()) #4, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !482, metadata !DIExpression()) #4, !dbg !1143
  %10 = add nuw nsw i64 %iter.sroa.11.0115, 1, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !510, metadata !DIExpression()) #4, !dbg !1145
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()) #4, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !502, metadata !DIExpression()) #4, !dbg !1147
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()) #4, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !495, metadata !DIExpression()) #4, !dbg !1149
  call void @llvm.dbg.value(metadata %"core::slice::ChunksMut<u8>"* undef, metadata !518, metadata !DIExpression()) #4, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0115, metadata !519, metadata !DIExpression()) #4, !dbg !1151
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0115, 1, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !520, metadata !DIExpression()) #4, !dbg !1154
  %11 = add nuw nsw i64 %start1.i.i.i.i, 2
  %12 = icmp ugt i64 %11, %output.1, !dbg !1155
  %end.0.i.i.i.i = select i1 %12, i64 %output.1, i64 %11, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %end.0.i.i.i.i, metadata !522, metadata !DIExpression()) #4, !dbg !1156
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()) #4, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()) #4, !dbg !1157
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()) #4, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()) #4, !dbg !1159
  call void @llvm.dbg.value(metadata i16* undef, metadata !1087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1161
  call void @llvm.dbg.value(metadata i8* undef, metadata !1087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1161
  call void @llvm.dbg.value(metadata i8* undef, metadata !1093, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1162
  call void @llvm.dbg.value(metadata i16 undef, metadata !1091, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i16 undef, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* undef, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i8* undef, metadata !657, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* undef, metadata !192, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* undef, metadata !183, metadata !DIExpression()), !dbg !1169
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %end.0.i.i.i.i, !dbg !1171
  call void @llvm.dbg.value(metadata i16 undef, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  %_13.i112 = icmp eq i64 %start1.i.i.i.i, %end.0.i.i.i.i, !dbg !1175
  br i1 %_13.i112, label %bb6.loopexit, label %bb17.preheader, !dbg !1176

bb17.preheader:                                   ; preds = %bb10
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0115, !dbg !1177
  call void @llvm.dbg.value(metadata i16* %14, metadata !1087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1161
  %b = load i16, i16* %14, align 2, !dbg !1178
  call void @llvm.dbg.value(metadata i16 %b, metadata !1091, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i16 %b, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i16 %b, metadata !1094, metadata !DIExpression()), !dbg !1163
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %15, metadata !657, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %15, metadata !192, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %15, metadata !183, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8* %15, metadata !652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %15, metadata !1093, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %15, metadata !1087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1161
  %xtraiter = and i64 %6, 7, !dbg !1176
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1176
  br i1 %lcmp.mod, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1176

bb17.prol:                                        ; preds = %bb17.preheader, %bb17.prol
  %val1.0114.prol = phi i16 [ %18, %bb17.prol ], [ %b, %bb17.preheader ]
  %iter2.sroa.0.0113.prol = phi i8* [ %16, %bb17.prol ], [ %15, %bb17.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %bb17.prol ], [ %xtraiter, %bb17.preheader ]
  call void @llvm.dbg.value(metadata i16 %val1.0114.prol, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %16 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113.prol, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113.prol, metadata !1102, metadata !DIExpression()), !dbg !1187
  %17 = trunc i16 %val1.0114.prol to i8, !dbg !1188
  store i8 %17, i8* %iter2.sroa.0.0113.prol, align 1, !dbg !1188
  %18 = lshr i16 %val1.0114.prol, 8, !dbg !1189
  call void @llvm.dbg.value(metadata i16 %18, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !1176
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !1176
  br i1 %prol.iter.cmp, label %bb17.prol.loopexit, label %bb17.prol, !dbg !1176, !llvm.loop !1190

bb17.prol.loopexit:                               ; preds = %bb17.prol, %bb17.preheader
  %val1.0114.unr = phi i16 [ %b, %bb17.preheader ], [ %18, %bb17.prol ]
  %iter2.sroa.0.0113.unr = phi i8* [ %15, %bb17.preheader ], [ %16, %bb17.prol ]
  %19 = icmp ult i64 %8, 7, !dbg !1176
  br i1 %19, label %bb6.loopexit, label %bb17, !dbg !1176

bb17:                                             ; preds = %bb17.prol.loopexit, %bb17
  %val1.0114 = phi i16 [ 0, %bb17 ], [ %val1.0114.unr, %bb17.prol.loopexit ]
  %iter2.sroa.0.0113 = phi i8* [ %30, %bb17 ], [ %iter2.sroa.0.0113.unr, %bb17.prol.loopexit ]
  call void @llvm.dbg.value(metadata i16 %val1.0114, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %20 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0113, metadata !1102, metadata !DIExpression()), !dbg !1187
  %21 = trunc i16 %val1.0114 to i8, !dbg !1188
  store i8 %21, i8* %iter2.sroa.0.0113, align 1, !dbg !1188
  %22 = lshr i16 %val1.0114, 8, !dbg !1189
  call void @llvm.dbg.value(metadata i16 %22, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 %22, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %20, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %20, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %23 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 2, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %20, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %20, metadata !1102, metadata !DIExpression()), !dbg !1187
  %24 = trunc i16 %22 to i8, !dbg !1188
  store i8 %24, i8* %20, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %23, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %23, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %25 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 3, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %23, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %23, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %23, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %25, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %25, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %26 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 4, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %25, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %25, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %25, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %26, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %26, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %27 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 5, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %26, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %26, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %26, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %27, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %27, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %28 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 6, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %27, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %27, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %27, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %28, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %28, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %29 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 7, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %28, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %28, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %28, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !690, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %29, metadata !696, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %29, metadata !183, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1183
  %30 = getelementptr inbounds i8, i8* %iter2.sroa.0.0113, i64 8, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %29, metadata !1098, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %29, metadata !1102, metadata !DIExpression()), !dbg !1187
  store i8 0, i8* %29, align 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1094, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1096, metadata !DIExpression(DW_OP_deref)), !dbg !1172
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !669, metadata !DIExpression()), !dbg !1173
  %_13.i.7 = icmp eq i8* %30, %13, !dbg !1175
  br i1 %_13.i.7, label %bb6.loopexit, label %bb17, !dbg !1176
}

; iterator_bench::zip_chunks_exact_unknown_size_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1192 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1194, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1194, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1218
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1195, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1195, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1218
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1219
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1250
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata i8* undef, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata i64 2, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1260
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1262, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1266
  call void @llvm.dbg.value(metadata i64 2, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1266
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1268, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1274
  call void @llvm.dbg.value(metadata i64 2, metadata !1268, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1274
  %output.0100 = ptrtoint [0 x i8]* %output.0 to i64
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1307
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1307
  %.0.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1309
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1324
  %_2.i.i98 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !1326
  br i1 %_2.i.i98, label %bb7, label %bb9.preheader, !dbg !1327

bb9.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i, 8, !dbg !1327
  br i1 %min.iters.check, label %bb9.preheader105, label %vector.scevcheck, !dbg !1327

bb9.preheader105:                                 ; preds = %middle.block, %vector.scevcheck, %bb9.preheader
  %iter.sroa.11.099.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb9.preheader ], [ %n.vec, %middle.block ]
  br label %bb9, !dbg !1327

vector.scevcheck:                                 ; preds = %bb9.preheader
  %1 = add nsw i64 %.0.i.i.i.i.i.i, -1, !dbg !1327
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !1327
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !1327
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !1327
  %2 = xor i64 %output.0100, -1, !dbg !1327
  %3 = icmp ugt i64 %mul.result, %2, !dbg !1327
  %4 = or i1 %3, %mul.overflow, !dbg !1327
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !1327
  %scevgep101 = ptrtoint i8* %scevgep to i64
  %mul102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 2), !dbg !1327
  %mul.result103 = extractvalue { i64, i1 } %mul102, 0, !dbg !1327
  %mul.overflow104 = extractvalue { i64, i1 } %mul102, 1, !dbg !1327
  %5 = xor i64 %scevgep101, -1, !dbg !1327
  %6 = icmp ugt i64 %mul.result103, %5, !dbg !1327
  %7 = or i1 %6, %mul.overflow104, !dbg !1327
  %8 = or i1 %4, %7, !dbg !1327
  br i1 %8, label %bb9.preheader105, label %vector.ph, !dbg !1327

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i, 9223372036854775800, !dbg !1327
  %9 = add nsw i64 %n.vec, -8, !dbg !1327
  %10 = lshr exact i64 %9, 3, !dbg !1327
  %11 = add nuw nsw i64 %10, 1, !dbg !1327
  %xtraiter = and i64 %11, 1, !dbg !1327
  %12 = icmp eq i64 %9, 0, !dbg !1327
  br i1 %12, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1327

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %11, %xtraiter, !dbg !1327
  br label %vector.body, !dbg !1327

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1328
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %13 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1329
  %14 = shl i64 %index, 1, !dbg !1333
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %14, !dbg !1344
  %16 = bitcast i16* %13 to <8 x i16>*, !dbg !1347
  %wide.load = load <8 x i16>, <8 x i16>* %16, align 2, !dbg !1347
  %17 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1348
  %18 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1349
  %19 = trunc <8 x i16> %18 to <8 x i8>, !dbg !1350
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !1350
  %interleaved.vec = shufflevector <8 x i8> %17, <8 x i8> %19, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1350
  store <16 x i8> %interleaved.vec, <16 x i8>* %20, align 1, !dbg !1350
  %index.next = or i64 %index, 8, !dbg !1328
  %21 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1329
  %22 = shl i64 %index.next, 1, !dbg !1333
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %22, !dbg !1344
  %24 = bitcast i16* %21 to <8 x i16>*, !dbg !1347
  %wide.load.1 = load <8 x i16>, <8 x i16>* %24, align 2, !dbg !1347
  %25 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1348
  %26 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1349
  %27 = trunc <8 x i16> %26 to <8 x i8>, !dbg !1350
  %28 = bitcast i8* %23 to <16 x i8>*, !dbg !1350
  %interleaved.vec.1 = shufflevector <8 x i8> %25, <8 x i8> %27, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1350
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %28, align 1, !dbg !1350
  %index.next.1 = add i64 %index, 16, !dbg !1328
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1328
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1328
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1328, !llvm.loop !1351

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1328
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1328

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %29 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1329
  %30 = shl i64 %index.unr, 1, !dbg !1333
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %30, !dbg !1344
  %32 = bitcast i16* %29 to <8 x i16>*, !dbg !1347
  %wide.load.epil = load <8 x i16>, <8 x i16>* %32, align 2, !dbg !1347
  %33 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1348
  %34 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1349
  %35 = trunc <8 x i16> %34 to <8 x i8>, !dbg !1350
  %36 = bitcast i8* %31 to <16 x i8>*, !dbg !1350
  %interleaved.vec.epil = shufflevector <8 x i8> %33, <8 x i8> %35, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1350
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %36, align 1, !dbg !1350
  br label %middle.block, !dbg !1327

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec, !dbg !1327
  br i1 %cmp.n, label %bb7, label %bb9.preheader105, !dbg !1327

bb7:                                              ; preds = %bb9, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1352

bb9:                                              ; preds = %bb9.preheader105, %bb9
  %iter.sroa.11.099 = phi i64 [ %37, %bb9 ], [ %iter.sroa.11.099.ph, %bb9.preheader105 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.099, metadata !1322, metadata !DIExpression()), !dbg !1353
  %37 = add nuw i64 %iter.sroa.11.099, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.099, metadata !510, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.099, metadata !502, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.099, metadata !495, metadata !DIExpression()), !dbg !1356
  %38 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.099, !dbg !1329
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1339, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.099, metadata !1340, metadata !DIExpression()), !dbg !1357
  %start1.i.i.i = shl i64 %iter.sroa.11.099, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1341, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1360
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1344
  call void @llvm.dbg.value(metadata i16* %38, metadata !1211, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %39, metadata !1211, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1361
  call void @llvm.dbg.value(metadata i16* %38, metadata !1215, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %39, metadata !1217, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1362
  %_20 = load i16, i16* %38, align 2, !dbg !1347
  %40 = trunc i16 %_20 to i8, !dbg !1348
  store i8 %40, i8* %39, align 1, !dbg !1348
  %_25 = lshr i16 %_20, 8, !dbg !1349
  %41 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1350
  %42 = trunc i16 %_25 to i8, !dbg !1350
  store i8 %42, i8* %41, align 1, !dbg !1350
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1324
  %_2.i.i = icmp ult i64 %37, %.0.i.i.i.i.i.i, !dbg !1326
  br i1 %_2.i.i, label %bb9, label %bb7, !dbg !1327, !llvm.loop !1363
}

; iterator_bench::zip_chunks_exact_unknown_size_slice_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1364 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1367, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 320000, metadata !753, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !756, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 320000, metadata !759, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !762, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 320000, metadata !765, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !768, metadata !DIExpression()), !dbg !1382
  %output.0101 = ptrtoint [0 x i8]* %output.0 to i64
  %0 = icmp ult i64 %input.1, 320000, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !768, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 320000, metadata !765, metadata !DIExpression()), !dbg !1382
  %.0.i.i.i = select i1 %0, i64 %input.1, i64 320000, !dbg !1384
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1385
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1389
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata i8* undef, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 2, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1391
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1262, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1393
  call void @llvm.dbg.value(metadata i64 2, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1393
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1268, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1395
  call void @llvm.dbg.value(metadata i64 2, metadata !1268, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1395
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %.0.i.i.i, metadata !753, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %.0.i.i.i, metadata !759, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %.0.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1404
  %1 = icmp ugt i64 %.0.i.i.i, %n.i.i.i.i.i, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %.0.i.i.i, metadata !765, metadata !DIExpression()), !dbg !1404
  %.0.i.i.i.i.i.i = select i1 %1, i64 %n.i.i.i.i.i, i64 %.0.i.i.i, !dbg !1406
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1368, metadata !DIExpression(DW_OP_deref)), !dbg !1407
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1410
  %_2.i.i99 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !1412
  br i1 %_2.i.i99, label %bb10, label %bb12.preheader, !dbg !1413

bb12.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i, 8, !dbg !1413
  br i1 %min.iters.check, label %bb12.preheader106, label %vector.scevcheck, !dbg !1413

bb12.preheader106:                                ; preds = %middle.block, %vector.scevcheck, %bb12.preheader
  %iter.sroa.11.0100.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb12.preheader ], [ %n.vec, %middle.block ]
  br label %bb12, !dbg !1413

vector.scevcheck:                                 ; preds = %bb12.preheader
  %2 = add nsw i64 %.0.i.i.i.i.i.i, -1, !dbg !1413
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !1413
  %mul.result = extractvalue { i64, i1 } %mul, 0, !dbg !1413
  %mul.overflow = extractvalue { i64, i1 } %mul, 1, !dbg !1413
  %3 = xor i64 %output.0101, -1, !dbg !1413
  %4 = icmp ugt i64 %mul.result, %3, !dbg !1413
  %5 = or i1 %4, %mul.overflow, !dbg !1413
  %scevgep = getelementptr [0 x i8], [0 x i8]* %output.0, i64 0, i64 1, !dbg !1413
  %scevgep102 = ptrtoint i8* %scevgep to i64
  %mul103 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 2), !dbg !1413
  %mul.result104 = extractvalue { i64, i1 } %mul103, 0, !dbg !1413
  %mul.overflow105 = extractvalue { i64, i1 } %mul103, 1, !dbg !1413
  %6 = xor i64 %scevgep102, -1, !dbg !1413
  %7 = icmp ugt i64 %mul.result104, %6, !dbg !1413
  %8 = or i1 %7, %mul.overflow105, !dbg !1413
  %9 = or i1 %5, %8, !dbg !1413
  br i1 %9, label %bb12.preheader106, label %vector.ph, !dbg !1413

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i, 524280, !dbg !1413
  %10 = add nsw i64 %n.vec, -8, !dbg !1413
  %11 = lshr exact i64 %10, 3, !dbg !1413
  %12 = add nuw nsw i64 %11, 1, !dbg !1413
  %xtraiter = and i64 %12, 1, !dbg !1413
  %13 = icmp eq i64 %10, 0, !dbg !1413
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1413

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %12, %xtraiter, !dbg !1413
  br label %vector.body, !dbg !1413

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1414
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %14 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1415
  %15 = shl i64 %index, 1, !dbg !1419
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %15, !dbg !1421
  %17 = bitcast i16* %14 to <8 x i16>*, !dbg !1424
  %wide.load = load <8 x i16>, <8 x i16>* %17, align 2, !dbg !1424
  %18 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1425
  %19 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1426
  %20 = trunc <8 x i16> %19 to <8 x i8>, !dbg !1427
  %21 = bitcast i8* %16 to <16 x i8>*, !dbg !1427
  %interleaved.vec = shufflevector <8 x i8> %18, <8 x i8> %20, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1427
  store <16 x i8> %interleaved.vec, <16 x i8>* %21, align 1, !dbg !1427
  %index.next = or i64 %index, 8, !dbg !1414
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1415
  %23 = shl i64 %index.next, 1, !dbg !1419
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %23, !dbg !1421
  %25 = bitcast i16* %22 to <8 x i16>*, !dbg !1424
  %wide.load.1 = load <8 x i16>, <8 x i16>* %25, align 2, !dbg !1424
  %26 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1425
  %27 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1426
  %28 = trunc <8 x i16> %27 to <8 x i8>, !dbg !1427
  %29 = bitcast i8* %24 to <16 x i8>*, !dbg !1427
  %interleaved.vec.1 = shufflevector <8 x i8> %26, <8 x i8> %28, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1427
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %29, align 1, !dbg !1427
  %index.next.1 = add i64 %index, 16, !dbg !1414
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1414
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1414
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1414, !llvm.loop !1428

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1414
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1414

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %30 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1415
  %31 = shl i64 %index.unr, 1, !dbg !1419
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %31, !dbg !1421
  %33 = bitcast i16* %30 to <8 x i16>*, !dbg !1424
  %wide.load.epil = load <8 x i16>, <8 x i16>* %33, align 2, !dbg !1424
  %34 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1425
  %35 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1426
  %36 = trunc <8 x i16> %35 to <8 x i8>, !dbg !1427
  %37 = bitcast i8* %32 to <16 x i8>*, !dbg !1427
  %interleaved.vec.epil = shufflevector <8 x i8> %34, <8 x i8> %36, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1427
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %37, align 1, !dbg !1427
  br label %middle.block, !dbg !1413

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec, !dbg !1413
  br i1 %cmp.n, label %bb10, label %bb12.preheader106, !dbg !1413

bb10:                                             ; preds = %bb12, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1429

bb12:                                             ; preds = %bb12.preheader106, %bb12
  %iter.sroa.11.0100 = phi i64 [ %38, %bb12 ], [ %iter.sroa.11.0100.ph, %bb12.preheader106 ]
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !1322, metadata !DIExpression()), !dbg !1430
  %38 = add nuw i64 %iter.sroa.11.0100, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !510, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !502, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !495, metadata !DIExpression()), !dbg !1433
  %39 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0100, !dbg !1415
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1339, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0100, metadata !1340, metadata !DIExpression()), !dbg !1434
  %start1.i.i.i = shl i64 %iter.sroa.11.0100, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !1341, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1437
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i, !dbg !1421
  call void @llvm.dbg.value(metadata i16* %39, metadata !1370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %40, metadata !1370, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1438
  call void @llvm.dbg.value(metadata i16* %39, metadata !1374, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %40, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1439
  %_26 = load i16, i16* %39, align 2, !dbg !1424
  %41 = trunc i16 %_26 to i8, !dbg !1425
  store i8 %41, i8* %40, align 1, !dbg !1425
  %_31 = lshr i16 %_26, 8, !dbg !1426
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1427
  %43 = trunc i16 %_31 to i8, !dbg !1427
  store i8 %43, i8* %42, align 1, !dbg !1427
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1368, metadata !DIExpression(DW_OP_deref)), !dbg !1407
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata %"core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1410
  %_2.i.i = icmp ult i64 %38, %.0.i.i.i.i.i.i, !dbg !1412
  br i1 %_2.i.i, label %bb12, label %bb10, !dbg !1413, !llvm.loop !1440
}

; iterator_bench::zip_chunks_exact_unknown_size_take_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1441 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1443, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1460
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1460
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1461
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1465
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata i8* undef, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata i64 2, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1467
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1262, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  call void @llvm.dbg.value(metadata i64 2, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1469
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1268, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1471
  call void @llvm.dbg.value(metadata i64 2, metadata !1268, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1471
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1480
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1480
  %.0.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1482
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1445, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1484, metadata !DIExpression()), !dbg !1490
  %_2.i.i.i135 = icmp eq i64 %.0.i.i.i.i.i.i, 0, !dbg !1492
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1496
  br i1 %_2.i.i.i135, label %bb8, label %bb10.preheader, !dbg !1497

bb10.preheader:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %1 = add nsw i64 %.0.i.i.i.i.i.i, -1, !dbg !1497
  %2 = icmp ult i64 %1, 319999, !dbg !1497
  %umin = select i1 %2, i64 %1, i64 319999, !dbg !1497
  %3 = add nuw nsw i64 %umin, 1, !dbg !1497
  %min.iters.check = icmp ult i64 %3, 8, !dbg !1497
  br i1 %min.iters.check, label %bb10.preheader142, label %vector.ph, !dbg !1497

bb10.preheader142:                                ; preds = %middle.block, %bb10.preheader
  %iter.sroa.16.0137.ph = phi i64 [ 320000, %bb10.preheader ], [ %ind.end, %middle.block ]
  %iter.sroa.11.0136.ph = phi i64 [ 0, %bb10.preheader ], [ %n.vec, %middle.block ]
  br label %bb10, !dbg !1497

vector.ph:                                        ; preds = %bb10.preheader
  %n.vec = and i64 %3, 1048568, !dbg !1497
  %ind.end = sub nsw i64 320000, %n.vec, !dbg !1497
  %4 = add nsw i64 %n.vec, -8, !dbg !1497
  %5 = lshr exact i64 %4, 3, !dbg !1497
  %6 = add nuw nsw i64 %5, 1, !dbg !1497
  %xtraiter = and i64 %6, 1, !dbg !1497
  %7 = icmp eq i64 %4, 0, !dbg !1497
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1497

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nuw nsw i64 %6, %xtraiter, !dbg !1497
  br label %vector.body, !dbg !1497

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !1498
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index, !dbg !1499
  %9 = shl nuw i64 %index, 1, !dbg !1503
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %9, !dbg !1505
  %11 = bitcast i16* %8 to <8 x i16>*, !dbg !1508
  %wide.load = load <8 x i16>, <8 x i16>* %11, align 2, !dbg !1508
  %12 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !1509
  %13 = lshr <8 x i16> %wide.load, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1510
  %14 = trunc <8 x i16> %13 to <8 x i8>, !dbg !1511
  %15 = bitcast i8* %10 to <16 x i8>*, !dbg !1511
  %interleaved.vec = shufflevector <8 x i8> %12, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1511
  store <16 x i8> %interleaved.vec, <16 x i8>* %15, align 1, !dbg !1511
  %index.next = or i64 %index, 8, !dbg !1498
  %16 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.next, !dbg !1499
  %17 = shl nuw i64 %index.next, 1, !dbg !1503
  %18 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %17, !dbg !1505
  %19 = bitcast i16* %16 to <8 x i16>*, !dbg !1508
  %wide.load.1 = load <8 x i16>, <8 x i16>* %19, align 2, !dbg !1508
  %20 = trunc <8 x i16> %wide.load.1 to <8 x i8>, !dbg !1509
  %21 = lshr <8 x i16> %wide.load.1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1510
  %22 = trunc <8 x i16> %21 to <8 x i8>, !dbg !1511
  %23 = bitcast i8* %18 to <16 x i8>*, !dbg !1511
  %interleaved.vec.1 = shufflevector <8 x i8> %20, <8 x i8> %22, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1511
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %23, align 1, !dbg !1511
  %index.next.1 = add i64 %index, 16, !dbg !1498
  %niter.nsub.1 = add i64 %niter, -2, !dbg !1498
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0, !dbg !1498
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !1498, !llvm.loop !1512

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1498
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !1498

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %index.unr, !dbg !1499
  %25 = shl nuw i64 %index.unr, 1, !dbg !1503
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %25, !dbg !1505
  %27 = bitcast i16* %24 to <8 x i16>*, !dbg !1508
  %wide.load.epil = load <8 x i16>, <8 x i16>* %27, align 2, !dbg !1508
  %28 = trunc <8 x i16> %wide.load.epil to <8 x i8>, !dbg !1509
  %29 = lshr <8 x i16> %wide.load.epil, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1510
  %30 = trunc <8 x i16> %29 to <8 x i8>, !dbg !1511
  %31 = bitcast i8* %26 to <16 x i8>*, !dbg !1511
  %interleaved.vec.epil = shufflevector <8 x i8> %28, <8 x i8> %30, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>, !dbg !1511
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %31, align 1, !dbg !1511
  br label %middle.block, !dbg !1497

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !1497
  br i1 %cmp.n, label %bb8, label %bb10.preheader142, !dbg !1497

bb8:                                              ; preds = %bb10, %middle.block, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  ret void, !dbg !1513

bb10:                                             ; preds = %bb10.preheader142, %bb10
  %iter.sroa.16.0137 = phi i64 [ %32, %bb10 ], [ %iter.sroa.16.0137.ph, %bb10.preheader142 ]
  %iter.sroa.11.0136 = phi i64 [ %33, %bb10 ], [ %iter.sroa.11.0136.ph, %bb10.preheader142 ]
  %32 = add nsw i64 %iter.sroa.16.0137, -1, !dbg !1514
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0136, metadata !1322, metadata !DIExpression()), !dbg !1515
  %33 = add nuw nsw i64 %iter.sroa.11.0136, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0136, metadata !510, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0136, metadata !502, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0136, metadata !495, metadata !DIExpression()), !dbg !1518
  %34 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0136, !dbg !1499
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1339, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0136, metadata !1340, metadata !DIExpression()), !dbg !1519
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0136, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1341, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1522
  %35 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1505
  call void @llvm.dbg.value(metadata i16* %34, metadata !1453, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %35, metadata !1453, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1523
  call void @llvm.dbg.value(metadata i16* %34, metadata !1457, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %35, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1524
  %_21 = load i16, i16* %34, align 2, !dbg !1508
  %36 = trunc i16 %_21 to i8, !dbg !1509
  store i8 %36, i8* %35, align 1, !dbg !1509
  %_26 = lshr i16 %_21, 8, !dbg !1510
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1511
  %38 = trunc i16 %_26 to i8, !dbg !1511
  store i8 %38, i8* %37, align 1, !dbg !1511
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1445, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1484, metadata !DIExpression()), !dbg !1490
  %_2.i = icmp ne i64 %32, 0, !dbg !1525
  %_2.i.i.i = icmp ult i64 %33, %.0.i.i.i.i.i.i, !dbg !1492
  %or.cond = and i1 %_2.i.i.i, %_2.i, !dbg !1497
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1496
  br i1 %or.cond, label %bb10, label %bb8, !dbg !1497, !llvm.loop !1526
}

; iterator_bench::zip_chunks_exact_unknown_size_take_iter_impl
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE([0 x i8]* nonnull align 1 %output.0, i64 %output.1, [0 x i16]* noalias nonnull readonly align 2 %input.0, i64 %input.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !1527 {
_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit:
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1529, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1529, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1530, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !1530, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !193, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1551
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !184, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1555
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata i8* undef, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1252, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata i64 2, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1557
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1262, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1559
  call void @llvm.dbg.value(metadata i64 2, metadata !1262, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1559
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !1268, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1561
  call void @llvm.dbg.value(metadata i64 2, metadata !1268, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1561
  %n.i.i.i.i.i = lshr i64 %output.1, 1, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !753, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !756, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !759, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !762, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1570
  %0 = icmp ult i64 %n.i.i.i.i.i, %input.1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %n.i.i.i.i.i, metadata !768, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !765, metadata !DIExpression()), !dbg !1570
  %.0.i.i.i.i.i.i = select i1 %0, i64 %n.i.i.i.i.i, i64 %input.1, !dbg !1572
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1531, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1484, metadata !DIExpression()), !dbg !1574
  br label %bb2.i, !dbg !1576

bb2.i:                                            ; preds = %bb10.1, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit
  %iter.sroa.16.0149 = phi i64 [ 320000, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %7, %bb10.1 ]
  %iter.sroa.11.0148 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E.exit ], [ %13, %bb10.1 ]
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1579
  %_2.i.i.i = icmp ult i64 %iter.sroa.11.0148, %.0.i.i.i.i.i.i, !dbg !1581
  br i1 %_2.i.i.i, label %bb10, label %bb8, !dbg !1582

bb8:                                              ; preds = %bb10.1, %bb10, %bb2.i
  ret void, !dbg !1583

bb10:                                             ; preds = %bb2.i
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !1322, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !510, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !502, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !495, metadata !DIExpression()), !dbg !1589
  %1 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %iter.sroa.11.0148, !dbg !1591
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1339, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %iter.sroa.11.0148, metadata !1340, metadata !DIExpression()), !dbg !1592
  %start1.i.i.i.i = shl nuw i64 %iter.sroa.11.0148, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !1341, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !193, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i, metadata !184, metadata !DIExpression()), !dbg !1598
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i, !dbg !1600
  call void @llvm.dbg.value(metadata i16* %1, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %2, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i64 2, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %2, metadata !1539, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1602
  call void @llvm.dbg.value(metadata i64 2, metadata !1539, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1602
  %b = load i16, i16* %1, align 2, !dbg !1603
  call void @llvm.dbg.value(metadata i16 %b, metadata !1537, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i16 %b, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  call void @llvm.dbg.value(metadata i16 %b, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %2, metadata !183, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %2, metadata !1544, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8* %2, metadata !1548, metadata !DIExpression()), !dbg !1616
  %3 = trunc i16 %b to i8, !dbg !1617
  store i8 %3, i8* %2, align 1, !dbg !1617
  %4 = lshr i16 %b, 8, !dbg !1618
  call void @llvm.dbg.value(metadata i16 %4, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  call void @llvm.dbg.value(metadata i16 %4, metadata !1540, metadata !DIExpression()), !dbg !1604
  %iter2.sroa.0.0.ptr.1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !183, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1544, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1, metadata !1548, metadata !DIExpression()), !dbg !1616
  %5 = trunc i16 %4 to i8, !dbg !1617
  store i8 %5, i8* %iter2.sroa.0.0.ptr.1, align 1, !dbg !1617
  call void @llvm.dbg.value(metadata i16 0, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  %6 = or i64 %iter.sroa.11.0148, 1, !dbg !1619
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1531, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1484, metadata !DIExpression()), !dbg !1574
  %7 = add nsw i64 %iter.sroa.16.0149, -2, !dbg !1620
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1579
  %_2.i.i.i.1 = icmp ult i64 %6, %.0.i.i.i.i.i.i, !dbg !1581
  br i1 %_2.i.i.i.1, label %bb10.1, label %bb8, !dbg !1582

bb10.1:                                           ; preds = %bb10
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1311, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1319, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %6, metadata !1322, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %6, metadata !510, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !501, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %6, metadata !502, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata [0 x i16]* %input.0, metadata !494, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %6, metadata !495, metadata !DIExpression()), !dbg !1589
  %8 = getelementptr inbounds [0 x i16], [0 x i16]* %input.0, i64 0, i64 %6, !dbg !1591
  call void @llvm.dbg.value(metadata %"core::slice::ChunksExactMut<u8>"* undef, metadata !1339, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %6, metadata !1340, metadata !DIExpression()), !dbg !1592
  %start1.i.i.i.i.1 = shl nuw i64 %6, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !1341, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !192, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !193, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !183, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %start1.i.i.i.i.1, metadata !184, metadata !DIExpression()), !dbg !1598
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 %start1.i.i.i.i.1, !dbg !1600
  call void @llvm.dbg.value(metadata i16* %8, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %9, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i64 2, metadata !1533, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %9, metadata !1539, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1602
  call void @llvm.dbg.value(metadata i64 2, metadata !1539, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1602
  %b.1 = load i16, i16* %8, align 2, !dbg !1603
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1537, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %9, metadata !192, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 2, metadata !193, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 2, metadata !184, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  call void @llvm.dbg.value(metadata i16 %b.1, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1544, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8* %9, metadata !1548, metadata !DIExpression()), !dbg !1616
  %10 = trunc i16 %b.1 to i8, !dbg !1617
  store i8 %10, i8* %9, align 1, !dbg !1617
  %11 = lshr i16 %b.1, 8, !dbg !1618
  call void @llvm.dbg.value(metadata i16 %11, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  call void @llvm.dbg.value(metadata i16 %11, metadata !1540, metadata !DIExpression()), !dbg !1604
  %iter2.sroa.0.0.ptr.1.1 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !183, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1544, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8* %iter2.sroa.0.0.ptr.1.1, metadata !1548, metadata !DIExpression()), !dbg !1616
  %12 = trunc i16 %11 to i8, !dbg !1617
  store i8 %12, i8* %iter2.sroa.0.0.ptr.1.1, align 1, !dbg !1617
  call void @llvm.dbg.value(metadata i16 0, metadata !1540, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata { i8*, i8* }* undef, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1610
  %13 = add nuw nsw i64 %iter.sroa.11.0148, 2, !dbg !1619
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1531, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  call void @llvm.dbg.value(metadata %"core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>"* undef, metadata !1484, metadata !DIExpression()), !dbg !1574
  %_2.i.1 = icmp eq i64 %7, 0, !dbg !1621
  br i1 %_2.i.1, label %bb8, label %bb2.i, !dbg !1576
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable }
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
!274 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
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
!386 = !DILocation(line: 1017, column: 9, scope: !373, inlinedAt: !385)
!387 = !DILocation(line: 0, scope: !347)
!388 = !DILocation(line: 0, scope: !75, inlinedAt: !389)
!389 = distinct !DILocation(line: 447, column: 26, scope: !349)
!390 = !DILocation(line: 505, column: 9, scope: !75, inlinedAt: !389)
!391 = !DILocation(line: 3025, column: 26, scope: !107, inlinedAt: !392)
!392 = distinct !DILocation(line: 193, column: 22, scope: !117, inlinedAt: !393)
!393 = distinct !DILocation(line: 510, column: 30, scope: !75, inlinedAt: !389)
!394 = !DILocation(line: 448, column: 29, scope: !353)
!395 = !DILocation(line: 449, column: 28, scope: !355)
!396 = !DILocation(line: 449, column: 21, scope: !355)
!397 = !DILocation(line: 450, column: 42, scope: !355)
!398 = !DILocation(line: 450, column: 28, scope: !355)
!399 = !DILocation(line: 450, column: 21, scope: !355)
!400 = distinct !{!400, !218}
!401 = !DILocation(line: 452, column: 14, scope: !342)
!402 = !DILocation(line: 0, scope: !117, inlinedAt: !393)
!403 = !DILocation(line: 0, scope: !107, inlinedAt: !392)
!404 = !DILocation(line: 0, scope: !349)
!405 = !DILocation(line: 0, scope: !353)
!406 = !DILocation(line: 0, scope: !355)
!407 = !DILocation(line: 1137, column: 52, scope: !273, inlinedAt: !408)
!408 = distinct !DILocation(line: 505, column: 12, scope: !75, inlinedAt: !389)
!409 = distinct !{!409, !218}
!410 = distinct !DISubprogram(name: "zip_chunks_fixed_size_impl", linkageName: "_ZN14iterator_bench26zip_chunks_fixed_size_impl17ha62eecc2e2c38aabE", scope: !39, file: !38, line: 505, type: !40, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !411)
!411 = !{!412, !413, !414, !444, !450, !452, !454}
!412 = !DILocalVariable(name: "output", arg: 1, scope: !410, file: !38, line: 505, type: !42)
!413 = !DILocalVariable(name: "input", arg: 2, scope: !410, file: !38, line: 505, type: !46)
!414 = !DILocalVariable(name: "iter", scope: !415, file: !38, line: 506, type: !416, align: 8)
!415 = distinct !DILexicalBlock(scope: !410, file: !38, line: 506, column: 17)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", scope: !417, file: !7, size: 448, align: 64, elements: !419, templateParams: !441, identifier: "2603922c5128e7d2a0c421e882eb59e8")
!417 = !DINamespace(name: "zip", scope: !418)
!418 = !DINamespace(name: "adapters", scope: !79)
!419 = !{!420, !434, !439, !440}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !416, file: !7, baseType: !421, size: 128, align: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<u16>", scope: !148, file: !7, size: 128, align: 64, elements: !422, templateParams: !135, identifier: "3b6f625891d0497522e6ef9adb8e48b9")
!422 = !{!423, !428, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !421, file: !7, baseType: !424, size: 64, align: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u16>", scope: !425, file: !7, size: 64, align: 64, elements: !426, templateParams: !135, identifier: "93f0871a8bbbfb515b6ec5299845b747")
!425 = !DINamespace(name: "non_null", scope: !127)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !424, file: !7, baseType: !130, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !421, file: !7, baseType: !130, size: 64, align: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !421, file: !7, baseType: !430, align: 8)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&u16>", scope: !431, file: !7, align: 8, elements: !34, templateParams: !432, identifier: "b0f09a0ff467ada3bd7ae1b7c7b8c070")
!431 = !DINamespace(name: "marker", scope: !9)
!432 = !{!433}
!433 = !DITemplateTypeParameter(name: "T", type: !151)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !416, file: !7, baseType: !435, size: 192, align: 64, offset: 128)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksMut<u8>", scope: !148, file: !7, size: 192, align: 64, elements: !436, templateParams: !185, identifier: "3d60118ea8ab2507bfb6d9d594c44bd8")
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !435, file: !7, baseType: !199, size: 128, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !435, file: !7, baseType: !36, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !416, file: !7, baseType: !36, size: 64, align: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !7, baseType: !36, size: 64, align: 64, offset: 384)
!441 = !{!442, !443}
!442 = !DITemplateTypeParameter(name: "A", type: !421)
!443 = !DITemplateTypeParameter(name: "B", type: !435)
!444 = !DILocalVariable(name: "__next", scope: !445, file: !38, line: 506, type: !446, align: 8)
!445 = distinct !DILexicalBlock(scope: !415, file: !38, line: 506, column: 33)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&u16, &mut [u8])", file: !7, size: 192, align: 64, elements: !447, templateParams: !34, identifier: "da34b111579020308bcd12aa4b615188")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !446, file: !7, baseType: !151, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !446, file: !7, baseType: !199, size: 128, align: 64, offset: 64)
!450 = !DILocalVariable(name: "val", scope: !451, file: !38, line: 506, type: !446, align: 8)
!451 = distinct !DILexicalBlock(scope: !445, file: !38, line: 506, column: 21)
!452 = !DILocalVariable(name: "b", scope: !453, file: !38, line: 506, type: !48, align: 2)
!453 = distinct !DILexicalBlock(scope: !445, file: !38, line: 506, column: 33)
!454 = !DILocalVariable(name: "ac", scope: !453, file: !38, line: 506, type: !199, align: 8)
!455 = !DILocation(line: 0, scope: !410)
!456 = !DILocation(line: 0, scope: !415)
!457 = !DILocalVariable(name: "self", arg: 1, scope: !458, file: !459, line: 46, type: !475)
!458 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h261f1104123b97a0E", scope: !460, file: !459, line: 46, type: !461, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !441, retainedNodes: !476)
!459 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/adapters/zip.rs", directory: "", checksumkind: CSK_MD5, checksum: "f3eb2f902ea9ef422ff1bfca2897667a")
!460 = !DINamespace(name: "{{impl}}", scope: !417)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !475}
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(&u16, &mut [u8])>", scope: !83, file: !7, size: 192, align: 64, elements: !464, identifier: "94209b0a14e89d36c0760065ce090683")
!464 = !{!465}
!465 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 192, align: 64, elements: !466, templateParams: !469, identifier: "94209b0a14e89d36c0760065ce090683_variant_part", discriminator: !95)
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !465, file: !7, baseType: !468, size: 192, align: 64, extraData: i64 0)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !463, file: !7, size: 192, align: 64, elements: !34, templateParams: !469, identifier: "94209b0a14e89d36c0760065ce090683::None")
!469 = !{!470}
!470 = !DITemplateTypeParameter(name: "T", type: !446)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !465, file: !7, baseType: !472, size: 192, align: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !463, file: !7, size: 192, align: 64, elements: !473, templateParams: !469, identifier: "94209b0a14e89d36c0760065ce090683::Some")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !472, file: !7, baseType: !446, size: 192, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>", baseType: !416, size: 64, align: 64, dwarfAddressSpace: 0)
!476 = !{!457}
!477 = !DILocation(line: 0, scope: !458, inlinedAt: !478)
!478 = distinct !DILocation(line: 506, column: 33, scope: !445)
!479 = !DILocalVariable(name: "self", arg: 1, scope: !480, file: !459, line: 173, type: !475)
!480 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4340cb2fc3d57d84E", scope: !460, file: !459, line: 173, type: !461, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !441, retainedNodes: !481)
!481 = !{!479, !482}
!482 = !DILocalVariable(name: "i", scope: !483, file: !459, line: 175, type: !36, align: 8)
!483 = distinct !DILexicalBlock(scope: !480, file: !459, line: 175, column: 13)
!484 = !DILocation(line: 0, scope: !480, inlinedAt: !485)
!485 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !478)
!486 = !DILocation(line: 174, column: 9, scope: !480, inlinedAt: !485)
!487 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !485)
!488 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !496)
!489 = distinct !DISubprogram(name: "offset<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h92aca73ecbe6dcdaE", scope: !177, file: !176, line: 152, type: !490, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !493)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !492, !131}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u16", baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "self", arg: 1, scope: !489, file: !176, line: 152, type: !492)
!495 = !DILocalVariable(name: "count", arg: 2, scope: !489, file: !176, line: 152, type: !131)
!496 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !503)
!497 = distinct !DISubprogram(name: "add<u16>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hb4031df3ce20c655E", scope: !177, file: !176, line: 525, type: !498, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!492, !492, !36}
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "self", arg: 1, scope: !497, file: !176, line: 525, type: !492)
!502 = !DILocalVariable(name: "count", arg: 2, scope: !497, file: !176, line: 525, type: !36)
!503 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !511)
!504 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_ZN93_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hefa02adb481ff826E", scope: !147, file: !146, line: 6297, type: !505, scopeLine: 6297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !135, retainedNodes: !508)
!505 = !DISubroutineType(types: !506)
!506 = !{!151, !507, !36}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::Iter<u16>", baseType: !421, size: 64, align: 64, dwarfAddressSpace: 0)
!508 = !{!509, !510}
!509 = !DILocalVariable(name: "self", arg: 1, scope: !504, file: !146, line: 6297, type: !507)
!510 = !DILocalVariable(name: "i", arg: 2, scope: !504, file: !146, line: 6297, type: !36)
!511 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !485)
!512 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !526)
!513 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN98_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hb5619e58b7fe560aE", scope: !147, file: !146, line: 5028, type: !514, scopeLine: 5028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !517)
!514 = !DISubroutineType(types: !515)
!515 = !{!199, !516, !36}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksMut<u8>", baseType: !435, size: 64, align: 64, dwarfAddressSpace: 0)
!517 = !{!518, !519, !520, !522, !524}
!518 = !DILocalVariable(name: "self", arg: 1, scope: !513, file: !146, line: 5028, type: !516)
!519 = !DILocalVariable(name: "i", arg: 2, scope: !513, file: !146, line: 5028, type: !36)
!520 = !DILocalVariable(name: "start", scope: !521, file: !146, line: 5029, type: !36, align: 8)
!521 = distinct !DILexicalBlock(scope: !513, file: !146, line: 5029, column: 9)
!522 = !DILocalVariable(name: "end", scope: !523, file: !146, line: 5030, type: !36, align: 8)
!523 = distinct !DILexicalBlock(scope: !521, file: !146, line: 5030, column: 9)
!524 = !DILocalVariable(name: "end", scope: !525, file: !146, line: 5032, type: !36, align: 8)
!525 = distinct !DILexicalBlock(scope: !521, file: !146, line: 5032, column: 13)
!526 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !485)
!527 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !528)
!528 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !529)
!529 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !526)
!530 = !DILocation(line: 506, column: 23, scope: !445)
!531 = !DILocation(line: 509, column: 21, scope: !453)
!532 = !DILocation(line: 510, column: 30, scope: !453)
!533 = !DILocation(line: 510, column: 21, scope: !453)
!534 = distinct !{!534, !218}
!535 = !DILocation(line: 512, column: 14, scope: !410)
!536 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_impl", linkageName: "_ZN14iterator_bench31zip_chunks_fixed_size_take_impl17hd453fdeb726d293dE", scope: !39, file: !38, line: 565, type: !40, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !537)
!537 = !{!538, !539, !540, !548, !550, !552, !554}
!538 = !DILocalVariable(name: "output", arg: 1, scope: !536, file: !38, line: 565, type: !42)
!539 = !DILocalVariable(name: "input", arg: 2, scope: !536, file: !38, line: 565, type: !46)
!540 = !DILocalVariable(name: "iter", scope: !541, file: !38, line: 566, type: !542, align: 8)
!541 = distinct !DILexicalBlock(scope: !536, file: !38, line: 566, column: 17)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", scope: !418, file: !7, size: 512, align: 64, elements: !543, templateParams: !546, identifier: "8a349ab4c0331bdbde1ff71b2d8993b6")
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !542, file: !7, baseType: !416, size: 448, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !542, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!546 = !{!547}
!547 = !DITemplateTypeParameter(name: "I", type: !416)
!548 = !DILocalVariable(name: "__next", scope: !549, file: !38, line: 566, type: !446, align: 8)
!549 = distinct !DILexicalBlock(scope: !541, file: !38, line: 566, column: 33)
!550 = !DILocalVariable(name: "val", scope: !551, file: !38, line: 566, type: !446, align: 8)
!551 = distinct !DILexicalBlock(scope: !549, file: !38, line: 566, column: 21)
!552 = !DILocalVariable(name: "b", scope: !553, file: !38, line: 566, type: !48, align: 2)
!553 = distinct !DILexicalBlock(scope: !549, file: !38, line: 566, column: 33)
!554 = !DILocalVariable(name: "ac", scope: !553, file: !38, line: 566, type: !199, align: 8)
!555 = !DILocation(line: 0, scope: !536)
!556 = !DILocation(line: 0, scope: !541)
!557 = !DILocalVariable(name: "self", arg: 1, scope: !558, file: !559, line: 2195, type: !563)
!558 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d19cfc82ede2c83E", scope: !560, file: !559, line: 2195, type: !561, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !546, retainedNodes: !564)
!559 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/adapters/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea0d10848170548968a5df5bdc9565ca")
!560 = !DINamespace(name: "{{impl}}", scope: !418)
!561 = !DISubroutineType(types: !562)
!562 = !{!463, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksMut<u8>>>", baseType: !542, size: 64, align: 64, dwarfAddressSpace: 0)
!564 = !{!557}
!565 = !DILocation(line: 0, scope: !558, inlinedAt: !566)
!566 = distinct !DILocation(line: 566, column: 33, scope: !549)
!567 = !DILocation(line: 0, scope: !458, inlinedAt: !568)
!568 = distinct !DILocation(line: 2198, column: 13, scope: !558, inlinedAt: !566)
!569 = !DILocation(line: 0, scope: !480, inlinedAt: !570)
!570 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !568)
!571 = !DILocation(line: 2196, column: 9, scope: !558, inlinedAt: !566)
!572 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !570)
!573 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !574)
!574 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !575)
!575 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !576)
!576 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !570)
!577 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !578)
!578 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !570)
!579 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !580)
!580 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !581)
!581 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !578)
!582 = !DILocation(line: 566, column: 23, scope: !549)
!583 = !DILocation(line: 569, column: 21, scope: !553)
!584 = !DILocation(line: 570, column: 30, scope: !553)
!585 = !DILocation(line: 570, column: 21, scope: !553)
!586 = distinct !{!586, !218}
!587 = !DILocation(line: 572, column: 14, scope: !536)
!588 = distinct !DISubprogram(name: "zip_chunks_fixed_size_take_iter_impl", linkageName: "_ZN14iterator_bench36zip_chunks_fixed_size_take_iter_impl17hcfee63b3af005a98E", scope: !39, file: !38, line: 628, type: !40, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !589)
!589 = !{!590, !591, !592, !594, !596, !598, !600, !601, !603, !616, !618, !620}
!590 = !DILocalVariable(name: "output", arg: 1, scope: !588, file: !38, line: 628, type: !42)
!591 = !DILocalVariable(name: "input", arg: 2, scope: !588, file: !38, line: 628, type: !46)
!592 = !DILocalVariable(name: "iter", scope: !593, file: !38, line: 629, type: !542, align: 8)
!593 = distinct !DILexicalBlock(scope: !588, file: !38, line: 629, column: 17)
!594 = !DILocalVariable(name: "__next", scope: !595, file: !38, line: 629, type: !446, align: 8)
!595 = distinct !DILexicalBlock(scope: !593, file: !38, line: 629, column: 33)
!596 = !DILocalVariable(name: "val", scope: !597, file: !38, line: 629, type: !446, align: 8)
!597 = distinct !DILexicalBlock(scope: !595, file: !38, line: 629, column: 21)
!598 = !DILocalVariable(name: "b", scope: !599, file: !38, line: 629, type: !48, align: 2)
!599 = distinct !DILexicalBlock(scope: !595, file: !38, line: 629, column: 33)
!600 = !DILocalVariable(name: "ac", scope: !599, file: !38, line: 629, type: !199, align: 8)
!601 = !DILocalVariable(name: "val", scope: !602, file: !38, line: 630, type: !48, align: 2)
!602 = distinct !DILexicalBlock(scope: !599, file: !38, line: 630, column: 21)
!603 = !DILocalVariable(name: "iter", scope: !604, file: !38, line: 636, type: !605, align: 8)
!604 = distinct !DILexicalBlock(scope: !602, file: !38, line: 636, column: 21)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<u8>", scope: !148, file: !7, size: 128, align: 64, elements: !606, templateParams: !185, identifier: "131574891c4d713bf80e93f001cfe21a")
!606 = !{!607, !611, !612}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !605, file: !7, baseType: !608, size: 64, align: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !425, file: !7, size: 64, align: 64, elements: !609, templateParams: !185, identifier: "b3dafaa6879eff18f86da9cac8f804d8")
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !608, file: !7, baseType: !202, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !605, file: !7, baseType: !181, size: 64, align: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !605, file: !7, baseType: !613, align: 8)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut u8>", scope: !431, file: !7, align: 8, elements: !34, templateParams: !614, identifier: "499867ef99fce33131fbefe362fffb15")
!614 = !{!615}
!615 = !DITemplateTypeParameter(name: "T", type: !198)
!616 = !DILocalVariable(name: "__next", scope: !617, file: !38, line: 636, type: !198, align: 8)
!617 = distinct !DILexicalBlock(scope: !604, file: !38, line: 636, column: 33)
!618 = !DILocalVariable(name: "val", scope: !619, file: !38, line: 636, type: !198, align: 8)
!619 = distinct !DILexicalBlock(scope: !617, file: !38, line: 636, column: 25)
!620 = !DILocalVariable(name: "byte", scope: !621, file: !38, line: 636, type: !198, align: 8)
!621 = distinct !DILexicalBlock(scope: !617, file: !38, line: 636, column: 33)
!622 = !DILocation(line: 0, scope: !588)
!623 = !DILocation(line: 0, scope: !593)
!624 = !DILocation(line: 0, scope: !558, inlinedAt: !625)
!625 = distinct !DILocation(line: 629, column: 33, scope: !595)
!626 = !DILocation(line: 2196, column: 9, scope: !558, inlinedAt: !625)
!627 = !DILocation(line: 641, column: 14, scope: !588)
!628 = !DILocation(line: 0, scope: !458, inlinedAt: !629)
!629 = distinct !DILocation(line: 2198, column: 13, scope: !558, inlinedAt: !625)
!630 = !DILocation(line: 0, scope: !480, inlinedAt: !631)
!631 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !629)
!632 = !DILocation(line: 0, scope: !483, inlinedAt: !631)
!633 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !631)
!634 = !DILocation(line: 0, scope: !504, inlinedAt: !635)
!635 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !631)
!636 = !DILocation(line: 0, scope: !497, inlinedAt: !637)
!637 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !635)
!638 = !DILocation(line: 0, scope: !489, inlinedAt: !639)
!639 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !637)
!640 = !DILocation(line: 0, scope: !513, inlinedAt: !641)
!641 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !631)
!642 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !641)
!643 = !DILocation(line: 0, scope: !521, inlinedAt: !641)
!644 = !DILocation(line: 0, scope: !523, inlinedAt: !641)
!645 = !DILocation(line: 0, scope: !188, inlinedAt: !646)
!646 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !641)
!647 = !DILocation(line: 0, scope: !175, inlinedAt: !648)
!648 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !646)
!649 = !DILocation(line: 0, scope: !595)
!650 = !DILocation(line: 0, scope: !599)
!651 = !DILocation(line: 0, scope: !602)
!652 = !DILocalVariable(name: "self", arg: 1, scope: !653, file: !146, line: 635, type: !199)
!653 = distinct !DISubprogram(name: "iter_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h90f197b382361b0eE", scope: !147, file: !146, line: 635, type: !654, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!605, !199}
!656 = !{!652, !657, !659}
!657 = !DILocalVariable(name: "ptr", scope: !658, file: !146, line: 637, type: !181, align: 8)
!658 = distinct !DILexicalBlock(scope: !653, file: !146, line: 637, column: 13)
!659 = !DILocalVariable(name: "end", scope: !660, file: !146, line: 640, type: !181, align: 8)
!660 = distinct !DILexicalBlock(scope: !658, file: !146, line: 640, column: 13)
!661 = !DILocation(line: 0, scope: !653, inlinedAt: !662)
!662 = distinct !DILocation(line: 636, column: 33, scope: !602)
!663 = !DILocation(line: 0, scope: !658, inlinedAt: !662)
!664 = !DILocation(line: 0, scope: !188, inlinedAt: !665)
!665 = distinct !DILocation(line: 643, column: 17, scope: !658, inlinedAt: !662)
!666 = !DILocation(line: 0, scope: !175, inlinedAt: !667)
!667 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !665)
!668 = !DILocation(line: 0, scope: !604)
!669 = !DILocalVariable(name: "self", arg: 1, scope: !670, file: !146, line: 3443, type: !683)
!670 = distinct !DISubprogram(name: "next<u8>", linkageName: "_ZN88_$LT$core..slice..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf3848b4d7a3667cE", scope: !147, file: !146, line: 3443, type: !671, scopeLine: 3443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !684)
!671 = !DISubroutineType(types: !672)
!672 = !{!673, !683}
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut u8>", scope: !83, file: !7, size: 64, align: 64, elements: !674, identifier: "4693619c9850a0bbea224d9522f4ac97")
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_variant_part, scope: !83, file: !7, size: 64, align: 64, elements: !676, templateParams: !614, identifier: "4693619c9850a0bbea224d9522f4ac97_variant_part", discriminator: !95)
!676 = !{!677, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !675, file: !7, baseType: !678, size: 64, align: 64, extraData: i64 0)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !673, file: !7, size: 64, align: 64, elements: !34, templateParams: !614, identifier: "4693619c9850a0bbea224d9522f4ac97::None")
!679 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !675, file: !7, baseType: !680, size: 64, align: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !673, file: !7, size: 64, align: 64, elements: !681, templateParams: !614, identifier: "4693619c9850a0bbea224d9522f4ac97::Some")
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !680, file: !7, baseType: !198, size: 64, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::IterMut<u8>", baseType: !605, size: 64, align: 64, dwarfAddressSpace: 0)
!684 = !{!669}
!685 = !DILocation(line: 0, scope: !670, inlinedAt: !686)
!686 = distinct !DILocation(line: 636, column: 33, scope: !617)
!687 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !639)
!688 = !DILocation(line: 629, column: 23, scope: !595)
!689 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !648)
!690 = !DILocalVariable(name: "self", arg: 1, scope: !691, file: !146, line: 3394, type: !683)
!691 = distinct !DISubprogram(name: "post_inc_start<u8>", linkageName: "_ZN4core5slice16IterMut$LT$T$GT$14post_inc_start17h64859f2dabdeed42E", scope: !605, file: !146, line: 3394, type: !692, scopeLine: 3394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!181, !683, !131}
!694 = !{!690, !695, !696}
!695 = !DILocalVariable(name: "offset", arg: 2, scope: !691, file: !146, line: 3394, type: !131)
!696 = !DILocalVariable(name: "old", scope: !697, file: !146, line: 3399, type: !181, align: 8)
!697 = distinct !DILexicalBlock(scope: !691, file: !146, line: 3399, column: 21)
!698 = !DILocation(line: 0, scope: !691, inlinedAt: !699)
!699 = distinct !DILocation(line: 3365, column: 47, scope: !670, inlinedAt: !686)
!700 = !DILocation(line: 0, scope: !697, inlinedAt: !699)
!701 = !DILocation(line: 0, scope: !175, inlinedAt: !702)
!702 = distinct !DILocation(line: 3402, column: 64, scope: !697, inlinedAt: !699)
!703 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !702)
!704 = !DILocation(line: 0, scope: !617)
!705 = !DILocation(line: 0, scope: !621)
!706 = !DILocation(line: 637, column: 25, scope: !621)
!707 = !DILocation(line: 638, column: 25, scope: !621)
!708 = !DILocation(line: 2197, column: 13, scope: !558, inlinedAt: !625)
!709 = !DILocation(line: 2196, column: 12, scope: !558, inlinedAt: !625)
!710 = distinct !DISubprogram(name: "zip_chunks_output_size_fixed_impl", linkageName: "_ZN14iterator_bench33zip_chunks_output_size_fixed_impl17h7bb7244a5d51ef63E", scope: !39, file: !38, line: 696, type: !253, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !711)
!711 = !{!712, !713, !714, !716, !718, !720, !722}
!712 = !DILocalVariable(name: "output", arg: 1, scope: !710, file: !38, line: 696, type: !42)
!713 = !DILocalVariable(name: "input", arg: 2, scope: !710, file: !38, line: 696, type: !152)
!714 = !DILocalVariable(name: "iter", scope: !715, file: !38, line: 697, type: !416, align: 8)
!715 = distinct !DILexicalBlock(scope: !710, file: !38, line: 697, column: 17)
!716 = !DILocalVariable(name: "__next", scope: !717, file: !38, line: 697, type: !446, align: 8)
!717 = distinct !DILexicalBlock(scope: !715, file: !38, line: 697, column: 33)
!718 = !DILocalVariable(name: "val", scope: !719, file: !38, line: 697, type: !446, align: 8)
!719 = distinct !DILexicalBlock(scope: !717, file: !38, line: 697, column: 21)
!720 = !DILocalVariable(name: "b", scope: !721, file: !38, line: 697, type: !48, align: 2)
!721 = distinct !DILexicalBlock(scope: !717, file: !38, line: 697, column: 33)
!722 = !DILocalVariable(name: "ac", scope: !721, file: !38, line: 697, type: !199, align: 8)
!723 = !DILocation(line: 0, scope: !710)
!724 = !DILocalVariable(name: "other", arg: 2, scope: !725, file: !726, line: 544, type: !435)
!725 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17h4af0dced40c2956aE", scope: !727, file: !726, line: 544, type: !730, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !734, retainedNodes: !732)
!726 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/traits/iterator.rs", directory: "", checksumkind: CSK_MD5, checksum: "0166ca0c6191a2d150960a0c0ce0a671")
!727 = !DINamespace(name: "Iterator", scope: !728)
!728 = !DINamespace(name: "iterator", scope: !729)
!729 = !DINamespace(name: "traits", scope: !79)
!730 = !DISubroutineType(types: !731)
!731 = !{!416, !421, !435}
!732 = !{!733, !724}
!733 = !DILocalVariable(name: "self", arg: 1, scope: !725, file: !726, line: 544, type: !421)
!734 = !{!735, !736}
!735 = !DITemplateTypeParameter(name: "Self", type: !421)
!736 = !DITemplateTypeParameter(name: "U", type: !435)
!737 = !DILocation(line: 0, scope: !725, inlinedAt: !738)
!738 = distinct !DILocation(line: 697, column: 33, scope: !710)
!739 = !DILocalVariable(name: "b", arg: 2, scope: !740, file: !459, line: 23, type: !435)
!740 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h2569a0b947fe83edE", scope: !416, file: !459, line: 23, type: !730, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !441, retainedNodes: !741)
!741 = !{!742, !739}
!742 = !DILocalVariable(name: "a", arg: 1, scope: !740, file: !459, line: 23, type: !421)
!743 = !DILocation(line: 0, scope: !740, inlinedAt: !744)
!744 = distinct !DILocation(line: 549, column: 9, scope: !725, inlinedAt: !738)
!745 = !DILocalVariable(name: "b", arg: 2, scope: !746, file: !459, line: 167, type: !435)
!746 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h7ee0f5579a0a9c12E", scope: !460, file: !459, line: 167, type: !730, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !441, retainedNodes: !747)
!747 = !{!748, !745, !749}
!748 = !DILocalVariable(name: "a", arg: 1, scope: !746, file: !459, line: 167, type: !421)
!749 = !DILocalVariable(name: "len", scope: !750, file: !459, line: 168, type: !36, align: 8)
!750 = distinct !DILexicalBlock(scope: !746, file: !459, line: 168, column: 9)
!751 = !DILocation(line: 0, scope: !746, inlinedAt: !752)
!752 = distinct !DILocation(line: 24, column: 9, scope: !740, inlinedAt: !744)
!753 = !DILocalVariable(name: "v1", arg: 1, scope: !754, file: !274, line: 928, type: !36)
!754 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3min17h7e0528a2ee9ad63bE", scope: !24, file: !274, line: 928, type: !111, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !89, retainedNodes: !755)
!755 = !{!753, !756}
!756 = !DILocalVariable(name: "v2", arg: 2, scope: !754, file: !274, line: 928, type: !36)
!757 = !DILocation(line: 0, scope: !754, inlinedAt: !758)
!758 = distinct !DILocation(line: 168, column: 19, scope: !746, inlinedAt: !752)
!759 = !DILocalVariable(name: "self", arg: 1, scope: !760, file: !274, line: 620, type: !36)
!760 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3Ord3min17h13b573a50e7044f8E", scope: !365, file: !274, line: 620, type: !111, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !368, retainedNodes: !761)
!761 = !{!759, !762}
!762 = !DILocalVariable(name: "other", arg: 2, scope: !760, file: !274, line: 620, type: !36)
!763 = !DILocation(line: 0, scope: !760, inlinedAt: !764)
!764 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !758)
!765 = !DILocalVariable(name: "v1", arg: 1, scope: !766, file: !274, line: 949, type: !36)
!766 = distinct !DISubprogram(name: "min_by<usize,fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6min_by17hc292495f6fa20b8bE", scope: !24, file: !274, line: 949, type: !374, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !382, retainedNodes: !767)
!767 = !{!765, !768, !769}
!768 = !DILocalVariable(name: "v2", arg: 2, scope: !766, file: !274, line: 949, type: !36)
!769 = !DILocalVariable(name: "compare", arg: 3, scope: !766, file: !274, line: 949, type: !376)
!770 = !DILocation(line: 0, scope: !766, inlinedAt: !771)
!771 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !764)
!772 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !771)
!773 = !DILocation(line: 0, scope: !715)
!774 = !DILocation(line: 0, scope: !458, inlinedAt: !775)
!775 = distinct !DILocation(line: 697, column: 33, scope: !717)
!776 = !DILocation(line: 0, scope: !480, inlinedAt: !777)
!777 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !775)
!778 = !DILocation(line: 174, column: 12, scope: !480, inlinedAt: !777)
!779 = !DILocation(line: 174, column: 9, scope: !480, inlinedAt: !777)
!780 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !777)
!781 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !782)
!782 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !783)
!783 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !784)
!784 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !777)
!785 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !786)
!786 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !777)
!787 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !788)
!788 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !789)
!789 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !786)
!790 = !DILocation(line: 697, column: 23, scope: !717)
!791 = !DILocation(line: 700, column: 21, scope: !721)
!792 = !DILocation(line: 701, column: 30, scope: !721)
!793 = !DILocation(line: 701, column: 21, scope: !721)
!794 = distinct !{!794, !218}
!795 = !DILocation(line: 703, column: 14, scope: !710)
!796 = !DILocation(line: 0, scope: !483, inlinedAt: !777)
!797 = !DILocation(line: 0, scope: !504, inlinedAt: !784)
!798 = !DILocation(line: 0, scope: !497, inlinedAt: !783)
!799 = !DILocation(line: 0, scope: !489, inlinedAt: !782)
!800 = !DILocation(line: 0, scope: !513, inlinedAt: !786)
!801 = !DILocation(line: 0, scope: !521, inlinedAt: !786)
!802 = !DILocation(line: 0, scope: !523, inlinedAt: !786)
!803 = !DILocation(line: 0, scope: !188, inlinedAt: !789)
!804 = !DILocation(line: 0, scope: !175, inlinedAt: !788)
!805 = !DILocation(line: 0, scope: !717)
!806 = !DILocation(line: 0, scope: !721)
!807 = distinct !{!807, !218}
!808 = distinct !DISubprogram(name: "zip_chunks_input_size_fixed_impl", linkageName: "_ZN14iterator_bench32zip_chunks_input_size_fixed_impl17hbcb9ebeb281c1d77E", scope: !39, file: !38, line: 758, type: !221, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !809)
!809 = !{!810, !811, !812, !814, !816, !818, !820}
!810 = !DILocalVariable(name: "output", arg: 1, scope: !808, file: !38, line: 758, type: !199)
!811 = !DILocalVariable(name: "input", arg: 2, scope: !808, file: !38, line: 758, type: !46)
!812 = !DILocalVariable(name: "iter", scope: !813, file: !38, line: 759, type: !416, align: 8)
!813 = distinct !DILexicalBlock(scope: !808, file: !38, line: 759, column: 17)
!814 = !DILocalVariable(name: "__next", scope: !815, file: !38, line: 759, type: !446, align: 8)
!815 = distinct !DILexicalBlock(scope: !813, file: !38, line: 759, column: 33)
!816 = !DILocalVariable(name: "val", scope: !817, file: !38, line: 759, type: !446, align: 8)
!817 = distinct !DILexicalBlock(scope: !815, file: !38, line: 759, column: 21)
!818 = !DILocalVariable(name: "b", scope: !819, file: !38, line: 759, type: !48, align: 2)
!819 = distinct !DILexicalBlock(scope: !815, file: !38, line: 759, column: 33)
!820 = !DILocalVariable(name: "ac", scope: !819, file: !38, line: 759, type: !199, align: 8)
!821 = !DILocation(line: 0, scope: !808)
!822 = !DILocation(line: 0, scope: !725, inlinedAt: !823)
!823 = distinct !DILocation(line: 759, column: 33, scope: !808)
!824 = !DILocation(line: 0, scope: !740, inlinedAt: !825)
!825 = distinct !DILocation(line: 549, column: 9, scope: !725, inlinedAt: !823)
!826 = !DILocation(line: 0, scope: !746, inlinedAt: !827)
!827 = distinct !DILocation(line: 24, column: 9, scope: !740, inlinedAt: !825)
!828 = !DILocalVariable(name: "self", arg: 1, scope: !829, file: !146, line: 87, type: !832)
!829 = distinct !DISubprogram(name: "is_empty<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h9d6962c70a36da18E", scope: !147, file: !146, line: 87, type: !830, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !836)
!830 = !DISubroutineType(types: !831)
!831 = !{!279, !832}
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !7, size: 128, align: 64, elements: !833, templateParams: !34, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !832, file: !7, baseType: !202, size: 64, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !832, file: !7, baseType: !36, size: 64, align: 64, offset: 64)
!836 = !{!828}
!837 = !DILocation(line: 0, scope: !829, inlinedAt: !838)
!838 = distinct !DILocation(line: 4935, column: 12, scope: !839, inlinedAt: !855)
!839 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN90_$LT$core..slice..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h18a0b32c47ed7d4eE", scope: !147, file: !146, line: 4934, type: !840, scopeLine: 4934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !847)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !846}
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !7, size: 192, align: 64, elements: !843, templateParams: !34, identifier: "ae4a49683e9045cf9186fc547f540cbb")
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !842, file: !7, baseType: !36, size: 64, align: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !842, file: !7, baseType: !82, size: 128, align: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksMut<u8>", baseType: !435, size: 64, align: 64, dwarfAddressSpace: 0)
!847 = !{!848, !849, !851, !853}
!848 = !DILocalVariable(name: "self", arg: 1, scope: !839, file: !146, line: 4934, type: !846)
!849 = !DILocalVariable(name: "n", scope: !850, file: !146, line: 4938, type: !36, align: 8)
!850 = distinct !DILexicalBlock(scope: !839, file: !146, line: 4938, column: 13)
!851 = !DILocalVariable(name: "rem", scope: !852, file: !146, line: 4939, type: !36, align: 8)
!852 = distinct !DILexicalBlock(scope: !850, file: !146, line: 4939, column: 13)
!853 = !DILocalVariable(name: "n", scope: !854, file: !146, line: 4940, type: !36, align: 8)
!854 = distinct !DILexicalBlock(scope: !852, file: !146, line: 4940, column: 13)
!855 = distinct !DILocation(line: 100, column: 30, scope: !856, inlinedAt: !878)
!856 = distinct !DISubprogram(name: "len<core::slice::ChunksMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h9c14d9505784f1cfE", scope: !858, file: !857, line: 99, type: !860, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !876, retainedNodes: !862)
!857 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/iter/traits/exact_size.rs", directory: "", checksumkind: CSK_MD5, checksum: "c5a2a65a6cb2198d813b7c8497205511")
!858 = !DINamespace(name: "ExactSizeIterator", scope: !859)
!859 = !DINamespace(name: "exact_size", scope: !729)
!860 = !DISubroutineType(types: !861)
!861 = !{!36, !846}
!862 = !{!863, !864, !866, !867, !871, !872, !875}
!863 = !DILocalVariable(name: "self", arg: 1, scope: !856, file: !857, line: 99, type: !846)
!864 = !DILocalVariable(name: "lower", scope: !865, file: !857, line: 100, type: !36, align: 8)
!865 = distinct !DILexicalBlock(scope: !856, file: !857, line: 100, column: 9)
!866 = !DILocalVariable(name: "upper", scope: !865, file: !857, line: 100, type: !82, align: 8)
!867 = !DILocalVariable(name: "left_val", scope: !868, file: !869, line: 45, type: !870, align: 8)
!868 = distinct !DILexicalBlock(scope: !865, file: !869, line: 45, column: 13)
!869 = !DIFile(filename: "/benchdata/rust/rust-bcrm/src/libcore/macros/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9d09c4b6426f63c56ee3af0375dc8f94")
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<usize>", baseType: !82, size: 64, align: 64, dwarfAddressSpace: 0)
!871 = !DILocalVariable(name: "right_val", scope: !868, file: !869, line: 45, type: !870, align: 8)
!872 = !DILocalVariable(name: "arg0", scope: !873, file: !869, line: 52, type: !874, align: 8)
!873 = distinct !DILexicalBlock(scope: !868, file: !869, line: 16, column: 38)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&core::option::Option<usize>", baseType: !870, size: 64, align: 64, dwarfAddressSpace: 0)
!875 = !DILocalVariable(name: "arg1", scope: !873, file: !869, line: 52, type: !874, align: 8)
!876 = !{!877}
!877 = !DITemplateTypeParameter(name: "Self", type: !435)
!878 = distinct !DILocation(line: 168, column: 37, scope: !746, inlinedAt: !827)
!879 = !DILocation(line: 88, column: 9, scope: !829, inlinedAt: !838)
!880 = !DILocation(line: 4935, column: 9, scope: !839, inlinedAt: !855)
!881 = !DILocation(line: 0, scope: !850, inlinedAt: !855)
!882 = !DILocation(line: 4938, column: 21, scope: !839, inlinedAt: !855)
!883 = !DILocation(line: 4939, column: 23, scope: !850, inlinedAt: !855)
!884 = !DILocation(line: 0, scope: !852, inlinedAt: !855)
!885 = !DILocation(line: 4940, column: 21, scope: !852, inlinedAt: !855)
!886 = !DILocation(line: 0, scope: !754, inlinedAt: !887)
!887 = distinct !DILocation(line: 168, column: 19, scope: !746, inlinedAt: !827)
!888 = !DILocation(line: 0, scope: !760, inlinedAt: !889)
!889 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !887)
!890 = !DILocation(line: 0, scope: !766, inlinedAt: !891)
!891 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !889)
!892 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !891)
!893 = !DILocation(line: 0, scope: !813)
!894 = !DILocation(line: 0, scope: !458, inlinedAt: !895)
!895 = distinct !DILocation(line: 759, column: 33, scope: !815)
!896 = !DILocation(line: 0, scope: !480, inlinedAt: !897)
!897 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !895)
!898 = !DILocation(line: 174, column: 12, scope: !480, inlinedAt: !897)
!899 = !DILocation(line: 174, column: 9, scope: !480, inlinedAt: !897)
!900 = !DILocation(line: 0, scope: !483, inlinedAt: !897)
!901 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !897)
!902 = !DILocation(line: 0, scope: !504, inlinedAt: !903)
!903 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !897)
!904 = !DILocation(line: 0, scope: !497, inlinedAt: !905)
!905 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !903)
!906 = !DILocation(line: 0, scope: !489, inlinedAt: !907)
!907 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !905)
!908 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !907)
!909 = !DILocation(line: 0, scope: !513, inlinedAt: !910)
!910 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !897)
!911 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !910)
!912 = !DILocation(line: 0, scope: !521, inlinedAt: !910)
!913 = !DILocation(line: 0, scope: !523, inlinedAt: !910)
!914 = !DILocation(line: 0, scope: !188, inlinedAt: !915)
!915 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !910)
!916 = !DILocation(line: 0, scope: !175, inlinedAt: !917)
!917 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !915)
!918 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !917)
!919 = !DILocation(line: 0, scope: !815)
!920 = !DILocation(line: 0, scope: !819)
!921 = !DILocation(line: 759, column: 23, scope: !815)
!922 = !DILocation(line: 762, column: 21, scope: !819)
!923 = !DILocation(line: 763, column: 30, scope: !819)
!924 = !DILocation(line: 763, column: 21, scope: !819)
!925 = distinct !{!925, !218}
!926 = !DILocation(line: 765, column: 14, scope: !808)
!927 = distinct !{!927, !218}
!928 = distinct !DISubprogram(name: "zip_chunks_unknown_size_impl", linkageName: "_ZN14iterator_bench28zip_chunks_unknown_size_impl17h4c17cf41de28445aE", scope: !39, file: !38, line: 816, type: !303, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !929)
!929 = !{!930, !931, !932, !934, !936, !938, !940}
!930 = !DILocalVariable(name: "output", arg: 1, scope: !928, file: !38, line: 816, type: !199)
!931 = !DILocalVariable(name: "input", arg: 2, scope: !928, file: !38, line: 816, type: !152)
!932 = !DILocalVariable(name: "iter", scope: !933, file: !38, line: 817, type: !416, align: 8)
!933 = distinct !DILexicalBlock(scope: !928, file: !38, line: 817, column: 17)
!934 = !DILocalVariable(name: "__next", scope: !935, file: !38, line: 817, type: !446, align: 8)
!935 = distinct !DILexicalBlock(scope: !933, file: !38, line: 817, column: 32)
!936 = !DILocalVariable(name: "val", scope: !937, file: !38, line: 817, type: !446, align: 8)
!937 = distinct !DILexicalBlock(scope: !935, file: !38, line: 817, column: 21)
!938 = !DILocalVariable(name: "b", scope: !939, file: !38, line: 817, type: !151, align: 8)
!939 = distinct !DILexicalBlock(scope: !935, file: !38, line: 817, column: 32)
!940 = !DILocalVariable(name: "ac", scope: !939, file: !38, line: 817, type: !199, align: 8)
!941 = !DILocation(line: 0, scope: !928)
!942 = !DILocation(line: 0, scope: !725, inlinedAt: !943)
!943 = distinct !DILocation(line: 817, column: 32, scope: !928)
!944 = !DILocation(line: 0, scope: !740, inlinedAt: !945)
!945 = distinct !DILocation(line: 549, column: 9, scope: !725, inlinedAt: !943)
!946 = !DILocation(line: 0, scope: !746, inlinedAt: !947)
!947 = distinct !DILocation(line: 24, column: 9, scope: !740, inlinedAt: !945)
!948 = !DILocation(line: 0, scope: !829, inlinedAt: !949)
!949 = distinct !DILocation(line: 4935, column: 12, scope: !839, inlinedAt: !950)
!950 = distinct !DILocation(line: 100, column: 30, scope: !856, inlinedAt: !951)
!951 = distinct !DILocation(line: 168, column: 37, scope: !746, inlinedAt: !947)
!952 = !DILocation(line: 88, column: 9, scope: !829, inlinedAt: !949)
!953 = !DILocation(line: 4935, column: 9, scope: !839, inlinedAt: !950)
!954 = !DILocation(line: 0, scope: !850, inlinedAt: !950)
!955 = !DILocation(line: 4938, column: 21, scope: !839, inlinedAt: !950)
!956 = !DILocation(line: 4939, column: 23, scope: !850, inlinedAt: !950)
!957 = !DILocation(line: 0, scope: !852, inlinedAt: !950)
!958 = !DILocation(line: 4940, column: 21, scope: !852, inlinedAt: !950)
!959 = !DILocation(line: 0, scope: !839, inlinedAt: !950)
!960 = !DILocation(line: 0, scope: !754, inlinedAt: !961)
!961 = distinct !DILocation(line: 168, column: 19, scope: !746, inlinedAt: !947)
!962 = !DILocation(line: 0, scope: !760, inlinedAt: !963)
!963 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !961)
!964 = !DILocation(line: 0, scope: !766, inlinedAt: !965)
!965 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !963)
!966 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !965)
!967 = !DILocation(line: 0, scope: !933)
!968 = !DILocation(line: 0, scope: !458, inlinedAt: !969)
!969 = distinct !DILocation(line: 817, column: 32, scope: !935)
!970 = !DILocation(line: 0, scope: !480, inlinedAt: !971)
!971 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !969)
!972 = !DILocation(line: 174, column: 12, scope: !480, inlinedAt: !971)
!973 = !DILocation(line: 174, column: 9, scope: !480, inlinedAt: !971)
!974 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !971)
!975 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !976)
!976 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !977)
!977 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !978)
!978 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !971)
!979 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !980)
!980 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !971)
!981 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !982)
!982 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !983)
!983 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !980)
!984 = !DILocation(line: 818, column: 30, scope: !939)
!985 = !DILocation(line: 818, column: 21, scope: !939)
!986 = !DILocation(line: 819, column: 30, scope: !939)
!987 = !DILocation(line: 819, column: 21, scope: !939)
!988 = distinct !{!988, !218}
!989 = !DILocation(line: 821, column: 14, scope: !928)
!990 = !DILocation(line: 0, scope: !483, inlinedAt: !971)
!991 = !DILocation(line: 0, scope: !504, inlinedAt: !978)
!992 = !DILocation(line: 0, scope: !497, inlinedAt: !977)
!993 = !DILocation(line: 0, scope: !489, inlinedAt: !976)
!994 = !DILocation(line: 0, scope: !513, inlinedAt: !980)
!995 = !DILocation(line: 0, scope: !521, inlinedAt: !980)
!996 = !DILocation(line: 0, scope: !523, inlinedAt: !980)
!997 = !DILocation(line: 0, scope: !188, inlinedAt: !983)
!998 = !DILocation(line: 0, scope: !175, inlinedAt: !982)
!999 = !DILocation(line: 0, scope: !935)
!1000 = !DILocation(line: 0, scope: !939)
!1001 = distinct !{!1001, !218}
!1002 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_impl", linkageName: "_ZN14iterator_bench33zip_chunks_unknown_size_take_impl17hb9c664531f52ee33E", scope: !39, file: !38, line: 874, type: !303, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1003)
!1003 = !{!1004, !1005, !1006, !1008, !1010, !1012, !1014}
!1004 = !DILocalVariable(name: "output", arg: 1, scope: !1002, file: !38, line: 874, type: !199)
!1005 = !DILocalVariable(name: "input", arg: 2, scope: !1002, file: !38, line: 874, type: !152)
!1006 = !DILocalVariable(name: "iter", scope: !1007, file: !38, line: 875, type: !542, align: 8)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !38, line: 875, column: 17)
!1008 = !DILocalVariable(name: "__next", scope: !1009, file: !38, line: 875, type: !446, align: 8)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !38, line: 875, column: 32)
!1010 = !DILocalVariable(name: "val", scope: !1011, file: !38, line: 875, type: !446, align: 8)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !38, line: 875, column: 21)
!1012 = !DILocalVariable(name: "b", scope: !1013, file: !38, line: 875, type: !151, align: 8)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !38, line: 875, column: 32)
!1014 = !DILocalVariable(name: "ac", scope: !1013, file: !38, line: 875, type: !199, align: 8)
!1015 = !DILocation(line: 0, scope: !1002)
!1016 = !DILocation(line: 0, scope: !725, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 875, column: 32, scope: !1002)
!1018 = !DILocation(line: 0, scope: !740, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 549, column: 9, scope: !725, inlinedAt: !1017)
!1020 = !DILocation(line: 0, scope: !746, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 24, column: 9, scope: !740, inlinedAt: !1019)
!1022 = !DILocation(line: 0, scope: !829, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 4935, column: 12, scope: !839, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 100, column: 30, scope: !856, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 168, column: 37, scope: !746, inlinedAt: !1021)
!1026 = !DILocation(line: 88, column: 9, scope: !829, inlinedAt: !1023)
!1027 = !DILocation(line: 4935, column: 9, scope: !839, inlinedAt: !1024)
!1028 = !DILocation(line: 0, scope: !850, inlinedAt: !1024)
!1029 = !DILocation(line: 4938, column: 21, scope: !839, inlinedAt: !1024)
!1030 = !DILocation(line: 4939, column: 23, scope: !850, inlinedAt: !1024)
!1031 = !DILocation(line: 0, scope: !852, inlinedAt: !1024)
!1032 = !DILocation(line: 4940, column: 21, scope: !852, inlinedAt: !1024)
!1033 = !DILocation(line: 0, scope: !839, inlinedAt: !1024)
!1034 = !DILocation(line: 0, scope: !754, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 168, column: 19, scope: !746, inlinedAt: !1021)
!1036 = !DILocation(line: 0, scope: !760, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1035)
!1038 = !DILocation(line: 0, scope: !766, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1037)
!1040 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1039)
!1041 = !DILocation(line: 0, scope: !1007)
!1042 = !DILocation(line: 0, scope: !558, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 875, column: 32, scope: !1009)
!1044 = !DILocation(line: 174, column: 12, scope: !480, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 2198, column: 13, scope: !558, inlinedAt: !1043)
!1047 = !DILocation(line: 0, scope: !458, inlinedAt: !1046)
!1048 = !DILocation(line: 0, scope: !480, inlinedAt: !1045)
!1049 = !DILocation(line: 2196, column: 9, scope: !558, inlinedAt: !1043)
!1050 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !1045)
!1051 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !1045)
!1055 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !1045)
!1057 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !1056)
!1060 = !DILocation(line: 876, column: 30, scope: !1013)
!1061 = !DILocation(line: 876, column: 21, scope: !1013)
!1062 = !DILocation(line: 877, column: 30, scope: !1013)
!1063 = !DILocation(line: 877, column: 21, scope: !1013)
!1064 = distinct !{!1064, !218}
!1065 = !DILocation(line: 879, column: 14, scope: !1002)
!1066 = !DILocation(line: 2197, column: 13, scope: !558, inlinedAt: !1043)
!1067 = !DILocation(line: 0, scope: !483, inlinedAt: !1045)
!1068 = !DILocation(line: 0, scope: !504, inlinedAt: !1054)
!1069 = !DILocation(line: 0, scope: !497, inlinedAt: !1053)
!1070 = !DILocation(line: 0, scope: !489, inlinedAt: !1052)
!1071 = !DILocation(line: 0, scope: !513, inlinedAt: !1056)
!1072 = !DILocation(line: 0, scope: !521, inlinedAt: !1056)
!1073 = !DILocation(line: 0, scope: !523, inlinedAt: !1056)
!1074 = !DILocation(line: 0, scope: !188, inlinedAt: !1059)
!1075 = !DILocation(line: 0, scope: !175, inlinedAt: !1058)
!1076 = !DILocation(line: 0, scope: !1009)
!1077 = !DILocation(line: 0, scope: !1013)
!1078 = !DILocation(line: 2196, column: 12, scope: !558, inlinedAt: !1043)
!1079 = distinct !{!1079, !1080, !218}
!1080 = !{!"llvm.loop.unroll.runtime.disable"}
!1081 = distinct !DISubprogram(name: "zip_chunks_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench38zip_chunks_unknown_size_take_iter_impl17he60b9c1c78a81209E", scope: !39, file: !38, line: 935, type: !303, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1082)
!1082 = !{!1083, !1084, !1085, !1087, !1089, !1091, !1093, !1094, !1096, !1098, !1100, !1102}
!1083 = !DILocalVariable(name: "output", arg: 1, scope: !1081, file: !38, line: 935, type: !199)
!1084 = !DILocalVariable(name: "input", arg: 2, scope: !1081, file: !38, line: 935, type: !152)
!1085 = !DILocalVariable(name: "iter", scope: !1086, file: !38, line: 936, type: !542, align: 8)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !38, line: 936, column: 17)
!1087 = !DILocalVariable(name: "__next", scope: !1088, file: !38, line: 936, type: !446, align: 8)
!1088 = distinct !DILexicalBlock(scope: !1086, file: !38, line: 936, column: 33)
!1089 = !DILocalVariable(name: "val", scope: !1090, file: !38, line: 936, type: !446, align: 8)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !38, line: 936, column: 21)
!1091 = !DILocalVariable(name: "b", scope: !1092, file: !38, line: 936, type: !48, align: 2)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !38, line: 936, column: 33)
!1093 = !DILocalVariable(name: "ac", scope: !1092, file: !38, line: 936, type: !199, align: 8)
!1094 = !DILocalVariable(name: "val", scope: !1095, file: !38, line: 937, type: !48, align: 2)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !38, line: 937, column: 21)
!1096 = !DILocalVariable(name: "iter", scope: !1097, file: !38, line: 938, type: !605, align: 8)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !38, line: 938, column: 21)
!1098 = !DILocalVariable(name: "__next", scope: !1099, file: !38, line: 938, type: !198, align: 8)
!1099 = distinct !DILexicalBlock(scope: !1097, file: !38, line: 938, column: 33)
!1100 = !DILocalVariable(name: "val", scope: !1101, file: !38, line: 938, type: !198, align: 8)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !38, line: 938, column: 25)
!1102 = !DILocalVariable(name: "byte", scope: !1103, file: !38, line: 938, type: !198, align: 8)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !38, line: 938, column: 33)
!1104 = !DILocation(line: 0, scope: !1081)
!1105 = !DILocation(line: 0, scope: !725, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 936, column: 33, scope: !1081)
!1107 = !DILocation(line: 0, scope: !740, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 549, column: 9, scope: !725, inlinedAt: !1106)
!1109 = !DILocation(line: 0, scope: !746, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 24, column: 9, scope: !740, inlinedAt: !1108)
!1111 = !DILocation(line: 0, scope: !829, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 4935, column: 12, scope: !839, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 100, column: 30, scope: !856, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 168, column: 37, scope: !746, inlinedAt: !1110)
!1115 = !DILocation(line: 88, column: 9, scope: !829, inlinedAt: !1112)
!1116 = !DILocation(line: 4935, column: 9, scope: !839, inlinedAt: !1113)
!1117 = !DILocation(line: 0, scope: !850, inlinedAt: !1113)
!1118 = !DILocation(line: 4938, column: 21, scope: !839, inlinedAt: !1113)
!1119 = !DILocation(line: 4939, column: 23, scope: !850, inlinedAt: !1113)
!1120 = !DILocation(line: 0, scope: !852, inlinedAt: !1113)
!1121 = !DILocation(line: 4940, column: 21, scope: !852, inlinedAt: !1113)
!1122 = !DILocation(line: 0, scope: !839, inlinedAt: !1113)
!1123 = !DILocation(line: 0, scope: !754, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 168, column: 19, scope: !746, inlinedAt: !1110)
!1125 = !DILocation(line: 0, scope: !760, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1124)
!1127 = !DILocation(line: 0, scope: !766, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1126)
!1129 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1128)
!1130 = !DILocation(line: 0, scope: !1086)
!1131 = !DILocation(line: 0, scope: !558, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 936, column: 33, scope: !1088)
!1133 = !DILocation(line: 2196, column: 9, scope: !558, inlinedAt: !1132)
!1134 = !DILocation(line: 2196, column: 12, scope: !558, inlinedAt: !1132)
!1135 = !DILocation(line: 2197, column: 13, scope: !558, inlinedAt: !1132)
!1136 = !DILocation(line: 0, scope: !458, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 2198, column: 13, scope: !558, inlinedAt: !1132)
!1138 = !DILocation(line: 0, scope: !480, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 47, column: 9, scope: !458, inlinedAt: !1137)
!1140 = !DILocation(line: 174, column: 12, scope: !480, inlinedAt: !1139)
!1141 = !DILocation(line: 174, column: 9, scope: !480, inlinedAt: !1139)
!1142 = !DILocation(line: 943, column: 14, scope: !1081)
!1143 = !DILocation(line: 0, scope: !483, inlinedAt: !1139)
!1144 = !DILocation(line: 176, column: 13, scope: !483, inlinedAt: !1139)
!1145 = !DILocation(line: 0, scope: !504, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 178, column: 28, scope: !483, inlinedAt: !1139)
!1147 = !DILocation(line: 0, scope: !497, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1146)
!1149 = !DILocation(line: 0, scope: !489, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1148)
!1151 = !DILocation(line: 0, scope: !513, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 178, column: 53, scope: !483, inlinedAt: !1139)
!1153 = !DILocation(line: 5029, column: 21, scope: !513, inlinedAt: !1152)
!1154 = !DILocation(line: 0, scope: !521, inlinedAt: !1152)
!1155 = !DILocation(line: 5031, column: 13, scope: !521, inlinedAt: !1152)
!1156 = !DILocation(line: 0, scope: !523, inlinedAt: !1152)
!1157 = !DILocation(line: 0, scope: !188, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 5035, column: 37, scope: !523, inlinedAt: !1152)
!1159 = !DILocation(line: 0, scope: !175, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1158)
!1161 = !DILocation(line: 0, scope: !1088)
!1162 = !DILocation(line: 0, scope: !1092)
!1163 = !DILocation(line: 0, scope: !1095)
!1164 = !DILocation(line: 0, scope: !653, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 938, column: 33, scope: !1095)
!1166 = !DILocation(line: 0, scope: !658, inlinedAt: !1165)
!1167 = !DILocation(line: 0, scope: !188, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 643, column: 17, scope: !658, inlinedAt: !1165)
!1169 = !DILocation(line: 0, scope: !175, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1168)
!1171 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1170)
!1172 = !DILocation(line: 0, scope: !1097)
!1173 = !DILocation(line: 0, scope: !670, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 938, column: 33, scope: !1099)
!1175 = !DILocation(line: 3320, column: 9, scope: !670, inlinedAt: !1174)
!1176 = !DILocation(line: 3450, column: 21, scope: !670, inlinedAt: !1174)
!1177 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1150)
!1178 = !DILocation(line: 936, column: 23, scope: !1088)
!1179 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1160)
!1180 = !DILocation(line: 0, scope: !691, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 3365, column: 47, scope: !670, inlinedAt: !1174)
!1182 = !DILocation(line: 0, scope: !697, inlinedAt: !1181)
!1183 = !DILocation(line: 0, scope: !175, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 3402, column: 64, scope: !697, inlinedAt: !1181)
!1185 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1184)
!1186 = !DILocation(line: 0, scope: !1099)
!1187 = !DILocation(line: 0, scope: !1103)
!1188 = !DILocation(line: 939, column: 25, scope: !1103)
!1189 = !DILocation(line: 940, column: 25, scope: !1103)
!1190 = distinct !{!1190, !1191}
!1191 = !{!"llvm.loop.unroll.disable"}
!1192 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_impl", linkageName: "_ZN14iterator_bench34zip_chunks_exact_unknown_size_impl17h5ce289f572621fc4E", scope: !39, file: !38, line: 994, type: !303, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196, !1211, !1213, !1215, !1217}
!1194 = !DILocalVariable(name: "output", arg: 1, scope: !1192, file: !38, line: 994, type: !199)
!1195 = !DILocalVariable(name: "input", arg: 2, scope: !1192, file: !38, line: 994, type: !152)
!1196 = !DILocalVariable(name: "iter", scope: !1197, file: !38, line: 995, type: !1198, align: 8)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !38, line: 995, column: 17)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", scope: !417, file: !7, size: 576, align: 64, elements: !1199, templateParams: !1209, identifier: "b49781362a9b7bcd7a19af271fbaff88")
!1199 = !{!1200, !1201, !1207, !1208}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1198, file: !7, baseType: !421, size: 128, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1198, file: !7, baseType: !1202, size: 320, align: 64, offset: 128)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "ChunksExactMut<u8>", scope: !148, file: !7, size: 320, align: 64, elements: !1203, templateParams: !185, identifier: "aae376f1ffe56526116a66e37fd5e85e")
!1203 = !{!1204, !1205, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1202, file: !7, baseType: !199, size: 128, align: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1202, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1202, file: !7, baseType: !36, size: 64, align: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1198, file: !7, baseType: !36, size: 64, align: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1198, file: !7, baseType: !36, size: 64, align: 64, offset: 512)
!1209 = !{!442, !1210}
!1210 = !DITemplateTypeParameter(name: "B", type: !1202)
!1211 = !DILocalVariable(name: "__next", scope: !1212, file: !38, line: 995, type: !446, align: 8)
!1212 = distinct !DILexicalBlock(scope: !1197, file: !38, line: 995, column: 32)
!1213 = !DILocalVariable(name: "val", scope: !1214, file: !38, line: 995, type: !446, align: 8)
!1214 = distinct !DILexicalBlock(scope: !1212, file: !38, line: 995, column: 21)
!1215 = !DILocalVariable(name: "b", scope: !1216, file: !38, line: 995, type: !151, align: 8)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !38, line: 995, column: 32)
!1217 = !DILocalVariable(name: "ac", scope: !1216, file: !38, line: 995, type: !199, align: 8)
!1218 = !DILocation(line: 0, scope: !1192)
!1219 = !DILocation(line: 0, scope: !188, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 1070, column: 63, scope: !1221, inlinedAt: !1235)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !146, line: 1065, column: 9)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !146, line: 1064, column: 9)
!1223 = distinct !DISubprogram(name: "split_at_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc16232f309fedb03E", scope: !147, file: !146, line: 1063, type: !1224, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1230)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1226, !199, !36}
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut [u8], &mut [u8])", file: !7, size: 256, align: 64, elements: !1227, templateParams: !34, identifier: "a99a11d1f26f4419acc009a3d2a3a192")
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1226, file: !7, baseType: !199, size: 128, align: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1226, file: !7, baseType: !199, size: 128, align: 64, offset: 128)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DILocalVariable(name: "self", arg: 1, scope: !1223, file: !146, line: 1063, type: !199)
!1232 = !DILocalVariable(name: "mid", arg: 2, scope: !1223, file: !146, line: 1063, type: !36)
!1233 = !DILocalVariable(name: "len", scope: !1222, file: !146, line: 1064, type: !36, align: 8)
!1234 = !DILocalVariable(name: "ptr", scope: !1221, file: !146, line: 1065, type: !181, align: 8)
!1235 = distinct !DILocation(line: 836, column: 26, scope: !1236, inlinedAt: !1249)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !146, line: 835, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !146, line: 834, column: 9)
!1238 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16chunks_exact_mut17hc3136e24e5f5b5e8E", scope: !147, file: !146, line: 832, type: !1239, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1202, !199, !36}
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1248}
!1242 = !DILocalVariable(name: "self", arg: 1, scope: !1238, file: !146, line: 832, type: !199)
!1243 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !1238, file: !146, line: 832, type: !36)
!1244 = !DILocalVariable(name: "rem", scope: !1237, file: !146, line: 834, type: !36, align: 8)
!1245 = !DILocalVariable(name: "len", scope: !1236, file: !146, line: 835, type: !36, align: 8)
!1246 = !DILocalVariable(name: "fst", scope: !1247, file: !146, line: 836, type: !199, align: 8)
!1247 = distinct !DILexicalBlock(scope: !1236, file: !146, line: 836, column: 9)
!1248 = !DILocalVariable(name: "snd", scope: !1247, file: !146, line: 836, type: !199, align: 8)
!1249 = distinct !DILocation(line: 995, column: 49, scope: !1192)
!1250 = !DILocation(line: 0, scope: !175, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1220)
!1252 = !DILocalVariable(name: "other", arg: 2, scope: !1253, file: !726, line: 544, type: !1202)
!1253 = distinct !DISubprogram(name: "zip<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits8iterator8Iterator3zip17hbd84c1e91fef80f8E", scope: !727, file: !726, line: 544, type: !1254, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1258, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1198, !421, !1202}
!1256 = !{!1257, !1252}
!1257 = !DILocalVariable(name: "self", arg: 1, scope: !1253, file: !726, line: 544, type: !421)
!1258 = !{!735, !1259}
!1259 = !DITemplateTypeParameter(name: "U", type: !1202)
!1260 = !DILocation(line: 0, scope: !1253, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 995, column: 32, scope: !1192)
!1262 = !DILocalVariable(name: "b", arg: 2, scope: !1263, file: !459, line: 23, type: !1202)
!1263 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17h12977c675d42b4a6E", scope: !1198, file: !459, line: 23, type: !1254, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1209, retainedNodes: !1264)
!1264 = !{!1265, !1262}
!1265 = !DILocalVariable(name: "a", arg: 1, scope: !1263, file: !459, line: 23, type: !421)
!1266 = !DILocation(line: 0, scope: !1263, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 549, column: 9, scope: !1253, inlinedAt: !1261)
!1268 = !DILocalVariable(name: "b", arg: 2, scope: !1269, file: !459, line: 167, type: !1202)
!1269 = distinct !DISubprogram(name: "new<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h8f9ea6a848983c35E", scope: !460, file: !459, line: 167, type: !1254, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1209, retainedNodes: !1270)
!1270 = !{!1271, !1268, !1272}
!1271 = !DILocalVariable(name: "a", arg: 1, scope: !1269, file: !459, line: 167, type: !421)
!1272 = !DILocalVariable(name: "len", scope: !1273, file: !459, line: 168, type: !36, align: 8)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !459, line: 168, column: 9)
!1274 = !DILocation(line: 0, scope: !1269, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 24, column: 9, scope: !1263, inlinedAt: !1267)
!1276 = !DILocation(line: 5228, column: 17, scope: !1277, inlinedAt: !1285)
!1277 = distinct !DISubprogram(name: "size_hint<u8>", linkageName: "_ZN95_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1cceedd3329a7aa7E", scope: !147, file: !146, line: 5227, type: !1278, scopeLine: 5227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1281)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!842, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::ChunksExactMut<u8>", baseType: !1202, size: 64, align: 64, dwarfAddressSpace: 0)
!1281 = !{!1282, !1283}
!1282 = !DILocalVariable(name: "self", arg: 1, scope: !1277, file: !146, line: 5227, type: !1280)
!1283 = !DILocalVariable(name: "n", scope: !1284, file: !146, line: 5228, type: !36, align: 8)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !146, line: 5228, column: 9)
!1285 = distinct !DILocation(line: 100, column: 30, scope: !1286, inlinedAt: !1302)
!1286 = distinct !DISubprogram(name: "len<core::slice::ChunksExactMut<u8>>", linkageName: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1078ae3eb8b6c1feE", scope: !858, file: !857, line: 99, type: !1287, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1300, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!36, !1280}
!1289 = !{!1290, !1291, !1293, !1294, !1296, !1297, !1299}
!1290 = !DILocalVariable(name: "self", arg: 1, scope: !1286, file: !857, line: 99, type: !1280)
!1291 = !DILocalVariable(name: "lower", scope: !1292, file: !857, line: 100, type: !36, align: 8)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !857, line: 100, column: 9)
!1293 = !DILocalVariable(name: "upper", scope: !1292, file: !857, line: 100, type: !82, align: 8)
!1294 = !DILocalVariable(name: "left_val", scope: !1295, file: !869, line: 45, type: !870, align: 8)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !869, line: 45, column: 13)
!1296 = !DILocalVariable(name: "right_val", scope: !1295, file: !869, line: 45, type: !870, align: 8)
!1297 = !DILocalVariable(name: "arg0", scope: !1298, file: !869, line: 52, type: !874, align: 8)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !869, line: 16, column: 38)
!1299 = !DILocalVariable(name: "arg1", scope: !1298, file: !869, line: 52, type: !874, align: 8)
!1300 = !{!1301}
!1301 = !DITemplateTypeParameter(name: "Self", type: !1202)
!1302 = distinct !DILocation(line: 168, column: 37, scope: !1269, inlinedAt: !1275)
!1303 = !DILocation(line: 0, scope: !754, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 168, column: 19, scope: !1269, inlinedAt: !1275)
!1305 = !DILocation(line: 0, scope: !760, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1304)
!1307 = !DILocation(line: 0, scope: !766, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1306)
!1309 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1308)
!1310 = !DILocation(line: 0, scope: !1197)
!1311 = !DILocalVariable(name: "self", arg: 1, scope: !1312, file: !459, line: 46, type: !1315)
!1312 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ef5217425d92cE", scope: !460, file: !459, line: 46, type: !1313, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1209, retainedNodes: !1316)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!463, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>", baseType: !1198, size: 64, align: 64, dwarfAddressSpace: 0)
!1316 = !{!1311}
!1317 = !DILocation(line: 0, scope: !1312, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 995, column: 32, scope: !1212)
!1319 = !DILocalVariable(name: "self", arg: 1, scope: !1320, file: !459, line: 173, type: !1315)
!1320 = distinct !DISubprogram(name: "next<core::slice::Iter<u16>,core::slice::ChunksExactMut<u8>>", linkageName: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hbe3e5f48c327d6bcE", scope: !460, file: !459, line: 173, type: !1313, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1209, retainedNodes: !1321)
!1321 = !{!1319, !1322}
!1322 = !DILocalVariable(name: "i", scope: !1323, file: !459, line: 175, type: !36, align: 8)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !459, line: 175, column: 13)
!1324 = !DILocation(line: 0, scope: !1320, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 47, column: 9, scope: !1312, inlinedAt: !1318)
!1326 = !DILocation(line: 174, column: 12, scope: !1320, inlinedAt: !1325)
!1327 = !DILocation(line: 174, column: 9, scope: !1320, inlinedAt: !1325)
!1328 = !DILocation(line: 176, column: 13, scope: !1323, inlinedAt: !1325)
!1329 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 178, column: 28, scope: !1323, inlinedAt: !1325)
!1333 = !DILocation(line: 5306, column: 21, scope: !1334, inlinedAt: !1343)
!1334 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN103_$LT$core..slice..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..adapters..zip..TrustedRandomAccess$GT$13get_unchecked17hcbe229f7d98987a1E", scope: !147, file: !146, line: 5305, type: !1335, scopeLine: 5305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !185, retainedNodes: !1338)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!199, !1337, !36}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::ChunksExactMut<u8>", baseType: !1202, size: 64, align: 64, dwarfAddressSpace: 0)
!1338 = !{!1339, !1340, !1341}
!1339 = !DILocalVariable(name: "self", arg: 1, scope: !1334, file: !146, line: 5305, type: !1337)
!1340 = !DILocalVariable(name: "i", arg: 2, scope: !1334, file: !146, line: 5305, type: !36)
!1341 = !DILocalVariable(name: "start", scope: !1342, file: !146, line: 5306, type: !36, align: 8)
!1342 = distinct !DILexicalBlock(scope: !1334, file: !146, line: 5306, column: 9)
!1343 = distinct !DILocation(line: 178, column: 53, scope: !1323, inlinedAt: !1325)
!1344 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 5308, column: 37, scope: !1342, inlinedAt: !1343)
!1347 = !DILocation(line: 996, column: 30, scope: !1216)
!1348 = !DILocation(line: 996, column: 21, scope: !1216)
!1349 = !DILocation(line: 997, column: 30, scope: !1216)
!1350 = !DILocation(line: 997, column: 21, scope: !1216)
!1351 = distinct !{!1351, !218}
!1352 = !DILocation(line: 999, column: 14, scope: !1192)
!1353 = !DILocation(line: 0, scope: !1323, inlinedAt: !1325)
!1354 = !DILocation(line: 0, scope: !504, inlinedAt: !1332)
!1355 = !DILocation(line: 0, scope: !497, inlinedAt: !1331)
!1356 = !DILocation(line: 0, scope: !489, inlinedAt: !1330)
!1357 = !DILocation(line: 0, scope: !1334, inlinedAt: !1343)
!1358 = !DILocation(line: 0, scope: !1342, inlinedAt: !1343)
!1359 = !DILocation(line: 0, scope: !188, inlinedAt: !1346)
!1360 = !DILocation(line: 0, scope: !175, inlinedAt: !1345)
!1361 = !DILocation(line: 0, scope: !1212)
!1362 = !DILocation(line: 0, scope: !1216)
!1363 = distinct !{!1363, !218}
!1364 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_slice_impl", linkageName: "_ZN14iterator_bench40zip_chunks_exact_unknown_size_slice_impl17h406c09c4fbc83d32E", scope: !39, file: !38, line: 1056, type: !303, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1365)
!1365 = !{!1366, !1367, !1368, !1370, !1372, !1374, !1376}
!1366 = !DILocalVariable(name: "output", arg: 1, scope: !1364, file: !38, line: 1056, type: !199)
!1367 = !DILocalVariable(name: "input", arg: 2, scope: !1364, file: !38, line: 1056, type: !152)
!1368 = !DILocalVariable(name: "iter", scope: !1369, file: !38, line: 1058, type: !1198, align: 8)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !38, line: 1058, column: 17)
!1370 = !DILocalVariable(name: "__next", scope: !1371, file: !38, line: 1058, type: !446, align: 8)
!1371 = distinct !DILexicalBlock(scope: !1369, file: !38, line: 1058, column: 32)
!1372 = !DILocalVariable(name: "val", scope: !1373, file: !38, line: 1058, type: !446, align: 8)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !38, line: 1058, column: 21)
!1374 = !DILocalVariable(name: "b", scope: !1375, file: !38, line: 1058, type: !151, align: 8)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !38, line: 1058, column: 32)
!1376 = !DILocalVariable(name: "ac", scope: !1375, file: !38, line: 1058, type: !199, align: 8)
!1377 = !DILocation(line: 0, scope: !1364)
!1378 = !DILocation(line: 0, scope: !754, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 1058, column: 40, scope: !1364)
!1380 = !DILocation(line: 0, scope: !760, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1379)
!1382 = !DILocation(line: 0, scope: !766, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1381)
!1384 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1383)
!1385 = !DILocation(line: 0, scope: !188, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 1070, column: 63, scope: !1221, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 836, column: 26, scope: !1236, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 1060, column: 26, scope: !1364)
!1389 = !DILocation(line: 0, scope: !175, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1386)
!1391 = !DILocation(line: 0, scope: !1253, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 1058, column: 32, scope: !1364)
!1393 = !DILocation(line: 0, scope: !1263, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 549, column: 9, scope: !1253, inlinedAt: !1392)
!1395 = !DILocation(line: 0, scope: !1269, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 24, column: 9, scope: !1263, inlinedAt: !1394)
!1397 = !DILocation(line: 5228, column: 17, scope: !1277, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 100, column: 30, scope: !1286, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 168, column: 37, scope: !1269, inlinedAt: !1396)
!1400 = !DILocation(line: 0, scope: !754, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 168, column: 19, scope: !1269, inlinedAt: !1396)
!1402 = !DILocation(line: 0, scope: !760, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1401)
!1404 = !DILocation(line: 0, scope: !766, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1403)
!1406 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1405)
!1407 = !DILocation(line: 0, scope: !1369)
!1408 = !DILocation(line: 0, scope: !1312, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 1058, column: 32, scope: !1371)
!1410 = !DILocation(line: 0, scope: !1320, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 47, column: 9, scope: !1312, inlinedAt: !1409)
!1412 = !DILocation(line: 174, column: 12, scope: !1320, inlinedAt: !1411)
!1413 = !DILocation(line: 174, column: 9, scope: !1320, inlinedAt: !1411)
!1414 = !DILocation(line: 176, column: 13, scope: !1323, inlinedAt: !1411)
!1415 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 178, column: 28, scope: !1323, inlinedAt: !1411)
!1419 = !DILocation(line: 5306, column: 21, scope: !1334, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 178, column: 53, scope: !1323, inlinedAt: !1411)
!1421 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 5308, column: 37, scope: !1342, inlinedAt: !1420)
!1424 = !DILocation(line: 1061, column: 30, scope: !1375)
!1425 = !DILocation(line: 1061, column: 21, scope: !1375)
!1426 = !DILocation(line: 1062, column: 30, scope: !1375)
!1427 = !DILocation(line: 1062, column: 21, scope: !1375)
!1428 = distinct !{!1428, !218}
!1429 = !DILocation(line: 1064, column: 14, scope: !1364)
!1430 = !DILocation(line: 0, scope: !1323, inlinedAt: !1411)
!1431 = !DILocation(line: 0, scope: !504, inlinedAt: !1418)
!1432 = !DILocation(line: 0, scope: !497, inlinedAt: !1417)
!1433 = !DILocation(line: 0, scope: !489, inlinedAt: !1416)
!1434 = !DILocation(line: 0, scope: !1334, inlinedAt: !1420)
!1435 = !DILocation(line: 0, scope: !1342, inlinedAt: !1420)
!1436 = !DILocation(line: 0, scope: !188, inlinedAt: !1423)
!1437 = !DILocation(line: 0, scope: !175, inlinedAt: !1422)
!1438 = !DILocation(line: 0, scope: !1371)
!1439 = !DILocation(line: 0, scope: !1375)
!1440 = distinct !{!1440, !218}
!1441 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_impl", linkageName: "_ZN14iterator_bench39zip_chunks_exact_unknown_size_take_impl17he23221a79d536bf8E", scope: !39, file: !38, line: 1117, type: !303, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1442)
!1442 = !{!1443, !1444, !1445, !1453, !1455, !1457, !1459}
!1443 = !DILocalVariable(name: "output", arg: 1, scope: !1441, file: !38, line: 1117, type: !199)
!1444 = !DILocalVariable(name: "input", arg: 2, scope: !1441, file: !38, line: 1117, type: !152)
!1445 = !DILocalVariable(name: "iter", scope: !1446, file: !38, line: 1118, type: !1447, align: 8)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !38, line: 1118, column: 17)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", scope: !418, file: !7, size: 640, align: 64, elements: !1448, templateParams: !1451, identifier: "3135be1e7859e6e1a7b2c24ecea1b626")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1447, file: !7, baseType: !1198, size: 576, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1447, file: !7, baseType: !36, size: 64, align: 64, offset: 576)
!1451 = !{!1452}
!1452 = !DITemplateTypeParameter(name: "I", type: !1198)
!1453 = !DILocalVariable(name: "__next", scope: !1454, file: !38, line: 1118, type: !446, align: 8)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !38, line: 1118, column: 32)
!1455 = !DILocalVariable(name: "val", scope: !1456, file: !38, line: 1118, type: !446, align: 8)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !38, line: 1118, column: 21)
!1457 = !DILocalVariable(name: "b", scope: !1458, file: !38, line: 1118, type: !151, align: 8)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !38, line: 1118, column: 32)
!1459 = !DILocalVariable(name: "ac", scope: !1458, file: !38, line: 1118, type: !199, align: 8)
!1460 = !DILocation(line: 0, scope: !1441)
!1461 = !DILocation(line: 0, scope: !188, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 1070, column: 63, scope: !1221, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 836, column: 26, scope: !1236, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 1118, column: 49, scope: !1441)
!1465 = !DILocation(line: 0, scope: !175, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1462)
!1467 = !DILocation(line: 0, scope: !1253, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 1118, column: 32, scope: !1441)
!1469 = !DILocation(line: 0, scope: !1263, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 549, column: 9, scope: !1253, inlinedAt: !1468)
!1471 = !DILocation(line: 0, scope: !1269, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 24, column: 9, scope: !1263, inlinedAt: !1470)
!1473 = !DILocation(line: 5228, column: 17, scope: !1277, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 100, column: 30, scope: !1286, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 168, column: 37, scope: !1269, inlinedAt: !1472)
!1476 = !DILocation(line: 0, scope: !754, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 168, column: 19, scope: !1269, inlinedAt: !1472)
!1478 = !DILocation(line: 0, scope: !760, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1477)
!1480 = !DILocation(line: 0, scope: !766, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1479)
!1482 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1481)
!1483 = !DILocation(line: 0, scope: !1446)
!1484 = !DILocalVariable(name: "self", arg: 1, scope: !1485, file: !559, line: 2195, type: !1488)
!1485 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", linkageName: "_ZN94_$LT$core..iter..adapters..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0ce659fe480d57aE", scope: !560, file: !559, line: 2195, type: !1486, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !1451, retainedNodes: !1489)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!463, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::Take<core::iter::adapters::zip::Zip<core::slice::Iter<u16>, core::slice::ChunksExactMut<u8>>>", baseType: !1447, size: 64, align: 64, dwarfAddressSpace: 0)
!1489 = !{!1484}
!1490 = !DILocation(line: 0, scope: !1485, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 1118, column: 32, scope: !1454)
!1492 = !DILocation(line: 174, column: 12, scope: !1320, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 47, column: 9, scope: !1312, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 2198, column: 13, scope: !1485, inlinedAt: !1491)
!1495 = !DILocation(line: 0, scope: !1312, inlinedAt: !1494)
!1496 = !DILocation(line: 0, scope: !1320, inlinedAt: !1493)
!1497 = !DILocation(line: 2196, column: 9, scope: !1485, inlinedAt: !1491)
!1498 = !DILocation(line: 176, column: 13, scope: !1323, inlinedAt: !1493)
!1499 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 178, column: 28, scope: !1323, inlinedAt: !1493)
!1503 = !DILocation(line: 5306, column: 21, scope: !1334, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 178, column: 53, scope: !1323, inlinedAt: !1493)
!1505 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 5308, column: 37, scope: !1342, inlinedAt: !1504)
!1508 = !DILocation(line: 1119, column: 30, scope: !1458)
!1509 = !DILocation(line: 1119, column: 21, scope: !1458)
!1510 = !DILocation(line: 1120, column: 30, scope: !1458)
!1511 = !DILocation(line: 1120, column: 21, scope: !1458)
!1512 = distinct !{!1512, !218}
!1513 = !DILocation(line: 1122, column: 14, scope: !1441)
!1514 = !DILocation(line: 2197, column: 13, scope: !1485, inlinedAt: !1491)
!1515 = !DILocation(line: 0, scope: !1323, inlinedAt: !1493)
!1516 = !DILocation(line: 0, scope: !504, inlinedAt: !1502)
!1517 = !DILocation(line: 0, scope: !497, inlinedAt: !1501)
!1518 = !DILocation(line: 0, scope: !489, inlinedAt: !1500)
!1519 = !DILocation(line: 0, scope: !1334, inlinedAt: !1504)
!1520 = !DILocation(line: 0, scope: !1342, inlinedAt: !1504)
!1521 = !DILocation(line: 0, scope: !188, inlinedAt: !1507)
!1522 = !DILocation(line: 0, scope: !175, inlinedAt: !1506)
!1523 = !DILocation(line: 0, scope: !1454)
!1524 = !DILocation(line: 0, scope: !1458)
!1525 = !DILocation(line: 2196, column: 12, scope: !1485, inlinedAt: !1491)
!1526 = distinct !{!1526, !1080, !218}
!1527 = distinct !DISubprogram(name: "zip_chunks_exact_unknown_size_take_iter_impl", linkageName: "_ZN14iterator_bench44zip_chunks_exact_unknown_size_take_iter_impl17h8fd9ed478ec60c1fE", scope: !39, file: !38, line: 1178, type: !303, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !34, retainedNodes: !1528)
!1528 = !{!1529, !1530, !1531, !1533, !1535, !1537, !1539, !1540, !1542, !1544, !1546, !1548}
!1529 = !DILocalVariable(name: "output", arg: 1, scope: !1527, file: !38, line: 1178, type: !199)
!1530 = !DILocalVariable(name: "input", arg: 2, scope: !1527, file: !38, line: 1178, type: !152)
!1531 = !DILocalVariable(name: "iter", scope: !1532, file: !38, line: 1179, type: !1447, align: 8)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !38, line: 1179, column: 17)
!1533 = !DILocalVariable(name: "__next", scope: !1534, file: !38, line: 1179, type: !446, align: 8)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !38, line: 1179, column: 33)
!1535 = !DILocalVariable(name: "val", scope: !1536, file: !38, line: 1179, type: !446, align: 8)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !38, line: 1179, column: 21)
!1537 = !DILocalVariable(name: "b", scope: !1538, file: !38, line: 1179, type: !48, align: 2)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !38, line: 1179, column: 33)
!1539 = !DILocalVariable(name: "ac", scope: !1538, file: !38, line: 1179, type: !199, align: 8)
!1540 = !DILocalVariable(name: "val", scope: !1541, file: !38, line: 1180, type: !48, align: 2)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !38, line: 1180, column: 21)
!1542 = !DILocalVariable(name: "iter", scope: !1543, file: !38, line: 1181, type: !605, align: 8)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !38, line: 1181, column: 21)
!1544 = !DILocalVariable(name: "__next", scope: !1545, file: !38, line: 1181, type: !198, align: 8)
!1545 = distinct !DILexicalBlock(scope: !1543, file: !38, line: 1181, column: 33)
!1546 = !DILocalVariable(name: "val", scope: !1547, file: !38, line: 1181, type: !198, align: 8)
!1547 = distinct !DILexicalBlock(scope: !1545, file: !38, line: 1181, column: 25)
!1548 = !DILocalVariable(name: "byte", scope: !1549, file: !38, line: 1181, type: !198, align: 8)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !38, line: 1181, column: 33)
!1550 = !DILocation(line: 0, scope: !1527)
!1551 = !DILocation(line: 0, scope: !188, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 1070, column: 63, scope: !1221, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 836, column: 26, scope: !1236, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 1179, column: 50, scope: !1527)
!1555 = !DILocation(line: 0, scope: !175, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1552)
!1557 = !DILocation(line: 0, scope: !1253, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 1179, column: 33, scope: !1527)
!1559 = !DILocation(line: 0, scope: !1263, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 549, column: 9, scope: !1253, inlinedAt: !1558)
!1561 = !DILocation(line: 0, scope: !1269, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 24, column: 9, scope: !1263, inlinedAt: !1560)
!1563 = !DILocation(line: 5228, column: 17, scope: !1277, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 100, column: 30, scope: !1286, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 168, column: 37, scope: !1269, inlinedAt: !1562)
!1566 = !DILocation(line: 0, scope: !754, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 168, column: 19, scope: !1269, inlinedAt: !1562)
!1568 = !DILocation(line: 0, scope: !760, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 929, column: 5, scope: !754, inlinedAt: !1567)
!1570 = !DILocation(line: 0, scope: !766, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 624, column: 9, scope: !760, inlinedAt: !1569)
!1572 = !DILocation(line: 951, column: 9, scope: !766, inlinedAt: !1571)
!1573 = !DILocation(line: 0, scope: !1532)
!1574 = !DILocation(line: 0, scope: !1485, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 1179, column: 33, scope: !1534)
!1576 = !DILocation(line: 2196, column: 9, scope: !1485, inlinedAt: !1575)
!1577 = !DILocation(line: 0, scope: !1312, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 2198, column: 13, scope: !1485, inlinedAt: !1575)
!1579 = !DILocation(line: 0, scope: !1320, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 47, column: 9, scope: !1312, inlinedAt: !1578)
!1581 = !DILocation(line: 174, column: 12, scope: !1320, inlinedAt: !1580)
!1582 = !DILocation(line: 174, column: 9, scope: !1320, inlinedAt: !1580)
!1583 = !DILocation(line: 1186, column: 14, scope: !1527)
!1584 = !DILocation(line: 0, scope: !1323, inlinedAt: !1580)
!1585 = !DILocation(line: 0, scope: !504, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 178, column: 28, scope: !1323, inlinedAt: !1580)
!1587 = !DILocation(line: 0, scope: !497, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 6302, column: 20, scope: !504, inlinedAt: !1586)
!1589 = !DILocation(line: 0, scope: !489, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 530, column: 18, scope: !497, inlinedAt: !1588)
!1591 = !DILocation(line: 159, column: 18, scope: !489, inlinedAt: !1590)
!1592 = !DILocation(line: 0, scope: !1334, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 178, column: 53, scope: !1323, inlinedAt: !1580)
!1594 = !DILocation(line: 5306, column: 21, scope: !1334, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !1342, inlinedAt: !1593)
!1596 = !DILocation(line: 0, scope: !188, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 5308, column: 37, scope: !1342, inlinedAt: !1593)
!1598 = !DILocation(line: 0, scope: !175, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1597)
!1600 = !DILocation(line: 159, column: 18, scope: !175, inlinedAt: !1599)
!1601 = !DILocation(line: 0, scope: !1534)
!1602 = !DILocation(line: 0, scope: !1538)
!1603 = !DILocation(line: 1179, column: 23, scope: !1534)
!1604 = !DILocation(line: 0, scope: !1541)
!1605 = !DILocation(line: 0, scope: !188, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 643, column: 17, scope: !658, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 1181, column: 33, scope: !1541)
!1608 = !DILocation(line: 0, scope: !175, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 530, column: 18, scope: !188, inlinedAt: !1606)
!1610 = !DILocation(line: 0, scope: !1543)
!1611 = !DILocation(line: 0, scope: !175, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 3402, column: 64, scope: !697, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 3365, column: 47, scope: !670, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 1181, column: 33, scope: !1545)
!1615 = !DILocation(line: 0, scope: !1545)
!1616 = !DILocation(line: 0, scope: !1549)
!1617 = !DILocation(line: 1182, column: 25, scope: !1549)
!1618 = !DILocation(line: 1183, column: 25, scope: !1549)
!1619 = !DILocation(line: 176, column: 13, scope: !1323, inlinedAt: !1580)
!1620 = !DILocation(line: 2197, column: 13, scope: !1485, inlinedAt: !1575)
!1621 = !DILocation(line: 2196, column: 12, scope: !1485, inlinedAt: !1575)
