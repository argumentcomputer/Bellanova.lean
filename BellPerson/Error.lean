inductive SynthesisError : Type where
-- During synthesis, we lacked knowledge of a variable assignment.
  | AssignmentMissing : SynthesisError
-- During synthesis, we divided by zero.
  | DivisionByZero : SynthesisError
-- During synthesis, we constructed an unsatisfiable constraint system.
  | Unsatisfiable : SynthesisError
-- During synthesis, our polynomials ended up being too high of degree
  | PolynomialDegreeTooLarge : SynthesisError
-- During proof generation, we encountered an identity in the CRS
  | UnexpectedIdentity : SynthesisError
-- During proof generation, we encountered an I/O error with the CRS
  | IoError : SynthesisError
-- During verification, our verifying key was malformed.
  | MalformedVerifyingKey : SynthesisError
-- During CRS generation, we observed an unconstrained auxiliary variable
  | UnconstrainedVariable : SynthesisError
-- During GPU multiexp/fft, some GPU related error happened
  | GpuError : SynthesisError
  | MalformedProofs : String → SynthesisError
  | MalformedSrs : SynthesisError
  | NonPowerOfTwo : SynthesisError
  | IncompatibleLengthVector : String → SynthesisError
  | InvalidPairing : SynthesisError