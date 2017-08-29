local Path = "bpcs/modules/"
for _, filename in pairs( file.Find( Path .. "menu/*.lua", "LUA" ) ) do
	AddCSLuaFile( Path .. "menu/" .. filename )
end
