import Raymath.Core

open Raymath

namespace Pod.Float32

def xx (x : Float32) : Vector2 := .mk x x
def xxx (x : Float32) : Vector3 := .mk x x x
def xxxx (x : Float32) : Vector4 := .mk x x x x

end Pod.Float32


namespace Raymath.Vector2

def xx (v : Vector2) : Vector2 := .mk v.x v.x
def yx (v : Vector2) : Vector2 := .mk v.y v.x
def yy (v : Vector2) : Vector2 := .mk v.y v.y

def xxx (v : Vector2) : Vector3 := .mk v.x v.x v.x
def xxy (v : Vector2) : Vector3 := .mk v.x v.x v.y
def xyx (v : Vector2) : Vector3 := .mk v.x v.y v.x
def xyy (v : Vector2) : Vector3 := .mk v.x v.y v.y
def yxx (v : Vector2) : Vector3 := .mk v.y v.x v.x
def yxy (v : Vector2) : Vector3 := .mk v.y v.x v.y
def yyx (v : Vector2) : Vector3 := .mk v.y v.y v.x
def yyy (v : Vector2) : Vector3 := .mk v.y v.y v.y

def xxxx (v : Vector2) : Vector4 := .mk v.x v.x v.x v.x
def xxxy (v : Vector2) : Vector4 := .mk v.x v.x v.x v.y
def xxyx (v : Vector2) : Vector4 := .mk v.x v.x v.y v.x
def xxyy (v : Vector2) : Vector4 := .mk v.x v.x v.y v.y
def xyxx (v : Vector2) : Vector4 := .mk v.x v.y v.x v.x
def xyxy (v : Vector2) : Vector4 := .mk v.x v.y v.x v.y
def xyyx (v : Vector2) : Vector4 := .mk v.x v.y v.y v.x
def xyyy (v : Vector2) : Vector4 := .mk v.x v.y v.y v.y
def yxxx (v : Vector2) : Vector4 := .mk v.y v.x v.x v.x
def yxxy (v : Vector2) : Vector4 := .mk v.y v.x v.x v.y
def yxyx (v : Vector2) : Vector4 := .mk v.y v.x v.y v.x
def yxyy (v : Vector2) : Vector4 := .mk v.y v.x v.y v.y
def yyxx (v : Vector2) : Vector4 := .mk v.y v.y v.x v.x
def yyxy (v : Vector2) : Vector4 := .mk v.y v.y v.x v.y
def yyyx (v : Vector2) : Vector4 := .mk v.y v.y v.y v.x
def yyyy (v : Vector2) : Vector4 := .mk v.y v.y v.y v.y

end Raymath.Vector2


namespace Raymath.Vector3

def xx (v : Vector3) : Vector2 := .mk v.x v.x
def xy (v : Vector3) : Vector2 := .mk v.x v.y
def xz (v : Vector3) : Vector2 := .mk v.x v.z
def yx (v : Vector3) : Vector2 := .mk v.y v.x
def yy (v : Vector3) : Vector2 := .mk v.y v.y
def yz (v : Vector3) : Vector2 := .mk v.y v.z
def zx (v : Vector3) : Vector2 := .mk v.z v.x
def zy (v : Vector3) : Vector2 := .mk v.z v.y
def zz (v : Vector3) : Vector2 := .mk v.z v.z

def xxx (v : Vector3) : Vector3 := .mk v.x v.x v.x
def xxy (v : Vector3) : Vector3 := .mk v.x v.x v.y
def xxz (v : Vector3) : Vector3 := .mk v.x v.x v.z
def xyx (v : Vector3) : Vector3 := .mk v.x v.y v.x
def xyy (v : Vector3) : Vector3 := .mk v.x v.y v.y
def xzx (v : Vector3) : Vector3 := .mk v.x v.z v.x
def xzy (v : Vector3) : Vector3 := .mk v.x v.z v.y
def xzz (v : Vector3) : Vector3 := .mk v.x v.z v.z
def yxx (v : Vector3) : Vector3 := .mk v.y v.x v.x
def yxy (v : Vector3) : Vector3 := .mk v.y v.x v.y
def yxz (v : Vector3) : Vector3 := .mk v.y v.x v.z
def yyx (v : Vector3) : Vector3 := .mk v.y v.y v.x
def yyy (v : Vector3) : Vector3 := .mk v.y v.y v.y
def yyz (v : Vector3) : Vector3 := .mk v.y v.y v.z
def yzx (v : Vector3) : Vector3 := .mk v.y v.z v.x
def yzy (v : Vector3) : Vector3 := .mk v.y v.z v.y
def yzz (v : Vector3) : Vector3 := .mk v.y v.z v.z
def zxx (v : Vector3) : Vector3 := .mk v.z v.x v.x
def zxy (v : Vector3) : Vector3 := .mk v.z v.x v.y
def zxz (v : Vector3) : Vector3 := .mk v.z v.x v.z
def zyx (v : Vector3) : Vector3 := .mk v.z v.y v.x
def zyy (v : Vector3) : Vector3 := .mk v.z v.y v.y
def zyz (v : Vector3) : Vector3 := .mk v.z v.y v.z
def zzx (v : Vector3) : Vector3 := .mk v.z v.z v.x
def zzy (v : Vector3) : Vector3 := .mk v.z v.z v.y
def zzz (v : Vector3) : Vector3 := .mk v.z v.z v.z

def xxxx (v : Vector3) : Vector4 := .mk v.x v.x v.x v.x
def xxxy (v : Vector3) : Vector4 := .mk v.x v.x v.x v.y
def xxxz (v : Vector3) : Vector4 := .mk v.x v.x v.x v.z
def xxyx (v : Vector3) : Vector4 := .mk v.x v.x v.y v.x
def xxyy (v : Vector3) : Vector4 := .mk v.x v.x v.y v.y
def xxyz (v : Vector3) : Vector4 := .mk v.x v.x v.y v.z
def xxzx (v : Vector3) : Vector4 := .mk v.x v.x v.z v.x
def xxzy (v : Vector3) : Vector4 := .mk v.x v.x v.z v.y
def xxzz (v : Vector3) : Vector4 := .mk v.x v.x v.z v.z
def xyxx (v : Vector3) : Vector4 := .mk v.x v.y v.x v.x
def xyxy (v : Vector3) : Vector4 := .mk v.x v.y v.x v.y
def xyxz (v : Vector3) : Vector4 := .mk v.x v.y v.x v.z
def xyyx (v : Vector3) : Vector4 := .mk v.x v.y v.y v.x
def xyyy (v : Vector3) : Vector4 := .mk v.x v.y v.y v.y
def xyyz (v : Vector3) : Vector4 := .mk v.x v.y v.y v.z
def xyzx (v : Vector3) : Vector4 := .mk v.x v.y v.z v.x
def xyzy (v : Vector3) : Vector4 := .mk v.x v.y v.z v.y
def xyzz (v : Vector3) : Vector4 := .mk v.x v.y v.z v.z
def xzxx (v : Vector3) : Vector4 := .mk v.x v.z v.x v.x
def xzxy (v : Vector3) : Vector4 := .mk v.x v.z v.x v.y
def xzxz (v : Vector3) : Vector4 := .mk v.x v.z v.x v.z
def xzyx (v : Vector3) : Vector4 := .mk v.x v.z v.y v.x
def xzyy (v : Vector3) : Vector4 := .mk v.x v.z v.y v.y
def xzyz (v : Vector3) : Vector4 := .mk v.x v.z v.y v.z
def xzzx (v : Vector3) : Vector4 := .mk v.x v.z v.z v.x
def xzzy (v : Vector3) : Vector4 := .mk v.x v.z v.z v.y
def xzzz (v : Vector3) : Vector4 := .mk v.x v.z v.z v.z
def yxxx (v : Vector3) : Vector4 := .mk v.y v.x v.x v.x
def yxxy (v : Vector3) : Vector4 := .mk v.y v.x v.x v.y
def yxxz (v : Vector3) : Vector4 := .mk v.y v.x v.x v.z
def yxyx (v : Vector3) : Vector4 := .mk v.y v.x v.y v.x
def yxyy (v : Vector3) : Vector4 := .mk v.y v.x v.y v.y
def yxyz (v : Vector3) : Vector4 := .mk v.y v.x v.y v.z
def yxzx (v : Vector3) : Vector4 := .mk v.y v.x v.z v.x
def yxzy (v : Vector3) : Vector4 := .mk v.y v.x v.z v.y
def yxzz (v : Vector3) : Vector4 := .mk v.y v.x v.z v.z
def yyxx (v : Vector3) : Vector4 := .mk v.y v.y v.x v.x
def yyxy (v : Vector3) : Vector4 := .mk v.y v.y v.x v.y
def yyxz (v : Vector3) : Vector4 := .mk v.y v.y v.x v.z
def yyyx (v : Vector3) : Vector4 := .mk v.y v.y v.y v.x
def yyyy (v : Vector3) : Vector4 := .mk v.y v.y v.y v.y
def yyyz (v : Vector3) : Vector4 := .mk v.y v.y v.y v.z
def yyzx (v : Vector3) : Vector4 := .mk v.y v.y v.z v.x
def yyzy (v : Vector3) : Vector4 := .mk v.y v.y v.z v.y
def yyzz (v : Vector3) : Vector4 := .mk v.y v.y v.z v.z
def yzxx (v : Vector3) : Vector4 := .mk v.y v.z v.x v.x
def yzxy (v : Vector3) : Vector4 := .mk v.y v.z v.x v.y
def yzxz (v : Vector3) : Vector4 := .mk v.y v.z v.x v.z
def yzyx (v : Vector3) : Vector4 := .mk v.y v.z v.y v.x
def yzyy (v : Vector3) : Vector4 := .mk v.y v.z v.y v.y
def yzyz (v : Vector3) : Vector4 := .mk v.y v.z v.y v.z
def yzzx (v : Vector3) : Vector4 := .mk v.y v.z v.z v.x
def yzzy (v : Vector3) : Vector4 := .mk v.y v.z v.z v.y
def yzzz (v : Vector3) : Vector4 := .mk v.y v.z v.z v.z
def zxxx (v : Vector3) : Vector4 := .mk v.z v.x v.x v.x
def zxxy (v : Vector3) : Vector4 := .mk v.z v.x v.x v.y
def zxxz (v : Vector3) : Vector4 := .mk v.z v.x v.x v.z
def zxyx (v : Vector3) : Vector4 := .mk v.z v.x v.y v.x
def zxyy (v : Vector3) : Vector4 := .mk v.z v.x v.y v.y
def zxyz (v : Vector3) : Vector4 := .mk v.z v.x v.y v.z
def zxzx (v : Vector3) : Vector4 := .mk v.z v.x v.z v.x
def zxzy (v : Vector3) : Vector4 := .mk v.z v.x v.z v.y
def zxzz (v : Vector3) : Vector4 := .mk v.z v.x v.z v.z
def zyxx (v : Vector3) : Vector4 := .mk v.z v.y v.x v.x
def zyxy (v : Vector3) : Vector4 := .mk v.z v.y v.x v.y
def zyxz (v : Vector3) : Vector4 := .mk v.z v.y v.x v.z
def zyyx (v : Vector3) : Vector4 := .mk v.z v.y v.y v.x
def zyyy (v : Vector3) : Vector4 := .mk v.z v.y v.y v.y
def zyyz (v : Vector3) : Vector4 := .mk v.z v.y v.y v.z
def zyzx (v : Vector3) : Vector4 := .mk v.z v.y v.z v.x
def zyzy (v : Vector3) : Vector4 := .mk v.z v.y v.z v.y
def zyzz (v : Vector3) : Vector4 := .mk v.z v.y v.z v.z
def zzxx (v : Vector3) : Vector4 := .mk v.z v.z v.x v.x
def zzxy (v : Vector3) : Vector4 := .mk v.z v.z v.x v.y
def zzxz (v : Vector3) : Vector4 := .mk v.z v.z v.x v.z
def zzyx (v : Vector3) : Vector4 := .mk v.z v.z v.y v.x
def zzyy (v : Vector3) : Vector4 := .mk v.z v.z v.y v.y
def zzyz (v : Vector3) : Vector4 := .mk v.z v.z v.y v.z
def zzzx (v : Vector3) : Vector4 := .mk v.z v.z v.z v.x
def zzzy (v : Vector3) : Vector4 := .mk v.z v.z v.z v.y
def zzzz (v : Vector3) : Vector4 := .mk v.z v.z v.z v.z

end Raymath.Vector3


namespace Raymath.Vector4

def xx (v : Vector4) : Vector2 := .mk v.x v.x
def xy (v : Vector4) : Vector2 := .mk v.x v.y
def xz (v : Vector4) : Vector2 := .mk v.x v.z
def xw (v : Vector4) : Vector2 := .mk v.x v.w
def yx (v : Vector4) : Vector2 := .mk v.y v.x
def yy (v : Vector4) : Vector2 := .mk v.y v.y
def yz (v : Vector4) : Vector2 := .mk v.y v.z
def yw (v : Vector4) : Vector2 := .mk v.y v.w
def zx (v : Vector4) : Vector2 := .mk v.z v.x
def zy (v : Vector4) : Vector2 := .mk v.z v.y
def zz (v : Vector4) : Vector2 := .mk v.z v.z
def zw (v : Vector4) : Vector2 := .mk v.z v.w
def wx (v : Vector4) : Vector2 := .mk v.w v.x
def wy (v : Vector4) : Vector2 := .mk v.w v.y
def wz (v : Vector4) : Vector2 := .mk v.w v.z
def ww (v : Vector4) : Vector2 := .mk v.w v.w

def xxx (v : Vector4) : Vector3 := .mk v.x v.x v.x
def xxy (v : Vector4) : Vector3 := .mk v.x v.x v.y
def xxz (v : Vector4) : Vector3 := .mk v.x v.x v.z
def xxw (v : Vector4) : Vector3 := .mk v.x v.x v.w
def xyx (v : Vector4) : Vector3 := .mk v.x v.y v.x
def xyy (v : Vector4) : Vector3 := .mk v.x v.y v.y
def xyz (v : Vector4) : Vector3 := .mk v.x v.y v.z
def xyw (v : Vector4) : Vector3 := .mk v.x v.y v.w
def xzx (v : Vector4) : Vector3 := .mk v.x v.z v.x
def xzy (v : Vector4) : Vector3 := .mk v.x v.z v.y
def xzz (v : Vector4) : Vector3 := .mk v.x v.z v.z
def xzw (v : Vector4) : Vector3 := .mk v.x v.z v.w
def xwx (v : Vector4) : Vector3 := .mk v.x v.w v.x
def xwy (v : Vector4) : Vector3 := .mk v.x v.w v.y
def xwz (v : Vector4) : Vector3 := .mk v.x v.w v.z
def xww (v : Vector4) : Vector3 := .mk v.x v.w v.w
def yxx (v : Vector4) : Vector3 := .mk v.y v.x v.x
def yxy (v : Vector4) : Vector3 := .mk v.y v.x v.y
def yxz (v : Vector4) : Vector3 := .mk v.y v.x v.z
def yxw (v : Vector4) : Vector3 := .mk v.y v.x v.w
def yyx (v : Vector4) : Vector3 := .mk v.y v.y v.x
def yyy (v : Vector4) : Vector3 := .mk v.y v.y v.y
def yyz (v : Vector4) : Vector3 := .mk v.y v.y v.z
def yyw (v : Vector4) : Vector3 := .mk v.y v.y v.w
def yzx (v : Vector4) : Vector3 := .mk v.y v.z v.x
def yzy (v : Vector4) : Vector3 := .mk v.y v.z v.y
def yzz (v : Vector4) : Vector3 := .mk v.y v.z v.z
def yzw (v : Vector4) : Vector3 := .mk v.y v.z v.w
def ywx (v : Vector4) : Vector3 := .mk v.y v.w v.x
def ywy (v : Vector4) : Vector3 := .mk v.y v.w v.y
def ywz (v : Vector4) : Vector3 := .mk v.y v.w v.z
def yww (v : Vector4) : Vector3 := .mk v.y v.w v.w
def zxx (v : Vector4) : Vector3 := .mk v.z v.x v.x
def zxy (v : Vector4) : Vector3 := .mk v.z v.x v.y
def zxz (v : Vector4) : Vector3 := .mk v.z v.x v.z
def zxw (v : Vector4) : Vector3 := .mk v.z v.x v.w
def zyx (v : Vector4) : Vector3 := .mk v.z v.y v.x
def zyy (v : Vector4) : Vector3 := .mk v.z v.y v.y
def zyz (v : Vector4) : Vector3 := .mk v.z v.y v.z
def zyw (v : Vector4) : Vector3 := .mk v.z v.y v.w
def zzx (v : Vector4) : Vector3 := .mk v.z v.z v.x
def zzy (v : Vector4) : Vector3 := .mk v.z v.z v.y
def zzz (v : Vector4) : Vector3 := .mk v.z v.z v.z
def zzw (v : Vector4) : Vector3 := .mk v.z v.z v.w
def zwx (v : Vector4) : Vector3 := .mk v.z v.w v.x
def zwy (v : Vector4) : Vector3 := .mk v.z v.w v.y
def zwz (v : Vector4) : Vector3 := .mk v.z v.w v.z
def zww (v : Vector4) : Vector3 := .mk v.z v.w v.w
def wxx (v : Vector4) : Vector3 := .mk v.w v.x v.x
def wxy (v : Vector4) : Vector3 := .mk v.w v.x v.y
def wxz (v : Vector4) : Vector3 := .mk v.w v.x v.z
def wxw (v : Vector4) : Vector3 := .mk v.w v.x v.w
def wyx (v : Vector4) : Vector3 := .mk v.w v.y v.x
def wyy (v : Vector4) : Vector3 := .mk v.w v.y v.y
def wyz (v : Vector4) : Vector3 := .mk v.w v.y v.z
def wyw (v : Vector4) : Vector3 := .mk v.w v.y v.w
def wzx (v : Vector4) : Vector3 := .mk v.w v.z v.x
def wzy (v : Vector4) : Vector3 := .mk v.w v.z v.y
def wzz (v : Vector4) : Vector3 := .mk v.w v.z v.z
def wzw (v : Vector4) : Vector3 := .mk v.w v.z v.w
def wwx (v : Vector4) : Vector3 := .mk v.w v.w v.x
def wwy (v : Vector4) : Vector3 := .mk v.w v.w v.y
def wwz (v : Vector4) : Vector3 := .mk v.w v.w v.z
def www (v : Vector4) : Vector3 := .mk v.w v.w v.w

def xxxx (v : Vector4) : Vector4 := .mk v.x v.x v.x v.x
def xxxy (v : Vector4) : Vector4 := .mk v.x v.x v.x v.y
def xxxz (v : Vector4) : Vector4 := .mk v.x v.x v.x v.z
def xxxw (v : Vector4) : Vector4 := .mk v.x v.x v.x v.w
def xxyx (v : Vector4) : Vector4 := .mk v.x v.x v.y v.x
def xxyy (v : Vector4) : Vector4 := .mk v.x v.x v.y v.y
def xxyz (v : Vector4) : Vector4 := .mk v.x v.x v.y v.z
def xxyw (v : Vector4) : Vector4 := .mk v.x v.x v.y v.w
def xxzx (v : Vector4) : Vector4 := .mk v.x v.x v.z v.x
def xxzy (v : Vector4) : Vector4 := .mk v.x v.x v.z v.y
def xxzz (v : Vector4) : Vector4 := .mk v.x v.x v.z v.z
def xxzw (v : Vector4) : Vector4 := .mk v.x v.x v.z v.w
def xxwx (v : Vector4) : Vector4 := .mk v.x v.x v.w v.x
def xxwy (v : Vector4) : Vector4 := .mk v.x v.x v.w v.y
def xxwz (v : Vector4) : Vector4 := .mk v.x v.x v.w v.z
def xxww (v : Vector4) : Vector4 := .mk v.x v.x v.w v.w
def xyxx (v : Vector4) : Vector4 := .mk v.x v.y v.x v.x
def xyxy (v : Vector4) : Vector4 := .mk v.x v.y v.x v.y
def xyxz (v : Vector4) : Vector4 := .mk v.x v.y v.x v.z
def xyxw (v : Vector4) : Vector4 := .mk v.x v.y v.x v.w
def xyyx (v : Vector4) : Vector4 := .mk v.x v.y v.y v.x
def xyyy (v : Vector4) : Vector4 := .mk v.x v.y v.y v.y
def xyyz (v : Vector4) : Vector4 := .mk v.x v.y v.y v.z
def xyyw (v : Vector4) : Vector4 := .mk v.x v.y v.y v.w
def xyzx (v : Vector4) : Vector4 := .mk v.x v.y v.z v.x
def xyzy (v : Vector4) : Vector4 := .mk v.x v.y v.z v.y
def xyzz (v : Vector4) : Vector4 := .mk v.x v.y v.z v.z
def xywx (v : Vector4) : Vector4 := .mk v.x v.y v.w v.x
def xywy (v : Vector4) : Vector4 := .mk v.x v.y v.w v.y
def xywz (v : Vector4) : Vector4 := .mk v.x v.y v.w v.z
def xyww (v : Vector4) : Vector4 := .mk v.x v.y v.w v.w
def xzxx (v : Vector4) : Vector4 := .mk v.x v.z v.x v.x
def xzxy (v : Vector4) : Vector4 := .mk v.x v.z v.x v.y
def xzxz (v : Vector4) : Vector4 := .mk v.x v.z v.x v.z
def xzxw (v : Vector4) : Vector4 := .mk v.x v.z v.x v.w
def xzyx (v : Vector4) : Vector4 := .mk v.x v.z v.y v.x
def xzyy (v : Vector4) : Vector4 := .mk v.x v.z v.y v.y
def xzyz (v : Vector4) : Vector4 := .mk v.x v.z v.y v.z
def xzyw (v : Vector4) : Vector4 := .mk v.x v.z v.y v.w
def xzzx (v : Vector4) : Vector4 := .mk v.x v.z v.z v.x
def xzzy (v : Vector4) : Vector4 := .mk v.x v.z v.z v.y
def xzzz (v : Vector4) : Vector4 := .mk v.x v.z v.z v.z
def xzzw (v : Vector4) : Vector4 := .mk v.x v.z v.z v.w
def xzwx (v : Vector4) : Vector4 := .mk v.x v.z v.w v.x
def xzwy (v : Vector4) : Vector4 := .mk v.x v.z v.w v.y
def xzwz (v : Vector4) : Vector4 := .mk v.x v.z v.w v.z
def xzww (v : Vector4) : Vector4 := .mk v.x v.z v.w v.w
def xwxx (v : Vector4) : Vector4 := .mk v.x v.w v.x v.x
def xwxy (v : Vector4) : Vector4 := .mk v.x v.w v.x v.y
def xwxz (v : Vector4) : Vector4 := .mk v.x v.w v.x v.z
def xwxw (v : Vector4) : Vector4 := .mk v.x v.w v.x v.w
def xwyx (v : Vector4) : Vector4 := .mk v.x v.w v.y v.x
def xwyy (v : Vector4) : Vector4 := .mk v.x v.w v.y v.y
def xwyz (v : Vector4) : Vector4 := .mk v.x v.w v.y v.z
def xwyw (v : Vector4) : Vector4 := .mk v.x v.w v.y v.w
def xwzx (v : Vector4) : Vector4 := .mk v.x v.w v.z v.x
def xwzy (v : Vector4) : Vector4 := .mk v.x v.w v.z v.y
def xwzz (v : Vector4) : Vector4 := .mk v.x v.w v.z v.z
def xwzw (v : Vector4) : Vector4 := .mk v.x v.w v.z v.w
def xwwx (v : Vector4) : Vector4 := .mk v.x v.w v.w v.x
def xwwy (v : Vector4) : Vector4 := .mk v.x v.w v.w v.y
def xwwz (v : Vector4) : Vector4 := .mk v.x v.w v.w v.z
def xwww (v : Vector4) : Vector4 := .mk v.x v.w v.w v.w
def yxxx (v : Vector4) : Vector4 := .mk v.y v.x v.x v.x
def yxxy (v : Vector4) : Vector4 := .mk v.y v.x v.x v.y
def yxxz (v : Vector4) : Vector4 := .mk v.y v.x v.x v.z
def yxxw (v : Vector4) : Vector4 := .mk v.y v.x v.x v.w
def yxyx (v : Vector4) : Vector4 := .mk v.y v.x v.y v.x
def yxyy (v : Vector4) : Vector4 := .mk v.y v.x v.y v.y
def yxyz (v : Vector4) : Vector4 := .mk v.y v.x v.y v.z
def yxyw (v : Vector4) : Vector4 := .mk v.y v.x v.y v.w
def yxzx (v : Vector4) : Vector4 := .mk v.y v.x v.z v.x
def yxzy (v : Vector4) : Vector4 := .mk v.y v.x v.z v.y
def yxzz (v : Vector4) : Vector4 := .mk v.y v.x v.z v.z
def yxzw (v : Vector4) : Vector4 := .mk v.y v.x v.z v.w
def yxwx (v : Vector4) : Vector4 := .mk v.y v.x v.w v.x
def yxwy (v : Vector4) : Vector4 := .mk v.y v.x v.w v.y
def yxwz (v : Vector4) : Vector4 := .mk v.y v.x v.w v.z
def yxww (v : Vector4) : Vector4 := .mk v.y v.x v.w v.w
def yyxx (v : Vector4) : Vector4 := .mk v.y v.y v.x v.x
def yyxy (v : Vector4) : Vector4 := .mk v.y v.y v.x v.y
def yyxz (v : Vector4) : Vector4 := .mk v.y v.y v.x v.z
def yyxw (v : Vector4) : Vector4 := .mk v.y v.y v.x v.w
def yyyx (v : Vector4) : Vector4 := .mk v.y v.y v.y v.x
def yyyy (v : Vector4) : Vector4 := .mk v.y v.y v.y v.y
def yyyz (v : Vector4) : Vector4 := .mk v.y v.y v.y v.z
def yyyw (v : Vector4) : Vector4 := .mk v.y v.y v.y v.w
def yyzx (v : Vector4) : Vector4 := .mk v.y v.y v.z v.x
def yyzy (v : Vector4) : Vector4 := .mk v.y v.y v.z v.y
def yyzz (v : Vector4) : Vector4 := .mk v.y v.y v.z v.z
def yyzw (v : Vector4) : Vector4 := .mk v.y v.y v.z v.w
def yywx (v : Vector4) : Vector4 := .mk v.y v.y v.w v.x
def yywy (v : Vector4) : Vector4 := .mk v.y v.y v.w v.y
def yywz (v : Vector4) : Vector4 := .mk v.y v.y v.w v.z
def yyww (v : Vector4) : Vector4 := .mk v.y v.y v.w v.w
def yzxx (v : Vector4) : Vector4 := .mk v.y v.z v.x v.x
def yzxy (v : Vector4) : Vector4 := .mk v.y v.z v.x v.y
def yzxz (v : Vector4) : Vector4 := .mk v.y v.z v.x v.z
def yzxw (v : Vector4) : Vector4 := .mk v.y v.z v.x v.w
def yzyx (v : Vector4) : Vector4 := .mk v.y v.z v.y v.x
def yzyy (v : Vector4) : Vector4 := .mk v.y v.z v.y v.y
def yzyz (v : Vector4) : Vector4 := .mk v.y v.z v.y v.z
def yzyw (v : Vector4) : Vector4 := .mk v.y v.z v.y v.w
def yzzx (v : Vector4) : Vector4 := .mk v.y v.z v.z v.x
def yzzy (v : Vector4) : Vector4 := .mk v.y v.z v.z v.y
def yzzz (v : Vector4) : Vector4 := .mk v.y v.z v.z v.z
def yzzw (v : Vector4) : Vector4 := .mk v.y v.z v.z v.w
def yzwx (v : Vector4) : Vector4 := .mk v.y v.z v.w v.x
def yzwy (v : Vector4) : Vector4 := .mk v.y v.z v.w v.y
def yzwz (v : Vector4) : Vector4 := .mk v.y v.z v.w v.z
def yzww (v : Vector4) : Vector4 := .mk v.y v.z v.w v.w
def ywxx (v : Vector4) : Vector4 := .mk v.y v.w v.x v.x
def ywxy (v : Vector4) : Vector4 := .mk v.y v.w v.x v.y
def ywxz (v : Vector4) : Vector4 := .mk v.y v.w v.x v.z
def ywxw (v : Vector4) : Vector4 := .mk v.y v.w v.x v.w
def ywyx (v : Vector4) : Vector4 := .mk v.y v.w v.y v.x
def ywyy (v : Vector4) : Vector4 := .mk v.y v.w v.y v.y
def ywyz (v : Vector4) : Vector4 := .mk v.y v.w v.y v.z
def ywyw (v : Vector4) : Vector4 := .mk v.y v.w v.y v.w
def ywzx (v : Vector4) : Vector4 := .mk v.y v.w v.z v.x
def ywzy (v : Vector4) : Vector4 := .mk v.y v.w v.z v.y
def ywzz (v : Vector4) : Vector4 := .mk v.y v.w v.z v.z
def ywzw (v : Vector4) : Vector4 := .mk v.y v.w v.z v.w
def ywwx (v : Vector4) : Vector4 := .mk v.y v.w v.w v.x
def ywwy (v : Vector4) : Vector4 := .mk v.y v.w v.w v.y
def ywwz (v : Vector4) : Vector4 := .mk v.y v.w v.w v.z
def ywww (v : Vector4) : Vector4 := .mk v.y v.w v.w v.w
def zxxx (v : Vector4) : Vector4 := .mk v.z v.x v.x v.x
def zxxy (v : Vector4) : Vector4 := .mk v.z v.x v.x v.y
def zxxz (v : Vector4) : Vector4 := .mk v.z v.x v.x v.z
def zxxw (v : Vector4) : Vector4 := .mk v.z v.x v.x v.w
def zxyx (v : Vector4) : Vector4 := .mk v.z v.x v.y v.x
def zxyy (v : Vector4) : Vector4 := .mk v.z v.x v.y v.y
def zxyz (v : Vector4) : Vector4 := .mk v.z v.x v.y v.z
def zxyw (v : Vector4) : Vector4 := .mk v.z v.x v.y v.w
def zxzx (v : Vector4) : Vector4 := .mk v.z v.x v.z v.x
def zxzy (v : Vector4) : Vector4 := .mk v.z v.x v.z v.y
def zxzz (v : Vector4) : Vector4 := .mk v.z v.x v.z v.z
def zxzw (v : Vector4) : Vector4 := .mk v.z v.x v.z v.w
def zxwx (v : Vector4) : Vector4 := .mk v.z v.x v.w v.x
def zxwy (v : Vector4) : Vector4 := .mk v.z v.x v.w v.y
def zxwz (v : Vector4) : Vector4 := .mk v.z v.x v.w v.z
def zxww (v : Vector4) : Vector4 := .mk v.z v.x v.w v.w
def zyxx (v : Vector4) : Vector4 := .mk v.z v.y v.x v.x
def zyxy (v : Vector4) : Vector4 := .mk v.z v.y v.x v.y
def zyxz (v : Vector4) : Vector4 := .mk v.z v.y v.x v.z
def zyxw (v : Vector4) : Vector4 := .mk v.z v.y v.x v.w
def zyyx (v : Vector4) : Vector4 := .mk v.z v.y v.y v.x
def zyyy (v : Vector4) : Vector4 := .mk v.z v.y v.y v.y
def zyyz (v : Vector4) : Vector4 := .mk v.z v.y v.y v.z
def zyyw (v : Vector4) : Vector4 := .mk v.z v.y v.y v.w
def zyzx (v : Vector4) : Vector4 := .mk v.z v.y v.z v.x
def zyzy (v : Vector4) : Vector4 := .mk v.z v.y v.z v.y
def zyzz (v : Vector4) : Vector4 := .mk v.z v.y v.z v.z
def zyzw (v : Vector4) : Vector4 := .mk v.z v.y v.z v.w
def zywx (v : Vector4) : Vector4 := .mk v.z v.y v.w v.x
def zywy (v : Vector4) : Vector4 := .mk v.z v.y v.w v.y
def zywz (v : Vector4) : Vector4 := .mk v.z v.y v.w v.z
def zyww (v : Vector4) : Vector4 := .mk v.z v.y v.w v.w
def zzxx (v : Vector4) : Vector4 := .mk v.z v.z v.x v.x
def zzxy (v : Vector4) : Vector4 := .mk v.z v.z v.x v.y
def zzxz (v : Vector4) : Vector4 := .mk v.z v.z v.x v.z
def zzxw (v : Vector4) : Vector4 := .mk v.z v.z v.x v.w
def zzyx (v : Vector4) : Vector4 := .mk v.z v.z v.y v.x
def zzyy (v : Vector4) : Vector4 := .mk v.z v.z v.y v.y
def zzyz (v : Vector4) : Vector4 := .mk v.z v.z v.y v.z
def zzyw (v : Vector4) : Vector4 := .mk v.z v.z v.y v.w
def zzzx (v : Vector4) : Vector4 := .mk v.z v.z v.z v.x
def zzzy (v : Vector4) : Vector4 := .mk v.z v.z v.z v.y
def zzzz (v : Vector4) : Vector4 := .mk v.z v.z v.z v.z
def zzzw (v : Vector4) : Vector4 := .mk v.z v.z v.z v.w
def zzwx (v : Vector4) : Vector4 := .mk v.z v.z v.w v.x
def zzwy (v : Vector4) : Vector4 := .mk v.z v.z v.w v.y
def zzwz (v : Vector4) : Vector4 := .mk v.z v.z v.w v.z
def zzww (v : Vector4) : Vector4 := .mk v.z v.z v.w v.w
def zwxx (v : Vector4) : Vector4 := .mk v.z v.w v.x v.x
def zwxy (v : Vector4) : Vector4 := .mk v.z v.w v.x v.y
def zwxz (v : Vector4) : Vector4 := .mk v.z v.w v.x v.z
def zwxw (v : Vector4) : Vector4 := .mk v.z v.w v.x v.w
def zwyx (v : Vector4) : Vector4 := .mk v.z v.w v.y v.x
def zwyy (v : Vector4) : Vector4 := .mk v.z v.w v.y v.y
def zwyz (v : Vector4) : Vector4 := .mk v.z v.w v.y v.z
def zwyw (v : Vector4) : Vector4 := .mk v.z v.w v.y v.w
def zwzx (v : Vector4) : Vector4 := .mk v.z v.w v.z v.x
def zwzy (v : Vector4) : Vector4 := .mk v.z v.w v.z v.y
def zwzz (v : Vector4) : Vector4 := .mk v.z v.w v.z v.z
def zwzw (v : Vector4) : Vector4 := .mk v.z v.w v.z v.w
def zwwx (v : Vector4) : Vector4 := .mk v.z v.w v.w v.x
def zwwy (v : Vector4) : Vector4 := .mk v.z v.w v.w v.y
def zwwz (v : Vector4) : Vector4 := .mk v.z v.w v.w v.z
def zwww (v : Vector4) : Vector4 := .mk v.z v.w v.w v.w
def wxxx (v : Vector4) : Vector4 := .mk v.w v.x v.x v.x
def wxxy (v : Vector4) : Vector4 := .mk v.w v.x v.x v.y
def wxxz (v : Vector4) : Vector4 := .mk v.w v.x v.x v.z
def wxxw (v : Vector4) : Vector4 := .mk v.w v.x v.x v.w
def wxyx (v : Vector4) : Vector4 := .mk v.w v.x v.y v.x
def wxyy (v : Vector4) : Vector4 := .mk v.w v.x v.y v.y
def wxyz (v : Vector4) : Vector4 := .mk v.w v.x v.y v.z
def wxyw (v : Vector4) : Vector4 := .mk v.w v.x v.y v.w
def wxzx (v : Vector4) : Vector4 := .mk v.w v.x v.z v.x
def wxzy (v : Vector4) : Vector4 := .mk v.w v.x v.z v.y
def wxzz (v : Vector4) : Vector4 := .mk v.w v.x v.z v.z
def wxzw (v : Vector4) : Vector4 := .mk v.w v.x v.z v.w
def wxwx (v : Vector4) : Vector4 := .mk v.w v.x v.w v.x
def wxwy (v : Vector4) : Vector4 := .mk v.w v.x v.w v.y
def wxwz (v : Vector4) : Vector4 := .mk v.w v.x v.w v.z
def wxww (v : Vector4) : Vector4 := .mk v.w v.x v.w v.w
def wyxx (v : Vector4) : Vector4 := .mk v.w v.y v.x v.x
def wyxy (v : Vector4) : Vector4 := .mk v.w v.y v.x v.y
def wyxz (v : Vector4) : Vector4 := .mk v.w v.y v.x v.z
def wyxw (v : Vector4) : Vector4 := .mk v.w v.y v.x v.w
def wyyx (v : Vector4) : Vector4 := .mk v.w v.y v.y v.x
def wyyy (v : Vector4) : Vector4 := .mk v.w v.y v.y v.y
def wyyz (v : Vector4) : Vector4 := .mk v.w v.y v.y v.z
def wyyw (v : Vector4) : Vector4 := .mk v.w v.y v.y v.w
def wyzx (v : Vector4) : Vector4 := .mk v.w v.y v.z v.x
def wyzy (v : Vector4) : Vector4 := .mk v.w v.y v.z v.y
def wyzz (v : Vector4) : Vector4 := .mk v.w v.y v.z v.z
def wyzw (v : Vector4) : Vector4 := .mk v.w v.y v.z v.w
def wywx (v : Vector4) : Vector4 := .mk v.w v.y v.w v.x
def wywy (v : Vector4) : Vector4 := .mk v.w v.y v.w v.y
def wywz (v : Vector4) : Vector4 := .mk v.w v.y v.w v.z
def wyww (v : Vector4) : Vector4 := .mk v.w v.y v.w v.w
def wzxx (v : Vector4) : Vector4 := .mk v.w v.z v.x v.x
def wzxy (v : Vector4) : Vector4 := .mk v.w v.z v.x v.y
def wzxz (v : Vector4) : Vector4 := .mk v.w v.z v.x v.z
def wzxw (v : Vector4) : Vector4 := .mk v.w v.z v.x v.w
def wzyx (v : Vector4) : Vector4 := .mk v.w v.z v.y v.x
def wzyy (v : Vector4) : Vector4 := .mk v.w v.z v.y v.y
def wzyz (v : Vector4) : Vector4 := .mk v.w v.z v.y v.z
def wzyw (v : Vector4) : Vector4 := .mk v.w v.z v.y v.w
def wzzx (v : Vector4) : Vector4 := .mk v.w v.z v.z v.x
def wzzy (v : Vector4) : Vector4 := .mk v.w v.z v.z v.y
def wzzz (v : Vector4) : Vector4 := .mk v.w v.z v.z v.z
def wzzw (v : Vector4) : Vector4 := .mk v.w v.z v.z v.w
def wzwx (v : Vector4) : Vector4 := .mk v.w v.z v.w v.x
def wzwy (v : Vector4) : Vector4 := .mk v.w v.z v.w v.y
def wzwz (v : Vector4) : Vector4 := .mk v.w v.z v.w v.z
def wzww (v : Vector4) : Vector4 := .mk v.w v.z v.w v.w
def wwxx (v : Vector4) : Vector4 := .mk v.w v.w v.x v.x
def wwxy (v : Vector4) : Vector4 := .mk v.w v.w v.x v.y
def wwxz (v : Vector4) : Vector4 := .mk v.w v.w v.x v.z
def wwxw (v : Vector4) : Vector4 := .mk v.w v.w v.x v.w
def wwyx (v : Vector4) : Vector4 := .mk v.w v.w v.y v.x
def wwyy (v : Vector4) : Vector4 := .mk v.w v.w v.y v.y
def wwyz (v : Vector4) : Vector4 := .mk v.w v.w v.y v.z
def wwyw (v : Vector4) : Vector4 := .mk v.w v.w v.y v.w
def wwzx (v : Vector4) : Vector4 := .mk v.w v.w v.z v.x
def wwzy (v : Vector4) : Vector4 := .mk v.w v.w v.z v.y
def wwzz (v : Vector4) : Vector4 := .mk v.w v.w v.z v.z
def wwzw (v : Vector4) : Vector4 := .mk v.w v.w v.z v.w
def wwwx (v : Vector4) : Vector4 := .mk v.w v.w v.w v.x
def wwwy (v : Vector4) : Vector4 := .mk v.w v.w v.w v.y
def wwwz (v : Vector4) : Vector4 := .mk v.w v.w v.w v.z
def wwww (v : Vector4) : Vector4 := .mk v.w v.w v.w v.w

end Raymath.Vector4
