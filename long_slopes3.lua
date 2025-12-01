local slope_cbox_long = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -2.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -2.1875, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -1.75, 0.5, -0.1875, 0.5},
			{-0.5, -0.5, -1.375, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, -0.9375, 0.5, 0.0625, 0.5},
			{-0.5, -0.5, -0.5625, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, -0.1875, 0.5, 0.3125, 0.5},
			{-0.5, -0.5, 0.1875, 0.5, 0.4375, 0.5},
	}
}

local icorner_cbox_long = {
	type = "fixed",
	fixed = {
			{-2.5, -0.5, -2.5, 0.5, -0.4375, 0.5},
			{-2.5, -0.5, -2.1875, 0.5, -0.3125, 0.5},
			{-2.5, -0.5, -1.75, 0.5, -0.1875, 0.5},
			{-2.5, -0.5, -1.375, 0.5, -0.0625, 0.5},
			{-2.5, -0.5, -0.9375, 0.5, 0.0625, 0.5},
			{-2.5, -0.5, -0.5625, 0.5, 0.1875, 0.5},
			{-2.5, -0.5, -0.1875, 0.5, 0.3125, 0.5},
			{-2.5, -0.5, 0.1875, 0.5, 0.4375, 0.5},
			{-2.5, -0.5, -2.5, -2.125, 0.4375, 0.5},
			{-2.5, -0.5, -2.5, -1.75, 0.3125, 0.5},
			{-2.5, -0.5, -2.5, -1.375, 0.1875, 0.5},
			{-2.5, -0.5, -2.5, -1.0625, 0.0625, 0.5},
			{-2.5, -0.5, -2.5, -0.6875, -0.0625, 0.5},
			{-2.5, -0.5, -2.5, -0.25, -0.1875, 0.5},
			{-2.5, -0.5, -2.5, 0.125, -0.3125, 0.5},
	}
}

local ocorner_cbox_long = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -2.5, 2.5, -0.4375, 0.5},
			{-0.5, -0.5, -2.125, 2.125, -0.3125, 0.5},
			{-0.5, -0.5, -1.75, 1.75, -0.1875, 0.5},
			{-0.5, -0.5, -1.375, 1.375, -0.0625, 0.5},
			{-0.5, -0.5, -1, 1, 0.0625, 0.5},
			{-0.5, -0.5, -0.625, 0.625, 0.1875, 0.5},
			{-0.5, -0.5, -0.25, 0.25, 0.3125, 0.5},
			{-0.5, -0.5, 0.125, -0.125, 0.4375, 0.5},
	}
}

local long_slopes = {   --Material , Description , Image , Item
	{ "default_cobble" , "Cobble" , "default_cobble", "default:cobble"},
	{ "default_stone" , "Stone" , "default_stone", "default:stone"},
	{ "default_sandstone" , "Sandstone " , "default_sandstone", "default:sandstone"},
	{ "default_desert_stone" , "Desert Stone" , "default_desert_stone", "default:desert_stone"},
	{ "default_dirt" , "Dirt" , "default_dirt", "default:dirt"},
	{ "default_gravel" , "Gravel" , "default_gravel", "default:gravel"},
}

for i in ipairs(long_slopes) do
	local mat = long_slopes[i][1]
	local desc = long_slopes[i][2]
	local img = long_slopes[i][3]
	local item = long_slopes[i][4]

--long slope
core.register_node("myslopes:"..mat.."_slope_long3", {
	description = desc.." Slope Long3",
	drawtype = "mesh",
	mesh = "slope_test_slope_long3.obj",
	tiles = {img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})

--Inside Corner Long
core.register_node("myslopes:"..mat.."_long_icorner3", {
	description = desc.." Long Slope Inside Corner3",
	drawtype = "mesh",
	mesh = "slope_test_icorner3.obj",
	tiles = {img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})

--Outside Corner Long
core.register_node("myslopes:"..mat.."_long_ocorner3", {
	description = desc.." Long Slope Outside Corner3",
	drawtype = "mesh",
	mesh = "slope_test_ocorner3.obj",
	tiles = {img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})

--Crafts--------------------------------------------------------

--slope long
core.register_craft({
	output = "myslopes:"..mat.."_slope_long 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,item},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_long_icorner 3",
	recipe = {
		{"", item,""},
		{item, item,item},
		{item,"", item},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_long_ocorner 3",
	recipe = {
		{item, "",item},
		{item, item,item},
		{"", item,""},
	}
})

--rotated-----------------------------------------------

--slope long
core.register_craft({
	output = "myslopes:"..mat.."_slope_long_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_slope_long",""},
		{"", "",""},
	}
})
--slope icorner
core.register_craft({
	output = "myslopes:"..mat.."_long_icorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_long_icorner",""},
		{"", "",""},
	}
})
--slope ocorner
core.register_craft({
	output = "myslopes:"..mat.."_long_ocorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_long_ocorner",""},
		{"", "",""},
	}
})


end






