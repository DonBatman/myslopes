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
local slopes = {   --Material , Description , Image , Item
	{ "default_cobble" , "Cobble" , "default_cobble", "default:cobble"},
	
	{ "default_stone" , "Stone" , "default_stone", "default:stone"},
	{ "default_desert_stone" , "Desert Stone" , "default_desert_stone", "default:desert_stone"},
	{ "default_desert_sandstone" , "Desert Sandstone " , "default_desert_sandstone", "default:desert_sandstone"},
	{ "default_sandstone" , "Sandstone " , "default_sandstone", "default:sandstone"},
	{ "default_silver_sandstone" , "Silver Sandstone " , "default_silver_sandstone", "default:silver_sandstone"},
	
	{ "default_stone_block" , "Stone Block" , "default_stone_block", "default:stone_block"},
	{ "default_desert_stone_block" , "Desert Stone Block" , "default_desert_stone_block", "default:desert_stone_block"},
	{ "default_sandstone_block" , "Sandstone Block" , "default_sandstone_block", "default:sandstone_block"},
	{ "default_desert_sandstone_block" , "Desert Sand Stone Block" , "default_desert_sandstone_block", "default:desert_sandstone_block"},
	{ "default_silver_sandstone_block" , "Silver Sand Stone Block" , "default_silver_sandstone_block", "default:silver_sandstone_block"},
	
	{ "default_stone_brick" , "Stone Brick" , "default_stone_brick", "default:stone_brick"},
	{ "default_stone_brick" , "Stone Brick" , "default_stone_brick", "default:desert_stone_brick"},
	{ "default_sandstone_brick" , "Sandstone Brick" , "default_sandstone_brick", "default:sandstone_brick"},
	{ "default_desert_sandstone_brick" , "Desert Sandstone Brick" , "default_desert_sandstone_brick", "default:desert_sandstone_brick"},
	{ "default_silver_sandstone_brick" , "Silver Sandstone Brick" , "default_silver_sandstone_brick", "default:silver_sandstone_brick"},
	
	{ "default_dirt" , "Dirt" , "default_dirt", "default:dirt"},
	{ "default_gravel" , "Gravel" , "default_gravel", "default:gravel"},
}

for i in ipairs(slopes) do
	local mat = slopes[i][1]
	local desc = slopes[i][2]
	local img = slopes[i][3]
	local item = slopes[i][4]

--slope
core.register_node("myslopes:"..mat.."_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {img..".png"},
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
	tiles = {img..".png"},
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
	tiles = {img..".png"},
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
end

--slope
core.register_node("myslopes:default_glass_slope", {
	description = "Glass Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"default_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
core.register_node("myslopes:default_glass_icorner", {
	description = "Glass Slope Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"default_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
core.register_node("myslopes:default_glass_ocorner", {
	description = "Glass Slope Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"default_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--slope
core.register_node("myslopes:default_obsidian_glass_slope", {
	description = "Obsidian Glass Slope",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"default_obsidian_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--icorner
core.register_node("myslopes:default_obsidian_glass_icorner", {
	description = "Obsidian Glass Slope Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"default_obsidian_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
core.register_node("myslopes:default_obsidian_glass_ocorner", {
	description = "Obsidian Glass Slope Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"default_obsidian_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = 'blend',
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})



