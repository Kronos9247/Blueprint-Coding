ExtLoader.Register( "test" )

local NIL = ExtLoader.NIL

ExtLoader.RegisterShortcutFunction( "test", "test", { "Text" }, { "STRING" }, NIL, NIL, "print( %Text% )" )
