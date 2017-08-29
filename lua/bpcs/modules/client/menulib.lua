if not MenuLib then
  MenuLib = {}

  MenuLib.Pages = {}
  MenuLib.Frames = {}

  function MenuLib.Register( id, name, icon, func )
    MenuLib.Pages[id] = { name, icon, func }
  end

  function MenuLib.RegisterFrame( id, name, func )
    MenuLib.Frames[id] = { name, func }
  end

  local function AddCloseButton( sheet, panel )
    local button = vgui.Create( "DButton", panel )
    button:SetText( "X" )

    button.DoClick = function()
      sheet:Close()
    end

    return button
  end

  local function AddSheetProperties( frame )
    frame:SetSize( 600, 300 )
    frame:Center()
  end

  function MenuLib.OpenFrame( id, ... )
    if MenuLib.Frames[id] then
      local frame = vgui.Create( "DFrame" )
      frame:SetTitle( MenuLib.Frames[id][1] )

      MenuLib.Frames[id][2]( frame, ... )

      frame:MakePopup()
    end
  end

  function MenuLib.Open()
    local frame = vgui.Create( "DFrame" )
    AddSheetProperties( frame )

    local sheet = vgui.Create( "DPropertySheet", frame )
    sheet:Dock( FILL )

    for id, data in pairs( MenuLib.Pages ) do
      local panel = vgui.Create( "DPanel", sheet )
      AddCloseButton( sheet, panel )

      data[3]( panel )

      sheet:AddSheet( data[1], panel, data[2] )
    end

    frame:MakePopup()

    return frame, sheet
  end

  local Path = "bpcs/modules/"
  for _, filename in pairs( file.Find( Path .. "menu/*.lua", "LUA" ) ) do
  	include( Path .. "menu/" .. filename )
  end
end
