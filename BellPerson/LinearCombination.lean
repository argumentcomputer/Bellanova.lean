inductive Index : Type _ where
  | Input : USize → Index
  | Aux : USize → Index

structure Variable (A : Type _) where
  var : A

instance [Add A] : HAdd A (Variable A) (Variable A) where
  hAdd a v := Variable.mk (a + v.var)     

def mkZeroVar : Variable Index :=
  Variable.mk ∘ .Input $ 0

structure LinearCombination (F : Type _) where
  comb : Array (Variable Index × F)

def LinearCombination.size (v : LinearCombination F) : Nat
  := v.comb.size

instance [OfNat F 0] : Inhabited (LinearCombination F) where
  default := LinearCombination.mk #[(mkZeroVar, 0)]

instance : Add (LinearCombination F) where
  add v₁ v₂ :=
    LinearCombination.mk _

structure Indexer (F : Type _) where
  values : Array (USize × F)
  lastInserted : Option (USize × USize)