space_travel = {}

function space_travel.move(object,pos,destination)
	--object:set_pos(pos)
	local location = -1
	if pos.y >= 1000 and pos.y < 1500 then --earth
		location = 1500 * 0
	elseif pos.y >= 2500 and pos.y < 3000 then --moon
		location = 1500 * 1
	elseif pos.y >= 4000 and pos.y < 4500 then --mars
		location = 1500 * 2
	elseif pos.y >= 5500 and pos.y < 6000 then --mercury
		location = 1500 * 3
	elseif pos.y >= 7000 and pos.y < 7500 then --venus
		location = 1500 * 4
	elseif pos.y >= 8500 and pos.y < 9000 then --ganymede
		location = 1500 * 5
	elseif pos.y >= 10000 and pos.y < 10500 then --callisto
		location = 1500 * 6
	elseif pos.y >= 11500 and pos.y < 12000 then --io
		location = 1500 * 7
	elseif pos.y >= 13000 and pos.y < 13500 then --europa
		location = 1500 * 8
	elseif pos.y >= 14500 and pos.y < 15000 then --titan
		location = 1500 * 9
	elseif pos.y >= 16000 and pos.y < 16500 then --oberon
		location = 1500 * 10
	elseif pos.y >= 17500 and pos.y < 18000 then --triton
		location = 1500 * 11
	elseif pos.y >= 19000 and pos.y < 19500 then --pluto
		location = 1500 * 12
	elseif pos.y >= 20500 and pos.y < 21000 then --charon
		location = 1500 * 13
	elseif pos.y >= 22000 and pos.y < 22500 then --sedna
		location = 1500 * 14
	elseif pos.y >= 23000 and pos.y < 23500 then --asteriod belt
		location = 22000 --15
	elseif pos.y >= 24500 and pos.y < 25000 then --minerva
		location = 1500 * (16 - 1) + 1000
	elseif pos.y >= 26000 and pos.y < 26500 then --bacchus
		location = 1500 * (17 - 1) + 1000
	elseif pos.y >= 27500 and pos.y < 28000 then --ourea
		location = 1500 * (18 - 1) + 1000
	elseif pos.y >= 29000 and pos.y < 29500 then --osiris
		location = 1500 * (19 - 1) + 1000
	elseif pos.y >= 29500 and pos.y < 30999 then --minthe
		location = 1500 * (20 - 1) + 1000
	end
	if destination < 15 then
		destination = 1500 * destination
	elseif destination == 15 then
		destination = 22000
	elseif destination > 15 then
		destination = 1500 * (destination - 1) + 1000
	end
	local new_pos = pos
	new_pos.y = new_pos.y - location + destination
	--if location ~= 15 and destination == 15 then
	--	new_pos.y = new_pos.y - (location * 1500) + (22000)
	--elseif location == 15 and destination ~= 15 then
	--	new_pos.y = new_pos.y - (22000) + (destination * 1500)
	--else
	--	new_pos.y = new_pos.y - (location * 1500) + (destination * 1500)
	--end
	if location ~= -1 then
		--if minetest.get_node(new_pos).name == "vacuum:vacuum" then
		--end
		object:set_pos(new_pos)
		if object:is_player() then
			local pname = object:get_player_name()
			minetest.chat_send_player(pname, "You have reached your destination.")
		end
	else
		if object:is_player() then
			local pname = object:get_player_name()
			minetest.chat_send_player(pname, "You are either not in a space region or not above asteriods.")
		end
	end
end

function space_travel.space_drive_1_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon)"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_1_formspec", formspec)
end

function space_travel.space_drive_2_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_2_formspec", formspec)
end

function space_travel.space_drive_3_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt,Venus,Mercury"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_3_formspec", formspec)
end

function space_travel.space_drive_4_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt,Venus,Mercury,Io,Europa,Ganymede,Callisto"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_4_formspec", formspec)
end

function space_travel.space_drive_5_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt,Venus,Mercury,Io,Europa,Ganymede,Callisto,Titan,Oberon,Triton"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_5_formspec", formspec)
end

function space_travel.space_drive_6_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt,Venus,Mercury,Io,Europa,Ganymede,Callisto,Titan,Oberon,Triton,Pluto,Charon,Sedna"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_6_formspec", formspec)
end

function space_travel.space_drive_7_show(name)
	local info = "Travel to space region of:"
	local list = "Earth,Luna (the Moon),Mars,Asteriod Belt,Venus,Mercury,Io,Europa,Ganymede,Callisto,Titan,Oberon,Triton,Pluto,Charon,Sedna,Minerva,Bacchus,Ourea,Osiris,Minthe"
	local formspec = "size[3.5,5.5]"..
	"label[0,-0.2;" .. info .."]"..
	"textlist[0,0.5;3,5;list;" .. list .."]"
    minetest.show_formspec(name, "space_travel:space_drive_7_formspec", formspec)
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
	local pos = player:get_pos()
	if formname == "space_travel:space_drive_1_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			else
				--local pname = player:get_player_name()
				--minetest.chat_send_player(pname, "WHAT?")
			end
			--local pname = player:get_player_name()
			--minetest.chat_send_player(pname, "Good choice")
		end
	elseif formname == "space_travel:space_drive_2_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			end
		end
	elseif formname == "space_travel:space_drive_3_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			elseif list_number == "5" then --Venus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 4)
				end
				space_travel.move(player, pos, 4)
			elseif list_number == "6" then --Mercury
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 3)
				end
				space_travel.move(player, pos, 3)
			end
		end
	elseif formname == "space_travel:space_drive_4_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			elseif list_number == "5" then --Venus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 4)
				end
				space_travel.move(player, pos, 4)
			elseif list_number == "6" then --Mercury
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 3)
				end
				space_travel.move(player, pos, 3)
			elseif list_number == "7" then --Io
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 7)
				end
				space_travel.move(player, pos, 7)
			elseif list_number == "8" then --Europa
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 8)
				end
				space_travel.move(player, pos, 8)
			elseif list_number == "9" then --Ganymede
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 5)
				end
				space_travel.move(player, pos, 5)
			elseif list_number == "10" then --Callisto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 6)
				end
				space_travel.move(player, pos, 6)
			end
		end
	elseif formname == "space_travel:space_drive_5_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			elseif list_number == "5" then --Venus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 4)
				end
				space_travel.move(player, pos, 4)
			elseif list_number == "6" then --Mercury
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 3)
				end
				space_travel.move(player, pos, 3)
			elseif list_number == "7" then --Io
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 7)
				end
				space_travel.move(player, pos, 7)
			elseif list_number == "8" then --Europa
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 8)
				end
				space_travel.move(player, pos, 8)
			elseif list_number == "9" then --Ganymede
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 5)
				end
				space_travel.move(player, pos, 5)
			elseif list_number == "10" then --Callisto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 6)
				end
				space_travel.move(player, pos, 6)
			elseif list_number == "11" then --Titan
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 9)
				end
				space_travel.move(player, pos, 9)
			elseif list_number == "12" then --Oberon
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 10)
				end
				space_travel.move(player, pos, 10)
			elseif list_number == "13" then --Triton
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 11)
				end
				space_travel.move(player, pos, 11)
			end
		end
	elseif formname == "space_travel:space_drive_6_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			elseif list_number == "5" then --Venus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 4)
				end
				space_travel.move(player, pos, 4)
			elseif list_number == "6" then --Mercury
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 3)
				end
				space_travel.move(player, pos, 3)
			elseif list_number == "7" then --Io
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 7)
				end
				space_travel.move(player, pos, 7)
			elseif list_number == "8" then --Europa
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 8)
				end
				space_travel.move(player, pos, 8)
			elseif list_number == "9" then --Ganymede
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 5)
				end
				space_travel.move(player, pos, 5)
			elseif list_number == "10" then --Callisto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 6)
				end
				space_travel.move(player, pos, 6)
			elseif list_number == "11" then --Titan
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 9)
				end
				space_travel.move(player, pos, 9)
			elseif list_number == "12" then --Oberon
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 10)
				end
				space_travel.move(player, pos, 10)
			elseif list_number == "13" then --Triton
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 11)
				end
				space_travel.move(player, pos, 11)
			elseif list_number == "14" then --Pluto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 12)
				end
				space_travel.move(player, pos, 12)
			elseif list_number == "15" then --Charon
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 13)
				end
				space_travel.move(player, pos, 13)
			elseif list_number == "16" then --Sedna
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 14)
				end
				space_travel.move(player, pos, 14)
			end
		end
	elseif formname == "space_travel:space_drive_7_formspec" then
		if fields.list then
			list_number = fields.list:sub(5,-1)
			if list_number == "1" then --Earth
				--Teleports the player's rocket
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 0)
				end
				--Teleports the player
				space_travel.move(player, pos, 0)
			elseif list_number == "2" then --Luna (the Moon)
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 1)
				end
				space_travel.move(player, pos, 1)
			elseif list_number == "3" then --Mars
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 2)
				end
				space_travel.move(player, pos, 2)
			elseif list_number == "4" then --Asteriod belt
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 15)
				end
				space_travel.move(player, pos, 15)
			elseif list_number == "5" then --Venus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 4)
				end
				space_travel.move(player, pos, 4)
			elseif list_number == "6" then --Mercury
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 3)
				end
				space_travel.move(player, pos, 3)
			elseif list_number == "7" then --Io
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 7)
				end
				space_travel.move(player, pos, 7)
			elseif list_number == "8" then --Europa
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 8)
				end
				space_travel.move(player, pos, 8)
			elseif list_number == "9" then --Ganymede
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 5)
				end
				space_travel.move(player, pos, 5)
			elseif list_number == "10" then --Callisto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 6)
				end
				space_travel.move(player, pos, 6)
			elseif list_number == "11" then --Titan
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 9)
				end
				space_travel.move(player, pos, 9)
			elseif list_number == "12" then --Oberon
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 10)
				end
				space_travel.move(player, pos, 10)
			elseif list_number == "13" then --Triton
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 11)
				end
				space_travel.move(player, pos, 11)
			elseif list_number == "14" then --Pluto
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 12)
				end
				space_travel.move(player, pos, 12)
			elseif list_number == "15" then --Charon
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 13)
				end
				space_travel.move(player, pos, 13)
			elseif list_number == "16" then --Sedna
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 14)
				end
				space_travel.move(player, pos, 14)
			elseif list_number == "17" then --Minerva
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 16)
				end
				space_travel.move(player, pos, 16)
			elseif list_number == "18" then --Bacchus
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 17)
				end
				space_travel.move(player, pos, 17)
			elseif list_number == "19" then --Ourea
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 18)
				end
				space_travel.move(player, pos, 18)
			elseif list_number == "20" then --Osiris
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 19)
				end
				space_travel.move(player, pos, 19)
			elseif list_number == "21" then --Minthe
				local attach = player:get_attach()
				if attach and attach:get_luaentity() then
					space_travel.move(attach, pos, 20)
				end
				space_travel.move(player, pos, 20)
			end
		end
	else
		return
    end
end)

minetest.register_tool("space_travel:space_drive_1", {
	description = "Tier I Basic Space Drive\n\nCan fly to the Moon.",
	inventory_image = "space_travel_space_drive_1.png",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_1_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_2", {
	description = "Tier II Lunar Drive\n\nGo to Mars on your first interplanetary voyage.\nYou can also go to the asteriod belt.",
	inventory_image = "space_travel_space_drive_2.png",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_2_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_3", {
	description = "Tier III Martian Drive\n\nYou can now visit the inner solar system.",
	inventory_image = "space_travel_space_drive_3.png^[colorize:#cf411b66",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_3_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_4", {
	description = "Tier IV Solar Drive\n\nGo to the Jupiter system on your first trip\ninto the outer solar system.",
	inventory_image = "space_travel_space_drive_4.png",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_4_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_5", {
	description = "Tier V Lava Drive\n\nYou can now visit the rest of the gas giant systems.\nThe most notable location is Titan.",
	inventory_image = "space_travel_space_drive_5.png",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_5_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_6", {
	description = "Tier VI Titan Drive\n\nYou can now explore the edge of the solar system\nand visit trans-neptunian objects.",
	inventory_image = "space_travel_space_drive_6.png^[colorize:#ebb34766",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_6_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})

minetest.register_tool("space_travel:space_drive_7", {
	description = "Tier VII Warp Drive\n\nYou can now travel interstellar.\nSeek out strange new worlds and life forms.",
	inventory_image = "space_travel_space_drive_7.png",
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local attach = user:get_attach()
		if attach and attach:get_luaentity() then
			space_travel.space_drive_7_show(name)
		else
			minetest.chat_send_player(name, "You are not in a space shuttle.")
		end
	end
})
