import YatimaStdLib.Bit
import YatimaStdLib.Ring

structure DensityTracker where
  bv : Array Bit
  totalDensity : Nat

def newTracker : DensityTracker := DensityTracker.mk #[] 0

def addElement (tr : DensityTracker) : DensityTracker :=
  let newBv :=  Array.push tr.bv .zero
  DensityTracker.mk newBv tr.totalDensity

structure SatisfyingAssignment (G : Type _) where
  aAuxDensity : DensityTracker
  bInputDensity : DensityTracker
  bAuxDensity : DensityTracker
  a : Array G
  b : Array G
  c : Array G
  inputAssignment : Array G
  auxAssignment : Array G

def newSatisfyingAssignment [Ring G] : SatisfyingAssignment G :=
  let d := addElement newTracker
  SatisfyingAssignment.mk
    newTracker
    d
    newTracker
    #[]
    #[]
    #[]
    #[1]
    #[]