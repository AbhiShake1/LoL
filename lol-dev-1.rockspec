package = "lol"
version = "dev-1"
source = {
   url = "git+https://github.com/AbhiShake1/LoL.git"
}
description = {
   summary = "# Usage Being highly energetic bois always looking to `INSERT INTO hole`, let's create a `hole` first: ```lua local Hole = require 'lol' local hole = Hole({   port = 6969, }) ``` This hole is now ready to receive requests.",
   detailed = [[
# Usage
Being highly energetic bois always looking to `INSERT INTO hole`, let's create a `hole` first:
```lua
local Hole = require 'lol'
local hole = Hole({
  port = 6969,
})
```
This hole is now ready to receive requests. And its fun like `INSERTING INTO` **real** `hole`, but without the associated effort, time, cost, and drama.]],
   homepage = "https://github.com/AbhiShake1/LoL",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["lol.init"] = "lol/init.lua"
   }
}
