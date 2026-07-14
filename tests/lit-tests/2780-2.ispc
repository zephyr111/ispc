// RUN: %{ispc} --pic --target=neon-i32x4 %s --x86-asm-syntax=intel --emit-asm -o - | FileCheck %s

// REQUIRES: ARM_ENABLED

// CHECK-LABEL: RoundToInt___vyf:{{.*}}
// CHECK-NEXT: // %bb.0:
// CHECK-NEXT: frintn  v0.4s, v0.4s
// CHECK-NEXT: ret
float RoundToInt(float x)
{
    return round(x);
}

// CHECK-LABEL: RoundToInt___vyd:{{.*}}
// CHECK-NEXT: // %bb.0:
// CHECK-NEXT: frintn  v0.2d, v0.2d
// CHECK-NEXT: frintn  v1.2d, v1.2d
// CHECK-NEXT: ret
double RoundToInt(double x)
{
    return round(x);
}
