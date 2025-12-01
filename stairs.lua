local block_table = {
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
	block_table = {
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
	"stairs:slab_mywhiteblock:block"
}


for i in ipairs(block_table) do
	local mat = block_table[i][1]
	local des = block_table[i][2]
	local img = block_table[i][3]



stairs.register_stair_and_slab("mywhiteblock:block_"..mat,
			"mywhiteblock:block_"..mat, 
			{cracky=2}, 
			{"mywhiteblock_white.png^[colorize:"..img},
			des.." Stairs", 
			des.." Slab", 
			default.node_sound_wood_defaults(), 
			"mywhiteblock_white.png^[colorize:"..img,
			des.." Inner Stairs", 
			des.." Outer Stairs")
end

stairs.register_stair_and_slab("mywhiteblock:block", "mywhiteblock:block", {cracky=2}, {"mywhiteblock_white.png"},
		"White Stairs", "White Slab", default.node_sound_wood_defaults(), "mywhiteblock_white.png",
		"White Inner Stairs", "White Outer Stairs")

if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(block_table) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
