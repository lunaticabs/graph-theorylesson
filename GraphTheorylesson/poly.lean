def lengthNat : Nat → Nat :=
  fun n => match n with
  | Nat.zero => 0
  | Nat.succ n => lengthNat n + 1

def lengthList : List Nat → Nat :=
  fun xs => match xs with
  | [] => 0
  | _ :: xs => lengthList xs + 1

class HaveLength (α : Type) where
  len : α → Nat

instance : HaveLength Nat where
  len := lengthNat

instance : HaveLength (List Nat) where
  len := lengthList


#eval HaveLength.len 1000
#eval HaveLength.len [1, 2, 3, 2, 1]
