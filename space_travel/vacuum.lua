--vacuum code

local old_is_pos_in_space = vacuum.is_pos_in_space
vacuum.is_pos_in_space = function(pos)

	--if pos.y < 23500 or pos.y > 24500 then
	if (not (pos.y > 23500 and pos.y < 24500)) and (not (pos.y > 25000 and pos.y < 26000)) and (not (pos.y > 26500 and pos.y < 27500)) and (not (pos.y > 28000 and pos.y < 29000)) then
		-- not in the atmosphere of a habitable planet
		return old_is_pos_in_space(pos)
	end

	-- atmosphere on habitable worlds
	return false
end

--[[
local old_is_pos_on_earth = vacuum.is_pos_on_earth
vacuum.is_pos_on_earth = function(pos)

	if pos.y > 23500 or pos.y < 24500 then
		-- in the atmosphere of a habitable planet
		return true
	end

	-- not in the atmosphere of habitable worlds
	return old_is_pos_on_earth(pos)
end
]]


local c_vacuum = minetest.get_content_id("vacuum:vacuum")
local c_air = minetest.get_content_id("air")

minetest.register_on_generated(function(minp, maxp, seed)

	--if minp.y < 23500 or maxp.y > 24500 then
	if (not (minp.y > 23500 and maxp.y < 24500)) and (not (minp.y > 25000 and maxp.y < 26000)) and (not (minp.y > 26500 and maxp.y < 27500)) and (not (minp.y > 28000 and maxp.y < 29000)) then
		return
	end

	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local data = vm:get_data()
	local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})

	for i in area:iter(
		minp.x, minp.y, minp.z,
		maxp.x, maxp.y, maxp.z
	) do
		if data[i] == c_vacuum or data[i] == c_air then
			data[i] = c_air
		end
	end
 
	vm:set_data(data)
	vm:write_to_map()
end)

--[[
--Kind of works but is laggy
minetest.register_lbm({
	name = "space_travel:atmosphere_lbm",
	run_at_every_load = true,
	nodenames = {"vacuum:vacuum"},
	action = function(pos, node)
		if pos.y >= 23500 and pos.y < 24500 then
			minetest.set_node(pos, {name = "air"})
		end
	end,
})
]]
