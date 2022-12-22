import Lake
open Lake DSL

package BellPerson

@[default_target]
lean_lib BellPerson

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "dcf9c9f77db7564025f61107e9503caf011e39dc"
