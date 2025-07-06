
core.register_alias("spacesuit:helmet_steel", "spacesuit:helmet")
core.register_alias("spacesuit:chestplate_steel", "spacesuit:chestplate")
core.register_alias("spacesuit:leggings_steel", "spacesuit:pants")
core.register_alias("spacesuit:boots_steel", "spacesuit:boots")

--armor:register_armor("spacesuit:helmet", {
armor:register_armor("spacesuit:helmet_steel", {
--	description = "Spacesuit Helmet",
	description = "Steel Spacesuit Helmet",
	inventory_image = "spacesuit_inv_helmet.png",
	groups = {armor_head=5, armor_heal=1, armor_use=spacesuit.armor_use, not_repaired_by_anvil=1},
	wear = 0,
	wear_represents = "spacesuit_wear",
})

--armor:register_armor("spacesuit:chestplate", {
armor:register_armor("spacesuit:chestplate_steel", {
--	description = "Spacesuit Chestplate",
	description = "Steel Spacesuit Chestplate",
	inventory_image = "spacesuit_inv_chestplate.png",
	groups = {armor_torso=8, armor_heal=1, armor_use=spacesuit.armor_use, not_repaired_by_anvil=1},
	wear = 0,
	wear_represents = "spacesuit_wear",
})

--armor:register_armor("spacesuit:pants", {
armor:register_armor("spacesuit:leggings_steel", {
--	description = "Spacesuit Pants",
	description = "Steel Spacesuit Leggings",
	inventory_image = "spacesuit_inv_leggings.png",
	groups = {armor_legs=7, armor_heal=1, armor_use=spacesuit.armor_use, not_repaired_by_anvil=1},
	wear = 0,
	wear_represents = "spacesuit_wear",
})

--armor:register_armor("spacesuit:boots", {
armor:register_armor("spacesuit:boots_steel", {
--	description = "Spacesuit Boots",
	description = "Steel Spacesuit Boots",
	inventory_image = "spacesuit_inv_boots.png",
	groups = {armor_feet=4, armor_heal=1, armor_use=spacesuit.armor_use, not_repaired_by_anvil=1},
	wear = 0,
	wear_represents = "spacesuit_wear",
})
