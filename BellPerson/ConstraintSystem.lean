import BellPerson.Error
import BellPerson.LinearCombination

class ConstraintSystem (F : Type _) where
  getRoot : F → F
  -- TODO: define the rest of the methods

class Circuit (F : Type _) [ConstraintSystem F] where
  synthesise : F → Except SynthesisError Unit