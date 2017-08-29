if not BPCS then
	BPCS = {}

	AddCSLuaFile( "cl_init.lua" )

	include( "modules/sh_checker.lua" )
	include( "modules/menu/extension_explorer/sv_init.lua" )

	local Path = "bpcs/modules/"
	for _, filename in pairs( file.Find( Path .. "client/*.lua", "LUA" ) ) do
		AddCSLuaFile( Path .. "client/" .. filename )
	end

	for _, filename in pairs( file.Find( Path .. "server/*.lua", "LUA" ) ) do
		include( Path .. "server/" .. filename )
	end
end
