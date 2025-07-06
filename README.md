# space_travel_redo

A modpack for [Minetest](https://www.luanti.org/), containing the [original space_travel](https://forum.luanti.org/viewtopic.php?t=23455) mod by Red_King_Cyclops, updated in July 2025 to work with modern engines.

Requires Minetest 5.10 (or above), [minetest_game](https://github.com/luanti-org/minetest_game) and [3d_armor](https://github.com/minetest-mods/3d_armor).

For your convenience, this modpack contains all other dependencies:

* [multidimensions](https://github.com/AiTechEye/multidimensions)
* [vacuum](https://github.com/mt-mods/vacuum)
* [rocket](https://git.minetest.land/Red_King_Cyclops/rocket)
* [radiant_damage](https://github.com/minetest-mods/radiant_damage)
* [scifi_nodes](https://github.com/D00Med/scifi_nodes)
* [spacesuit](https://github.com/mt-mods/spacesuit)

# How to play

**THE ORIGINAL MOD WAS UNFINISHED**. Don't expect a complete space-travel adventure. However, you can do all of the things that you could in the original mod, before engine changes made it unplayable:

* Build a rocket
* Fly it into space
* Warp to other other planets
* Land on them
* Explore them

To land on other planets, do this:

* Craft a spacesuit, and wear it
* Craft a space shuttle
* Craft a drive
* Place the space shuttle on the ground
* Right-click the space shuttle to board it
* Hold down the "JUMP" key to lift off
* Continue holding the "JUMP" key until you reach space
* While wielding the drive, left-click to open the planet selection menu
* Choose a new planet
* Let the rocket descend to the planet's surface
* Right-click to disembark the space shuttle

To "wear" the spacesuit, you may need an inventory mod that's compatiable with 3d_armor. [unified_inventory](https://github.com/minetest-mods/unified_inventory) is suggested:

* Press the "INVENTORY" key to open your inventory
* Click the 3d Armor icon
* Drag the components of your spacesuit (helmet, chestplate, leggings, boots) into the "Armor" slots

Note that not all drives provide access to all planets; you'll have to start by crafting a **Tier 1 Basic Space Drive**, and work your way up from there.

# Changes

I made the following changes to the original code:

**space_travel/sky.lua:**

*Updated calls to player:set_physics_override()*

**spacesuit/**

*Renamed the spacesuit items (and accompanying textures) to avoid 3d_armor material check warnings*

*Modified code in drowning.lua to enable/disable suffocation by using player:set_flags(), instead of by the old method*

# Bugs

When the player is "inside" the rocket, it appears to be transparent. I don't remember what the original behaviour was, so I have not attempted to "fix" it.
