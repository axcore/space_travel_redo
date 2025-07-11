
local HUD_POSITION = { x = 0.09, y = 0.4 }
local OFFSET_LABEL = { x = 0, y = -16 }
local OFFSET_LEVEL = { x = 0, y = 16}
local OFFSET_WARNING = { x = 0, y = -34 }
local OFFSET_BAR = { x = 0, y = 0 }
local HUD_ALIGNMENT = { x = 1, y = 0 }

local hud = {} -- playername -> data


local setup_hud = function(player)
	local playername = player:get_player_name()
	local hud_data = {}
	hud[playername] = hud_data

	hud_data.overlay = player:hud_add({
	    hud_elem_type = "image",
	    position = { x = 0.5, y = 0.5 },
	    scale = {
	      x = -100,
	      y = -100
	    },
	    text = "spacesuit_overlay.png"
	})

	hud_data.o2_bg = player:hud_add({
		hud_elem_type = "image",
		position = HUD_POSITION,
		offset = OFFSET_BAR,
		text = "spacesuit_o2_levels_bg.png",
		alignment = HUD_ALIGNMENT,
		scale = { x = -7, y = 1 }
	})

	hud_data.o2_fg = player:hud_add({
		hud_elem_type = "image",
		position = HUD_POSITION,
		offset = OFFSET_BAR,
		text = "spacesuit_o2_levels_fg_green.png",
		alignment = HUD_ALIGNMENT,
		scale = { x = 0, y = 1 }
	})

	hud_data.o2_label = player:hud_add({
		hud_elem_type = "text",
		position = HUD_POSITION,
		offset = OFFSET_LABEL,
		text = "O2-Level:",
		alignment = HUD_ALIGNMENT,
		scale = { x = 100, y = 100 },
		number = 0x00FF00
	})

	hud_data.o2_level = player:hud_add({
		hud_elem_type = "text",
		position = HUD_POSITION,
		offset = OFFSET_LEVEL,
		text = "",
		alignment = HUD_ALIGNMENT,
		scale = { x = 100, y = 100 },
		number = 0x00FF00
	})

	hud_data.suit_incomplete = player:hud_add({
		hud_elem_type = "text",
		position = HUD_POSITION,
		offset = OFFSET_WARNING,
		text = "",
		alignment = HUD_ALIGNMENT,
		scale = { x = 100, y = 100 },
		number = 0xFF0000
	})

end

local remove_hud = function(player)
	local playername = player:get_player_name()
	local hud_data = hud[playername]

	player:hud_remove(hud_data.overlay)
	player:hud_remove(hud_data.o2_bg)
	player:hud_remove(hud_data.o2_fg)
	player:hud_remove(hud_data.o2_label)
	player:hud_remove(hud_data.o2_level)
	player:hud_remove(hud_data.suit_incomplete)

	hud[playername] = nil
end

local get_color = function(r,g,b)
	return b + (g * 256) + (r * 256 * 256)
end

local update_hud = function(player, has_full_suit, armor_list)
	local playername = player:get_player_name()
	local hud_data = hud[playername]

	if not hud_data then
		return
	end

	if has_full_suit then
		player:hud_change(hud_data.suit_incomplete, "text", "")
	else
		player:hud_change(hud_data.suit_incomplete, "text", "Spacesuit incomplete!")
	end

	local max_wear = 0
	for _,item in pairs(armor_list) do
		-- wear:0 == full, wear:65535 == empty
--		if item:get_name() == "spacesuit:helmet" then
		if item:get_name() == "spacesuit:helmet_steel" then
			max_wear = math.max(max_wear, item:get_wear())
--		elseif item:get_name() == "spacesuit:chestplate" then
		elseif item:get_name() == "spacesuit:chestplate_steel" then
			max_wear = math.max(max_wear, item:get_wear())
--		elseif item:get_name() == "spacesuit:pants" then
		elseif item:get_name() == "spacesuit:leggings_steel" then
			max_wear = math.max(max_wear, item:get_wear())
--		elseif item:get_name() == "spacesuit:boots" then
		elseif item:get_name() == "spacesuit:boots_steel" then
			max_wear = math.max(max_wear, item:get_wear())
		end
	end

	local factor_full = 1 - (max_wear / 65535)

	player:hud_change(hud_data.o2_level, "text", math.floor(factor_full * 100) .. "%")
	player:hud_change(hud_data.o2_fg, "scale", { x = math.floor(factor_full * -7), y = 1 })

	local color

	if factor_full > 0.3 then
		-- green
		color = get_color(0,255,0)
		player:hud_change(hud_data.o2_fg, "text", "spacesuit_o2_levels_fg_green.png")

	elseif factor_full > 0.1 then
		-- yellow
		color = get_color(255,255,0)
		player:hud_change(hud_data.o2_fg, "text", "spacesuit_o2_levels_fg_yellow.png")

	else
		-- red
		color = get_color(255,0,0)
		player:hud_change(hud_data.o2_fg, "text", "spacesuit_o2_levels_fg_red.png")

	end

	player:hud_change(hud_data.o2_label, "number", color)
	player:hud_change(hud_data.o2_level, "number", color)

end

minetest.register_on_leaveplayer(function(player)
	-- remove stale hud data
	local playername = player:get_player_name()
	hud[playername] = nil
end)

spacesuit.set_player_wearing = function(player, has_full_suit, has_helmet, armor_list)
	local playername = player:get_player_name()
	local hud_data = hud[playername]

	if hud_data and has_helmet then
		-- player wears it
		update_hud(player, has_full_suit, armor_list)

	elseif hud_data and not has_helmet then
		-- player stopped wearing
		remove_hud(player)

	elseif not hud_data and has_helmet then
		-- player started wearing
		setup_hud(player)
		minetest.after(0.1, function()
			update_hud(player, has_full_suit, armor_list)
		end)

	end
end
