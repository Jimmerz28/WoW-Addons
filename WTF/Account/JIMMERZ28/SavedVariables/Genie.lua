
GenieDB = {
	["profiles"] = {
		["Default"] = {
			["classranking"] = {
				{
					["enabled"] = true,
					["type"] = "combined",
					["criteria"] = "(ItemID_number:=50761)",
					["invert"] = false,
					["name"] = "ItemID:=50761",
				}, -- [1]
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "QuestItem",
					["name"] = "Quest Item",
				}, -- [2]
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "Soulbound",
					["name"] = "Soulbound",
				}, -- [3]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Rarity",
					["max"] = 9,
					["invert"] = true,
					["name"] = "Quality",
				}, -- [4]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "TStID",
					["max"] = 9999,
					["invert"] = false,
					["name"] = "Aic",
				}, -- [5]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "EquipLoc",
					["name"] = "Equip Location",
				}, -- [6]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "Name",
					["name"] = "Name",
				}, -- [7]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Count",
					["max"] = 9999,
					["name"] = "Count",
				}, -- [8]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "Unique",
					["invert"] = true,
					["name"] = "Unique",
				}, -- [9]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "iLvl",
					["max"] = 999,
					["name"] = "ItemLevel",
				}, -- [10]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "MinLevel",
					["max"] = 99,
					["name"] = "Minimum level",
				}, -- [11]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "StackCount",
					["max"] = 9999,
					["name"] = "Stackcount",
				}, -- [12]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Texture",
					["name"] = "Texture",
				}, -- [13]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Type",
					["name"] = "Type",
				}, -- [14]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "SubType",
					["name"] = "Subtype",
				}, -- [15]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boe",
					["name"] = "Binds when equipped",
				}, -- [16]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bop",
					["name"] = "Binds when picked up",
				}, -- [17]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bou",
					["name"] = "Binds when used",
				}, -- [18]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boa",
					["name"] = "Binds to account",
				}, -- [19]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "ItemID",
					["max"] = 999999,
					["invert"] = false,
					["name"] = "ItemID",
				}, -- [20]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "Price",
					["max"] = 9999999999,
					["invert"] = true,
					["name"] = "Sell price",
				}, -- [21]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "SkillLvl",
					["max"] = 999,
					["invert"] = true,
					["name"] = "Skill",
				}, -- [22]
				{
					["enabled"] = false,
					["type"] = "family",
					["criteria"] = "<<set",
					["name"] = "Equipment sets",
				}, -- [23]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "dps",
					["invert"] = true,
					["criteria"] = "dps",
				}, -- [24]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "healing",
					["invert"] = true,
					["criteria"] = "healing",
				}, -- [25]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "hit",
					["invert"] = true,
					["criteria"] = "hit",
				}, -- [26]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "pvp",
					["invert"] = true,
					["criteria"] = "pvp",
				}, -- [27]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "fishing",
					["invert"] = true,
					["criteria"] = "fishing",
				}, -- [28]
			},
			["date"] = 1355026447,
			["bags"] = {
				["ignore"] = {
				},
			},
			["attachTo"] = {
				["tooltip"] = false,
				["minimap"] = true,
			},
			["version"] = 5000,
			["customFamilies"] = {
				["hit"] = {
					[35279] = "Tabard of Summer Skies:19",
					[4335] = "Rich Purple Silk Shirt:4",
					["set"] = "Hit",
					[46025] = "Devotion:16",
					[46195] = "Conqueror's Leggings of Sanctification:7",
				},
				["fishing"] = {
					[44050] = "Mastercraft Kalu'ak Fishing Pole:16",
					[4335] = "Rich Purple Silk Shirt:4",
					["set"] = "Fishing",
					[46195] = "Conqueror's Leggings of Sanctification:7",
					[40450] = "Valorous Shoulderpads of Faith:3",
				},
				["healing"] = {
					[88043] = "Nayeli Shoes:8",
					[4335] = "Rich Purple Silk Shirt:4",
					[81512] = "Sha-Haunted Locket:2",
					[81485] = "Nayeli Cord:6",
					[81458] = "Nayeli Robe:5",
					[81522] = "Ring of the Pools of Youth:12",
					[87604] = "Beachcomber's Hat:1",
					[81532] = "Silkspawn Carving:13",
					[87333] = "Watchful Dreamer's Trousers:7",
					["set"] = "Healing",
					[81819] = "Band of the Big Thing o' the Deep:11",
					[81449] = "Nayeli Mantle:3",
					[87312] = "Auntie's Cooking Apron:15",
					[87345] = "Bindings of Impeccable Strategy:9",
					[80874] = "Staff of Trembling Will:16",
					[71336] = "Petrified Pickled Egg:14",
					[80913] = "Gloves of Enraged Slaughter:10",
				},
				["dps"] = {
					[88043] = "Nayeli Shoes:8",
					[4335] = "Rich Purple Silk Shirt:4",
					[81537] = "Drape of the Lagoon:15",
					[81458] = "Nayeli Robe:5",
					[81522] = "Ring of the Pools of Youth:12",
					[87604] = "Beachcomber's Hat:1",
					[87327] = "Cloudstriker Cord:6",
					[81532] = "Silkspawn Carving:13",
					[87333] = "Watchful Dreamer's Trousers:7",
					["set"] = "DPS",
					[81819] = "Band of the Big Thing o' the Deep:11",
					[81449] = "Nayeli Mantle:3",
					[87345] = "Bindings of Impeccable Strategy:9",
					[80874] = "Staff of Trembling Will:16",
					[71336] = "Petrified Pickled Egg:14",
					[80913] = "Gloves of Enraged Slaughter:10",
					[84281] = "Bramble Locket:2",
				},
				["pvp"] = {
					[70227] = "Ruthless Gladiator's Energy Staff:16",
					[72403] = "Ruthless Gladiator's Mooncloth Robe:5",
					[72404] = "Ruthless Gladiator's Mooncloth Mantle:3",
					["set"] = "PvP",
					[64793] = "Bloodthirsty Gladiator's Medallion of Tenacity:14",
					[72401] = "Ruthless Gladiator's Mooncloth Helm:1",
					[4335] = "Rich Purple Silk Shirt:4",
					[72402] = "Ruthless Gladiator's Mooncloth Leggings:7",
				},
			},
		},
	},
	["global"] = {
		["color"] = {
			["bool"] = {
				["a"] = 1,
				["r"] = 0.9372549019607843,
				["g"] = 0.6901960784313725,
				["b"] = 0.8705882352941177,
			},
			["string"] = {
				["a"] = 1,
				["r"] = 0.8862745098039215,
				["g"] = 0.9372549019607843,
				["b"] = 0.4,
			},
			["disabled"] = {
				["a"] = 1,
				["r"] = 0.3686274509803922,
				["g"] = 0.3686274509803922,
				["b"] = 0.3686274509803922,
			},
			["family"] = {
				["a"] = 1,
				["r"] = 0.9686274509803922,
				["g"] = 0.4431372549019608,
				["b"] = 0.4431372549019608,
			},
			["combined"] = {
				["a"] = 1,
				["r"] = 0.5372549019607843,
				["g"] = 0.6588235294117647,
				["b"] = 1,
			},
			["number"] = {
				["a"] = 1,
				["r"] = 0.5019607843137255,
				["g"] = 0.9372549019607843,
				["b"] = 0.8666666666666667,
			},
			["editHighlight"] = {
				["a"] = 0.5100000202655792,
				["r"] = 0.4509803921568628,
				["g"] = 1,
				["b"] = 0.8941176470588235,
			},
		},
		["GB_Delay"] = 1,
		["edit"] = false,
	},
	["profileKeys"] = {
		["Prallend - Deathwing"] = "Default",
		["Zerkratzen - Deathwing"] = "Default",
		["Untote - Jubei'Thos"] = "Default",
		["Erschossen - Deathwing"] = "Default",
		["Jaymes - Deathwing"] = "Default",
		["Notwehr - Deathwing"] = "Default",
		["Geiler - Deathwing"] = "Default",
		["Dunskull - Deathwing"] = "Default",
		["Beichte - Deathwing"] = "Default",
		["Zaubertot - Deathwing"] = "Default",
		["Geil - Uldum"] = "Default",
		["Vergottlicht - Deathwing"] = "Default",
	},
	["factionrealm"] = {
		["Alliance - Deathwing"] = {
			["gb"] = {
				["Inertia"] = {
					{
					}, -- [1]
					{
					}, -- [2]
					{
					}, -- [3]
					{
					}, -- [4]
					{
					}, -- [5]
					{
					}, -- [6]
					{
					}, -- [7]
					{
					}, -- [8]
				},
			},
		},
	},
}
