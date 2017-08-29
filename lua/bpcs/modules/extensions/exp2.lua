local NIL = ExtLoader.NIL

--[[       Number Extension        ]]--
ExtLoader.Register( "math" )

ExtLoader.RegisterClass( "math", "NUMBER", "number" )
ExtLoader.RegisterClass( "math", "NORMAL", "normal" )

ExtLoader.RegisterOperator( "math", "+", "NUMBER", "NUMBER", "NUMBER" )
ExtLoader.RegisterOperator( "math", "+", "NORMAL", "NORMAL", "NORMAL" )

ExtLoader.RegisterOperator( "math", "==", "NUMBER", "NUMBER", "NORMAL" )
ExtLoader.RegisterOperator( "math", "==", "NORMAL", "NORMAL", "NORMAL" )

ExtLoader.RegisterOperator( "math", "!=", "NUMBER", "NUMBER", "NORMAL" )
ExtLoader.RegisterOperator( "math", "!=", "NORMAL", "NORMAL", "NORMAL" )

ExtLoader.RegisterFunction( "math", "Cosine", "cos", { "Input" }, { "NUMBER" }, "Cosine", "NUMBER" )
ExtLoader.AddE2HelperDescription( "math", "Cosine" )

--[[       String Extension        ]]--
ExtLoader.Register( "string" )

ExtLoader.RegisterClass( "string", "STRING", "string" )

--[[       Wirelink Extension        ]]--
ExtLoader.Register( "wirelink" )

ExtLoader.RegisterClass( "wirelink", "WIRELINK", "wirelink" )

ExtLoader.RegisterFunction( "wirelink", "GetWirelink", "wirelink", {}, {}, "wirelink", "WIRELINK", "entity", "ENTITY" )

--[[       Matrix Extension        ]]--
ExtLoader.Register( "matrix" )

ExtLoader.RegisterClass( "matrix", "MATRIX", "matrix" )

--[[       Entity Extension        ]]--
ExtLoader.Register( "entity" )

ExtLoader.RegisterClass( "entity", "ENTITY", "entity" )

ExtLoader.RegisterFunction( "entity", "GetE2", "entity", {}, {}, "expression2", "ENTITY" )
ExtLoader.RegisterFunction( "entity", "GetEntity", "entity", { "EntityID" }, { "NUMBER" }, "entity", "ENTITY" )

--[[       Debug Extension        ]]--
ExtLoader.Register( "debug" )

ExtLoader.RegisterFunction( "debug", "Print", "print", { "Str" }, { "STRING" }, NIL, NIL )
