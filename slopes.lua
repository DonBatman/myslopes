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
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5}, -- NodeBox6
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5}, -- NodeBox7
		{-0.5, 0, -0.5, 0, 0.25, 0.5}, -- NodeBox8
		{-0.5, 0, 0, 0.5, 0.25, 0.5}, -- NodeBox9
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5}, -- NodeBox10
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5}, -- NodeBox11
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
local slopes = {   --Material , Description , Image , Item
	{ "default_cobble" , "Cobble" , "default_cobble", "default:cobble"},
	{ "default_stone" , "Stone" , "default_stone", "default:stone"},	
--	{ "default_cactus" , "Cactus" , "default_cactus_side", "default:cactus"},
--	{ "default_sand" , "Sand" , "default_sand", "default:sand"},
	{ "default_sandstone" , "Sandstone " , "default_sandstone", "default:sandstone"},
--	{ "default_desert_sand" , "Desert Sand" , "default_desert_sand", "default:desert_sand"},
	{ "default_desert_stone" , "Desert Stone" , "default_desert_stone", "default:desert_stone"},
	{ "default_dirt" , "Dirt" , "default_dirt", "default:dirt"},
	{ "default_gravel" , "Gravel" , "default_gravel", "default:gravel"},
--	{ "default_ice" , "Ice" , "default_ice", "default:ice"},
--	{ "default_snowblock" , "Snow Block" , "default_snow", "default:snowblock"},
--	{ "default_water_source" , "Water" , "default_water", "default:water_source"},
}

for i in ipairs(slopes) do
	local mat = slopes[i][1]
	local desc = slopes[i][2]
	local img = slopes[i][3]
	local item = slopes[i][4]

--slope
minetest.register_node("myslopes:"..mat.."_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {img..".png"},
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
	tiles = {img..".png"},
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
	tiles = {img..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--[[
--rotated---------------------------------------------------------------
--slope
minetest.register_node("myslopes:"..mat.."_slope_r", {
	description = desc.." Slope Rotated",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {img..".png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
minetest.register_node("myslopes:"..mat.."_icorner_r", {
	description = desc.." Slope Inside Corner Rotate",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {img..".png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
minetest.register_node("myslopes:"..mat.."_ocorner_r", {
	description = desc.." Slope Outside Corner Rotated",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {img..".png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--]]
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
end






