import Lake
open Lake DSL

package BellaNova

@[default_target]
lean_lib BellaNova

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "dcf9c9f77db7564025f61107e9503caf011e39dc"