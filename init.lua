
dofile(minetest.get_modpath("myslopes").."/slopes.lua")
dofile(minetest.get_modpath("myslopes").."/long_slopes.lua")


local mod_moreblocks = minetest.get_modpath("moreblocks") 
local mod_castle = minetest.get_modpath("castle")

if mod_moreblocks then
	dofile(minetest.get_modpath("myslopes").."/moreblocks.lua")
	
	end

if mod_castle then
	dofile(minetest.get_modpath("myslopes").."/castle.lua")
	
	end
