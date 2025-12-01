mydfences = {}

local blocks = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
	}
		
if core.get_modpath("mydye") then
	blocks = {
	{"black",      	"Black",      		"#000000"},
	{"blue",       	"Blue",       		"#2000c9"},
	{"brown",     	"Brown",      		"#954c05"},
	{"cyan",      	"Cyan",       		"#01ffd8"},
	{"darkgreen", 	"Dark Green",  		"#005b07"},
	{"darkgrey",  	"Dark Grey",   		"#303030"},
	{"green",     	"Green",      		"#61ff01"},
	{"grey",       	"Grey",       		"#5b5b5b"},
	{"magenta",    	"Magenta",    		"#ff05bb"},
	{"orange",     	"Orange",     		"#ff8401"},
	{"pink",      	"Pink",       		"#ff65b5"},
	{"red",        	"Red",        		"#ff0000"},
	{"violet",     	"Violet",     		"#ab23b0"},
	{"white",      	"White",      		"#ffffff"},
	{"yellow",     	"Yellow",     		"#e3ff00"},
	{"peachpuff",	"Peachpuff", 		"#FFDAB9"},
	{"navy",		"Navy", 			"#000080"},
	{"coral",		"Coral", 			"#FF7F50"},
	{"khaki",		"Khaki", 			"#F0E68C"},
	{"lime",		"Lime", 			"#00FF00"},
	{"light_pink",	"Light Pink", 		"#FFB6C1"},
	{"light_grey",	"Light Grey", 		"#D3D3D3"},
	{"purple",		"Purple", 			"#800080"},
	{"maroon",		"Maroon", 			"#800000"},
	{"aquamarine",	"Aqua Marine", 		"#7FFFD4"},
	{"chocolate",	"Chocolate", 		"#D2691E"},
	{"crimson",		"Crimson", 			"#DC143C"},
	{"olive",		"Olive", 			"#808000"},
	{"white_smoke",	"White Smoke", 		"#F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"#FFE4E1"},
	{"orchid",		"Orchid", 			"#DA70D6"},
	}
end
local paintables = {
	"mywhiteblock:fence"
}
for i in ipairs (blocks) do
local wo = blocks[i][1]
local des = blocks[i][2]
local col = blocks[i][3]

default.register_fence("mywhiteblock:fence_" .. wo, {
	description = (des .. " Fence"),
	texture = "mywhiteblock_white.png^[colorize:"..col,
	material = "block_"..wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	check_for_pole = true
})

core.register_craft({
	output = 'mywhiteblock:fence_'..wo..' 2',
	recipe = {
		{'mywhiteblock:block_'..wo, 'default:stick', 'mywhiteblock:block_'..wo},
		{'mywhiteblock:block_'..wo, 'default:stick', 'mywhiteblock:block_'..wo},
		{'', '', ''},
	}
})

default.register_fence_rail("mywhiteblock:fence_rail_"..wo, {
	description = des..(" Fence Rail"),
	texture = "mywhiteblock_white.png^[colorize:"..col,
	inventory_image = "default_fence_rail_overlay.png^mywhiteblock_white.png^[colorize:"..col.."^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^mywhiteblock_white.png^[colorize:"..col.."^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "block_"..wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

core.register_craft({
	output = 'mywhiteblock:fence_rail_'..wo..' 2',
	recipe = {
		{'mywhiteblock:block_'..wo, 'mywhiteblock:block_'..wo, ''},
		{'', '', ''},
		{'mywhiteblock:block_'..wo, 'mywhiteblock:block_'..wo, ''},
	}
})

doors.register_fencegate("mywhiteblock:fencegate_"..wo, {
	description = (des .. " Fence Gate"),
	texture = "mywhiteblock_white.png^[colorize:"..col,
	material = "block_"..wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

core.register_craft({
	output = "mywhiteblock:fencegate_"..wo..'_closed 2',
	recipe = {
		{'default:stick', 'mywhiteblock:block_'..wo, 'default:stick'},
		{'default:stick', 'mywhiteblock:block_'..wo, 'default:stick'},
		{'', '', ''},
	}
})
end

if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(blocks) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end

