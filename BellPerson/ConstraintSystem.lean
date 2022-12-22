import BellPerson.Error
import BellPerson.LinearCombination

class ConstraintSystem (F : Type _) where
  /-- Gets the "root" constraint system, bypassing the namespacing.
  Not intended for downstream use; use `namespace` instead.
  -/
  getRoot : F → F

  /-- Allocate a private variable in the constraint system. The provided function is used to
  determine the assignment of the variable. The given `annotation` function is invoked
  in testing contexts in order to derive a unique name for this variable in the current
  namespace.
  -/
  alloc : String → Except SynthesisError F → Except SynthesisError (Variable F)

  /-- Allocate a public variable in the constraint system. 
  The provided function is used to determine the assignment of the variable.
  -/
  allocInput : String → Except SynthesisError F → Except SynthesisError (Variable F)

  /-- Most implementations of ConstraintSystem are not 'extensible':
  they won't implement a specialised version of `extend` and 
  should therefore also keep the default implementation of `is_extensible`
  so callers which optionally make use of `extend` can know 
  to avoid relying on it when unimplemented.
  -/
  isExtensible : Bool

/-- Convenience implementation of `ConstraintSystem F` 
for mutable references to constraint systems.
-/
class Circuit (F : Type _) [ConstraintSystem F] where
  synthesise : F → Except SynthesisError Unit