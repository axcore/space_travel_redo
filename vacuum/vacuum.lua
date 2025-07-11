

minetest.register_node("vacuum:vacuum", {
	description = "Vacuum",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drawtype = "glasslike",
	drowning = 1,
	post_effect_color = {a = 20, r = 20, g = 20, b = 250},
	tiles = {"vacuum_texture.png^[colorize:#E0E0E033"},
	inventory_image = "vacuum_inv.png",
	wield_image = "vacuum_inv.png",
--	alpha = 0.1,
	use_texture_alpha = "opaque",
	groups = {not_in_creative_inventory=1, not_blocking_trains=1, cools_lava=1},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	drop = {},
	sunlight_propagates = true
})
