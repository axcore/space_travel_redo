--Radiation effects

radiant_damage.register_radiant_damage("space_lava_heat", {
	interval = 1,
	range = 3,
	emitted_by = {["space_travel:space_lava_source"] = 4, ["space_travel:space_lava_flowing"] = 4},
	attenuated_by = {["vacuum:vacuum"] = 1},
	default_attenuation = 1,
	inverse_square_falloff = true, --true
	above_only = false,
	--on_damage = function(player_object, damage_value, pos)
		
	--end,
})

radiant_damage.register_radiant_damage("solar_mese_heat", {
	interval = 1,
	range = 3,
	emitted_by = {["space_travel:space_stone_solar_mese_ore"] = 4},
	attenuated_by = {["vacuum:vacuum"] = 1},
	default_attenuation = 1,
	inverse_square_falloff = true, --true
	above_only = false,
	--on_damage = function(player_object, damage_value, pos)
		
	--end,
})

radiant_damage.register_radiant_damage("lava_crystal_heat", {
	interval = 1,
	range = 3,
	emitted_by = {["space_travel:io_stone_lava_crystal_ore"] = 4},
	attenuated_by = {["vacuum:vacuum"] = 1},
	default_attenuation = 1,
	inverse_square_falloff = true, --true
	above_only = false,
	--on_damage = function(player_object, damage_value, pos)
		
	--end,
})

radiant_damage.register_radiant_damage("space_radiation", {
	interval = 1,
	range = 3,
	emitted_by = {
		["space_travel:irradiated_space_stone"] = 4,
		["space_travel:irradiated_space_dust"] = 4,
		["space_travel:irradiated_space_cobble"] = 4,
		["space_travel:irradiated_ice"] = 4,
		["space_travel:irradiated_io_sulfur_dust"] = 4,
		["space_travel:irradiated_io_stone"] = 4,
		["space_travel:irradiated_io_cobble"] = 4,
	},
	attenuated_by = {["vacuum:vacuum"] = 1, ["space_travel:lead_block"] = 0},
	default_attenuation = 1,
	inverse_square_falloff = true, --true
	above_only = false,
	--on_damage = function(player_object, damage_value, pos)
		
	--end,
})
