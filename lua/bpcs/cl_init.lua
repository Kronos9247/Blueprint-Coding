if not BPCS then
	BPCS = {}

  local Path = "bpcs/modules/"
	for _, filename in pairs( file.Find( Path .. "client/*.lua", "LUA" ) ) do
		include( Path .. "client/" .. filename )
	end
end
