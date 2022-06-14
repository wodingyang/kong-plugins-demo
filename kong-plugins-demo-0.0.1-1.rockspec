local plugin_name = "demo"
local package_name = "kong-plugins-" .. plugin_name
local package_version = "0.0.1"
local rockspec_revision = "1"

local github_account_name = "wodingyang"
local github_repo_name = "kong-plugins-demo"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = "main",
}


description = {
  summary = "",
  homepage = "",
  license = "",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
