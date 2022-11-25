import Lake
open Lake DSL

package BellPerson

@[default_target]
lean_lib BellPerson

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "ea96c587a3f9e8f65719b6f4f70f1305c560c6ac"
