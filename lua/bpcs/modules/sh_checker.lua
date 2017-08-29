local URL = "https://raw.githubusercontent.com/Kronos9247/Blueprint-Coding/master/data/blueprints_init.txt"

http.Fetch( URL,
	function( body, len, headers, code )
		local Version = file.Read( "blueprints_init.txt" )

		print( "#[    Blueprint Coding    ]#" )
		if Version == code then
			print( "[UpdateChecker] Up to date!" )
		else
			print( "[UpdateChecker] Out dated version installed!" )
			print( "[UpdateChecker] Please update to the newest version!" )
		end
	end,
	
	function( error )
		print( "#[    Blueprint Coding    ]#" )
		print( "[UpdateChecker] Failed!" )
	end
)
