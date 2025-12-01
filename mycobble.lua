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
local mycobble_slopes = {   --Material , Description , Item, Image
	{ "desert_cobble","Desert Cobble","mycobble:desert_cobble","default_gravel.png^[colorize:#8A2908:120"},
	{ "sandstone_sand","Sandstone Sand","mycobble:sandstone_sand","default_sand.png^[colorize:#e3e3ae:120"},
	{ "silver_gravel","Silver Gravel","mycobble:silver_gravel","default_gravel.png^[colorize:#c8c8c1:120"},
	{ "silver_cobble","Silver Cobble","mycobble:silver_cobble","default_cobble.png^[colorize:#c8c8c1:120"},
	{ "sandstone_cobble","Sandstone Cobble","mycobble:sandstone_cobble","default_cobble.png^[colorize:#e1da94:120"},
	{ "desert_sandstone_cobble","Desert Sandstone Cobble","mycobble:default_desert_sandstone_cobble","default_cobble.png^[colorize:#e1da94:120"},
	{ "desert_sandstone_gravel","Desert Sandstone Gravel","mycobble:desert_sandstone_gravel","default_gravel.png^[colorize:#f4b05c:120"},
	{ "desert_sandstone_sand","Desert Sandstone Sand","mycobble:desert_sandstone_sand","default_sand.png^[colorize:#ef8a3d:120"},
}

for i in ipairs(mycobble_slopes) do
	local mat = mycobble_slopes[i][1]
	local desc = mycobble_slopes[i][2]
	local item = mycobble_slopes[i][3]
	local img = mycobble_slopes[i][4]

--slope
core.register_node("myslopes:"..mat.."_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
core.register_node("myslopes:"..mat.."_icorner", {
	description = desc.." Slope Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
core.register_node("myslopes:"..mat.."_ocorner", {
	description = desc.." Slope Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {img},
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
	output = "myslopes:"..mat.."_slope 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,""},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_icorner 3",
	recipe = {
		{"", "",""},
		{"", item,""},
		{item,"", item},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_ocorner 3",
	recipe = {
		{"", "",""},
		{item, "",item},
		{"", item,""},
	}
})

--rotated-----------------------------------------------
--slope
core.register_craft({
	output = "myslopes:"..mat.."_slope_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_slope",""},
		{"", "",""},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_icorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_icorner",""},
		{"", "",""},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_ocorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_ocorner",""},
		{"", "",""},
	}
})
--]]
end






