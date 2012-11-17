
GenieDB = {
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
	["profileKeys"] = {
		["Prallend - Deathwing"] = "Default",
		["Zerkratzen - Deathwing"] = "Default",
		["Untote - Jubei'Thos"] = "Default",
		["Erschossen - Deathwing"] = "Default",
		["Jaymes - Deathwing"] = "Default",
		["Vergottlicht - Deathwing"] = "Default",
		["Geiler - Deathwing"] = "Default",
		["Dunskull - Deathwing"] = "Default",
		["Beichte - Deathwing"] = "Default",
		["Zaubertot - Deathwing"] = "Default",
		["Geil - Uldum"] = "Default",
		["Notwehr - Deathwing"] = "Default",
	},
	["global"] = {
		["color"] = {
			["bool"] = {
				["a"] = 1,
				["b"] = 0.8705882352941177,
				["g"] = 0.6901960784313725,
				["r"] = 0.9372549019607843,
			},
			["string"] = {
				["a"] = 1,
				["b"] = 0.4,
				["g"] = 0.9372549019607843,
				["r"] = 0.8862745098039215,
			},
			["disabled"] = {
				["a"] = 1,
				["b"] = 0.3686274509803922,
				["g"] = 0.3686274509803922,
				["r"] = 0.3686274509803922,
			},
			["family"] = {
				["a"] = 1,
				["b"] = 0.4431372549019608,
				["g"] = 0.4431372549019608,
				["r"] = 0.9686274509803922,
			},
			["combined"] = {
				["a"] = 1,
				["b"] = 1,
				["g"] = 0.6588235294117647,
				["r"] = 0.5372549019607843,
			},
			["number"] = {
				["a"] = 1,
				["b"] = 0.8666666666666667,
				["g"] = 0.9372549019607843,
				["r"] = 0.5019607843137255,
			},
			["editHighlight"] = {
				["a"] = 0.5100000202655792,
				["b"] = 0.8941176470588235,
				["g"] = 1,
				["r"] = 0.4509803921568628,
			},
		},
		["GB_Delay"] = 1,
		["edit"] = false,
	},
	["profiles"] = {
		["Default"] = {
			["classranking"] = {
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "QuestItem",
					["name"] = "Quest Item",
				}, -- [1]
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "Soulbound",
					["name"] = "Soulbound",
				}, -- [2]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Rarity",
					["max"] = 9,
					["invert"] = true,
					["name"] = "Quality",
				}, -- [3]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "TStID",
					["max"] = 9999,
					["invert"] = false,
					["name"] = "Aic",
				}, -- [4]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "EquipLoc",
					["name"] = "Equip Location",
				}, -- [5]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "Name",
					["name"] = "Name",
				}, -- [6]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Count",
					["max"] = 9999,
					["name"] = "Count",
				}, -- [7]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "Unique",
					["invert"] = true,
					["name"] = "Unique",
				}, -- [8]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "iLvl",
					["max"] = 999,
					["name"] = "ItemLevel",
				}, -- [9]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "MinLevel",
					["max"] = 99,
					["name"] = "Minimum level",
				}, -- [10]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "StackCount",
					["max"] = 9999,
					["name"] = "Stackcount",
				}, -- [11]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Texture",
					["name"] = "Texture",
				}, -- [12]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Type",
					["name"] = "Type",
				}, -- [13]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "SubType",
					["name"] = "Subtype",
				}, -- [14]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boe",
					["name"] = "Binds when equipped",
				}, -- [15]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bop",
					["name"] = "Binds when picked up",
				}, -- [16]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bou",
					["name"] = "Binds when used",
				}, -- [17]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boa",
					["name"] = "Binds to account",
				}, -- [18]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "ItemID",
					["max"] = 999999,
					["invert"] = false,
					["name"] = "ItemID",
				}, -- [19]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "Price",
					["max"] = 9999999999,
					["invert"] = true,
					["name"] = "Sell price",
				}, -- [20]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "SkillLvl",
					["max"] = 999,
					["invert"] = true,
					["name"] = "Skill",
				}, -- [21]
				{
					["enabled"] = false,
					["type"] = "family",
					["criteria"] = "<<set",
					["name"] = "Equipment sets",
				}, -- [22]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "dps",
					["invert"] = true,
					["criteria"] = "dps",
				}, -- [23]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "healing",
					["invert"] = true,
					["criteria"] = "healing",
				}, -- [24]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "hit",
					["invert"] = true,
					["criteria"] = "hit",
				}, -- [25]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "tanking",
					["invert"] = true,
					["criteria"] = "tanking",
				}, -- [26]
			},
			["date"] = 1352161436,
			["bags"] = {
				["ignore"] = {
					["_SB1"] = true,
				},
			},
			["attachTo"] = {
				["minimap"] = true,
				["tooltip"] = false,
			},
			["version"] = 5000,
			["customFamilies"] = {
				["dps"] = {
					["set"] = "DPS",
					[72844] = "Pit Lord's Destroyer:16",
					[23476] = "Squire's Shirt:4",
				},
				["tanking"] = {
					[23476] = "Squire's Shirt:4",
					[81659] = "Faded Forest Signet:11",
					[66907] = "Captain Hadan's Pauldrons:3",
					[90345] = "Peacebreaker's Armored Helm:1",
					[81669] = "Faded Forest Manteau:15",
					[81640] = "Faded Forest Heavy Gauntlets:10",
					[90355] = "Heavy Chestpiece of Eminent Domain:5",
					[56138] = "Gale of Shadows:13",
					[87290] = "Legguards of Ironclad Confidence:7",
					[81654] = "Faded Forest Pendant:2",
					[46874] = "Argent Crusader's Tabard:19",
					[81631] = "Faded Forest Heavy Girdle:6",
					[81664] = "Faded Forest Insignia:14",
					[80771] = "Ring of Restoration:12",
					[90383] = "Skyfire Trooper's Mace:16",
					[90389] = "Skyguardian's Shield:17",
					[81649] = "Faded Forest Heavy Armplates:9",
					[81622] = "Faded Forest Heavy Warboots:8",
					["set"] = "Tanking",
				},
				["healing"] = {
					[76153] = "Signet of the Twilight Prophet:12",
					[56138] = "Gale of Shadows:14",
					[23476] = "Squire's Shirt:4",
					[71091] = "Immolation Breastplate:5",
					[66907] = "Captain Hadan's Pauldrons:3",
					[72833] = "Scepter of Azshara:16",
					["set"] = "Healing",
				},
				["hit"] = {
					["set"] = "Hit",
					[37171] = "Flame-Bathed Steel Girdle:6",
					[49074] = "Coren's Chromium Coaster:14",
					[37150] = "Rift Striders:8",
					[42987] = "Darkmoon Card: Greatness:13",
					[47232] = "Drape of the Undefeated:15",
					[23476] = "Squire's Shirt:4",
				},
			},
		},
	},
}
