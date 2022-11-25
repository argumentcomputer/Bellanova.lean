inductive Index : Type _ where
  | Input : USize → Index
  | Aux : USize → Index

structure Variable (A : Type _) where
  var : A

def mkZeroVar : Variable Index :=
  Variable.mk ∘ .Input $ 0

structure LinearCombination (F : Type _) where
  comb : Array (Variable Index × F)

-- TODO

instance [OfNat F 0] : Inhabited (LinearCombination F) where
  default := LinearCombination.mk #[(mkZeroVar, 0)]

instance : Add (LinearCombination F) where
  add := sorry

structure Indexer (F : Type _) where
  values : Array (USize × F)
  lastInserted : Option (USize × USize)