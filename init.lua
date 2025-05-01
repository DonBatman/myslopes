
dofile(minetest.get_modpath("myslopes").."/slopes.lua")
dofile(minetest.get_modpath("myslopes").."/long_slopes.lua")


if minetest.get_modpath("moreblocks")  then
	dofile(minetest.get_modpath("myslopes").."/moreblocks.lua")
end

if minetest.get_modpath("castle") then
	dofile(minetest.get_modpath("myslopes").."/castle.lua")
end

if minetest.get_modpath("castles") then
	dofile(minetest.get_modpath("myslopes").."/castles.lua")
end

if minetest.get_modpath("batmod") then
	dofile(minetest.get_modpath("myslopes").."/bat_blocks.lua")
end

if minetest.get_modpath("mycastle") then
	dofile(minetest.get_modpath("myslopes").."/mycastle.lua")
end

if minetest.get_modpath("mycobble") then
	dofile(minetest.get_modpath("myslopes").."/mycobble.lua")
end

if minetest.get_modpath("my_door_wood") then
	dofile(minetest.get_modpath("myslopes").."/mydoorwood.lua")
end

if minetest.get_modpath("myglass") then
	dofile(minetest.get_modpath("myslopes").."/myglass.lua")
end

if minetest.get_modpath("mymulch") then
	dofile(minetest.get_modpath("myslopes").."/mymulch.lua")
end

if minetest.get_modpath("mywhiteblock") then
	dofile(minetest.get_modpath("myslopes").."/mywhiteblock.lua")
end
