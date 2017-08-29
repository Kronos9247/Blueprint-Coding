ExtLoader = {}

ExtLoader.NIL = "nil"

ExtLoader.io = {}
ExtLoader.io.types = {}

ExtLoader.library = {}

function ExtLoader.Register( library )
  ExtLoader.library[library] = {}
end

function ExtLoader.RegisterClass( library, ioname, name )
  table.insert( ExtLoader.io.types, { ioname, name, library } )
end
function ExtLoader.RegisterFunction( library, name, textfunc, inputnames, inputtypes, outputname, outputtype, thisname, thistype )
  ExtLoader.library[library][name] = { true, name, textfunc, inputnames, inputtypes, outputname, outputtype, thisname, thistype }
end
function ExtLoader.AddE2HelperDescription( library, name )

end

function ExtLoader.RegisterShortcutFunction( library, name, inputnames, inputtypes, outputname, outputtype, textfunc )
  ExtLoader.library[library][name] = { false, name, textfunc, inputnames, inputtypes, outputname, outputtype }
end

local Path = "bpcs/modules/"
for _, filename in pairs( file.Find( Path .. "extensions/*.lua", "LUA" ) ) do
  include( Path .. "extensions/" .. filename )
end
