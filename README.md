# space_travel_redo

A modpack for [Minetest](https://www.luanti.org/), containing the [original space_travel mod](https://forum.luanti.org/viewtopic.php?t=23455) updated to work with modern engines.

Requires Minetest 5.10 (or above), and [minetest_game](https://github.com/luanti-org/minetest_game).

For your convenience, this modpack contains all other dependencies:

* [multidimensions](https://github.com/AiTechEye/multidimensions)
* [vacuum](https://github.com/mt-mods/vacuum)
* [rocket](https://git.minetest.land/Red_King_Cyclops/rocket)
* [radiant_damage](https://github.com/minetest-mods/radiant_damage)
* [scifi_nodes](https://github.com/D00Med/scifi_nodes)
* [spacesuit](https://github.com/mt-mods/spacesuit)
* [3d_armor](https://git.minetest.land/Red_King_Cyclops/rocket)

# How to play

THE ORIGINAL MOD WAS UNFINISHED. Don't expect a complete space-travel adventure. However, you can build a rocket, fly it into space, warp to other other planets, land on them and walk around.









# Changes

I made the following changes to the original code:

space_travel/sky.lua:
*Updated calls to player:set_physics_override()*

spacesuit/*

Renamed the spacesuit items (and accompanying textures) to avoid 3d_armor material check warnings
Modified code in drowning.lua to enable/disable drowning by using player:set_flags()

# Bugs

When the player is "inside" the rocket, it appears to be transparent. I don't remember what the original behaviour was, so I have not attempted to "fix" it.


