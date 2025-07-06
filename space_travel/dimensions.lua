--Technical stuff
minetest.register_node("space_travel:ice_spike", {drawtype="airlike",groups = {not_in_creative_inventory=1},})
minetest.register_node("space_travel:minerva_tree_spawner", {drawtype="airlike",groups = {not_in_creative_inventory=1},})
minetest.register_node("space_travel:bacchus_tree_spawner", {drawtype="airlike",groups = {not_in_creative_inventory=1},})
minetest.register_node("space_travel:venus_vapor_spout_spawner", {
	description = "Venus Vapor Spout Spawner",
	tiles = {"space_travel_venus_dust.png^space_travel_geyser_hole.png", "space_travel_venus_cobble.png^space_travel_geyser_hole.png", "space_travel_venus_dust.png", "space_travel_venus_dust.png", "space_travel_venus_dust.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:venus_dust",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})
minetest.register_node("space_travel:venus_volcano_spawner", {
	description = "Venus Volcano Spawner",
	tiles = {"space_travel_venus_dust.png^space_travel_geyser_hole.png", "space_travel_venus_cobble.png^space_travel_geyser_hole.png", "space_travel_venus_dust.png", "space_travel_venus_dust.png", "space_travel_venus_dust.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:venus_dust",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})
minetest.register_node("space_travel:io_volcano_spawner", {
	description = "Io Volcano Spawner",
	tiles = {"space_travel_io_sulfur_dust.png^space_travel_geyser_hole.png", "space_travel_io_cobble.png^space_travel_geyser_hole.png", "space_travel_io_sulfur_dust.png", "space_travel_io_sulfur_dust.png", "space_travel_io_sulfur_dust.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:io_sulfur_dust",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})
minetest.register_node("space_travel:titan_cryovolcano_spawner", {
	description = "Titan Cryovolcano Spawner",
	tiles = {"space_travel_titan_hydrocarbon_sand.png^space_travel_geyser_hole.png", "space_travel_titan_icestone.png^space_travel_geyser_hole.png", "space_travel_titan_hydrocarbon_sand.png", "space_travel_titan_hydrocarbon_sand.png", "space_travel_titan_hydrocarbon_sand.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:titan_hydrocarbon_sand",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})
minetest.register_node("space_travel:space_cryovolcano_spawner", {
	description = "Space Cryovolcano Spawner",
	tiles = {"space_travel_space_dust.png^space_travel_geyser_hole.png", "space_travel_space_cobble.png^space_travel_geyser_hole.png", "space_travel_space_dust.png", "space_travel_space_dust.png", "space_travel_space_dust.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:space_dust",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})
minetest.register_node("space_travel:europa_water_geyser_spawner", {
	description = "Europa Water Geyser Spawner",
	tiles = {"space_travel_space_dust.png^space_travel_geyser_hole.png", "space_travel_space_cobble.png^space_travel_geyser_hole.png", "space_travel_space_dust.png", "space_travel_space_dust.png", "space_travel_space_dust.png"},
	is_ground_content = false,
	groups = {crumbly = 3, not_in_creative_inventory = 1},
	drop = "space_travel:space_dust",
	sounds = default.node_sound_sand_defaults(),
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
})

--Dimensions

multidimensions.clear_dimensions() -- clear all dimensions

multidimensions.register_dimension("luna_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["space_travel:space_stone_lunar_spinel_ore"]=10000,
	["space_travel:space_stone_ilmenite_ore"]=600,
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 1500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("mars_planet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:mars_stone_with_iron"]=300,--400,
	["space_travel:mars_stone_with_copper"]=500,
	["space_travel:mars_stone_with_tin"]=600,
	["space_travel:mars_stone_with_gold"]=2000,
	["space_travel:mars_stone_with_mese"]=10000,
	["space_travel:mars_stone_with_diamond"]=20000,
	["space_travel:mars_stone_with_martian_ice_crystal"]=10000,
  },   
  dirt_ores = {},
  grass_ores = {},
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 3000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:mars_stone",
  dirt = "space_travel:mars_sandstone",
  grass = "space_travel:mars_sand",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:mars_sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("mercury_planet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["space_travel:space_stone_solar_mese_ore"]=10000,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 4500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("venus_planet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:venus_stone_iron_ore"]=400,
	["space_travel:venus_stone_copper_ore"]=500,
	["space_travel:venus_stone_tin_ore"]=600,
	["space_travel:venus_stone_gold_ore"]=2000,
	["space_travel:venus_stone_mese_ore"]=10000,
	["space_travel:venus_stone_diamond_ore"]=20000,
	["space_travel:venus_gravel"]={chance=3000,chunk=2,},
	["space_travel:venus_stone_galena_ore"]=2000,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:venus_gravel"] = 100,
	["space_travel:venus_vapor_spout_spawner"] = 30000, --15000,
	["space_travel:venus_volcano_spawner"] = 30000, --15000,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {
	["space_travel:space_lava_source"] = 100,
  },
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 6000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:venus_stone",
  dirt = "space_travel:venus_cobble",
  grass = "space_travel:venus_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:venus_gravel",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("ganymede_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["space_travel:irradiated_space_stone"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {
	["space_travel:irradiated_space_cobble"]=400,
  },
  grass_ores = {
	["space_travel:space_gravel"] = 100,
	["space_travel:irradiated_space_dust"]=200,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 7500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("callisto_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 9000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("io_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:io_stone_iron_ore"]=400,
	["space_travel:io_stone_copper_ore"]=500,
	["space_travel:io_stone_tin_ore"]=600,
	["space_travel:io_stone_gold_ore"]=2000,
	["space_travel:io_stone_mese_ore"]=10000,
	["space_travel:io_stone_diamond_ore"]=20000,
	["space_travel:io_gravel"]={chance=3000,chunk=2,},
	["space_travel:space_lava_source"]=2000,
	["space_travel:irradiated_io_stone"] = 400,
	["space_travel:io_stone_lava_crystal_ore"]=10000,
  },     	     -- works as above, but in stone
  dirt_ores = {
	["space_travel:irradiated_io_cobble"] = 400,
  },
  grass_ores = {
	["space_travel:io_gravel"] = 100,
	["space_travel:space_lava_source"] = 256,
	["space_travel:io_volcano_spawner"] = 15000,
	["space_travel:irradiated_io_sulfur_dust"] = 200,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 10500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:io_stone",
  dirt = "space_travel:io_cobble",
  grass = "space_travel:io_sulfur_dust",
  air = "vacuum:vacuum",
  water = "space_travel:space_lava_source",
  sand = "space_travel:io_gravel",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("europa_moon",{

  ground_ores = {
	["space_travel:ice_spike"] = 256,
  },
  stone_ores = {
	["space_travel:irradiated_ice"] = 400,
  },     	     -- works as above, but in stone
  dirt_ores = {
	["space_travel:irradiated_space_cobble"] = 400,
  },
  grass_ores = {
	["space_travel:space_gravel"] = 100,
	["space_travel:europa_water_geyser_spawner"] = 15000,
	["space_travel:irradiated_space_dust"] = 200,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 12000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "default:ice",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:tholins",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("titan_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	--["space_travel:titan_icestone_iron_ore"]=400,
	--["space_travel:titan_icestone_copper_ore"]=500,
	--["space_travel:titan_icestone_gold_ore"]=2000,
	--["space_travel:titan_icestone_mese_ore"]=10000,
	--["space_travel:titan_icestone_diamond_ore"]=20000,
  },     	     -- works as above, but in stone
  dirt_ores = {
	["space_travel:titan_icestone_iron_ore"]=400,
	["space_travel:titan_icestone_copper_ore"]=500,
	["space_travel:titan_icestone_tin_ore"]=600,
	["space_travel:titan_icestone_gold_ore"]=2000,
	["space_travel:titan_icestone_mese_ore"]=10000,
	["space_travel:titan_icestone_diamond_ore"]=20000,
	["space_travel:titan_icestone_ilmenite_ore"]=600,
  },
  grass_ores = {
	["space_travel:titan_cryovolcano_spawner"] = 15000,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 13500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:titan_icestone",
  dirt = "space_travel:titan_icestone",
  grass = "space_travel:titan_hydrocarbon_sand",
  air = "vacuum:vacuum",
  water = "space_travel:liquid_hydrocarbon_source",
  sand = "space_travel:titan_hydrocarbon_sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("oberon_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 15000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("triton_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
	["space_travel:space_cryovolcano_spawner"] = 15000,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 16500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("pluto_dwarf_planet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
	["space_travel:space_cryovolcano_spawner"] = 15000,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 18000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("charon_moon",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:space_stone_iron_ore"]=400,
	["space_travel:space_stone_copper_ore"]=500,
	["space_travel:space_stone_tin_ore"]=600,
	["space_travel:space_stone_gold_ore"]=2000,
	["space_travel:space_stone_mese_ore"]=10000,
	["space_travel:space_stone_diamond_ore"]=20000,
	["space_travel:space_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 19500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:space_stone",
  dirt = "space_travel:space_cobble",
  grass = "space_travel:space_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:space_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("sedna_dwarf_planet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:sedna_stone_iron_ore"]=400,
	["space_travel:sedna_stone_copper_ore"]=500,
	["space_travel:sedna_stone_tin_ore"]=600,
	["space_travel:sedna_stone_gold_ore"]=2000,
	["space_travel:sedna_stone_mese_ore"]=10000,
	["space_travel:sedna_stone_diamond_ore"]=20000,
	["space_travel:sedna_gravel"]={chance=3000,chunk=2,},
	["default:ice"]=400,
	["space_travel:sedna_stone_dark_matter_crystal_ore"]=20000,
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	["space_travel:sedna_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 21000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:sedna_stone",
  dirt = "space_travel:sedna_cobble",
  grass = "space_travel:sedna_dust",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:sedna_dust",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("asteriod_belt",{
	ground_ores = {},--table.copy(plants),
	stone_ores = {
		["space_travel:space_stone_iron_ore"]=400,
		["space_travel:space_stone_copper_ore"]=500,
		["space_travel:space_stone_tin_ore"]=600,
		["space_travel:space_stone_gold_ore"]=2000,
		["space_travel:space_stone_mese_ore"]=10000,
		["space_travel:space_stone_diamond_ore"]=20000,
		["space_travel:space_gravel"]={chance=3000,chunk=2,},
		["default:ice"]=400,
		["space_travel:space_stone_ilmenite_ore"]=600,
	},--table.copy(ores),
	dirt_ores = {},
	grass_ores = {
		["space_travel:space_gravel"] = 100,
	},
	air_ores = {
		["space_travel:space_stone"] = 5000,
		["space_travel:space_stone_iron_ore"]=400 * 200,
		["space_travel:space_stone_copper_ore"]=500 * 200,
		["space_travel:space_stone_tin_ore"]=600 * 200,
		["space_travel:space_stone_gold_ore"]=2000 * 200,
		["space_travel:space_stone_mese_ore"]=10000 * 200,
		["space_travel:space_stone_diamond_ore"]=20000 * 200,
		["space_travel:space_stone_ilmenite_ore"]=600 * 200,
	},
	--node={description="Alternative floatand"},
	dim_y = 22500,             -- dimension start (don't change if you don't know what you're doing)
	dim_height =  999,	    -- dimension height
	ground_limit=550,
	teleporter = false,         -- (nil = true) dimension teleporter
	gravity = 1,		    -- (1 = default) dimension gravity
	--craft = {
	--	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	--	{"default:dirt","default:mese","default:dirt",},
	--	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	--},
	stone = "space_travel:space_stone",
	dirt = "space_travel:space_cobble",
	grass = "space_travel:space_dust",
	air = "vacuum:vacuum",
	water = "vacuum:vacuum",
	sand = "space_travel:space_dust",
	bedrock = "multidimensions:bedrock", -- at dimension edges
	map={
		spread={x=30,y=30,z=30},
		octaves=3,
		persist=0.2,
		lacunarity=2,
		flags="eased",
	},
	terrain_density=0.2,
	enable_water=false,
	self={
		blocking="vacuum:vacuum", --multidimensions:blocking
		killing = "vacuum:vacuum", --multidimensions:killing
	},
	on_generate=function(self,data,id,area,x,y,z)
		if y <= self.dirt_start-70 then
			data[id] = self.killing
		elseif y <= self.dirt_start-100 then
			data[id] = self.blocking
		elseif y <= self.dirt_start+5 then
			data[id] = self.air
		else
			return
		end
		return data
	end,
})

multidimensions.register_dimension("minerva_exoplanet",{

  ground_ores = {
	["space_travel:minerva_fern_1"] = 20,
	["space_travel:minerva_fern_2"] = 40,
	["space_travel:minerva_fern_3"] = 80,
	["space_travel:minerva_tree_spawner"] = 128,
  },
  stone_ores = {
	["space_travel:minerva_stone_iron_ore"]=400,
	["space_travel:minerva_stone_copper_ore"]=500,
	["space_travel:minerva_stone_tin_ore"]=600,
	["space_travel:minerva_stone_gold_ore"]=2000,
	["space_travel:minerva_stone_mese_ore"]=10000,
	["space_travel:minerva_stone_diamond_ore"]=20000,
	--["default:gravel"]={chance=3000,chunk=2,},
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	--["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 23500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:minerva_stone",
  dirt = "space_travel:minerva_dirt",
  grass = "space_travel:minerva_dirt_with_minerva_grass",
  air = "air",
  water = "space_travel:minerva_water_source",
  sand = "default:silver_sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("bacchus_exoplanet",{

  ground_ores = {
	["space_travel:bacchus_grass_1"] = 2,
	["space_travel:bacchus_grass_2"] = 4,
	["space_travel:bacchus_grass_3"] = 8,
	["space_travel:bacchus_grass_4"] = 16,
	["space_travel:bacchus_grass_5"] = 32,
	["space_travel:bacchus_tree_spawner"] = 128,
  },
  stone_ores = {
	["space_travel:bacchus_stone_iron_ore"]=400,
	["space_travel:bacchus_stone_copper_ore"]=500,
	["space_travel:bacchus_stone_tin_ore"]=600,
	["space_travel:bacchus_stone_gold_ore"]=2000,
	["space_travel:bacchus_stone_mese_ore"]=10000,
	["space_travel:bacchus_stone_diamond_ore"]=20000,
	--["default:gravel"]={chance=3000,chunk=2,},
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	--["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 25000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:bacchus_stone",
  dirt = "space_travel:bacchus_dirt",
  grass = "space_travel:bacchus_dirt_with_bacchus_grass",
  air = "air",
  water = "space_travel:bacchus_water_source",
  sand = "space_travel:bacchus_sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("ourea_exomoon",{

  ground_ores = {
	["default:snow"] = 1,
  },
  stone_ores = {
	--["default:stone_with_coal"]=200,
	["default:stone_with_iron"]=400,
	["default:stone_with_copper"]=500,
	["default:stone_with_gold"]=2000,
	["default:stone_with_mese"]=10000,
	["default:stone_with_diamond"]=20000,
	--["default:mese"]=40000,
	["default:gravel"]={chance=3000,chunk=2,}
  },     	     -- works as above, but in stone
  dirt_ores = {},
  grass_ores = {
	--["space_travel:space_gravel"] = 100,
  },
  air_ores = {},
  water_ores = {
	["default:ice"] = 100,
  },
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 26500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "default:stone",
  dirt = "default:gravel",
  grass = "default:gravel",
  air = "air",
  water = "default:water_source",
  sand = "default:sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("osiris_exoplanet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	--["default:stone_with_coal"]=200,
	["space_travel:osiris_iron_ore"]=400,
	["space_travel:osiris_copper_ore"]=500,
	["space_travel:osiris_tin_ore"]=600,
	["space_travel:osiris_gold_ore"]=2000,
	["space_travel:osiris_mese_ore"]=10000,
	["space_travel:osiris_diamond_ore"]=20000,
	--["default:mese"]=40000,
	["default:gravel"]={chance=3000,chunk=2,}
  },   
  dirt_ores = {},
  grass_ores = {},
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 28000,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "default:desert_stone",
  dirt = "default:desert_sandstone",
  grass = "default:desert_sand",
  air = "air",
  water = "default:water_source",
  sand = "default:sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

multidimensions.register_dimension("minthe_exoplanet",{

  ground_ores = {--[[
    ["default:tree"] = 1000,            -- (chance) ... spawns on ground, used by trees, grass, flowers...
    ["default:stone"] = {chance=1000}, 	-- same as above
    ["default:dirt_with_snow"] = {	-- names will be remade to content_id
    	chance=5000,	     -- chance
	min_heat=10,	     -- min heat
	max_heat=40,	     -- max heat
	chunk=3,	     -- chunk size
    },
  ]]},
  stone_ores = {
	["space_travel:minthe_stone_with_iron"]=400,
	["space_travel:minthe_stone_with_copper"]=300,--500
	["space_travel:minthe_stone_with_tin"]=600,
	["space_travel:minthe_stone_with_gold"]=2000,
	["space_travel:minthe_stone_with_mese"]=10000,
	["space_travel:minthe_stone_with_diamond"]=20000,
  },   
  dirt_ores = {},
  grass_ores = {},
  air_ores = {},
  water_ores = {},
  sand_ores = {},
  
  self = {},		    -- can contain everything, var like dirt="default:dirt" will be remade to dirt=content_id
  
  dim_y = 29500,             -- dimension start (don't change if you don't know what you're doing)
  dim_height =  1499,	    -- dimension height
  
  
  dirt_start = 501,           -- when dirt begins to appear (default is 501)
  dirt_depth = 3,	    -- dirt depth
  ground_limit = 530,	    -- ground y limit (ground ends here)
  water_depth = 8,	    -- depth fron ground and down
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    -- or ground density
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 1,		    -- (1 = default) dimension gravity
  
  stone = "space_travel:minthe_stone",
  dirt = "space_travel:minthe_sandstone",
  grass = "space_travel:minthe_sand",
  air = "vacuum:vacuum",
  water = "vacuum:vacuum",
  sand = "space_travel:minthe_sand",
  bedrock = "multidimensions:bedrock", -- at dimension edges
  
  map = {
    offset = 0,
    scale = 1,
    spread = {x=100,y=18,z=100},
    seeddiff = 24,
    octaves = 5,
    persist = 0.7,
    lacunarity = 1,
    flags = "absvalue",
   },
   
   --[[
   craft = { -- teleport craft recipe
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
	{"default:wood","default:mese","default:wood",},
	{"default:obsidianbrick", "default:steel_ingot", "default:obsidianbrick"},
   },
   ]]

--[[
   on_generate=function(self,data,id,area,x,y,z)
	if y <= self.dirt_start+5 then
		data[id] = self.air
	else
		return
	end
	return data -- to return changes
   end,
   ]]
   
   -- data: active generating area (VoxelArea)
   -- index: data index
   -- self: {dim_start, dim_end, dim_height, ground_limit, heat, humidity, dirt, stone, grass, air, water, sand, bedrock ... and your inputs
    ----area: (VoxelArea:new({MinEd...})
   
   --sky = {{r=219, g=168, b=117},"plain",{}}, -- same as:set_sky()
   sky = {{}, "regular", {}},
   
   on_enter=function(player) --on enter dimension
   end,
   
   on_leave=function(player) --on leave dimension
   end,
   
})

--Meteoroids

	--earth
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 1000,
		y_max          = 1499,
	})
	
	--luna (the moon)
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 2500,
		y_max          = 2999,
	})
	
	--mars
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 4000,
		y_max          = 4499,
	})
	
	--mercury
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 5500,
		y_max          = 5999,
	})
	
	--venus
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 7000,
		y_max          = 7499,
	})
	
	--ganymede
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 8500,
		y_max          = 8999,
	})
	
	--callisto
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 10000,
		y_max          = 10499,
	})
	
	--io
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 11500,
		y_max          = 11999,
	})
	
	--europa
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 13000,
		y_max          = 13499,
	})
	
	--titan
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 14500,
		y_max          = 14999,
	})
	
	--oberon
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 16000,
		y_max          = 16499,
	})
	
	--triton
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 17500,
		y_max          = 17999,
	})
	
	--pluto
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 19000,
		y_max          = 19599,
	})
	
	--charon
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 20500,
		y_max          = 20999,
	})
	
	--sedna
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 22000,
		y_max          = 22499,
	})
	
	--asteriod belt above
	--minetest.register_ore({
	--	ore_type       = "scatter",
	--	ore            = "space_travel:space_stone",
	--	wherein        = "air",
	--	clust_scarcity = 30 * 30 * 30,
	--	clust_num_ores = 4,
	--	clust_size     = 1,
	--	y_min          = 23000,
	--	y_max          = 23500,
	--})
	
	--minerva
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 24500,
		y_max          = 24999,
	})
	
	--bacchus
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 26000,
		y_max          = 26499,
	})
	
	--ourea
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 27500,
		y_max          = 27999,
	})
	
	--osiris
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 29000,
		y_max          = 29499,
	})
	
	--minthe
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "space_travel:space_stone",
		wherein        = "air",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 1,
		y_min          = 30500,
		y_max          = 30999,
	})


--LBMs and ABMs

--Bedrock
minetest.register_lbm({
	name = "space_travel:bedrock_lbm",
	run_at_every_load = true,
	nodenames = {"vacuum:vacuum", "air"},
	action = function(pos, node)
		if pos.y >= 1500 and pos.y < 1568 then --Luna (the Moon) bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 3000 and pos.y < 3068 then --Mars bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 4500 and pos.y < 4568 then --Mercury bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 6000 and pos.y < 6068 then --Venus bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 7500 and pos.y < 7568 then --Ganymede bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 9000 and pos.y < 9068 then --Callisto bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 10500 and pos.y < 10568 then --Io bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 12000 and pos.y < 12068 then --Europa bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 13500 and pos.y < 13568 then --Titan bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 15000 and pos.y < 15068 then --Oberon bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 16500 and pos.y < 16568 then --Triton bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 18000 and pos.y < 18068 then --Pluto bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 19500 and pos.y < 19568 then --Charon bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 21000 and pos.y < 21068 then --Sedna bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 22500 and pos.y < 22505 then --Asteriod belt bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 22506 and pos.y < 22510 then --Asteriod belt killing
			minetest.set_node(pos, {name = "multidimensions:killing"})
		elseif pos.y >= 23500 and pos.y < 23568 then --Minerva bedrock	["space_travel:space_lava_source"] = 100,
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 25000 and pos.y < 25068 then --Bacchus bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 26500 and pos.y < 25668 then --Ourea bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 28000 and pos.y < 28068 then --Osiris bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		elseif pos.y >= 29500 and pos.y < 29568 then --Minthe bedrock
			minetest.set_node(pos, {name = "multidimensions:bedrock"})
		end
	end,
})

--Venus Vapor Spouts
minetest.register_lbm({
	name = "space_travel:venus_vapor_spout_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:venus_vapor_spout_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:venus_vapor_spout"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local vapor_spout = minetest.get_modpath("space_travel") .. "/schematics/venus_sulfuric_acid_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, vapor_spout, "random", {}, true)
	end,
})

--Venus Volcanoes
minetest.register_lbm({
	name = "space_travel:venus_volcano_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:venus_volcano_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:venus_volcano"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local volcano = minetest.get_modpath("space_travel") .. "/schematics/venus_space_lava_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, volcano, "random", {}, true)
	end,
})

--Io Volcanoes
minetest.register_lbm({
	name = "space_travel:io_volcano_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:io_volcano_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:io_volcano"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local volcano = minetest.get_modpath("space_travel") .. "/schematics/io_space_lava_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, volcano, "random", {}, true)
	end,
})

--Titan Cryovolcanoes
minetest.register_lbm({
	name = "space_travel:titan_cryovolcano_lbm",
	run_at_every_load = true,	["space_travel:space_stone_ilmenite_ore"]=600,
	nodenames = {"space_travel:titan_cryovolcano_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:titan_cryovolcano"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local cryovolcano = minetest.get_modpath("space_travel") .. "/schematics/titan_cryolava_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, cryovolcano, "random", {}, true)
	end,
})

--Space Cryovolcanoes
minetest.register_lbm({
	name = "space_travel:space_cryovolcano_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:space_cryovolcano_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:space_cryovolcano"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local cryovolcano = minetest.get_modpath("space_travel") .. "/schematics/space_cryolava_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, cryovolcano, "random", {}, true)
	end,
})

--Europa Ice Geysers
minetest.register_lbm({
	name = "space_travel:europa_water_geysers_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:europa_water_geyser_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "space_travel:europa_water_geyser"})
		for i = 1, 3, 1
		do
			minetest.set_node({x=pos.x,y=pos.y-i,z=pos.z}, {name = "vacuum:vacuum"})
		end
		local cryovolcano = minetest.get_modpath("space_travel") .. "/schematics/europa_water_pocket_with_hole_and_vacuum.mts"
		minetest.place_schematic({x=pos.x-2,y=pos.y-7,z=pos.z-2}, cryovolcano, "random", {}, true)
	end,
})

--Europa ice spikes
minetest.register_lbm({
	name = "space_travel:ice_spike_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:ice_spike"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "vacuum:vacuum"})
		local ice_spike = minetest.get_modpath("space_travel") .. "/schematics/ice_spike_with_vacuum.mts"
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z}, ice_spike, "random", {}, true)
	end,
})

--Europa ocean
minetest.register_lbm({
	name = "space_travel:europa_ocean_lbm",
	run_at_every_load = true,
	nodenames = {"default:ice", "space_travel:irradiated_ice"},
	action = function(pos, node)
		if pos.y >= 12200 and pos.y < 12300 then
			minetest.set_node(pos, {name = "space_travel:europa_water_source"})
		end
	end,
})

--Europa mantle
minetest.register_lbm({
	name = "space_travel:europa_mantle_lbm",
	run_at_every_load = true,
	nodenames = {"default:ice", "space_travel:irradiated_ice"},
	action = function(pos, node)
		if pos.y >= 12068 and pos.y < 12200 then
			minetest.set_node(pos, {name = "space_travel:space_stone"})
		end
	end,
})

--Titan alien crystals
minetest.register_abm({
    nodenames = {"space_travel:titan_hydrocarbon_sand"},
    neighbors = {"space_travel:liquid_hydrocarbon_source"},
    interval = 2.0, -- Run every 2 seconds
    chance = 2, -- Select every 1 in 2 nodes
    action = function(pos, node, active_object_count, active_object_count_wider)
        local pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        if pos.y == 14006 then --minetest.get_node(pos) == "air" then
            minetest.set_node(pos, {name = "space_travel:titan_alien_crystal"})
        end
    end
})

--Trees on exoplanets
minetest.register_lbm({
	name = "space_travel:tree_lbm",
	run_at_every_load = true,
	nodenames = {"space_travel:minerva_tree_spawner", "space_travel:bacchus_tree_spawner"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "air"})
		local tree=""
		if node.name=="space_travel:minerva_tree_spawner" then
			tree=minetest.get_modpath("space_travel") .. "/schematics/minerva_pine_tree.mts"
		elseif node.name=="space_travel:bacchus_tree_spawner" then
			tree=minetest.get_modpath("space_travel") .. "/schematics/bacchus_tree.mts"
		end
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z}, tree, "random", {}, true)
	end,
})
