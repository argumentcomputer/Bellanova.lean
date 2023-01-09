import Lake
open Lake DSL

package BellaNova

@[default_target]
lean_lib BellaNova

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "ff0b553a7c2a63d3b0b9c963dfdeebea2a692a10"
