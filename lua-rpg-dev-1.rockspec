rockspec_format = "3.0"
package = "lua-rpg"
version = "dev-1"
source = {
   url = "https://github.com/astro-derek/lua-rpg",
   tag = "v0.0.0"
}
description = {
   summary = "An RPG Engine built in lua.",
   homepage = "https://github.com/astro-derek/lua-rpg",
   license = "MIT",
   maintainer = "Derek Potter <dpmn83@gmail.com>"
}
dependencies = {
   "lua ~> 5.4",
}
build = {
   type = "builtin",
   modules = {
      main = "src/main.lua"
   }
}
