; RUN: llc < %s -mtriple armv7-linux-gnueabihf -mattr=+neon | FileCheck %s

; This test checks the @llvm.cttz.* intrinsics for vectors.

declare <1 x i8> @llvm.cttz.v1i8(<1 x i8>, i1)
declare <2 x i8> @llvm.cttz.v2i8(<2 x i8>, i1)
declare <4 x i8> @llvm.cttz.v4i8(<4 x i8>, i1)
declare <8 x i8> @llvm.cttz.v8i8(<8 x i8>, i1)
declare <16 x i8> @llvm.cttz.v16i8(<16 x i8>, i1)

declare <1 x i16> @llvm.cttz.v1i16(<1 x i16>, i1)
declare <2 x i16> @llvm.cttz.v2i16(<2 x i16>, i1)
declare <4 x i16> @llvm.cttz.v4i16(<4 x i16>, i1)
declare <8 x i16> @llvm.cttz.v8i16(<8 x i16>, i1)

declare <1 x i32> @llvm.cttz.v1i32(<1 x i32>, i1)
declare <2 x i32> @llvm.cttz.v2i32(<2 x i32>, i1)
declare <4 x i32> @llvm.cttz.v4i32(<4 x i32>, i1)

declare <1 x i64> @llvm.cttz.v1i64(<1 x i64>, i1)
declare <2 x i64> @llvm.cttz.v2i64(<2 x i64>, i1)

;------------------------------------------------------------------------------

define void @test_v1i8(<1 x i8>* %p) {
; CHECK-LABEL: test_v1i8
  %a = load <1 x i8>, <1 x i8>* %p
  %tmp = call <1 x i8> @llvm.cttz.v1i8(<1 x i8> %a, i1 false)
  store <1 x i8> %tmp, <1 x i8>* %p
  ret void
}

define void @test_v2i8(<2 x i8>* %p) {
; CHECK-LABEL: test_v2i8:
  %a = load <2 x i8>, <2 x i8>* %p
  %tmp = call <2 x i8> @llvm.cttz.v2i8(<2 x i8> %a, i1 false)
  store <2 x i8> %tmp, <2 x i8>* %p
  ret void
}

define void @test_v4i8(<4 x i8>* %p) {
; CHECK-LABEL: test_v4i8:
  %a = load <4 x i8>, <4 x i8>* %p
  %tmp = call <4 x i8> @llvm.cttz.v4i8(<4 x i8> %a, i1 false)
  store <4 x i8> %tmp, <4 x i8>* %p
  ret void
}

define void @test_v8i8(<8 x i8>* %p) {
; CHECK-LABEL: test_v8i8:
  %a = load <8 x i8>, <8 x i8>* %p
  %tmp = call <8 x i8> @llvm.cttz.v8i8(<8 x i8> %a, i1 false)
  store <8 x i8> %tmp, <8 x i8>* %p
  ret void
}

define void @test_v16i8(<16 x i8>* %p) {
; CHECK-LABEL: test_v16i8:
  %a = load <16 x i8>, <16 x i8>* %p
  %tmp = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> %a, i1 false)
  store <16 x i8> %tmp, <16 x i8>* %p
  ret void
}

define void @test_v1i16(<1 x i16>* %p) {
; CHECK-LABEL: test_v1i16:
  %a = load <1 x i16>, <1 x i16>* %p
  %tmp = call <1 x i16> @llvm.cttz.v1i16(<1 x i16> %a, i1 false)
  store <1 x i16> %tmp, <1 x i16>* %p
  ret void
}

define void @test_v2i16(<2 x i16>* %p) {
; CHECK-LABEL: test_v2i16:
  %a = load <2 x i16>, <2 x i16>* %p
  %tmp = call <2 x i16> @llvm.cttz.v2i16(<2 x i16> %a, i1 false)
  store <2 x i16> %tmp, <2 x i16>* %p
  ret void
}

define void @test_v4i16(<4 x i16>* %p) {
; CHECK-LABEL: test_v4i16:
  %a = load <4 x i16>, <4 x i16>* %p
  %tmp = call <4 x i16> @llvm.cttz.v4i16(<4 x i16> %a, i1 false)
  store <4 x i16> %tmp, <4 x i16>* %p
  ret void
}

define void @test_v8i16(<8 x i16>* %p) {
; CHECK-LABEL: test_v8i16:
  %a = load <8 x i16>, <8 x i16>* %p
  %tmp = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> %a, i1 false)
  store <8 x i16> %tmp, <8 x i16>* %p
  ret void
}

define void @test_v1i32(<1 x i32>* %p) {
; CHECK-LABEL: test_v1i32:
  %a = load <1 x i32>, <1 x i32>* %p
  %tmp = call <1 x i32> @llvm.cttz.v1i32(<1 x i32> %a, i1 false)
  store <1 x i32> %tmp, <1 x i32>* %p
  ret void
}

define void @test_v2i32(<2 x i32>* %p) {
; CHECK-LABEL: test_v2i32:
  %a = load <2 x i32>, <2 x i32>* %p
  %tmp = call <2 x i32> @llvm.cttz.v2i32(<2 x i32> %a, i1 false)
  store <2 x i32> %tmp, <2 x i32>* %p
  ret void
}

define void @test_v4i32(<4 x i32>* %p) {
; CHECK-LABEL: test_v4i32:
  %a = load <4 x i32>, <4 x i32>* %p
  %tmp = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> %a, i1 false)
  store <4 x i32> %tmp, <4 x i32>* %p
  ret void
}

define void @test_v1i64(<1 x i64>* %p) {
; CHECK-LABEL: test_v1i64:
  %a = load <1 x i64>, <1 x i64>* %p
  %tmp = call <1 x i64> @llvm.cttz.v1i64(<1 x i64> %a, i1 false)
  store <1 x i64> %tmp, <1 x i64>* %p
  ret void
}

define void @test_v2i64(<2 x i64>* %p) {
; CHECK-LABEL: test_v2i64:
  %a = load <2 x i64>, <2 x i64>* %p
  %tmp = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> %a, i1 false)
  store <2 x i64> %tmp, <2 x i64>* %p
  ret void
}

;------------------------------------------------------------------------------

define void @test_v1i8_zero_undef(<1 x i8>* %p) {
; CHECK-LABEL: test_v1i8_zero_undef
  %a = load <1 x i8>, <1 x i8>* %p
  %tmp = call <1 x i8> @llvm.cttz.v1i8(<1 x i8> %a, i1 true)
  store <1 x i8> %tmp, <1 x i8>* %p
  ret void
}

define void @test_v2i8_zero_undef(<2 x i8>* %p) {
; CHECK-LABEL: test_v2i8_zero_undef:
  %a = load <2 x i8>, <2 x i8>* %p
  %tmp = call <2 x i8> @llvm.cttz.v2i8(<2 x i8> %a, i1 true)
  store <2 x i8> %tmp, <2 x i8>* %p
  ret void
}

define void @test_v4i8_zero_undef(<4 x i8>* %p) {
; CHECK-LABEL: test_v4i8_zero_undef:
  %a = load <4 x i8>, <4 x i8>* %p
  %tmp = call <4 x i8> @llvm.cttz.v4i8(<4 x i8> %a, i1 true)
  store <4 x i8> %tmp, <4 x i8>* %p
  ret void
}

define void @test_v8i8_zero_undef(<8 x i8>* %p) {
; CHECK-LABEL: test_v8i8_zero_undef:
  %a = load <8 x i8>, <8 x i8>* %p
  %tmp = call <8 x i8> @llvm.cttz.v8i8(<8 x i8> %a, i1 true)
  store <8 x i8> %tmp, <8 x i8>* %p
  ret void
}

define void @test_v16i8_zero_undef(<16 x i8>* %p) {
; CHECK-LABEL: test_v16i8_zero_undef:
  %a = load <16 x i8>, <16 x i8>* %p
  %tmp = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> %a, i1 true)
  store <16 x i8> %tmp, <16 x i8>* %p
  ret void
}

define void @test_v1i16_zero_undef(<1 x i16>* %p) {
; CHECK-LABEL: test_v1i16_zero_undef:
  %a = load <1 x i16>, <1 x i16>* %p
  %tmp = call <1 x i16> @llvm.cttz.v1i16(<1 x i16> %a, i1 true)
  store <1 x i16> %tmp, <1 x i16>* %p
  ret void
}

define void @test_v2i16_zero_undef(<2 x i16>* %p) {
; CHECK-LABEL: test_v2i16_zero_undef:
  %a = load <2 x i16>, <2 x i16>* %p
  %tmp = call <2 x i16> @llvm.cttz.v2i16(<2 x i16> %a, i1 true)
  store <2 x i16> %tmp, <2 x i16>* %p
  ret void
}

define void @test_v4i16_zero_undef(<4 x i16>* %p) {
; CHECK-LABEL: test_v4i16_zero_undef:
  %a = load <4 x i16>, <4 x i16>* %p
  %tmp = call <4 x i16> @llvm.cttz.v4i16(<4 x i16> %a, i1 true)
  store <4 x i16> %tmp, <4 x i16>* %p
  ret void
}

define void @test_v8i16_zero_undef(<8 x i16>* %p) {
; CHECK-LABEL: test_v8i16_zero_undef:
  %a = load <8 x i16>, <8 x i16>* %p
  %tmp = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> %a, i1 true)
  store <8 x i16> %tmp, <8 x i16>* %p
  ret void
}

define void @test_v1i32_zero_undef(<1 x i32>* %p) {
; CHECK-LABEL: test_v1i32_zero_undef:
  %a = load <1 x i32>, <1 x i32>* %p
  %tmp = call <1 x i32> @llvm.cttz.v1i32(<1 x i32> %a, i1 true)
  store <1 x i32> %tmp, <1 x i32>* %p
  ret void
}

define void @test_v2i32_zero_undef(<2 x i32>* %p) {
; CHECK-LABEL: test_v2i32_zero_undef:
  %a = load <2 x i32>, <2 x i32>* %p
  %tmp = call <2 x i32> @llvm.cttz.v2i32(<2 x i32> %a, i1 true)
  store <2 x i32> %tmp, <2 x i32>* %p
  ret void
}

define void @test_v4i32_zero_undef(<4 x i32>* %p) {
; CHECK-LABEL: test_v4i32_zero_undef:
  %a = load <4 x i32>, <4 x i32>* %p
  %tmp = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> %a, i1 true)
  store <4 x i32> %tmp, <4 x i32>* %p
  ret void
}

define void @test_v1i64_zero_undef(<1 x i64>* %p) {
; CHECK-LABEL: test_v1i64_zero_undef:
  %a = load <1 x i64>, <1 x i64>* %p
  %tmp = call <1 x i64> @llvm.cttz.v1i64(<1 x i64> %a, i1 true)
  store <1 x i64> %tmp, <1 x i64>* %p
  ret void
}

define void @test_v2i64_zero_undef(<2 x i64>* %p) {
; CHECK-LABEL: test_v2i64_zero_undef:
  %a = load <2 x i64>, <2 x i64>* %p
  %tmp = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> %a, i1 true)
  store <2 x i64> %tmp, <2 x i64>* %p
  ret void
}
