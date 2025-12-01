myslopes = {}
local moreblocks = core.settings:get_bool("myslopes.moreblocks", true)
local castle = core.settings:get_bool("myslopes.castle", true)
local castles = core.settings:get_bool("myslopes.castles", true)
local batmod = core.settings:get_bool("myslopes.batmod", true)
local mycastle = core.settings:get_bool("myslopes.mycastle", true)
local my_door_wood = core.settings:get_bool("myslopes.my_door_wood", true)
local myglass = core.settings:get_bool("myslopes.myglass", true)
local mymulch = core.settings:get_bool("myslopes.mymulch", true)
local mywhiteblock = core.settings:get_bool("myslopes.mywhiteblock", true)

dofile(core.get_modpath("myslopes").."/slopes.lua")
dofile(core.get_modpath("myslopes").."/long_slopes.lua")
dofile(core.get_modpath("myslopes").."/long_slopes3.lua")
dofile(core.get_modpath("myslopes").."/long_slopes4.lua")

if moreblocks then
	if core.get_modpath("moreblocks")  then
		dofile(core.get_modpath("myslopes").."/moreblocks.lua")
	end
end
if castle then
	if core.get_modpath("castle") then
		dofile(core.get_modpath("myslopes").."/castle.lua")
	end
end
if castles then
	if core.get_modpath("castles") then
		dofile(core.get_modpath("myslopes").."/castles.lua")
	end
end
if batmod then
	if core.get_modpath("batmod") then
		dofile(core.get_modpath("myslopes").."/bat_blocks.lua")
	end
end
if mycastle then
	if core.get_modpath("mycastle") then
		dofile(core.get_modpath("myslopes").."/mycastle.lua")
	end
end
if mycobble then
	if core.get_modpath("mycobble") then
		dofile(core.get_modpath("myslopes").."/mycobble.lua")
	end
end
if my_door_wood then
	if core.get_modpath("my_door_wood") then
		dofile(core.get_modpath("myslopes").."/mydoorwood.lua")
	end
end
if myglass then
	if core.get_modpath("myglass") then
		dofile(core.get_modpath("myslopes").."/myglass.lua")
	end
end
if mymulch then
	if core.get_modpath("mymulch") then
		dofile(core.get_modpath("myslopes").."/mymulch.lua")
	end
end
if mywhiteblock then
	if core.get_modpath("mywhiteblock") then
		dofile(core.get_modpath("myslopes").."/mywhiteblock.lua")
	end
end
