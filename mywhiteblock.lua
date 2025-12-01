local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5},
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5},
		{-0.5, 0, -0.5, 0, 0.25, 0.5},
		{-0.5, 0, 0, 0.5, 0.25, 0.5},
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}
local mymulch_slopes = {   --Material , Description , Item, Image
	{ "black",		"Black Block",		"mywhiteblock:block_black",			"^[colorize:#000000"},
	{ "blue",		"Blue Block",		"mywhiteblock:block_blue",			"^[colorize:#2000c9"},
	{ "brown",		"Brown Block",		"mywhiteblock:block_brown",			"^[colorize:#954c05"},
	{ "cyan",		"Cyan Block",		"mywhiteblock:block_cyan",			"^[colorize:#01ffd8"},
	{ "dark_green",	"Dark Green Block",	"mywhiteblock:block_dark_green",	"^[colorize:#005b07"},
	{ "dark_grey",	"Dark Grey Block",	"mywhiteblock:block_dark_grey",		"^[colorize:#303030"},
	{ "green",		"Green Block",		"mywhiteblock:block_green",			"^[colorize:#61ff01"},
	{ "grey",		"Grey Block",		"mywhiteblock:block_grey",			"^[colorize:#5b5b5b"},
	{ "magenta",	"Magenta Block",	"mywhiteblock:block_magenta",		"^[colorize:#ff05bb"},
	{ "orange",		"Orange Block",		"mywhiteblock:block_orange",		"^[colorize:#ff8401"},
	{ "pink",		"Pink Block",		"mywhiteblock:block_pink",			"^[colorize:#ff65b5"},
	{ "red",		"Red Block",		"mywhiteblock:block_red",			"^[colorize:#ff0000"},
	{ "violet",		"Violet Block",		"mywhiteblock:block_violet",		"^[colorize:#ab23b0"},
	{ "white",		"White Block",		"mywhiteblock:block_white",			"^[colorize:#ffffff"},
	{ "yellow",		"Yellow Block",		"mywhiteblock:block_yellow",		"^[colorize:#e3ff00"},
}

for i in ipairs(mymulch_slopes) do
	local mat = mymulch_slopes[i][1]
	local desc = mymulch_slopes[i][2]
	local item = mymulch_slopes[i][3]
	local img = mymulch_slopes[i][4]

--slope
core.register_node("myslopes:"..mat.."_block_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"mywhiteblock_white.png"..img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
core.register_node("myslopes:"..mat.."_block_icorner", {
	description = desc.." Slope Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"mywhiteblock_white.png"..img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
core.register_node("myslopes:"..mat.."_block_ocorner", {
	description = desc.." Slope Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"mywhiteblock_white.png"..img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--Crafts--------------------------------------------------------

--slope
core.register_craft({
	output = "myslopes:"..mat.."_block_slope 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,""},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_block_icorner 3",
	recipe = {
		{"", "",""},
		{"", item,""},
		{item,"", item},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_block_ocorner 3",
	recipe = {
		{"", "",""},
		{item, "",item},
		{"", item,""},
	}
})

--rotated-----------------------------------------------
--slope
core.register_craft({
	output = "myslopes:"..mat.."_block_slope_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_block_slope",""},
		{"", "",""},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_block_icorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_block_icorner",""},
		{"", "",""},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_block_ocorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_block_ocorner",""},
		{"", "",""},
	}
})
--]]
end






