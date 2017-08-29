local Path = "bpcs/modules/"
for _, filename in pairs( file.Find( Path .. "extensions/*.lua", "LUA" ) ) do
  AddCSLuaFile( Path .. "extensions/" .. filename )
end
