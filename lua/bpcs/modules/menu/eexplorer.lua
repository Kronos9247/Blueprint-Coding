include( "extension_explorer/init.lua" )

MenuLib.RegisterFrame( "extexplorer", "Extension Explorer", function( explorer, viewport )
  explorer:SetSize( 300, 400 )
  explorer:Center()

  EELib.Init( explorer, viewport )

  if viewport then
    --Extension Explorer has extra functionalities, while running the blueprint editor
  end
end )
