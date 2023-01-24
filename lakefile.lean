import Lake
open Lake DSL

package BellaNova

@[default_target]
lean_lib BellaNova

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "49ee890897dbdd4665d0e8c75cd3401f0b4e6f21"