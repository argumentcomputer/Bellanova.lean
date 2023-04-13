import Lake
open Lake DSL

package BellaNova

@[default_target]
lean_lib BellaNova

require YatimaStdLib from git
  "https://github.com/lurk-lab/YatimaStdLib.lean" @ "f39dca7a0815ee65e71776d46337f0240037ff6d"
  
require FFaCiL from git
  "https://github.com/lurk-lab/FFaCiL.lean" @ "b3254118a665ca18625c7ca848cc02625d2e5d73"
