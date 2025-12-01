local slope_cbox_long = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -3.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -3, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -2.5, 0.5, -0.1875, 0.5},
			{-0.5, -0.5, -2, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, -1.5, 0.5, 0.0625, 0.5},
			{-0.5, -0.5, -1, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.3125, 0.5},
			{-0.5, -0.5, -0, 0.5, 0.4375, 0.5},
	}
}

local icorner_cbox_long = {
	type = "fixed",
	fixed = {
			{-3.5, -0.5, 0, 0.5, 0.4375, 0.5},
			{-3.5, -0.5, -0.5, 0.5, 0.3125, 0.5},
			{-3.5, -0.5, -1.0625, 0.5, 0.1875, 0.5},
			{-3.5, -0.5, -1.5, 0.5, 0.0625, 0.5},
			{-3.5, -0.5, -2, 0.5, -0.0625, 0.5},
			{-3.5, -0.5, -3.5, -0.5, -0.1875, 0.5},
			{-3.5, -0.5, -3, 0.5, -0.3125, 0.5},
			{-3.5, -0.5, -3.5, 0.5, -0.4375, 0.5},
			{-3.5, -0.5, -3.5, -3, 0.4375, 0.5},
			{-3.5, -0.5, -3.5, -2.5, 0.3125, 0.5},
			{-3.5, -0.5, -3.5, -2, 0.1875, 0.5},
			{-3.5, -0.5, -3.5, -1.5, 0.0625, 0.5},
			{-3.5, -0.5, -3.5, -1, -0.0625, 0.5},
			{-3.5, -0.5, -2.5, 0.5, -0.1875, 0.5},
			{-3.5, -0.5, -3.5, 0, -0.3125, 0.5},
	}
}

local ocorner_cbox_long = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -3.5, 3.5, -0.4375, 0.5},
			{-0.5, -0.5, -3, 3.0625, -0.3125, 0.5},
			{-0.5, -0.5, -2.5, 2.5, -0.1875, 0.5},
			{-0.5, -0.5, -2, 2, -0.0625, 0.5},
			{-0.5, -0.5, -1.5, 1.5, 0.0625, 0.5},
			{-0.5, -0.5, -1, 1, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.3125, 0.5},
			{-0.5, -0.5, 0, 0, 0.4375, 0.5},
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
core.register_node("myslopes:"..mat.."_slope_long4", {
	description = desc.." Slope Long4",
	drawtype = "mesh",
	mesh = "slope_test_slope_long4.obj",
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
core.register_node("myslopes:"..mat.."_long_icorner4", {
	description = desc.." Long Slope Inside Corner4",
	drawtype = "mesh",
	mesh = "slope_test_icorner4.obj",
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
core.register_node("myslopes:"..mat.."_long_ocorner4", {
	description = desc.." Long Slope Outside Corner4",
	drawtype = "mesh",
	mesh = "slope_test_ocorner4.obj",
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






