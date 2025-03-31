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
local mycastle_slopes = {   --Material , Description , Item, Image
	{ "concrete_block","Concrete Block","mycastle:concrete_block","bars"},
	{ "grey_stone","Grey Stone","mycastle:grey_stone","grey_stone"},
	{ "dark_stone","Dark Stone","mycastle:dark_stone","dark_stone"},
	{ "red_stone","Red Stone","mycastle:red_stone","red_stone"},
	{ "big_grey_stone","Big Grey Stone","mycastle:big_grey_stone","big_grey_stone"},
	{ "big_dark_stone","Big Dark Stone","mycastle:big_dark_stone","big_dark_stone"},
	{ "vred_stone","Big Red Stone","mycastle:big_red_stone","big_red_stone"},
	{ "grey_brick","Grey Brick","mycastle:grey_brick","grey_brick"},
	{ "dark_brick","Dark Brick","mycastle:dark_brick","dark_brick"},
	{ "red_brick","Red Brick","mycastle:red_brick","red_brick"},
	{ "checker_plate","Checker Plate","mycastle:checker_plate","checplate"},
	{ "dark_cobble","Dark Cobble","mycastle:dark_cobble","dark_cobble"},
	{ "tan_cobble","Tan Cobble","mycastle:tan_cobble","tan_cobble"},
	{ "white_cobble","White Cobble","mycastle:white_cobble","white_cobble"},
}

for i in ipairs(mycastle_slopes) do
	local mat = mycastle_slopes[i][1]
	local desc = mycastle_slopes[i][2]
	local item = mycastle_slopes[i][3]
	local img = mycastle_slopes[i][4]

--slope
minetest.register_node("myslopes:"..mat.."_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"mycastle_"..img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
minetest.register_node("myslopes:"..mat.."_icorner", {
	description = desc.." Slope Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"mycastle_"..img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
minetest.register_node("myslopes:"..mat.."_ocorner", {
	description = desc.." Slope Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"mycastle_"..img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--Crafts--------------------------------------------------------

--slope
minetest.register_craft({
	output = "myslopes:"..mat.."_slope 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,""},
	}
})
--slope icorner
minetest.register_craft({
	output = "myslopes:"..mat.."_icorner 3",
	recipe = {
		{"", "",""},
		{"", item,""},
		{item,"", item},
	}
})
--slope ocorner
minetest.register_craft({
	output = "myslopes:"..mat.."_ocorner 3",
	recipe = {
		{"", "",""},
		{item, "",item},
		{"", item,""},
	}
})

--rotated-----------------------------------------------
--slope
minetest.register_craft({
	output = "myslopes:"..mat.."_slope_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_slope",""},
		{"", "",""},
	}
})
--slope icorner
minetest.register_craft({
	output = "myslopes:"..mat.."_icorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_icorner",""},
		{"", "",""},
	}
})
--slope ocorner
minetest.register_craft({
	output = "myslopes:"..mat.."_ocorner_r 1",
	recipe = {
		{"", "",""},
		{"", "myslopes:"..mat.."_ocorner",""},
		{"", "",""},
	}
})
--]]
end






