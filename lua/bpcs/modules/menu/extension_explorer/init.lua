EELib = {}
EELib.Nodes = {}

--TODO: Adding the spawn function to the blueprint node

function EELib.RegisterNode( name, icon, func )
  table.insert( EELib.Nodes, { name, icon, func } )
end

function EELib.AddNode( name, icon )
  EELib.currenttree:AddNode( name, icon )
end

function EELib.Init( explorer, viewport )
  local tree = vgui.Create( "DTree", explorer )
  tree:SetPos( 5, 30 )
  tree:SetPadding( 5 )
  tree:Dock( FILL )

  local rootnode = tree:AddNode( "Extensions" )
  rootnode:SetExpanded( true )
  EELib.currenttree = rootnode

  for _, node in pairs( EELib.Nodes ) do
    local cnode = rootnode:AddNode( node[1], node[2] )

    if node[3] then
      node[3]( cnode )
    end
  end
end

function EELib.AddBlueprint_Node( parent, name, spawnfunc )
  parent:AddNode( name, "vgui/bpcs/blue_circle.png" )
end

EELib.RegisterNode( "Gates", "bull/gates/gate_logic_and", function( node )
  hook.Run( "BPCS_Hooks:LoadingGates", node )
end )

EELib.RegisterNode( "Expression 2", "vgui/e2logo", function( node )

end )

EELib.RegisterNode( "Test", "icon16/folder.png", function( node )
  EELib.AddBlueprint_Node( node, "test", function( position )
    --return true, "type_id", position

    return false --False inticate that the blueprint type can't spawn
  end )
end )
