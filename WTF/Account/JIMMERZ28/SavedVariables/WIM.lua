
WIM3_Data = {
	["escapeToHide"] = false,
	["stats"] = {
		["startDate"] = "",
		["versions"] = 1,
		["whispers"] = 0,
		["mostConvos"] = 0,
	},
	["pop_rules"] = {
		["whisper"] = {
			["other"] = {
				["keepfocus"] = false,
				["supress"] = true,
				["onSend"] = true,
				["autofocus"] = false,
				["onReceive"] = true,
			},
			["combat"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["intercept"] = true,
			["party"] = {
				["keepfocus"] = false,
				["supress"] = true,
				["onSend"] = true,
				["autofocus"] = false,
				["onReceive"] = true,
			},
			["alwaysOther"] = false,
			["raid"] = {
				["keepfocus"] = false,
				["supress"] = true,
				["onSend"] = true,
				["autofocus"] = false,
				["onReceive"] = true,
			},
			["arena"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["resting"] = {
				["keepfocus"] = true,
				["supress"] = true,
				["onSend"] = true,
				["autofocus"] = true,
				["onReceive"] = true,
			},
			["pvp"] = {
				["keepfocus"] = false,
				["supress"] = true,
				["onSend"] = true,
				["autofocus"] = false,
				["onReceive"] = true,
			},
		},
		["chat"] = {
			["other"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["bn"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["combat"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["intercept"] = false,
			["resting"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["alwaysOther"] = true,
			["raid"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["arena"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["party"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
			["pvp"] = {
				["keepfocus"] = false,
				["supress"] = false,
				["onSend"] = false,
				["autofocus"] = false,
				["onReceive"] = false,
			},
		},
	},
	["timeStampFormat"] = "%H:%M",
	["windowAlpha"] = 100,
	["sounds"] = {
		["force_game_sound"] = false,
		["whispers"] = {
			["msgout_sml"] = "IM",
			["msgout"] = true,
			["guild"] = false,
			["bnet_sml"] = "IM",
			["msgin_sml"] = "IM",
			["msgin"] = true,
			["friend_sml"] = "IM",
			["guild_sml"] = "IM",
			["bnet"] = false,
			["friend"] = false,
		},
		["chat"] = {
			["msgout_sml"] = "Chat Blip",
			["msgout"] = false,
			["world_sml"] = "Chat Blip",
			["msgin_sml"] = "Chat Blip",
			["msgin"] = true,
			["party_sml"] = "Chat Blip",
			["custom_sml"] = "Chat Blip",
			["say_sml"] = "Chat Blip",
			["raid_sml"] = "Chat Blip",
			["officer_sml"] = "Chat Blip",
			["guild_sml"] = "Chat Blip",
			["raidleader_sml"] = "Chat Blip",
			["battlegroundleader_sml"] = "Chat Blip",
			["battleground_sml"] = "Chat Blip",
		},
	},
	["formatting"] = {
		["bracketing"] = {
			["enabled"] = true,
			["type"] = 1,
		},
	},
	["whoLookups"] = true,
	["ignoreArrowKeys"] = true,
	["enabled"] = true,
	["keepFocus"] = true,
	["windowOnTop"] = true,
	["winSize"] = {
		["height"] = 220,
		["strata"] = "DIALOG",
		["scale"] = 100,
		["width"] = 333,
	},
	["winCascade"] = {
		["enabled"] = true,
		["direction"] = 8,
	},
	["lastState"] = "other",
	["messageFormat"] = "Default",
	["displayColors"] = {
		["wispOut"] = {
			["b"] = 0.9882352941176471,
			["g"] = 0.07843137254901961,
			["r"] = 1,
		},
		["wispIn"] = {
			["b"] = 0.7607843137254902,
			["g"] = 0.03137254901960784,
			["r"] = 0.5607843137254902,
		},
		["sysMsg"] = {
			["b"] = 0,
			["g"] = 0.6627450980392157,
			["r"] = 1,
		},
		["BNwispOut"] = {
			["b"] = 1,
			["g"] = 0.6352941176470588,
			["r"] = 0.1725490196078431,
		},
		["historyIn"] = {
			["b"] = 0.4705882352941176,
			["g"] = 0.4705882352941176,
			["r"] = 0.4705882352941176,
		},
		["errorMsg"] = {
			["b"] = 0,
			["g"] = 0,
			["r"] = 1,
		},
		["webAddress"] = {
			["b"] = 1,
			["g"] = 1,
			["r"] = 1,
		},
		["BNwispIn"] = {
			["b"] = 0.6549019607843137,
			["g"] = 0.4862745098039216,
			["r"] = 0,
		},
		["historyOut"] = {
			["b"] = 0.7058823529411764,
			["g"] = 0.7058823529411764,
			["r"] = 0.7058823529411764,
		},
		["useSkin"] = true,
	},
	["fontSize"] = 12,
	["showToolTips"] = true,
	["minimap"] = {
		["free_position"] = {
			["y"] = -101.4573613395116,
			["x"] = -137.8489072975449,
			["point"] = "TOPRIGHT",
		},
		["free"] = false,
		["rightClickNew"] = false,
		["position"] = 200,
	},
	["wordwrap_indent"] = true,
	["winAnimation"] = true,
	["menuSortActivity"] = true,
	["expose"] = {
		["protect"] = 1,
		["borderSize"] = 20,
		["combat"] = false,
		["groupOnly"] = false,
		["border"] = false,
		["direction"] = 1,
	},
	["alias"] = {
		["title_string"] = "{n} - {a}",
	},
	["autoFocus"] = false,
	["modules"] = {
		["ChatSounds"] = {
			["enabled"] = true,
		},
		["ShortcutBar"] = {
			["enabled"] = true,
		},
		["Emoticons"] = {
			["enabled"] = true,
		},
		["ChatAlerts"] = {
			["enabled"] = true,
		},
		["Sounds"] = {
			["enabled"] = true,
		},
		["Expose"] = {
			["enabled"] = true,
		},
		["WhisperEngine"] = {
			["enabled"] = true,
		},
		["MinimapIcon"] = {
			["enabled"] = true,
		},
		["TimeStamps"] = {
			["enabled"] = true,
		},
		["OffScreenTracker"] = {
			["enabled"] = true,
		},
		["HistoryChat"] = {
			["enabled"] = 1,
		},
		["Tabs"] = {
			["enabled"] = true,
		},
		["Negotiate"] = {
			["enabled"] = true,
		},
		["History"] = {
			["enabled"] = true,
		},
		["LDB"] = {
			["enabled"] = true,
		},
		["URLHandler"] = {
			["enabled"] = true,
		},
		["BNetConvos"] = {
			["enabled"] = 1,
		},
		["ClickControl"] = {
			["enabled"] = true,
		},
		["Menu"] = {
			["enabled"] = true,
		},
		["Filters"] = {
			["enabled"] = true,
		},
	},
	["chat"] = {
		["bn"] = {
			["showAlerts"] = true,
		},
		["guild"] = {
			["showAlerts"] = true,
		},
		["party"] = {
			["showAlerts"] = true,
		},
		["custom"] = {
			["enabled"] = false,
			["channelSettings"] = {
			},
		},
		["say"] = {
		},
		["battleground"] = {
		},
		["raid"] = {
			["showAlerts"] = true,
		},
		["officer"] = {
			["showAlerts"] = true,
		},
		["world"] = {
			["enabled"] = false,
			["channelSettings"] = {
			},
		},
	},
	["tabs"] = {
		["sortBy"] = 2,
		["whispers"] = {
			["enabled"] = true,
			["guild"] = false,
			["friends"] = false,
		},
		["chat"] = {
			["enabled"] = false,
			["aswhisper"] = false,
		},
	},
	["ClickControl"] = {
		["clickSensitivity"] = 0.2,
	},
	["disableAddonMessages"] = false,
	["skin"] = {
		["font_outline"] = "",
		["selected"] = "WIM Classic",
		["font"] = "ChatFontNormal",
		["suggest"] = true,
	},
	["hoverLinks"] = false,
	["winFade"] = true,
	["coloredNames"] = true,
	["clampToScreen"] = true,
	["winLoc"] = {
		["left"] = 0,
		["top"] = 447.1111353631095,
	},
	["history"] = {
		["ageLimit"] = false,
		["previewCount"] = 25,
		["maxPer"] = false,
		["whispers"] = {
			["friends"] = true,
			["all"] = true,
			["guild"] = true,
		},
		["maxAge"] = 1209600,
		["preview"] = true,
		["maxCount"] = 1000,
		["chat"] = {
			["ageLimit"] = false,
			["maxAge"] = 1209600,
			["previewCount"] = 15,
			["preview"] = true,
			["maxCount"] = 500,
			["maxPer"] = true,
		},
	},
	["keepFocusRested"] = true,
	["tabAdvance"] = false,
	["alertedPrivateServer"] = false,
	["rememberWho"] = false,
}
WIM3_Cache = {
	["Deathwing"] = {
		["Geiler"] = {
			["friendList"] = {
				["|Kf565|k000000000|k"] = 2,
				["|Kf542|k0000000000|k"] = 2,
				["|Kf578|k000000000000000|k"] = 2,
				["|Kf577|k000000000000|k"] = 2,
				["|Kf570|k000000000000|k"] = 2,
				["|Kf564|k00000000000000|k"] = 2,
				["|Kf549|k000000000000000|k"] = 2,
				["|Kf555|k00000000000|k"] = 2,
				["|Kf572|k0000000000000000|k"] = 2,
				["|Kf556|k000000000000000|k"] = 2,
				["|Kf569|k000000000000000000|k"] = 2,
				["|Kf558|k00000000000|k"] = 2,
				["|Kf582|k0000000000000000|k"] = 2,
				["|Kf547|k000000000000000|k"] = 2,
				["|Kf575|k0000000000000|k"] = 2,
				["|Kf551|k000000|k"] = 2,
				["|Kf571|k00000000000000|k"] = 2,
				["|Kf576|k0000000000000|k"] = 2,
				["|Kf546|k000000000000|k"] = 2,
				["|Kf552|k00000000000000|k"] = 2,
				["|Kf573|k0000000000000|k"] = 2,
				["|Kf544|k000000|k"] = 2,
				["|Kf560|k0000000000|k"] = 2,
				["|Kf550|k0000000000|k"] = 2,
				["|Kf567|k00000000000|k"] = 2,
				["|Kf579|k00000000000000|k"] = 2,
				["|Kf557|k00000000000000|k"] = 2,
				["|Kf554|k000000000000000|k"] = 2,
				["|Kf545|k000000000|k"] = 2,
				["|Kf584|k000000000000|k"] = 2,
				["|Kf548|k000000000|k"] = 2,
				["|Kf562|k0000000000000000|k"] = 2,
				["|Kf580|k00000000000000|k"] = 2,
				["|Kf553|k0000000000|k"] = 2,
				["|Kf543|k0000|k"] = 2,
				["|Kf559|k0000000000000|k"] = 2,
				["|Kf568|k00000000000|k"] = 2,
				["|Kf583|k000000000000|k"] = 2,
				["|Kf561|k000000000000|k"] = 2,
				["|Kf581|k0000000000000|k"] = 2,
				["|Kf574|k000000000000|k"] = 2,
				["|Kf563|k000000000000|k"] = 2,
				["|Kf566|k000000|k"] = 2,
			},
			["guildList"] = {
				["Ivan"] = true,
				["Geiler"] = true,
				["Roseffin"] = true,
				["Ferdennand"] = true,
				["Fuyuko"] = true,
			},
		},
		["Beichte"] = {
			["friendList"] = {
				["|Kf251|k000000000|k"] = 2,
				["|Kf249|k000000000000|k"] = 2,
				["Helpy"] = 1,
				["Djbowflex"] = 1,
				["Notwehr"] = 1,
				["Vergottlicht"] = 1,
				["|Kf269|k0000000000000000|k"] = 2,
				["|Kf268|k0000000000000|k"] = 2,
				["Avice"] = 1,
				["|Kf245|k0000000000000|k"] = 2,
				["|Kf250|k00000000000000|k"] = 2,
				["|Kf266|k00000000000000|k"] = 2,
				["Hlen"] = 1,
				["|Kf261|k0000000000000|k"] = 2,
				["|Kf235|k000000000000000|k"] = 2,
				["|Kf248|k0000000000000000|k"] = 2,
				["Ivan"] = 1,
				["|Kf262|k0000000000000|k"] = 2,
				["|Kf231|k000000000|k"] = 2,
				["|Kf236|k0000000000|k"] = 2,
				["|Kf267|k00000000000000|k"] = 2,
				["|Kf233|k000000000000000|k"] = 2,
				["|Kf238|k00000000000000|k"] = 2,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf253|k00000000000|k"] = 2,
				["|Kf230|k000000|k"] = 2,
				["|Kf257|k00000000000000|k"] = 2,
				["Dunskull"] = 1,
				["Trixaho"] = 1,
				["|Kf244|k00000000000|k"] = 2,
				["|Kf228|k0000000000|k"] = 2,
				["|Kf271|k000000000000|k"] = 2,
				["|Kf232|k000000000000|k"] = 2,
				["|Kf264|k000000000000|k"] = 2,
				["Jaymes"] = 1,
				["Melland"] = 1,
				["|Kf259|k0000000000000|k"] = 2,
				["|Kf242|k000000000000000|k"] = 2,
				["Manja"] = 1,
				["|Kf234|k000000000|k"] = 2,
				["Joshuah"] = 1,
				["|Kf243|k00000000000000|k"] = 2,
				["Zerkratzen"] = 1,
				["|Kf229|k0000|k"] = 2,
				["|Kf240|k000000000000000|k"] = 2,
				["|Kf246|k0000000000|k"] = 2,
				["Silchas"] = 1,
				["Shieldedrage"] = 1,
				["|Kf256|k000000000000|k"] = 2,
				["|Kf252|k000000|k"] = 2,
				["|Kf239|k0000000000|k"] = 2,
				["|Kf255|k000000000000000000|k"] = 2,
				["|Kf237|k000000|k"] = 2,
				["Rusted"] = 1,
				["|Kf258|k0000000000000000|k"] = 2,
				["Maevirste"] = 1,
				["|Kf263|k00000000000|k"] = 2,
				["|Kf247|k000000000000|k"] = 2,
				["|Kf270|k000000000000|k"] = 2,
				["|Kf254|k00000000000|k"] = 2,
				["|Kf241|k00000000000|k"] = 2,
				["|Kf260|k000000000000|k"] = 2,
				["Saadam"] = 1,
				["Prettysaro"] = 1,
				["Sanefkny"] = 1,
				["Cathmor"] = 1,
				["|Kf265|k000000000000000|k"] = 2,
				["Wuge"] = 1,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Exitrage"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Crantor"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Tyralen"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kittypuppy"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Adobilol"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Tyrtwo"] = true,
				["Arcaneretwar"] = true,
				["Evelin"] = true,
				["Amarusz"] = true,
				["Shoktacular"] = true,
				["Monkish"] = true,
				["Hepaestus"] = true,
				["Ninjanaut"] = true,
				["Checkyosix"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Chrondonic"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Phelly"] = true,
				["Ariaxa"] = true,
				["Katz"] = true,
				["Exitwoundz"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Margië"] = true,
				["Dirtymage"] = true,
				["Jomelyoo"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Chingon"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Katholic"] = true,
				["Líghtbright"] = true,
				["Isela"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Gargas"] = true,
				["Forevermore"] = true,
				["Zeelycan"] = true,
				["Soondead"] = true,
				["Akasorter"] = true,
				["Ashely"] = true,
				["Lythknight"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Akasornet"] = true,
				["Nesaja"] = true,
				["Purrdy"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Vier"] = true,
				["Orome"] = true,
				["Pershele"] = true,
				["Tyrannia"] = true,
				["Dpartddk"] = true,
				["Acisil"] = true,
				["Lucîa"] = true,
				["Flipsyde"] = true,
				["Arcuarius"] = true,
				["Líck"] = true,
				["Kittypew"] = true,
				["Menehune"] = true,
				["Akasorfin"] = true,
				["Edwilly"] = true,
				["Soupzzdk"] = true,
				["Dendore"] = true,
				["Thunderfro"] = true,
				["Punetas"] = true,
				["Lakida"] = true,
				["Eleneore"] = true,
				["Kunzi"] = true,
				["Elexisjcbank"] = true,
				["Hyori"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Fany"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Ischa"] = true,
				["Ripmane"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Desehater"] = true,
				["Posaussie"] = true,
				["Darksparrow"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Shirohato"] = true,
				["Bichobandito"] = true,
				["Tyrkwondo"] = true,
				["Nylu"] = true,
				["Khmer"] = true,
				["Enclosed"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Jiveturky"] = true,
				["Kaileena"] = true,
				["Eyesack"] = true,
				["Snatshes"] = true,
				["Jarfas"] = true,
				["Twiggysmalls"] = true,
				["Sehee"] = true,
				["Niphradil"] = true,
				["Fudgie"] = true,
				["Cloakofskill"] = true,
				["Akasoryk"] = true,
				["Qtcryof"] = true,
				["Radak"] = true,
				["Fåith"] = true,
				["Ayelah"] = true,
				["Foodbank"] = true,
				["Ironpenance"] = true,
				["Hellspire"] = true,
				["Deadmàus"] = true,
				["Crits"] = true,
				["Evermore"] = true,
				["Zito"] = true,
				["Merylz"] = true,
				["Abhornt"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Deego"] = true,
				["Jomelyo"] = true,
				["Pandahjerk"] = true,
				["Scruffu"] = true,
				["Senorugly"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Angkor"] = true,
				["Darriuz"] = true,
				["Kaguri"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Cutiebooty"] = true,
				["Amerusz"] = true,
				["Arma"] = true,
				["Elnumeroonce"] = true,
				["Ellan"] = true,
				["Onezero"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Senis"] = true,
				["Liaa"] = true,
				["Ymcm"] = true,
				["Vayder"] = true,
				["Phlx"] = true,
				["Jiyoung"] = true,
				["Dixxth"] = true,
				["Jengonga"] = true,
				["Kuray"] = true,
				["Sarepta"] = true,
				["Senkou"] = true,
				["Tarrexis"] = true,
				["Gladitorhau"] = true,
				["Ezemode"] = true,
				["Tarius"] = true,
				["Shamagic"] = true,
				["Fenrîs"] = true,
				["Miataris"] = true,
				["Phellan"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Missfaith"] = true,
				["Arck"] = true,
				["Terraenova"] = true,
				["Maedhros"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Ariastwo"] = true,
				["Bromies"] = true,
				["Lythism"] = true,
				["Märgie"] = true,
				["Kats"] = true,
				["Shwex"] = true,
				["Skorme"] = true,
				["Demesis"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Khayden"] = true,
				["Margiel"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Kungfuzi"] = true,
				["Khaden"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Crumlol"] = true,
				["Cassia"] = true,
				["Litegrace"] = true,
				["Liyann"] = true,
				["Jayie"] = true,
				["Insanitywolf"] = true,
				["Sauceyminx"] = true,
				["Persephonee"] = true,
				["Amarexqt"] = true,
				["Aubade"] = true,
				["Ariasqt"] = true,
				["Bache"] = true,
				["Isthisdiablo"] = true,
				["Ironallxy"] = true,
				["Rpnerdxx"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Ajaxx"] = true,
				["Notwehr"] = true,
				["Kyoku"] = true,
				["Faster"] = true,
				["Katicus"] = true,
				["Psychosniper"] = true,
				["Lolah"] = true,
				["Qtfemdwarf"] = true,
				["Nachtmähre"] = true,
				["Juki"] = true,
				["Kariana"] = true,
				["Koalacookie"] = true,
				["Doterel"] = true,
				["Ameruzs"] = true,
				["Lunas"] = true,
				["Akasoran"] = true,
				["Verati"] = true,
				["Qthau"] = true,
				["Legitimate"] = true,
				["Dotsudead"] = true,
				["Skribble"] = true,
				["Druidacritz"] = true,
				["Shaynikens"] = true,
				["Frydchickenz"] = true,
				["Swagflu"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Heki"] = true,
				["Guacamoles"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Rancimus"] = true,
				["Orcholodes"] = true,
				["Amalea"] = true,
				["Hyrcine"] = true,
				["Polycarp"] = true,
				["Bonks"] = true,
				["Dë"] = true,
				["Keiikaaria"] = true,
				["Raksdisapren"] = true,
				["Defaldon"] = true,
				["Donkeyhead"] = true,
				["Nyriph"] = true,
				["Neverhealing"] = true,
				["Zenonmyst"] = true,
				["Eley"] = true,
				["Zyoro"] = true,
				["Chryssta"] = true,
				["Fonzi"] = true,
				["Noobivore"] = true,
				["Zerkratzen"] = true,
				["Szobor"] = true,
				["Sophelia"] = true,
				["Lorin"] = true,
				["Xhasuhana"] = true,
				["Scratchy"] = true,
				["Puddinfart"] = true,
				["Shocket"] = true,
				["Zaubertot"] = true,
				["Wuzul"] = true,
				["Inches"] = true,
				["Nyrif"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Stabufoo"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Purrfect"] = true,
				["Dariuz"] = true,
				["Frostbunny"] = true,
				["Hurtpunch"] = true,
				["Ariasdrood"] = true,
				["Tyrial"] = true,
				["Ericdk"] = true,
				["Scruffior"] = true,
				["Brizoh"] = true,
				["Prallend"] = true,
				["Emy"] = true,
				["Deriden"] = true,
				["Dwarfish"] = true,
				["Lmaonaizee"] = true,
				["Fuzul"] = true,
				["Spacewood"] = true,
				["Shabubble"] = true,
				["Girlyhau"] = true,
				["Euphoris"] = true,
				["Greatdeku"] = true,
				["Polygamy"] = true,
				["Butcha"] = true,
				["Scruffie"] = true,
				["Mustachrides"] = true,
				["Ameruz"] = true,
				["Phel"] = true,
				["Vannah"] = true,
				["Brily"] = true,
				["Purrfec"] = true,
				["Lerytheis"] = true,
				["Skorrm"] = true,
				["Angelîca"] = true,
				["Kailani"] = true,
				["Erebohs"] = true,
				["Parrymason"] = true,
				["Mirandaz"] = true,
				["Reembody"] = true,
				["Eleanas"] = true,
				["Priesticles"] = true,
				["Cericus"] = true,
				["Emmara"] = true,
				["Uranius"] = true,
				["Conquerer"] = true,
				["Kharthus"] = true,
				["Scruffen"] = true,
				["Felyn"] = true,
				["Rpnerdxo"] = true,
				["Mozaic"] = true,
				["Nãnnerhammok"] = true,
				["Kaptiv"] = true,
				["Naetiri"] = true,
				["Naydelle"] = true,
				["Scruffier"] = true,
				["Tyrandras"] = true,
				["Polt"] = true,
			},
		},
		["Jaymes"] = {
			["friendList"] = {
				["|Kf41|k000000000000|k"] = 2,
				["Notwehr"] = 1,
				["Vergottlicht"] = 1,
				["|Kf43|k00000000000000|k"] = 2,
				["Avice"] = 1,
				["Hlen"] = 1,
				["|Kf9|k000000000000|k"] = 2,
				["|Kf38|k0000000000000|k"] = 2,
				["Ivan"] = 1,
				["Sanefkny"] = 1,
				["Nimna"] = 1,
				["|Kf25|k0000000000000000|k"] = 2,
				["|Kf6|k0000|k"] = 2,
				["|Kf36|k0000000000000|k"] = 2,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf40|k00000000000|k"] = 2,
				["|Kf35|k0000000000000000|k"] = 2,
				["|Kf34|k00000000000000|k"] = 2,
				["|Kf20|k00000000000000|k"] = 2,
				["|Kf37|k000000000000|k"] = 2,
				["|Kf23|k0000000000|k"] = 2,
				["|Kf29|k000000|k"] = 2,
				["|Kf15|k00000000000000|k"] = 2,
				["|Kf11|k000000000|k"] = 2,
				["|Kf16|k0000000000|k"] = 2,
				["|Kf12|k000000000000000|k"] = 2,
				["Melland"] = 1,
				["|Kf18|k00000000000|k"] = 2,
				["|Kf32|k000000000000000000|k"] = 2,
				["|Kf31|k00000000000|k"] = 2,
				["|Kf28|k000000000|k"] = 2,
				["|Kf21|k00000000000|k"] = 2,
				["|Kf8|k000000000|k"] = 2,
				["Manja"] = 1,
				["Silchas"] = 1,
				["|Kf13|k0000000000|k"] = 2,
				["Joshuah"] = 1,
				["|Kf46|k0000000000000000|k"] = 2,
				["|Kf5|k0000000000|k"] = 2,
				["|Kf42|k000000000000000|k"] = 2,
				["Zerkratzen"] = 1,
				["|Kf17|k000000000000000|k"] = 2,
				["|Kf19|k000000000000000|k"] = 2,
				["Mutîny"] = 1,
				["Wuge"] = 1,
				["Shieldedrage"] = 1,
				["Saadam"] = 1,
				["|Kf30|k00000000000|k"] = 2,
				["Dunskull"] = 1,
				["|Kf39|k0000000000000|k"] = 2,
				["Beichte"] = 1,
				["|Kf45|k0000000000000|k"] = 2,
				["|Kf7|k000000|k"] = 2,
				["Rusted"] = 1,
				["Maevirste"] = 1,
				["|Kf47|k000000000000|k"] = 2,
				["|Kf48|k000000000000|k"] = 2,
				["|Kf26|k000000000000|k"] = 2,
				["|Kf14|k000000|k"] = 2,
				["|Kf24|k000000000000|k"] = 2,
				["|Kf22|k0000000000000|k"] = 2,
				["|Kf44|k00000000000000|k"] = 2,
				["Prettysaro"] = 1,
				["|Kf10|k000000000000000|k"] = 2,
				["Helpy"] = 1,
				["|Kf33|k000000000000|k"] = 2,
				["|Kf27|k00000000000000|k"] = 2,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Koalacookie"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Ameruzs"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Tyrandras"] = true,
				["Lakida"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Soupzzdk"] = true,
				["Neptrius"] = true,
				["Lerytheis"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Phel"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Jomelyoo"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Felyn"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Scruffier"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Crantor"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Arcaneretwar"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Katholic"] = true,
				["Foxy"] = true,
				["Kharthus"] = true,
				["Kittypuppy"] = true,
				["Kaptiv"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Purrdy"] = true,
				["Konidas"] = true,
				["Naetiri"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Tyrtwo"] = true,
				["Nãnnerhammok"] = true,
				["Checkyosix"] = true,
				["Rpnerdxo"] = true,
				["Vier"] = true,
				["Uranius"] = true,
				["Dromen"] = true,
				["Ninjanaut"] = true,
				["Gargas"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Eyesack"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Exitwoundz"] = true,
				["Chingon"] = true,
				["Emmara"] = true,
				["Margië"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Adobilol"] = true,
				["Dirtymage"] = true,
				["Scruffior"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Terraenova"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Soondead"] = true,
				["Kittypew"] = true,
				["Angelîca"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Humblebee"] = true,
				["Forevermore"] = true,
				["Skorrm"] = true,
				["Isela"] = true,
				["Akasorter"] = true,
				["Katz"] = true,
				["Parrymason"] = true,
				["Xpanda"] = true,
				["Ashely"] = true,
				["Eleneore"] = true,
				["Exitrage"] = true,
				["Naydelle"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Pershele"] = true,
				["Brily"] = true,
				["Dpartddk"] = true,
				["Butcha"] = true,
				["Polygamy"] = true,
				["Greatdeku"] = true,
				["Lucîa"] = true,
				["Ripmane"] = true,
				["Arcuarius"] = true,
				["Tyrannia"] = true,
				["Flipsyde"] = true,
				["Hurtpunch"] = true,
				["Zeelycan"] = true,
				["Edwilly"] = true,
				["Acisil"] = true,
				["Dendore"] = true,
				["Niphradil"] = true,
				["Dwarfish"] = true,
				["Nomore"] = true,
				["Shirohato"] = true,
				["Kunzi"] = true,
				["Shabubble"] = true,
				["Hyori"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Prallend"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Inches"] = true,
				["Ariasdrood"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Desehater"] = true,
				["Posaussie"] = true,
				["Hellspire"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Punetas"] = true,
				["Bichobandito"] = true,
				["Senorugly"] = true,
				["Nylu"] = true,
				["Polt"] = true,
				["Enclosed"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Foodbank"] = true,
				["Kaileena"] = true,
				["Dariuz"] = true,
				["Crumlol"] = true,
				["Jarfas"] = true,
				["Renegade"] = true,
				["Sehee"] = true,
				["Khayden"] = true,
				["Fudgie"] = true,
				["Phlx"] = true,
				["Stabufoo"] = true,
				["Shamagic"] = true,
				["Kuray"] = true,
				["Fåith"] = true,
				["Nyrif"] = true,
				["Akasoryk"] = true,
				["Amarusz"] = true,
				["Vayder"] = true,
				["Deadmàus"] = true,
				["Zaubertot"] = true,
				["Radak"] = true,
				["Shocket"] = true,
				["Merylz"] = true,
				["Ironpenance"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Puddinfart"] = true,
				["Ecyh"] = true,
				["Darriuz"] = true,
				["Lorin"] = true,
				["Deego"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Chryssta"] = true,
				["Szobor"] = true,
				["Maedhros"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Lythism"] = true,
				["Zerkratzen"] = true,
				["Missfaith"] = true,
				["Elnumeroonce"] = true,
				["Mustachrides"] = true,
				["Mirandaz"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Senis"] = true,
				["Zenonmyst"] = true,
				["Ymcm"] = true,
				["Amalea"] = true,
				["Ellan"] = true,
				["Nyriph"] = true,
				["Donkeyhead"] = true,
				["Jengonga"] = true,
				["Onezero"] = true,
				["Sarepta"] = true,
				["Zito"] = true,
				["Tarrexis"] = true,
				["Raksdisapren"] = true,
				["Jiyoung"] = true,
				["Tarius"] = true,
				["Khaden"] = true,
				["Dë"] = true,
				["Miataris"] = true,
				["Scratchy"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Polycarp"] = true,
				["Arck"] = true,
				["Zyoro"] = true,
				["Eley"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Litegrace"] = true,
				["Bromies"] = true,
				["Caalia"] = true,
				["Märgie"] = true,
				["Kats"] = true,
				["Defaldon"] = true,
				["Purrfect"] = true,
				["Aubade"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Akasorol"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Kungfuzi"] = true,
				["Emy"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Orcholodes"] = true,
				["Cassia"] = true,
				["Ironallxy"] = true,
				["Liyann"] = true,
				["Rpnerdxx"] = true,
				["Insanitywolf"] = true,
				["Jiveturky"] = true,
				["Sauceyminx"] = true,
				["Rancimus"] = true,
				["Jayie"] = true,
				["Ariasqt"] = true,
				["Frydchickenz"] = true,
				["Cutiebooty"] = true,
				["Guacamoles"] = true,
				["Bache"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Faster"] = true,
				["Isthisdiablo"] = true,
				["Lolah"] = true,
				["Qtfemdwarf"] = true,
				["Katicus"] = true,
				["Dotsudead"] = true,
				["Nachtmähre"] = true,
				["Psychosniper"] = true,
				["Shaynikens"] = true,
				["Juki"] = true,
				["Coop"] = true,
				["Akasoran"] = true,
				["Legitimate"] = true,
				["Thunderfro"] = true,
				["Cloakofskill"] = true,
				["Lunas"] = true,
				["Doterel"] = true,
				["Qthau"] = true,
				["Fenrîs"] = true,
				["Kariana"] = true,
				["Skribble"] = true,
				["Druidacritz"] = true,
				["Elexisjcbank"] = true,
				["Reticent"] = true,
				["Twiggysmalls"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Heki"] = true,
				["Persephonee"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Amarexqt"] = true,
				["Ajaxx"] = true,
				["Swagflu"] = true,
				["Hyrcine"] = true,
				["Skorme"] = true,
				["Bonks"] = true,
				["Ariastwo"] = true,
				["Keiikaaria"] = true,
				["Phellan"] = true,
				["Nerdknight"] = true,
				["Fonzi"] = true,
				["Gladitorhau"] = true,
				["Neverhealing"] = true,
				["Dixxth"] = true,
				["Margiel"] = true,
				["Angkor"] = true,
				["Khmer"] = true,
				["Verati"] = true,
				["Noobivore"] = true,
				["Snatshes"] = true,
				["Amerusz"] = true,
				["Liaa"] = true,
				["Kaguri"] = true,
				["Xhasuhana"] = true,
				["Ezemode"] = true,
				["Scruffu"] = true,
				["Pandahjerk"] = true,
				["Jomelyo"] = true,
				["Wuzul"] = true,
				["Ischa"] = true,
				["Crits"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Ayelah"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Steffie"] = true,
				["Sophelia"] = true,
				["Arma"] = true,
				["Frostbunny"] = true,
				["Tyrial"] = true,
				["Evermore"] = true,
				["Spacewood"] = true,
				["Ericdk"] = true,
				["Abhornt"] = true,
				["Brizoh"] = true,
				["Darksparrow"] = true,
				["Tyrkwondo"] = true,
				["Deriden"] = true,
				["Fany"] = true,
				["Qtcryof"] = true,
				["Fuzul"] = true,
				["Khadeera"] = true,
				["Senkou"] = true,
				["Lythknight"] = true,
				["Kyoku"] = true,
				["Akasorfin"] = true,
				["Menehune"] = true,
				["Líck"] = true,
				["Absorb"] = true,
				["Monkish"] = true,
				["Ameruz"] = true,
				["Lmaonaizee"] = true,
				["Girlyhau"] = true,
				["Ariaxa"] = true,
				["Euphoris"] = true,
				["Dirtyjon"] = true,
				["Nesaja"] = true,
				["Akasornet"] = true,
				["Kailani"] = true,
				["Erebohs"] = true,
				["Shwex"] = true,
				["Notwehr"] = true,
				["Vannah"] = true,
				["Eleanas"] = true,
				["Tyralen"] = true,
				["Cericus"] = true,
				["Líghtbright"] = true,
				["Arrff"] = true,
				["Conquerer"] = true,
				["Reembody"] = true,
				["Scruffen"] = true,
				["Priesticles"] = true,
				["Chrondonic"] = true,
				["Mozaic"] = true,
				["Hepaestus"] = true,
				["Johnb"] = true,
				["Purrfec"] = true,
				["Phelly"] = true,
				["Evelin"] = true,
				["Scruffie"] = true,
				["Shoktacular"] = true,
			},
		},
		["Notwehr"] = {
			["friendList"] = {
				["|Kf268|k0000000000000000|k"] = 2,
				["Helpy"] = 1,
				["|Kf252|k00000000000|k"] = 2,
				["Vergottlicht"] = 1,
				["|Kf260|k0000000000000|k"] = 2,
				["Avice"] = 1,
				["|Kf267|k0000000000000|k"] = 2,
				["|Kf266|k00000000000000|k"] = 2,
				["Hlen"] = 1,
				["|Kf261|k0000000000000|k"] = 2,
				["|Kf262|k00000000000|k"] = 2,
				["Ivan"] = 1,
				["|Kf241|k000000000000000|k"] = 2,
				["|Kf236|k000000|k"] = 2,
				["|Kf256|k00000000000000|k"] = 2,
				["|Kf245|k0000000000|k"] = 2,
				["|Kf227|k0000000000|k"] = 2,
				["Wuge"] = 1,
				["Shieldedrage"] = 1,
				["|Kf244|k0000000000000|k"] = 2,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf253|k00000000000|k"] = 2,
				["Saadam"] = 1,
				["Dunskull"] = 1,
				["|Kf247|k0000000000000000|k"] = 2,
				["Trixaho"] = 1,
				["|Kf238|k0000000000|k"] = 2,
				["|Kf234|k000000000000000|k"] = 2,
				["|Kf230|k000000000|k"] = 2,
				["|Kf229|k000000|k"] = 2,
				["|Kf265|k00000000000000|k"] = 2,
				["|Kf259|k000000000000|k"] = 2,
				["|Kf246|k000000000000|k"] = 2,
				["|Kf237|k00000000000000|k"] = 2,
				["Beichte"] = 1,
				["|Kf250|k000000000|k"] = 2,
				["Melland"] = 1,
				["|Kf249|k00000000000000|k"] = 2,
				["|Kf264|k000000000000000|k"] = 2,
				["|Kf251|k000000|k"] = 2,
				["|Kf232|k000000000000000|k"] = 2,
				["Manja"] = 1,
				["Silchas"] = 1,
				["Joshuah"] = 1,
				["|Kf263|k000000000000|k"] = 2,
				["|Kf233|k000000000|k"] = 2,
				["Zerkratzen"] = 1,
				["|Kf248|k000000000000|k"] = 2,
				["|Kf242|k00000000000000|k"] = 2,
				["Ipinghorde"] = 1,
				["|Kf243|k00000000000|k"] = 2,
				["Steroids"] = 1,
				["Holypaladin"] = 1,
				["|Kf255|k000000000000|k"] = 2,
				["Jaymes"] = 1,
				["Rusted"] = 1,
				["Maevirste"] = 1,
				["|Kf269|k000000000000|k"] = 2,
				["|Kf231|k000000000000|k"] = 2,
				["|Kf270|k000000000000|k"] = 2,
				["|Kf235|k0000000000|k"] = 2,
				["|Kf257|k0000000000000000|k"] = 2,
				["|Kf239|k000000000000000|k"] = 2,
				["|Kf254|k000000000000000000|k"] = 2,
				["Prettysaro"] = 1,
				["|Kf240|k00000000000|k"] = 2,
				["|Kf228|k0000|k"] = 2,
				["|Kf258|k0000000000000|k"] = 2,
				["Sanefkny"] = 1,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Scratchy"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kittypuppy"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Punetas"] = true,
				["Adobilol"] = true,
				["Tyrandras"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Naydelle"] = true,
				["Crantor"] = true,
				["Naetiri"] = true,
				["Kaptiv"] = true,
				["Nãnnerhammok"] = true,
				["Evelin"] = true,
				["Rpnerdxo"] = true,
				["Ninjanaut"] = true,
				["Scruffie"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Phelly"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Soupzzdk"] = true,
				["Kharthus"] = true,
				["Exitwoundz"] = true,
				["Uranius"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Cericus"] = true,
				["Dirtymage"] = true,
				["Katholic"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Reembody"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Mirandaz"] = true,
				["Scruffior"] = true,
				["Lythknight"] = true,
				["Isela"] = true,
				["Lexiey"] = true,
				["Soondead"] = true,
				["Gargas"] = true,
				["Ashely"] = true,
				["Angelîca"] = true,
				["Akasorter"] = true,
				["Skorrm"] = true,
				["Parrymason"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Shabubble"] = true,
				["Exitrage"] = true,
				["Katz"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Brily"] = true,
				["Vannah"] = true,
				["Purrdy"] = true,
				["Polt"] = true,
				["Flipsyde"] = true,
				["Butcha"] = true,
				["Lucîa"] = true,
				["Polygamy"] = true,
				["Arcuarius"] = true,
				["Akasorfin"] = true,
				["Kittypew"] = true,
				["Tyrannia"] = true,
				["Acisil"] = true,
				["Edwilly"] = true,
				["Zeelycan"] = true,
				["Dendore"] = true,
				["Tyrial"] = true,
				["Lmaonaizee"] = true,
				["Nomore"] = true,
				["Blumpkinns"] = true,
				["Kunzi"] = true,
				["Dwarfish"] = true,
				["Hyori"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Twiggysmalls"] = true,
				["Elexisjcbank"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Desehater"] = true,
				["Prallend"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Ripmane"] = true,
				["Posaussie"] = true,
				["Spacewood"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Tyrkwondo"] = true,
				["Bichobandito"] = true,
				["Enclosed"] = true,
				["Nylu"] = true,
				["Dariuz"] = true,
				["Khmer"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Purrfec"] = true,
				["Kaileena"] = true,
				["Kyoku"] = true,
				["Akasoryk"] = true,
				["Jarfas"] = true,
				["Snatshes"] = true,
				["Sehee"] = true,
				["Inches"] = true,
				["Fudgie"] = true,
				["Foodbank"] = true,
				["Radak"] = true,
				["Merylz"] = true,
				["Stabufoo"] = true,
				["Fåith"] = true,
				["Abhornt"] = true,
				["Qtcryof"] = true,
				["Deego"] = true,
				["Nyrif"] = true,
				["Deadmàus"] = true,
				["Fenrîs"] = true,
				["Evermore"] = true,
				["Purrfect"] = true,
				["Hellspire"] = true,
				["Ironpenance"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Zaubertot"] = true,
				["Shocket"] = true,
				["Puddinfart"] = true,
				["Liaa"] = true,
				["Senorugly"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Darriuz"] = true,
				["Lorin"] = true,
				["Ymcm"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Szobor"] = true,
				["Tarrexis"] = true,
				["Kuray"] = true,
				["Elnumeroonce"] = true,
				["Shwex"] = true,
				["Zito"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Arma"] = true,
				["Arck"] = true,
				["Sophelia"] = true,
				["Maedhros"] = true,
				["Ellan"] = true,
				["Dixxth"] = true,
				["Senkou"] = true,
				["Jengonga"] = true,
				["Onezero"] = true,
				["Sarepta"] = true,
				["Nyriph"] = true,
				["Vayder"] = true,
				["Fonzi"] = true,
				["Jiyoung"] = true,
				["Tarius"] = true,
				["Emmara"] = true,
				["Raksdisapren"] = true,
				["Miataris"] = true,
				["Missfaith"] = true,
				["Sleepyy"] = true,
				["Psychosniper"] = true,
				["Dë"] = true,
				["Chryssta"] = true,
				["Zyoro"] = true,
				["Eley"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Defaldon"] = true,
				["Bromies"] = true,
				["Polycarp"] = true,
				["Märgie"] = true,
				["Kats"] = true,
				["Lythism"] = true,
				["Margiel"] = true,
				["Khayden"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Niphradil"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Amalea"] = true,
				["Crumlol"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Orcholodes"] = true,
				["Cassia"] = true,
				["Litegrace"] = true,
				["Liyann"] = true,
				["Amarexqt"] = true,
				["Insanitywolf"] = true,
				["Jayie"] = true,
				["Guacamoles"] = true,
				["Rancimus"] = true,
				["Aubade"] = true,
				["Ariasqt"] = true,
				["Heki"] = true,
				["Sauceyminx"] = true,
				["Persephonee"] = true,
				["Bache"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Isthisdiablo"] = true,
				["Ajaxx"] = true,
				["Ameruzs"] = true,
				["Shaynikens"] = true,
				["Katicus"] = true,
				["Juki"] = true,
				["Qtfemdwarf"] = true,
				["Dotsudead"] = true,
				["Nachtmähre"] = true,
				["Lolah"] = true,
				["Swagflu"] = true,
				["Doterel"] = true,
				["Legitimate"] = true,
				["Frydchickenz"] = true,
				["Lunas"] = true,
				["Akasoran"] = true,
				["Euphoris"] = true,
				["Qthau"] = true,
				["Koalacookie"] = true,
				["Kariana"] = true,
				["Skribble"] = true,
				["Druidacritz"] = true,
				["Angkor"] = true,
				["Faster"] = true,
				["Notwehr"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Rpnerdxx"] = true,
				["Ironallxy"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Thunderfro"] = true,
				["Khaden"] = true,
				["Kungfuzi"] = true,
				["Hyrcine"] = true,
				["Skorme"] = true,
				["Bonks"] = true,
				["Ariastwo"] = true,
				["Keiikaaria"] = true,
				["Phellan"] = true,
				["Cloakofskill"] = true,
				["Shamagic"] = true,
				["Gladitorhau"] = true,
				["Neverhealing"] = true,
				["Zenonmyst"] = true,
				["Terraenova"] = true,
				["Jitsu"] = true,
				["Ezemode"] = true,
				["Donkeyhead"] = true,
				["Noobivore"] = true,
				["Phlx"] = true,
				["Amerusz"] = true,
				["Zerkratzen"] = true,
				["Kaguri"] = true,
				["Xhasuhana"] = true,
				["Senis"] = true,
				["Scruffu"] = true,
				["Pandahjerk"] = true,
				["Jomelyo"] = true,
				["Wuzul"] = true,
				["Lerytheis"] = true,
				["Crits"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Ayelah"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Cutiebooty"] = true,
				["Mustachrides"] = true,
				["Frostbunny"] = true,
				["Amarusz"] = true,
				["Hurtpunch"] = true,
				["Ischa"] = true,
				["Ericdk"] = true,
				["Ariasdrood"] = true,
				["Brizoh"] = true,
				["Darksparrow"] = true,
				["Emy"] = true,
				["Deriden"] = true,
				["Fany"] = true,
				["Priesticles"] = true,
				["Fuzul"] = true,
				["Eleneore"] = true,
				["Shirohato"] = true,
				["Lakida"] = true,
				["Ariaxa"] = true,
				["Greatdeku"] = true,
				["Menehune"] = true,
				["Líck"] = true,
				["Verati"] = true,
				["Tyralen"] = true,
				["Ameruz"] = true,
				["Phel"] = true,
				["Pershele"] = true,
				["Vier"] = true,
				["Eyesack"] = true,
				["Girlyhau"] = true,
				["Nesaja"] = true,
				["Akasornet"] = true,
				["Kailani"] = true,
				["Erebohs"] = true,
				["Forevermore"] = true,
				["Rastlin"] = true,
				["Margië"] = true,
				["Eleanas"] = true,
				["Jomelyoo"] = true,
				["Chingon"] = true,
				["Dpartddk"] = true,
				["Líghtbright"] = true,
				["Conquerer"] = true,
				["Felyn"] = true,
				["Scruffen"] = true,
				["Checkyosix"] = true,
				["Chrondonic"] = true,
				["Mozaic"] = true,
				["Hepaestus"] = true,
				["Scruffier"] = true,
				["Shoktacular"] = true,
				["Jiveturky"] = true,
				["Monkish"] = true,
				["Arcaneretwar"] = true,
				["Tyrtwo"] = true,
			},
		},
		["Vergottlicht"] = {
			["friendList"] = {
				["|Kf82|k00000000000|k"] = 2,
				["|Kf73|k0000000000000|k"] = 2,
				["|Kf81|k00000000000|k"] = 2,
				["|Kf60|k000000000000|k"] = 2,
				["|Kf66|k00000000000000|k"] = 2,
				["Avice"] = 1,
				["|Kf90|k0000000000000|k"] = 2,
				["Hlen"] = 1,
				["|Kf78|k00000000000000|k"] = 2,
				["|Kf98|k000000000000|k"] = 2,
				["|Kf67|k0000000000|k"] = 2,
				["|Kf57|k0000|k"] = 2,
				["|Kf96|k0000000000000|k"] = 2,
				["|Kf65|k000000|k"] = 2,
				["Wuge"] = 1,
				["Ambiguous"] = 1,
				["Shieldedrage"] = 1,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf71|k00000000000000|k"] = 2,
				["|Kf75|k000000000000|k"] = 2,
				["|Kf86|k0000000000000000|k"] = 2,
				["|Kf99|k000000000000|k"] = 2,
				["Dunskull"] = 1,
				["|Kf64|k0000000000|k"] = 2,
				["|Kf58|k000000|k"] = 2,
				["|Kf94|k00000000000000|k"] = 2,
				["|Kf76|k0000000000000000|k"] = 2,
				["|Kf69|k00000000000|k"] = 2,
				["|Kf89|k0000000000000|k"] = 2,
				["Beichte"] = 1,
				["|Kf70|k000000000000000|k"] = 2,
				["Melland"] = 1,
				["|Kf95|k00000000000000|k"] = 2,
				["|Kf87|k0000000000000|k"] = 2,
				["|Kf74|k0000000000|k"] = 2,
				["Silchas"] = 1,
				["Destinyroses"] = 1,
				["|Kf72|k00000000000|k"] = 2,
				["Joshuah"] = 1,
				["|Kf79|k000000000|k"] = 2,
				["Zerkratzen"] = 1,
				["Sanefkny"] = 1,
				["|Kf85|k00000000000000|k"] = 2,
				["Mutîny"] = 1,
				["|Kf68|k000000000000000|k"] = 2,
				["Notwehr"] = 1,
				["|Kf93|k000000000000000|k"] = 2,
				["Manja"] = 1,
				["Helpy"] = 1,
				["|Kf63|k000000000000000|k"] = 2,
				["|Kf92|k000000000000|k"] = 2,
				["|Kf80|k000000|k"] = 2,
				["|Kf97|k0000000000000000|k"] = 2,
				["|Kf91|k00000000000|k"] = 2,
				["|Kf56|k0000000000|k"] = 2,
				["Rusted"] = 1,
				["|Kf77|k000000000000|k"] = 2,
				["|Kf88|k000000000000|k"] = 2,
				["|Kf84|k000000000000|k"] = 2,
				["Maevirste"] = 1,
				["|Kf61|k000000000000000|k"] = 2,
				["Bankofrock"] = 1,
				["Chubmaster"] = 1,
				["|Kf83|k000000000000000000|k"] = 2,
				["Ivan"] = 1,
				["Jaymes"] = 1,
				["|Kf59|k000000000|k"] = 2,
				["Prettysaro"] = 1,
				["|Kf62|k000000000|k"] = 2,
				["Saadam"] = 1,
				["Odissia"] = 1,
				["Trixaho"] = 1,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Tyrtwo"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Crantor"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Tyralen"] = true,
				["Kittypuppy"] = true,
				["Arcaneretwar"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Monkish"] = true,
				["Adobilol"] = true,
				["Akasoryk"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Shoktacular"] = true,
				["Jiveturky"] = true,
				["Hepaestus"] = true,
				["Kiyono"] = true,
				["Chrondonic"] = true,
				["Priesticles"] = true,
				["Evelin"] = true,
				["Ninjanaut"] = true,
				["Parrymason"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Phelly"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Felyn"] = true,
				["Fonzi"] = true,
				["Chingon"] = true,
				["Katz"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Exitwoundz"] = true,
				["Dirtymage"] = true,
				["Líghtbright"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Purrdy"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Tyrannia"] = true,
				["Erebohs"] = true,
				["Reembody"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Humblebee"] = true,
				["Gargas"] = true,
				["Akasornet"] = true,
				["Nesaja"] = true,
				["Akasorter"] = true,
				["Elexisjcbank"] = true,
				["Lythknight"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Euphoris"] = true,
				["Emy"] = true,
				["Kaptiv"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Jomelyoo"] = true,
				["Kittypew"] = true,
				["Phel"] = true,
				["Khmer"] = true,
				["Líck"] = true,
				["Menehune"] = true,
				["Lucîa"] = true,
				["Greatdeku"] = true,
				["Arcuarius"] = true,
				["Margië"] = true,
				["Flipsyde"] = true,
				["Punetas"] = true,
				["Forevermore"] = true,
				["Edwilly"] = true,
				["Lerytheis"] = true,
				["Dendore"] = true,
				["Lakida"] = true,
				["Girlyhau"] = true,
				["Nomore"] = true,
				["Fany"] = true,
				["Eleneore"] = true,
				["Vier"] = true,
				["Lmaonaizee"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Hellspire"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Darksparrow"] = true,
				["Twiggysmalls"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Ripmane"] = true,
				["Posaussie"] = true,
				["Shirohato"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Qtcryof"] = true,
				["Bichobandito"] = true,
				["Amarusz"] = true,
				["Nylu"] = true,
				["Spacewood"] = true,
				["Enclosed"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Tyrial"] = true,
				["Kaileena"] = true,
				["Senorugly"] = true,
				["Ellan"] = true,
				["Jarfas"] = true,
				["Kuray"] = true,
				["Sehee"] = true,
				["Steffie"] = true,
				["Fudgie"] = true,
				["Shabubble"] = true,
				["Ariasdrood"] = true,
				["Ayelah"] = true,
				["Arma"] = true,
				["Fåith"] = true,
				["Ariaxa"] = true,
				["Foodbank"] = true,
				["Crits"] = true,
				["Kyoku"] = true,
				["Deadmàus"] = true,
				["Tarrexis"] = true,
				["Evermore"] = true,
				["Jomelyo"] = true,
				["Merylz"] = true,
				["Abhornt"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Pandahjerk"] = true,
				["Scruffu"] = true,
				["Zyoro"] = true,
				["Xhasuhana"] = true,
				["Deego"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Kaguri"] = true,
				["Senkou"] = true,
				["Amerusz"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Hurtpunch"] = true,
				["Chryssta"] = true,
				["Scratchy"] = true,
				["Elnumeroonce"] = true,
				["Snatshes"] = true,
				["Cutiebooty"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Senis"] = true,
				["Demesis"] = true,
				["Sophelia"] = true,
				["Zenonmyst"] = true,
				["Phlx"] = true,
				["Lythism"] = true,
				["Gladitorhau"] = true,
				["Jengonga"] = true,
				["Onezero"] = true,
				["Sarepta"] = true,
				["Shamagic"] = true,
				["Vayder"] = true,
				["Khaden"] = true,
				["Ezemode"] = true,
				["Tarius"] = true,
				["Phellan"] = true,
				["Kungfuzi"] = true,
				["Miataris"] = true,
				["Ariastwo"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Niphradil"] = true,
				["Arck"] = true,
				["Zerkratzen"] = true,
				["Maedhros"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Skorme"] = true,
				["Bromies"] = true,
				["Crumlol"] = true,
				["Märgie"] = true,
				["Missfaith"] = true,
				["Defaldon"] = true,
				["Fenrîs"] = true,
				["Purrfect"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Amarexqt"] = true,
				["Margiel"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Khayden"] = true,
				["Soupzzdk"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Orcholodes"] = true,
				["Cassia"] = true,
				["Jayie"] = true,
				["Liyann"] = true,
				["Persephonee"] = true,
				["Litegrace"] = true,
				["Bache"] = true,
				["Ironallxy"] = true,
				["Rancimus"] = true,
				["Aubade"] = true,
				["Ariasqt"] = true,
				["Heki"] = true,
				["Sauceyminx"] = true,
				["Guacamoles"] = true,
				["Rpnerdxx"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Emmara"] = true,
				["Notwehr"] = true,
				["Verati"] = true,
				["Shaynikens"] = true,
				["Katicus"] = true,
				["Skribble"] = true,
				["Kariana"] = true,
				["Zeelycan"] = true,
				["Nachtmähre"] = true,
				["Lolah"] = true,
				["Thunderfro"] = true,
				["Ymcm"] = true,
				["Doterel"] = true,
				["Akasoran"] = true,
				["Psychosniper"] = true,
				["Lunas"] = true,
				["Legitimate"] = true,
				["Qthau"] = true,
				["Juki"] = true,
				["Dotsudead"] = true,
				["Qtfemdwarf"] = true,
				["Druidacritz"] = true,
				["Frydchickenz"] = true,
				["Ajaxx"] = true,
				["Swagflu"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Angkor"] = true,
				["Faster"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Insanitywolf"] = true,
				["Isthisdiablo"] = true,
				["Ischa"] = true,
				["Hyrcine"] = true,
				["Polycarp"] = true,
				["Bonks"] = true,
				["Dë"] = true,
				["Keiikaaria"] = true,
				["Raksdisapren"] = true,
				["Cloakofskill"] = true,
				["Donkeyhead"] = true,
				["Nyriph"] = true,
				["Neverhealing"] = true,
				["Dixxth"] = true,
				["Kats"] = true,
				["Liaa"] = true,
				["Eley"] = true,
				["Terraenova"] = true,
				["Noobivore"] = true,
				["Zito"] = true,
				["Szobor"] = true,
				["Jiyoung"] = true,
				["Lorin"] = true,
				["Darriuz"] = true,
				["Mustachrides"] = true,
				["Puddinfart"] = true,
				["Shocket"] = true,
				["Zaubertot"] = true,
				["Wuzul"] = true,
				["Amalea"] = true,
				["Nyrif"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Stabufoo"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Shwex"] = true,
				["Tyrkwondo"] = true,
				["Frostbunny"] = true,
				["Ironpenance"] = true,
				["Radak"] = true,
				["Acisil"] = true,
				["Ericdk"] = true,
				["Dariuz"] = true,
				["Brizoh"] = true,
				["Prallend"] = true,
				["Koalacookie"] = true,
				["Deriden"] = true,
				["Dwarfish"] = true,
				["Hyori"] = true,
				["Fuzul"] = true,
				["Desehater"] = true,
				["Inches"] = true,
				["Kunzi"] = true,
				["Vannah"] = true,
				["Akasorfin"] = true,
				["Polygamy"] = true,
				["Butcha"] = true,
				["Dpartddk"] = true,
				["Brily"] = true,
				["Ameruz"] = true,
				["Purrfec"] = true,
				["Eyesack"] = true,
				["Exitrage"] = true,
				["Pershele"] = true,
				["Isela"] = true,
				["Skorrm"] = true,
				["Angelîca"] = true,
				["Kailani"] = true,
				["Soondead"] = true,
				["Scruffior"] = true,
				["Ashely"] = true,
				["Mirandaz"] = true,
				["Eleanas"] = true,
				["Naetiri"] = true,
				["Cericus"] = true,
				["Uranius"] = true,
				["Katholic"] = true,
				["Conquerer"] = true,
				["Ameruzs"] = true,
				["Scruffen"] = true,
				["Scruffie"] = true,
				["Rpnerdxo"] = true,
				["Mozaic"] = true,
				["Nãnnerhammok"] = true,
				["Kharthus"] = true,
				["Checkyosix"] = true,
				["Naydelle"] = true,
				["Scruffier"] = true,
				["Tyrandras"] = true,
				["Polt"] = true,
			},
		},
		["Zaubertot"] = {
			["friendList"] = {
				["|Kf318|k000000000000|k"] = 2,
				["|Kf295|k000000|k"] = 2,
				["Helpy"] = 1,
				["|Kf306|k0000000000000000|k"] = 2,
				["Vergottlicht"] = 1,
				["|Kf329|k000000000000|k"] = 2,
				["|Kf316|k0000000000000000|k"] = 2,
				["Avice"] = 1,
				["|Kf300|k000000000000000|k"] = 2,
				["Tomasu"] = 1,
				["|Kf315|k00000000000000|k"] = 2,
				["|Kf320|k0000000000000|k"] = 2,
				["|Kf307|k000000000000|k"] = 2,
				["|Kf289|k000000000|k"] = 2,
				["|Kf324|k00000000000000|k"] = 2,
				["Shieldedrage"] = 1,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf287|k0000|k"] = 2,
				["Saadam"] = 1,
				["Oberon"] = 1,
				["|Kf325|k00000000000000|k"] = 2,
				["|Kf328|k000000000000|k"] = 2,
				["|Kf305|k000000000000|k"] = 2,
				["Trixaho"] = 1,
				["|Kf308|k00000000000000|k"] = 2,
				["|Kf312|k00000000000|k"] = 2,
				["|Kf303|k0000000000000|k"] = 2,
				["|Kf309|k000000000|k"] = 2,
				["|Kf298|k000000000000000|k"] = 2,
				["|Kf286|k0000000000|k"] = 2,
				["Jaymes"] = 1,
				["Melland"] = 1,
				["Fominix"] = 1,
				["|Kf311|k00000000000|k"] = 2,
				["|Kf319|k0000000000000|k"] = 2,
				["|Kf296|k00000000000000|k"] = 2,
				["|Kf322|k000000000000|k"] = 2,
				["|Kf292|k000000000|k"] = 2,
				["Manja"] = 1,
				["Silchas"] = 1,
				["|Kf302|k00000000000|k"] = 2,
				["|Kf314|k000000000000|k"] = 2,
				["Joshuah"] = 1,
				["Rustedhammer"] = 1,
				["|Kf310|k000000|k"] = 2,
				["|Kf321|k00000000000|k"] = 2,
				["|Kf326|k0000000000000|k"] = 2,
				["|Kf294|k0000000000|k"] = 2,
				["Wolfram"] = 1,
				["|Kf301|k00000000000000|k"] = 2,
				["Odissia"] = 1,
				["Zhol"] = 1,
				["|Kf290|k000000000000|k"] = 2,
				["Ivan"] = 1,
				["|Kf299|k00000000000|k"] = 2,
				["Rusted"] = 1,
				["|Kf317|k0000000000000|k"] = 2,
				["Ambiguous"] = 1,
				["|Kf288|k000000|k"] = 2,
				["|Kf323|k000000000000000|k"] = 2,
				["|Kf293|k000000000000000|k"] = 2,
				["|Kf291|k000000000000000|k"] = 2,
				["|Kf304|k0000000000|k"] = 2,
				["|Kf297|k0000000000|k"] = 2,
				["Prettysaro"] = 1,
				["|Kf313|k000000000000000000|k"] = 2,
				["Cathmor"] = 1,
				["|Kf327|k0000000000000000|k"] = 2,
				["Sanefkny"] = 1,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Exitrage"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Crantor"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Tyralen"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kittypuppy"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Adobilol"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Polt"] = true,
				["Tyrandras"] = true,
				["Scruffier"] = true,
				["Naydelle"] = true,
				["Naetiri"] = true,
				["Kaptiv"] = true,
				["Nãnnerhammok"] = true,
				["Ninjanaut"] = true,
				["Checkyosix"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Rpnerdxo"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Felyn"] = true,
				["Jomelyoo"] = true,
				["Phelly"] = true,
				["Katholic"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Exitwoundz"] = true,
				["Uranius"] = true,
				["Emmara"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Cericus"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Margië"] = true,
				["Priesticles"] = true,
				["Isela"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Zeelycan"] = true,
				["Forevermore"] = true,
				["Akasorter"] = true,
				["Erebohs"] = true,
				["Scruffior"] = true,
				["Ashely"] = true,
				["Lythknight"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Angelîca"] = true,
				["Skorrm"] = true,
				["Dariuz"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Eyesack"] = true,
				["Lerytheis"] = true,
				["Pershele"] = true,
				["Brily"] = true,
				["Dpartddk"] = true,
				["Mustachrides"] = true,
				["Lucîa"] = true,
				["Kittypew"] = true,
				["Arcuarius"] = true,
				["Butcha"] = true,
				["Flipsyde"] = true,
				["Polygamy"] = true,
				["Greatdeku"] = true,
				["Edwilly"] = true,
				["Scruffie"] = true,
				["Dendore"] = true,
				["Acisil"] = true,
				["Purrdy"] = true,
				["Shabubble"] = true,
				["Eleneore"] = true,
				["Kunzi"] = true,
				["Elexisjcbank"] = true,
				["Lmaonaizee"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Dwarfish"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Vier"] = true,
				["Ripmane"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Emy"] = true,
				["Posaussie"] = true,
				["Prallend"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Lakida"] = true,
				["Bichobandito"] = true,
				["Shirohato"] = true,
				["Nylu"] = true,
				["Enclosed"] = true,
				["Khmer"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Amarusz"] = true,
				["Kaileena"] = true,
				["Ischa"] = true,
				["Tyrial"] = true,
				["Jarfas"] = true,
				["Cloakofskill"] = true,
				["Sehee"] = true,
				["Soupzzdk"] = true,
				["Fudgie"] = true,
				["Jiveturky"] = true,
				["Niphradil"] = true,
				["Akasoryk"] = true,
				["Foodbank"] = true,
				["Fåith"] = true,
				["Stabufoo"] = true,
				["Qtcryof"] = true,
				["Radak"] = true,
				["Merylz"] = true,
				["Deadmàus"] = true,
				["Nyrif"] = true,
				["Evermore"] = true,
				["Inches"] = true,
				["Hellspire"] = true,
				["Ironpenance"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Zito"] = true,
				["Zaubertot"] = true,
				["Shocket"] = true,
				["Puddinfart"] = true,
				["Senorugly"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Purrfect"] = true,
				["Darriuz"] = true,
				["Lorin"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Tyrkwondo"] = true,
				["Szobor"] = true,
				["Sophelia"] = true,
				["Elnumeroonce"] = true,
				["Phlx"] = true,
				["Zerkratzen"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Senis"] = true,
				["Onezero"] = true,
				["Ymcm"] = true,
				["Arck"] = true,
				["Ellan"] = true,
				["Terraenova"] = true,
				["Zenonmyst"] = true,
				["Jengonga"] = true,
				["Kuray"] = true,
				["Sarepta"] = true,
				["Eley"] = true,
				["Tarrexis"] = true,
				["Nyriph"] = true,
				["Ezemode"] = true,
				["Tarius"] = true,
				["Shamagic"] = true,
				["Lythism"] = true,
				["Miataris"] = true,
				["Raksdisapren"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Kats"] = true,
				["Chryssta"] = true,
				["Zyoro"] = true,
				["Maedhros"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Dë"] = true,
				["Bromies"] = true,
				["Defaldon"] = true,
				["Märgie"] = true,
				["Missfaith"] = true,
				["Shwex"] = true,
				["Polycarp"] = true,
				["Margiel"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Kungfuzi"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Khayden"] = true,
				["Khaden"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Crumlol"] = true,
				["Cassia"] = true,
				["Fenrîs"] = true,
				["Liyann"] = true,
				["Aubade"] = true,
				["Insanitywolf"] = true,
				["Notwehr"] = true,
				["Ironallxy"] = true,
				["Rancimus"] = true,
				["Jayie"] = true,
				["Ariasqt"] = true,
				["Lockmang"] = true,
				["Sauceyminx"] = true,
				["Guacamoles"] = true,
				["Rpnerdxx"] = true,
				["Amarex"] = true,
				["Heki"] = true,
				["Isthisdiablo"] = true,
				["Ajaxx"] = true,
				["Swagflu"] = true,
				["Frydchickenz"] = true,
				["Katicus"] = true,
				["Nachtmähre"] = true,
				["Juki"] = true,
				["Skribble"] = true,
				["Shaynikens"] = true,
				["Lolah"] = true,
				["Dotsudead"] = true,
				["Doterel"] = true,
				["Legitimate"] = true,
				["Verati"] = true,
				["Koalacookie"] = true,
				["Akasoran"] = true,
				["Lunas"] = true,
				["Qthau"] = true,
				["Thunderfro"] = true,
				["Kariana"] = true,
				["Qtfemdwarf"] = true,
				["Druidacritz"] = true,
				["Psychosniper"] = true,
				["Amarexqt"] = true,
				["Abhornt"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Bache"] = true,
				["Persephonee"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Litegrace"] = true,
				["Orcholodes"] = true,
				["Amalea"] = true,
				["Hyrcine"] = true,
				["Skorme"] = true,
				["Bonks"] = true,
				["Ariastwo"] = true,
				["Keiikaaria"] = true,
				["Phellan"] = true,
				["Senkou"] = true,
				["Donkeyhead"] = true,
				["Gladitorhau"] = true,
				["Neverhealing"] = true,
				["Dixxth"] = true,
				["Liaa"] = true,
				["Fonzi"] = true,
				["Jiyoung"] = true,
				["Vayder"] = true,
				["Noobivore"] = true,
				["Arma"] = true,
				["Amerusz"] = true,
				["Scratchy"] = true,
				["Kaguri"] = true,
				["Xhasuhana"] = true,
				["Angkor"] = true,
				["Scruffu"] = true,
				["Pandahjerk"] = true,
				["Jomelyo"] = true,
				["Wuzul"] = true,
				["Deego"] = true,
				["Crits"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Ayelah"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Cutiebooty"] = true,
				["Snatshes"] = true,
				["Frostbunny"] = true,
				["Twiggysmalls"] = true,
				["Girlyhau"] = true,
				["Spacewood"] = true,
				["Ericdk"] = true,
				["Hurtpunch"] = true,
				["Brizoh"] = true,
				["Darksparrow"] = true,
				["Desehater"] = true,
				["Deriden"] = true,
				["Fany"] = true,
				["Hyori"] = true,
				["Fuzul"] = true,
				["Ariasdrood"] = true,
				["Ameruzs"] = true,
				["Euphoris"] = true,
				["Ariaxa"] = true,
				["Akasorfin"] = true,
				["Menehune"] = true,
				["Líck"] = true,
				["Tyrannia"] = true,
				["Líghtbright"] = true,
				["Ameruz"] = true,
				["Phel"] = true,
				["Punetas"] = true,
				["Orome"] = true,
				["Purrfec"] = true,
				["Kyoku"] = true,
				["Nesaja"] = true,
				["Akasornet"] = true,
				["Kailani"] = true,
				["Soondead"] = true,
				["Parrymason"] = true,
				["Gargas"] = true,
				["Mirandaz"] = true,
				["Eleanas"] = true,
				["Reembody"] = true,
				["Chingon"] = true,
				["Vannah"] = true,
				["Dirtymage"] = true,
				["Conquerer"] = true,
				["Katz"] = true,
				["Scruffen"] = true,
				["Faster"] = true,
				["Chrondonic"] = true,
				["Mozaic"] = true,
				["Hepaestus"] = true,
				["Monkish"] = true,
				["Shoktacular"] = true,
				["Kharthus"] = true,
				["Evelin"] = true,
				["Arcaneretwar"] = true,
				["Tyrtwo"] = true,
			},
		},
		["Dunskull"] = {
			["friendList"] = {
				["|Kf309|k0000000000|k"] = 2,
				["Helpy"] = 1,
				["|Kf323|k000000000000|k"] = 2,
				["Notwehr"] = 1,
				["Vergottlicht"] = 1,
				["Avice"] = 1,
				["|Kf314|k000000000|k"] = 2,
				["|Kf321|k0000000000000000|k"] = 2,
				["Hlen"] = 1,
				["|Kf310|k000000000000|k"] = 2,
				["|Kf292|k0000|k"] = 2,
				["|Kf304|k00000000000|k"] = 2,
				["|Kf311|k0000000000000000|k"] = 2,
				["|Kf333|k000000000000|k"] = 2,
				["|Kf293|k000000|k"] = 2,
				["|Kf306|k00000000000000|k"] = 2,
				["|Kf322|k0000000000000|k"] = 2,
				["|Kf331|k0000000000000|k"] = 2,
				["|Kf326|k00000000000|k"] = 2,
				["|Kf332|k0000000000000000|k"] = 2,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["Saadam"] = 1,
				["|Kf325|k0000000000000|k"] = 2,
				["|Kf302|k0000000000|k"] = 2,
				["|Kf291|k0000000000|k"] = 2,
				["|Kf315|k000000|k"] = 2,
				["|Kf313|k00000000000000|k"] = 2,
				["|Kf305|k000000000000000|k"] = 2,
				["|Kf318|k000000000000000000|k"] = 2,
				["|Kf298|k000000000000000|k"] = 2,
				["Beichte"] = 1,
				["Jaymes"] = 1,
				["Melland"] = 1,
				["|Kf330|k00000000000000|k"] = 2,
				["Manja"] = 1,
				["Silchas"] = 1,
				["Joshuah"] = 1,
				["Rustedhammer"] = 1,
				["|Kf299|k0000000000|k"] = 2,
				["Zerkratzen"] = 1,
				["|Kf319|k000000000000|k"] = 2,
				["|Kf329|k00000000000000|k"] = 2,
				["Mutîny"] = 1,
				["Sanefkny"] = 1,
				["|Kf320|k00000000000000|k"] = 2,
				["Steroids"] = 1,
				["|Kf303|k000000000000000|k"] = 2,
				["|Kf295|k000000000000|k"] = 2,
				["|Kf308|k0000000000000|k"] = 2,
				["|Kf307|k00000000000|k"] = 2,
				["|Kf301|k00000000000000|k"] = 2,
				["|Kf327|k000000000000|k"] = 2,
				["|Kf328|k000000000000000|k"] = 2,
				["|Kf317|k00000000000|k"] = 2,
				["|Kf334|k000000000000|k"] = 2,
				["|Kf297|k000000000|k"] = 2,
				["Rusted"] = 1,
				["Maevirste"] = 1,
				["|Kf312|k000000000000|k"] = 2,
				["|Kf296|k000000000000000|k"] = 2,
				["|Kf316|k00000000000|k"] = 2,
				["|Kf294|k000000000|k"] = 2,
				["|Kf300|k000000|k"] = 2,
				["Ivan"] = 1,
				["|Kf324|k0000000000000|k"] = 2,
				["Prettysaro"] = 1,
				["Shieldedrage"] = 1,
				["Cathmor"] = 1,
				["Trixaho"] = 1,
				["Wuge"] = 1,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Scratchy"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kittypuppy"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Eyesack"] = true,
				["Adobilol"] = true,
				["Scruffie"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Jiveturky"] = true,
				["Purrfec"] = true,
				["Shoktacular"] = true,
				["Scruffier"] = true,
				["Hepaestus"] = true,
				["Soupzzdk"] = true,
				["Chrondonic"] = true,
				["Ninjanaut"] = true,
				["Monkish"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Felyn"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Katz"] = true,
				["Phelly"] = true,
				["Jomelyoo"] = true,
				["Exitwoundz"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Chingon"] = true,
				["Uranius"] = true,
				["Líghtbright"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Purrdy"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Mirandaz"] = true,
				["Euphoris"] = true,
				["Kaptiv"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Erebohs"] = true,
				["Gargas"] = true,
				["Ashely"] = true,
				["Akasornet"] = true,
				["Akasorter"] = true,
				["Nesaja"] = true,
				["Lythknight"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Pershele"] = true,
				["Phel"] = true,
				["Margië"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Twiggysmalls"] = true,
				["Forevermore"] = true,
				["Tyrtwo"] = true,
				["Vier"] = true,
				["Spacewood"] = true,
				["Líck"] = true,
				["Lucîa"] = true,
				["Menehune"] = true,
				["Arcuarius"] = true,
				["Greatdeku"] = true,
				["Kittypew"] = true,
				["Shirohato"] = true,
				["Verati"] = true,
				["Edwilly"] = true,
				["Priesticles"] = true,
				["Dendore"] = true,
				["Kunzi"] = true,
				["Hyori"] = true,
				["Nomore"] = true,
				["Elexisjcbank"] = true,
				["Eleneore"] = true,
				["Fany"] = true,
				["Lmaonaizee"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Polt"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Desehater"] = true,
				["Darksparrow"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Ripmane"] = true,
				["Posaussie"] = true,
				["Tyrial"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Amarusz"] = true,
				["Bichobandito"] = true,
				["Acisil"] = true,
				["Nylu"] = true,
				["Tyrkwondo"] = true,
				["Enclosed"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Ariasdrood"] = true,
				["Kaileena"] = true,
				["Snatshes"] = true,
				["Akasoryk"] = true,
				["Jarfas"] = true,
				["Cutiebooty"] = true,
				["Sehee"] = true,
				["Inches"] = true,
				["Fudgie"] = true,
				["Ischa"] = true,
				["Radak"] = true,
				["Merylz"] = true,
				["Ayelah"] = true,
				["Fåith"] = true,
				["Ironpenance"] = true,
				["Foodbank"] = true,
				["Deego"] = true,
				["Crits"] = true,
				["Deadmàus"] = true,
				["Senis"] = true,
				["Evermore"] = true,
				["Ymcm"] = true,
				["Hellspire"] = true,
				["Abhornt"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Jomelyo"] = true,
				["Pandahjerk"] = true,
				["Scruffu"] = true,
				["Ellan"] = true,
				["Senorugly"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Xhasuhana"] = true,
				["Kaguri"] = true,
				["Defaldon"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Amerusz"] = true,
				["Onezero"] = true,
				["Ezemode"] = true,
				["Elnumeroonce"] = true,
				["Jitsu"] = true,
				["Zyoro"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Arma"] = true,
				["Liaa"] = true,
				["Sophelia"] = true,
				["Kats"] = true,
				["Phlx"] = true,
				["Zenonmyst"] = true,
				["Eley"] = true,
				["Jengonga"] = true,
				["Kuray"] = true,
				["Sarepta"] = true,
				["Gladitorhau"] = true,
				["Vayder"] = true,
				["Fonzi"] = true,
				["Jiyoung"] = true,
				["Tarius"] = true,
				["Amalea"] = true,
				["Phellan"] = true,
				["Miataris"] = true,
				["Lythism"] = true,
				["Sleepyy"] = true,
				["Psychosniper"] = true,
				["Ariastwo"] = true,
				["Arck"] = true,
				["Terraenova"] = true,
				["Maedhros"] = true,
				["Cutiecute"] = true,
				["Fenrîs"] = true,
				["Cloakofskill"] = true,
				["Bromies"] = true,
				["Skorme"] = true,
				["Märgie"] = true,
				["Missfaith"] = true,
				["Shwex"] = true,
				["Demesis"] = true,
				["Khaden"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Thunderfro"] = true,
				["Margiel"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Kungfuzi"] = true,
				["Insanitywolf"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Orcholodes"] = true,
				["Cassia"] = true,
				["Faster"] = true,
				["Liyann"] = true,
				["Rancimus"] = true,
				["Litegrace"] = true,
				["Ironallxy"] = true,
				["Rpnerdxx"] = true,
				["Amarexqt"] = true,
				["Jayie"] = true,
				["Ariasqt"] = true,
				["Lockmang"] = true,
				["Notwehr"] = true,
				["Persephonee"] = true,
				["Bache"] = true,
				["Amarex"] = true,
				["Heki"] = true,
				["Ajaxx"] = true,
				["Isthisdiablo"] = true,
				["Angkor"] = true,
				["Shaynikens"] = true,
				["Katicus"] = true,
				["Lolah"] = true,
				["Qtfemdwarf"] = true,
				["Kariana"] = true,
				["Nachtmähre"] = true,
				["Juki"] = true,
				["Koalacookie"] = true,
				["Legitimate"] = true,
				["Doterel"] = true,
				["Zeelycan"] = true,
				["Akasoran"] = true,
				["Lunas"] = true,
				["Frydchickenz"] = true,
				["Qthau"] = true,
				["Swagflu"] = true,
				["Dotsudead"] = true,
				["Skribble"] = true,
				["Druidacritz"] = true,
				["Ameruzs"] = true,
				["Niphradil"] = true,
				["Sauceyminx"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Guacamoles"] = true,
				["Aubade"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Crumlol"] = true,
				["Purrfect"] = true,
				["Khayden"] = true,
				["Hyrcine"] = true,
				["Polycarp"] = true,
				["Bonks"] = true,
				["Dë"] = true,
				["Keiikaaria"] = true,
				["Raksdisapren"] = true,
				["Dyami"] = true,
				["Donkeyhead"] = true,
				["Nyriph"] = true,
				["Neverhealing"] = true,
				["Dixxth"] = true,
				["Zerkratzen"] = true,
				["Chryssta"] = true,
				["Emmara"] = true,
				["Lerytheis"] = true,
				["Noobivore"] = true,
				["Shamagic"] = true,
				["Szobor"] = true,
				["Tarrexis"] = true,
				["Lorin"] = true,
				["Darriuz"] = true,
				["Senkou"] = true,
				["Puddinfart"] = true,
				["Shocket"] = true,
				["Zaubertot"] = true,
				["Wuzul"] = true,
				["Zito"] = true,
				["Nyrif"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Stabufoo"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Qtcryof"] = true,
				["Hurtpunch"] = true,
				["Frostbunny"] = true,
				["Mustachrides"] = true,
				["Kyoku"] = true,
				["Khmer"] = true,
				["Ericdk"] = true,
				["Dariuz"] = true,
				["Brizoh"] = true,
				["Prallend"] = true,
				["Emy"] = true,
				["Deriden"] = true,
				["Dwarfish"] = true,
				["Lakida"] = true,
				["Fuzul"] = true,
				["Arcaneretwar"] = true,
				["Vannah"] = true,
				["Girlyhau"] = true,
				["Dpartddk"] = true,
				["Akasorfin"] = true,
				["Polygamy"] = true,
				["Butcha"] = true,
				["Flipsyde"] = true,
				["Brily"] = true,
				["Ameruz"] = true,
				["Isela"] = true,
				["Ariaxa"] = true,
				["Shabubble"] = true,
				["Reembody"] = true,
				["Scruffior"] = true,
				["Skorrm"] = true,
				["Angelîca"] = true,
				["Kailani"] = true,
				["Soondead"] = true,
				["Parrymason"] = true,
				["Exitrage"] = true,
				["Tyrannia"] = true,
				["Eleanas"] = true,
				["Naetiri"] = true,
				["Cericus"] = true,
				["Dirtymage"] = true,
				["Katholic"] = true,
				["Conquerer"] = true,
				["Evelin"] = true,
				["Scruffen"] = true,
				["Tyralen"] = true,
				["Rpnerdxo"] = true,
				["Mozaic"] = true,
				["Nãnnerhammok"] = true,
				["Kharthus"] = true,
				["Checkyosix"] = true,
				["Crantor"] = true,
				["Naydelle"] = true,
				["Tyrandras"] = true,
				["Punetas"] = true,
			},
		},
		["Prallend"] = {
			["friendList"] = {
				["|Kf465|k000000000000000|k"] = 2,
				["|Kf446|k0000000000000|k"] = 2,
				["|Kf454|k00000000000|k"] = 2,
				["|Kf463|k0000000000000|k"] = 2,
				["|Kf437|k0000000000|k"] = 2,
				["|Kf452|k000000000|k"] = 2,
				["|Kf439|k00000000000000|k"] = 2,
				["|Kf457|k000000000000|k"] = 2,
				["|Kf440|k0000000000|k"] = 2,
				["|Kf435|k000000000|k"] = 2,
				["|Kf460|k0000000000000|k"] = 2,
				["|Kf448|k000000000000|k"] = 2,
				["|Kf434|k000000000000000|k"] = 2,
				["|Kf430|k0000|k"] = 2,
				["|Kf456|k000000000000000000|k"] = 2,
				["|Kf443|k000000000000000|k"] = 2,
				["|Kf447|k0000000000|k"] = 2,
				["|Kf455|k00000000000|k"] = 2,
				["|Kf432|k000000000|k"] = 2,
				["|Kf445|k00000000000|k"] = 2,
				["|Kf464|k000000000000|k"] = 2,
				["|Kf459|k0000000000000000|k"] = 2,
				["|Kf442|k00000000000|k"] = 2,
				["|Kf458|k00000000000000|k"] = 2,
				["|Kf449|k0000000000000000|k"] = 2,
				["|Kf453|k000000|k"] = 2,
				["|Kf436|k000000000000000|k"] = 2,
				["|Kf429|k0000000000|k"] = 2,
				["|Kf431|k000000|k"] = 2,
				["|Kf438|k000000|k"] = 2,
				["|Kf467|k00000000000000|k"] = 2,
				["|Kf433|k000000000000|k"] = 2,
				["|Kf450|k000000000000|k"] = 2,
				["|Kf466|k00000000000000|k"] = 2,
				["|Kf471|k000000000000|k"] = 2,
				["|Kf444|k00000000000000|k"] = 2,
				["|Kf462|k0000000000000|k"] = 2,
				["|Kf451|k00000000000000|k"] = 2,
				["|Kf469|k0000000000000000|k"] = 2,
				["|Kf441|k000000000000000|k"] = 2,
				["|Kf468|k0000000000000|k"] = 2,
				["|Kf461|k000000000000|k"] = 2,
				["|Kf470|k000000000000|k"] = 2,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Snatshes"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Phel"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Emmara"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Felyn"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Exitrage"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Scratchy"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Arcaneretwar"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kittypuppy"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Adobilol"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Tyrandras"] = true,
				["Scruffier"] = true,
				["Ninjanaut"] = true,
				["Naydelle"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Kharthus"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Naetiri"] = true,
				["Eyesack"] = true,
				["Nãnnerhammok"] = true,
				["Scruffie"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Rpnerdxo"] = true,
				["Uranius"] = true,
				["Vannah"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Priesticles"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Evelin"] = true,
				["Dirtymage"] = true,
				["Faster"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Phelly"] = true,
				["Gargas"] = true,
				["Cericus"] = true,
				["Brily"] = true,
				["Akasorter"] = true,
				["Kaptiv"] = true,
				["Parrymason"] = true,
				["Xpanda"] = true,
				["Ashely"] = true,
				["Exitwoundz"] = true,
				["Scruffior"] = true,
				["Reembody"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Erebohs"] = true,
				["Tyrkwondo"] = true,
				["Angelîca"] = true,
				["Skorrm"] = true,
				["Katz"] = true,
				["Lythknight"] = true,
				["Lucîa"] = true,
				["Dpartddk"] = true,
				["Arcuarius"] = true,
				["Flipsyde"] = true,
				["Kittypew"] = true,
				["Shirohato"] = true,
				["Pershele"] = true,
				["Edwilly"] = true,
				["Tyrannia"] = true,
				["Dendore"] = true,
				["Zeelycan"] = true,
				["Butcha"] = true,
				["Polygamy"] = true,
				["Soupzzdk"] = true,
				["Kunzi"] = true,
				["Amarusz"] = true,
				["Hyori"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Blumpkinns"] = true,
				["Elexisjcbank"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Girlyhau"] = true,
				["Emy"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Desehater"] = true,
				["Posaussie"] = true,
				["Acisil"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Spacewood"] = true,
				["Bichobandito"] = true,
				["Dwarfish"] = true,
				["Nylu"] = true,
				["Enclosed"] = true,
				["Khmer"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Eleneore"] = true,
				["Kaileena"] = true,
				["Prallend"] = true,
				["Tyrial"] = true,
				["Jarfas"] = true,
				["Ariaxa"] = true,
				["Sehee"] = true,
				["Fudgie"] = true,
				["Amrazz"] = true,
				["Katholic"] = true,
				["Kyoku"] = true,
				["Ischa"] = true,
				["Hurtpunch"] = true,
				["Fåith"] = true,
				["Akasoryk"] = true,
				["Qtcryof"] = true,
				["Cloakofskill"] = true,
				["Abhornt"] = true,
				["Deadmàus"] = true,
				["Merylz"] = true,
				["Radak"] = true,
				["Inches"] = true,
				["Hellspire"] = true,
				["Ironpenance"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Stabufoo"] = true,
				["Purrfect"] = true,
				["Senorugly"] = true,
				["Nyrif"] = true,
				["Zito"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Cutiebooty"] = true,
				["Sophelia"] = true,
				["Zaubertot"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Shocket"] = true,
				["Puddinfart"] = true,
				["Ellan"] = true,
				["Elnumeroonce"] = true,
				["Darriuz"] = true,
				["Lorin"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Arma"] = true,
				["Kuray"] = true,
				["Ymcm"] = true,
				["Szobor"] = true,
				["Phlx"] = true,
				["Ezemode"] = true,
				["Zerkratzen"] = true,
				["Jengonga"] = true,
				["Onezero"] = true,
				["Sarepta"] = true,
				["Maedhros"] = true,
				["Vayder"] = true,
				["Liaa"] = true,
				["Jiyoung"] = true,
				["Tarius"] = true,
				["Defaldon"] = true,
				["Crumlol"] = true,
				["Miataris"] = true,
				["Dixxth"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Margiel"] = true,
				["Chryssta"] = true,
				["Zyoro"] = true,
				["Eley"] = true,
				["Cutiecute"] = true,
				["Senkou"] = true,
				["Nyriph"] = true,
				["Bromies"] = true,
				["Shamagic"] = true,
				["Märgie"] = true,
				["Kats"] = true,
				["Shwex"] = true,
				["Kungfuzi"] = true,
				["Raksdisapren"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Khaden"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Khayden"] = true,
				["Dë"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Orcholodes"] = true,
				["Cassia"] = true,
				["Litegrace"] = true,
				["Liyann"] = true,
				["Polycarp"] = true,
				["Insanitywolf"] = true,
				["Rancimus"] = true,
				["Persephonee"] = true,
				["Amarexqt"] = true,
				["Aubade"] = true,
				["Ariasqt"] = true,
				["Bache"] = true,
				["Lockmang"] = true,
				["Guacamoles"] = true,
				["Rpnerdxx"] = true,
				["Amarex"] = true,
				["Heki"] = true,
				["Ajaxx"] = true,
				["Sauceyminx"] = true,
				["Angkor"] = true,
				["Niphradil"] = true,
				["Katicus"] = true,
				["Psychosniper"] = true,
				["Menotius"] = true,
				["Juki"] = true,
				["Shaynikens"] = true,
				["Lolah"] = true,
				["Nerdknight"] = true,
				["Legitimate"] = true,
				["Doterel"] = true,
				["Koalacookie"] = true,
				["Akasoran"] = true,
				["Lunas"] = true,
				["Skribble"] = true,
				["Qthau"] = true,
				["Dotsudead"] = true,
				["Kariana"] = true,
				["Qtfemdwarf"] = true,
				["Druidacritz"] = true,
				["Swagflu"] = true,
				["Verati"] = true,
				["Frydchickenz"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Nachtmähre"] = true,
				["Thunderfro"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Notwehr"] = true,
				["Ironallxy"] = true,
				["Jayie"] = true,
				["Hyrcine"] = true,
				["Skorme"] = true,
				["Bonks"] = true,
				["Ariastwo"] = true,
				["Keiikaaria"] = true,
				["Phellan"] = true,
				["Amalea"] = true,
				["Donkeyhead"] = true,
				["Gladitorhau"] = true,
				["Neverhealing"] = true,
				["Zenonmyst"] = true,
				["Lythism"] = true,
				["Missfaith"] = true,
				["Fonzi"] = true,
				["Fenrîs"] = true,
				["Noobivore"] = true,
				["Arck"] = true,
				["Amerusz"] = true,
				["Tarrexis"] = true,
				["Kaguri"] = true,
				["Xhasuhana"] = true,
				["Terraenova"] = true,
				["Scruffu"] = true,
				["Pandahjerk"] = true,
				["Jomelyo"] = true,
				["Wuzul"] = true,
				["Senis"] = true,
				["Crits"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Ayelah"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Evermore"] = true,
				["Foodbank"] = true,
				["Frostbunny"] = true,
				["Põ"] = true,
				["Mustachrides"] = true,
				["Dariuz"] = true,
				["Ericdk"] = true,
				["Twiggysmalls"] = true,
				["Brizoh"] = true,
				["Darksparrow"] = true,
				["Lakida"] = true,
				["Deriden"] = true,
				["Fany"] = true,
				["Punetas"] = true,
				["Fuzul"] = true,
				["Ripmane"] = true,
				["Ameruzs"] = true,
				["Polt"] = true,
				["Mirandaz"] = true,
				["Akasorfin"] = true,
				["Menehune"] = true,
				["Líck"] = true,
				["Lerytheis"] = true,
				["Ariasdrood"] = true,
				["Ameruz"] = true,
				["Absorb"] = true,
				["Vier"] = true,
				["Shabubble"] = true,
				["Euphoris"] = true,
				["Margië"] = true,
				["Nesaja"] = true,
				["Akasornet"] = true,
				["Kailani"] = true,
				["Soondead"] = true,
				["Jomelyoo"] = true,
				["Líghtbright"] = true,
				["Purrdy"] = true,
				["Eleanas"] = true,
				["Forevermore"] = true,
				["Chingon"] = true,
				["Reticent"] = true,
				["Isela"] = true,
				["Conquerer"] = true,
				["Checkyosix"] = true,
				["Scruffen"] = true,
				["Jiveturky"] = true,
				["Chrondonic"] = true,
				["Mozaic"] = true,
				["Hepaestus"] = true,
				["Tyrtwo"] = true,
				["Shoktacular"] = true,
				["Purrfec"] = true,
				["Monkish"] = true,
				["Tyralen"] = true,
				["Johnb"] = true,
			},
		},
		["Zerkratzen"] = {
			["friendList"] = {
				["|Kf41|k000000000000|k"] = 2,
				["Notwehr"] = 1,
				["Vergottlicht"] = 1,
				["|Kf43|k00000000000000|k"] = 2,
				["Avice"] = 1,
				["Hlen"] = 1,
				["|Kf9|k000000000000|k"] = 2,
				["|Kf38|k0000000000000|k"] = 2,
				["Ivan"] = 1,
				["Sanefkny"] = 1,
				["|Kf25|k0000000000000000|k"] = 2,
				["|Kf6|k0000|k"] = 2,
				["|Kf36|k0000000000000|k"] = 2,
				["Holypaladin"] = 1,
				["Heiligan"] = 1,
				["Adamsmith"] = 1,
				["|Kf40|k00000000000|k"] = 2,
				["|Kf35|k0000000000000000|k"] = 2,
				["|Kf34|k00000000000000|k"] = 2,
				["|Kf20|k00000000000000|k"] = 2,
				["Trixaho"] = 1,
				["|Kf37|k000000000000|k"] = 2,
				["|Kf23|k0000000000|k"] = 2,
				["|Kf29|k000000|k"] = 2,
				["|Kf15|k00000000000000|k"] = 2,
				["|Kf11|k000000000|k"] = 2,
				["|Kf16|k0000000000|k"] = 2,
				["|Kf12|k000000000000000|k"] = 2,
				["Steroids"] = 1,
				["Melland"] = 1,
				["|Kf18|k00000000000|k"] = 2,
				["|Kf32|k000000000000000000|k"] = 2,
				["|Kf31|k00000000000|k"] = 2,
				["|Kf28|k000000000|k"] = 2,
				["|Kf21|k00000000000|k"] = 2,
				["|Kf8|k000000000|k"] = 2,
				["Manja"] = 1,
				["Silchas"] = 1,
				["|Kf13|k0000000000|k"] = 2,
				["Joshuah"] = 1,
				["|Kf46|k0000000000000000|k"] = 2,
				["|Kf5|k0000000000|k"] = 2,
				["|Kf42|k000000000000000|k"] = 2,
				["|Kf7|k000000|k"] = 2,
				["|Kf17|k000000000000000|k"] = 2,
				["|Kf19|k000000000000000|k"] = 2,
				["Mutîny"] = 1,
				["Wuge"] = 1,
				["Shieldedrage"] = 1,
				["Saadam"] = 1,
				["Helpy"] = 1,
				["Jaymes"] = 1,
				["|Kf24|k000000000000|k"] = 2,
				["|Kf30|k00000000000|k"] = 2,
				["|Kf48|k000000000000|k"] = 2,
				["|Kf44|k00000000000000|k"] = 2,
				["|Kf14|k000000|k"] = 2,
				["|Kf45|k0000000000000|k"] = 2,
				["|Kf47|k000000000000|k"] = 2,
				["Rusted"] = 1,
				["Maevirste"] = 1,
				["|Kf39|k0000000000000|k"] = 2,
				["|Kf22|k0000000000000|k"] = 2,
				["|Kf26|k000000000000|k"] = 2,
				["Beichte"] = 1,
				["Dunskull"] = 1,
				["|Kf33|k000000000000|k"] = 2,
				["Fominix"] = 1,
				["Prettysaro"] = 1,
				["|Kf10|k000000000000000|k"] = 2,
				["Cathmor"] = 1,
				["Odissia"] = 1,
				["|Kf27|k00000000000000|k"] = 2,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Koalacookie"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Snatshes"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Naydelle"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Kiyono"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Crantor"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Qtcryof"] = true,
				["Foxy"] = true,
				["Greatdeku"] = true,
				["Kittypuppy"] = true,
				["Liaa"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Lythism"] = true,
				["Konidas"] = true,
				["Shoktacular"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Ironpenance"] = true,
				["Hepaestus"] = true,
				["Evelin"] = true,
				["Chrondonic"] = true,
				["Arcaneretwar"] = true,
				["Tyralen"] = true,
				["Qtfemdwarf"] = true,
				["Ninjanaut"] = true,
				["Emmara"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Shamagic"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Ajaxx"] = true,
				["Chingon"] = true,
				["Akasoran"] = true,
				["Amarusz"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Scruffier"] = true,
				["Uranius"] = true,
				["Akasoryk"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Ayelah"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Erebohs"] = true,
				["Katz"] = true,
				["Akasornet"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Humblebee"] = true,
				["Gargas"] = true,
				["Nesaja"] = true,
				["Blumpkinns"] = true,
				["Akasorter"] = true,
				["Líghtbright"] = true,
				["Parrymason"] = true,
				["Xpanda"] = true,
				["Ashely"] = true,
				["Checkyosix"] = true,
				["Defaldon"] = true,
				["Desehater"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Possession"] = true,
				["Enclosed"] = true,
				["Felyn"] = true,
				["Líck"] = true,
				["Menehune"] = true,
				["Zeelycan"] = true,
				["Lucîa"] = true,
				["Forevermore"] = true,
				["Arcuarius"] = true,
				["Jomelyoo"] = true,
				["Kittypew"] = true,
				["Heki"] = true,
				["Ironallxy"] = true,
				["Edwilly"] = true,
				["Vier"] = true,
				["Dendore"] = true,
				["Katholic"] = true,
				["Fany"] = true,
				["Nomore"] = true,
				["Abhornt"] = true,
				["Kunzi"] = true,
				["Margiel"] = true,
				["Lmaonaizee"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Darksparrow"] = true,
				["Elexisjcbank"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Polt"] = true,
				["Margië"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Ripmane"] = true,
				["Posaussie"] = true,
				["Tyrial"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Mirandaz"] = true,
				["Bichobandito"] = true,
				["Notwehr"] = true,
				["Nylu"] = true,
				["Monkish"] = true,
				["Khmer"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Lerytheis"] = true,
				["Kaileena"] = true,
				["Persephonee"] = true,
				["Pershele"] = true,
				["Jarfas"] = true,
				["Steffie"] = true,
				["Sehee"] = true,
				["Ellan"] = true,
				["Fudgie"] = true,
				["Onezero"] = true,
				["Purrfec"] = true,
				["Vayder"] = true,
				["Tyrkwondo"] = true,
				["Fåith"] = true,
				["Crits"] = true,
				["Foodbank"] = true,
				["Girlyhau"] = true,
				["Kungfuzi"] = true,
				["Deadmàus"] = true,
				["Jomelyo"] = true,
				["Evermore"] = true,
				["Pandahjerk"] = true,
				["Merylz"] = true,
				["Inches"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Scruffu"] = true,
				["Lakida"] = true,
				["Xhasuhana"] = true,
				["Kaguri"] = true,
				["Deego"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Tyrandras"] = true,
				["Amerusz"] = true,
				["Verati"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Zerkratzen"] = true,
				["Senkou"] = true,
				["Senorugly"] = true,
				["Elnumeroonce"] = true,
				["Shabubble"] = true,
				["Shirohato"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Arma"] = true,
				["Dixxth"] = true,
				["Sophelia"] = true,
				["Khayden"] = true,
				["Phlx"] = true,
				["Gladitorhau"] = true,
				["Donkeyhead"] = true,
				["Jengonga"] = true,
				["Kuray"] = true,
				["Sarepta"] = true,
				["Spacewood"] = true,
				["Tarrexis"] = true,
				["Phellan"] = true,
				["Jiyoung"] = true,
				["Tarius"] = true,
				["Orcholodes"] = true,
				["Ariastwo"] = true,
				["Miataris"] = true,
				["Angkor"] = true,
				["Sleepyy"] = true,
				["Jitsu"] = true,
				["Skorme"] = true,
				["Arck"] = true,
				["Terraenova"] = true,
				["Eley"] = true,
				["Cutiecute"] = true,
				["Dyami"] = true,
				["Insanitywolf"] = true,
				["Bromies"] = true,
				["Dariuz"] = true,
				["Märgie"] = true,
				["Kats"] = true,
				["Shwex"] = true,
				["Cutiebooty"] = true,
				["Jiveturky"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Aubade"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Amalea"] = true,
				["Nerdknight"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Khaden"] = true,
				["Cassia"] = true,
				["Twiggysmalls"] = true,
				["Liyann"] = true,
				["Legitimate"] = true,
				["Litegrace"] = true,
				["Frydchickenz"] = true,
				["Isthisdiablo"] = true,
				["Rancimus"] = true,
				["Jayie"] = true,
				["Ariasqt"] = true,
				["Faster"] = true,
				["Scratchy"] = true,
				["Guacamoles"] = true,
				["Bache"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Ameruzs"] = true,
				["Sauceyminx"] = true,
				["Ymcm"] = true,
				["Radak"] = true,
				["Katicus"] = true,
				["Kariana"] = true,
				["Adobilol"] = true,
				["Juki"] = true,
				["Shaynikens"] = true,
				["Lolah"] = true,
				["Fenrîs"] = true,
				["Thunderfro"] = true,
				["Doterel"] = true,
				["Zito"] = true,
				["Isela"] = true,
				["Lunas"] = true,
				["Psychosniper"] = true,
				["Qthau"] = true,
				["Nachtmähre"] = true,
				["Dotsudead"] = true,
				["Skribble"] = true,
				["Druidacritz"] = true,
				["Põ"] = true,
				["Zyoro"] = true,
				["Punetas"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Rpnerdxx"] = true,
				["Swagflu"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Amarexqt"] = true,
				["Niphradil"] = true,
				["Purrfect"] = true,
				["Hyrcine"] = true,
				["Polycarp"] = true,
				["Bonks"] = true,
				["Dë"] = true,
				["Keiikaaria"] = true,
				["Raksdisapren"] = true,
				["Hurtpunch"] = true,
				["Fonzi"] = true,
				["Nyriph"] = true,
				["Neverhealing"] = true,
				["Zenonmyst"] = true,
				["Soupzzdk"] = true,
				["Kyoku"] = true,
				["Missfaith"] = true,
				["Mustachrides"] = true,
				["Noobivore"] = true,
				["Maedhros"] = true,
				["Szobor"] = true,
				["Chryssta"] = true,
				["Lorin"] = true,
				["Darriuz"] = true,
				["Ariasdrood"] = true,
				["Puddinfart"] = true,
				["Shocket"] = true,
				["Zaubertot"] = true,
				["Wuzul"] = true,
				["Ezemode"] = true,
				["Nyrif"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Stabufoo"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Renegade"] = true,
				["Senis"] = true,
				["Acisil"] = true,
				["Frostbunny"] = true,
				["Dirtymage"] = true,
				["Crumlol"] = true,
				["Eleneore"] = true,
				["Ericdk"] = true,
				["Lythknight"] = true,
				["Brizoh"] = true,
				["Prallend"] = true,
				["Dromen"] = true,
				["Deriden"] = true,
				["Dwarfish"] = true,
				["Hellspire"] = true,
				["Fuzul"] = true,
				["Tyrannia"] = true,
				["Hyori"] = true,
				["Cloakofskill"] = true,
				["Euphoris"] = true,
				["Akasorfin"] = true,
				["Polygamy"] = true,
				["Butcha"] = true,
				["Purrdy"] = true,
				["Vannah"] = true,
				["Ameruz"] = true,
				["Dpartddk"] = true,
				["Brily"] = true,
				["Emy"] = true,
				["Phel"] = true,
				["Exitrage"] = true,
				["Skorrm"] = true,
				["Angelîca"] = true,
				["Kailani"] = true,
				["Soondead"] = true,
				["Ischa"] = true,
				["Reembody"] = true,
				["Flipsyde"] = true,
				["Eleanas"] = true,
				["Scruffior"] = true,
				["Cericus"] = true,
				["Ariaxa"] = true,
				["Priesticles"] = true,
				["Conquerer"] = true,
				["Exitwoundz"] = true,
				["Scruffen"] = true,
				["Phelly"] = true,
				["Rpnerdxo"] = true,
				["Mozaic"] = true,
				["Nãnnerhammok"] = true,
				["Scruffie"] = true,
				["Naetiri"] = true,
				["Tyrtwo"] = true,
				["Eyesack"] = true,
				["Kaptiv"] = true,
				["Kharthus"] = true,
			},
		},
		["Erschossen"] = {
			["friendList"] = {
				["Helpy"] = 1,
				["|Kf380|k0000000000000|k"] = 2,
				["|Kf379|k0000000000000|k"] = 2,
				["|Kf367|k000000000000|k"] = 2,
				["|Kf347|k0000|k"] = 2,
				["|Kf356|k00000000000000|k"] = 2,
				["|Kf370|k000000|k"] = 2,
				["|Kf365|k000000000000|k"] = 2,
				["Tomasu"] = 1,
				["|Kf354|k0000000000|k"] = 2,
				["Ivan"] = 1,
				["|Kf378|k000000000000|k"] = 2,
				["Sanefkny"] = 1,
				["|Kf366|k0000000000000000|k"] = 2,
				["|Kf364|k0000000000|k"] = 2,
				["|Kf387|k0000000000000000|k"] = 2,
				["|Kf381|k00000000000|k"] = 2,
				["Ambiguous"] = 1,
				["Shieldedrage"] = 1,
				["Holypaladin"] = 1,
				["|Kf389|k000000000000|k"] = 2,
				["Adamsmith"] = 1,
				["Cordelia"] = 1,
				["|Kf383|k000000000000000|k"] = 2,
				["|Kf385|k00000000000000|k"] = 2,
				["|Kf359|k00000000000|k"] = 2,
				["|Kf362|k00000000000|k"] = 2,
				["|Kf373|k000000000000000000|k"] = 2,
				["Trixaho"] = 1,
				["|Kf368|k00000000000000|k"] = 2,
				["|Kf374|k000000000000|k"] = 2,
				["|Kf388|k000000000000|k"] = 2,
				["|Kf372|k00000000000|k"] = 2,
				["|Kf346|k0000000000|k"] = 2,
				["|Kf360|k000000000000000|k"] = 2,
				["Jaymes"] = 1,
				["|Kf363|k0000000000000|k"] = 2,
				["|Kf357|k0000000000|k"] = 2,
				["|Kf371|k00000000000|k"] = 2,
				["|Kf348|k000000|k"] = 2,
				["|Kf355|k000000|k"] = 2,
				["Silchas"] = 1,
				["Joshuah"] = 1,
				["|Kf361|k00000000000000|k"] = 2,
				["|Kf349|k000000000|k"] = 2,
				["|Kf376|k0000000000000000|k"] = 2,
				["|Kf353|k000000000000000|k"] = 2,
				["|Kf352|k000000000|k"] = 2,
				["|Kf386|k0000000000000|k"] = 2,
				["Wolfram"] = 1,
				["Odissia"] = 1,
				["Saadam"] = 1,
				["Vergottlicht"] = 1,
				["Avice"] = 1,
				["Manja"] = 1,
				["Rusted"] = 1,
				["Heiligan"] = 1,
				["Fominix"] = 1,
				["|Kf369|k000000000|k"] = 2,
				["|Kf351|k000000000000000|k"] = 2,
				["|Kf375|k00000000000000|k"] = 2,
				["|Kf384|k00000000000000|k"] = 2,
				["|Kf377|k0000000000000|k"] = 2,
				["|Kf350|k000000000000|k"] = 2,
				["Prettysaro"] = 1,
				["Melland"] = 1,
				["Cathmor"] = 1,
				["|Kf358|k000000000000000|k"] = 2,
				["|Kf382|k000000000000|k"] = 2,
			},
			["guildList"] = {
				["Jwon"] = true,
				["Origination"] = true,
				["Dennas"] = true,
				["Yusha"] = true,
				["Dromen"] = true,
				["Rosencrantz"] = true,
				["Zuuzu"] = true,
				["Jenavee"] = true,
				["Akasorol"] = true,
				["Faiyth"] = true,
				["Panchoriado"] = true,
				["Marggie"] = true,
				["Rayñ"] = true,
				["Stealthgrl"] = true,
				["Mallent"] = true,
				["Ironxtasy"] = true,
				["Põ"] = true,
				["Beijo"] = true,
				["Jiveturkey"] = true,
				["Auctionfu"] = true,
				["Cptnamerica"] = true,
				["Feyleina"] = true,
				["Bdubb"] = true,
				["Jwonn"] = true,
				["Arckjr"] = true,
				["Amaze"] = true,
				["Ecyh"] = true,
				["Coop"] = true,
				["Dunskull"] = true,
				["University"] = true,
				["Qamra"] = true,
				["Dpsgrl"] = true,
				["Gummiee"] = true,
				["Sockcammich"] = true,
				["Possession"] = true,
				["Zaedren"] = true,
				["Caalia"] = true,
				["Neptrius"] = true,
				["Khadeera"] = true,
				["Casheye"] = true,
				["Gnotime"] = true,
				["Apôllo"] = true,
				["Fissile"] = true,
				["Hyolee"] = true,
				["Voriüs"] = true,
				["Tyrtwo"] = true,
				["Shinjuku"] = true,
				["Scroope"] = true,
				["Sgtsatan"] = true,
				["Absorb"] = true,
				["Amelita"] = true,
				["Fountayne"] = true,
				["Utsusemi"] = true,
				["Heartpunch"] = true,
				["Scrufflez"] = true,
				["Dirtyjon"] = true,
				["Seiyura"] = true,
				["Leihey"] = true,
				["Gummee"] = true,
				["Nothealing"] = true,
				["Vonvons"] = true,
				["Lafonduh"] = true,
				["Aletheia"] = true,
				["Maryjblidge"] = true,
				["Qtzuzu"] = true,
				["Thenubshaman"] = true,
				["Separatelol"] = true,
				["Sturmh"] = true,
				["Margié"] = true,
				["Reticent"] = true,
				["Hiddenrage"] = true,
				["Odisseus"] = true,
				["Cheekmunk"] = true,
				["Haircut"] = true,
				["Wingli"] = true,
				["Shanlox"] = true,
				["Darrius"] = true,
				["Arrff"] = true,
				["Vergottlicht"] = true,
				["Murdi"] = true,
				["Tankbríght"] = true,
				["Vyrai"] = true,
				["Jayietwo"] = true,
				["Oldmanriver"] = true,
				["Bitbit"] = true,
				["Roev"] = true,
				["Scratchy"] = true,
				["Qtamarex"] = true,
				["Makaio"] = true,
				["Testation"] = true,
				["Potsgrl"] = true,
				["Crumpadre"] = true,
				["Ninjanautz"] = true,
				["Anaon"] = true,
				["Orome"] = true,
				["Johnb"] = true,
				["Shadowburst"] = true,
				["Gaella"] = true,
				["College"] = true,
				["Foxy"] = true,
				["Kiyono"] = true,
				["Kittypuppy"] = true,
				["Punetas"] = true,
				["Hureportedme"] = true,
				["Ahyumi"] = true,
				["Tyrandras"] = true,
				["Adobilol"] = true,
				["Naydelle"] = true,
				["Phloxx"] = true,
				["Calimehtar"] = true,
				["Checkyosix"] = true,
				["Crantor"] = true,
				["Nãnnerhammok"] = true,
				["Soupzzdk"] = true,
				["Rpnerdxo"] = true,
				["Tyralen"] = true,
				["Phelly"] = true,
				["Ninjanaut"] = true,
				["Evelin"] = true,
				["Areone"] = true,
				["Hîppo"] = true,
				["Smokeme"] = true,
				["Katz"] = true,
				["Tyrala"] = true,
				["Timid"] = true,
				["Katholic"] = true,
				["Naetiri"] = true,
				["Cericus"] = true,
				["Purrdy"] = true,
				["Prophecy"] = true,
				["Beetrice"] = true,
				["Uranius"] = true,
				["Dirtymage"] = true,
				["Tyrannia"] = true,
				["Erschossen"] = true,
				["Kireyn"] = true,
				["Corrosive"] = true,
				["Mirandaz"] = true,
				["Arkatos"] = true,
				["Pocki"] = true,
				["Kharthus"] = true,
				["Soondead"] = true,
				["Brily"] = true,
				["Rastlin"] = true,
				["Lexiey"] = true,
				["Humblebee"] = true,
				["Gargas"] = true,
				["Angelîca"] = true,
				["Skorrm"] = true,
				["Akasorter"] = true,
				["Lythknight"] = true,
				["Parrymason"] = true,
				["Xpanda"] = true,
				["Nerdknight"] = true,
				["Shabubble"] = true,
				["Ariaxa"] = true,
				["Isela"] = true,
				["Centrius"] = true,
				["Lothesum"] = true,
				["Bearboned"] = true,
				["Exitrage"] = true,
				["Forevermore"] = true,
				["Dpartddk"] = true,
				["Girlyhau"] = true,
				["Butcha"] = true,
				["Polygamy"] = true,
				["Lucîa"] = true,
				["Akasorfin"] = true,
				["Arcuarius"] = true,
				["Kittypew"] = true,
				["Flipsyde"] = true,
				["Vannah"] = true,
				["Emy"] = true,
				["Edwilly"] = true,
				["Vier"] = true,
				["Dendore"] = true,
				["Hyori"] = true,
				["Lakida"] = true,
				["Nomore"] = true,
				["Dwarfish"] = true,
				["Eleneore"] = true,
				["Elexisjcbank"] = true,
				["Lmaonaizee"] = true,
				["Muu"] = true,
				["Petrichor"] = true,
				["Ariasdrood"] = true,
				["Blumpkinns"] = true,
				["Strangemager"] = true,
				["Fairye"] = true,
				["Prallend"] = true,
				["Desehater"] = true,
				["Deridk"] = true,
				["Dirtycambo"] = true,
				["Ripmane"] = true,
				["Posaussie"] = true,
				["Eyesack"] = true,
				["Dortmunder"] = true,
				["Bockchee"] = true,
				["Arcaneretwar"] = true,
				["Bichobandito"] = true,
				["Foodbank"] = true,
				["Nylu"] = true,
				["Mustachrides"] = true,
				["Enclosed"] = true,
				["Blacksunshin"] = true,
				["Deselin"] = true,
				["Snatshes"] = true,
				["Kaileena"] = true,
				["Hurtpunch"] = true,
				["Evermore"] = true,
				["Jarfas"] = true,
				["Abhornt"] = true,
				["Sehee"] = true,
				["Renegade"] = true,
				["Fudgie"] = true,
				["Hellspire"] = true,
				["Inches"] = true,
				["Stabufoo"] = true,
				["Deego"] = true,
				["Fåith"] = true,
				["Cloakofskill"] = true,
				["Akasoryk"] = true,
				["Nyrif"] = true,
				["Dyami"] = true,
				["Deadmàus"] = true,
				["Senis"] = true,
				["Radak"] = true,
				["Zaubertot"] = true,
				["Merylz"] = true,
				["Ironpenance"] = true,
				["Faithbunny"] = true,
				["Korrine"] = true,
				["Pallykîller"] = true,
				["Shocket"] = true,
				["Puddinfart"] = true,
				["Donkeyhead"] = true,
				["Darriuz"] = true,
				["Senorugly"] = true,
				["Meryl"] = true,
				["Teenworgen"] = true,
				["Meatsling"] = true,
				["Lorin"] = true,
				["Vayder"] = true,
				["Szobor"] = true,
				["Couragewolf"] = true,
				["Zekrage"] = true,
				["Lythism"] = true,
				["Senkou"] = true,
				["Zito"] = true,
				["Elnumeroonce"] = true,
				["Chryssta"] = true,
				["Terraenova"] = true,
				["Jaymes"] = true,
				["Dalara"] = true,
				["Arma"] = true,
				["Maedhros"] = true,
				["Ymcm"] = true,
				["Dixxth"] = true,
				["Phlx"] = true,
				["Zerkratzen"] = true,
				["Nyriph"] = true,
				["Jengonga"] = true,
				["Kuray"] = true,
				["Sarepta"] = true,
				["Shamagic"] = true,
				["Tarrexis"] = true,
				["Defaldon"] = true,
				["Ezemode"] = true,
				["Tarius"] = true,
				["Raksdisapren"] = true,
				["Kats"] = true,
				["Miataris"] = true,
				["Dë"] = true,
				["Sleepyy"] = true,
				["Psychosniper"] = true,
				["Thunderfro"] = true,
				["Arck"] = true,
				["Zyoro"] = true,
				["Eley"] = true,
				["Cutiecute"] = true,
				["Fenrîs"] = true,
				["Polycarp"] = true,
				["Bromies"] = true,
				["Margiel"] = true,
				["Märgie"] = true,
				["Missfaith"] = true,
				["Shwex"] = true,
				["Khayden"] = true,
				["Lerytheis"] = true,
				["Immunetoroot"] = true,
				["Nyluh"] = true,
				["Orcholodes"] = true,
				["Demesis"] = true,
				["Olz"] = true,
				["Sandigun"] = true,
				["Kungfuzi"] = true,
				["Litegrace"] = true,
				["Aethyr"] = true,
				["Sakurzaki"] = true,
				["Crumlol"] = true,
				["Cassia"] = true,
				["Rancimus"] = true,
				["Liyann"] = true,
				["Purrfect"] = true,
				["Insanitywolf"] = true,
				["Ironallxy"] = true,
				["Persephonee"] = true,
				["Amarexqt"] = true,
				["Aubade"] = true,
				["Ariasqt"] = true,
				["Rpnerdxx"] = true,
				["Ajaxx"] = true,
				["Guacamoles"] = true,
				["Bache"] = true,
				["Amarex"] = true,
				["Lockmang"] = true,
				["Notwehr"] = true,
				["Isthisdiablo"] = true,
				["Niphradil"] = true,
				["Swagflu"] = true,
				["Katicus"] = true,
				["Skribble"] = true,
				["Dotsudead"] = true,
				["Lolah"] = true,
				["Nachtmähre"] = true,
				["Juki"] = true,
				["Koalacookie"] = true,
				["Doterel"] = true,
				["Legitimate"] = true,
				["Lunas"] = true,
				["Zeelycan"] = true,
				["Akasoran"] = true,
				["Frydchickenz"] = true,
				["Qthau"] = true,
				["Shaynikens"] = true,
				["Kariana"] = true,
				["Qtfemdwarf"] = true,
				["Druidacritz"] = true,
				["Angkor"] = true,
				["Sauceyminx"] = true,
				["Heki"] = true,
				["Tsang"] = true,
				["Ellbo"] = true,
				["Ameruzs"] = true,
				["Jayie"] = true,
				["Xyphia"] = true,
				["Amaruz"] = true,
				["Faster"] = true,
				["Khaden"] = true,
				["Amalea"] = true,
				["Hyrcine"] = true,
				["Skorme"] = true,
				["Bonks"] = true,
				["Ariastwo"] = true,
				["Keiikaaria"] = true,
				["Phellan"] = true,
				["Liaa"] = true,
				["Fonzi"] = true,
				["Gladitorhau"] = true,
				["Neverhealing"] = true,
				["Zenonmyst"] = true,
				["Jitsu"] = true,
				["Emmara"] = true,
				["Jiyoung"] = true,
				["Onezero"] = true,
				["Noobivore"] = true,
				["Ellan"] = true,
				["Amerusz"] = true,
				["Sophelia"] = true,
				["Kaguri"] = true,
				["Xhasuhana"] = true,
				["Ischa"] = true,
				["Scruffu"] = true,
				["Pandahjerk"] = true,
				["Jomelyo"] = true,
				["Wuzul"] = true,
				["Kyoku"] = true,
				["Crits"] = true,
				["Beichte"] = true,
				["Anion"] = true,
				["Ayelah"] = true,
				["Xyphadil"] = true,
				["Amarus"] = true,
				["Steffie"] = true,
				["Cutiebooty"] = true,
				["Qtcryof"] = true,
				["Frostbunny"] = true,
				["Dariuz"] = true,
				["Tyrkwondo"] = true,
				["Khmer"] = true,
				["Ericdk"] = true,
				["Tyrial"] = true,
				["Brizoh"] = true,
				["Darksparrow"] = true,
				["Amarusz"] = true,
				["Deriden"] = true,
				["Fany"] = true,
				["Priesticles"] = true,
				["Fuzul"] = true,
				["Kunzi"] = true,
				["Shirohato"] = true,
				["Spacewood"] = true,
				["Polt"] = true,
				["Greatdeku"] = true,
				["Menehune"] = true,
				["Líck"] = true,
				["Verati"] = true,
				["Acisil"] = true,
				["Ameruz"] = true,
				["Twiggysmalls"] = true,
				["Margië"] = true,
				["Phel"] = true,
				["Pershele"] = true,
				["Ashely"] = true,
				["Nesaja"] = true,
				["Akasornet"] = true,
				["Kailani"] = true,
				["Erebohs"] = true,
				["Scruffior"] = true,
				["Reembody"] = true,
				["Euphoris"] = true,
				["Eleanas"] = true,
				["Líghtbright"] = true,
				["Chingon"] = true,
				["Exitwoundz"] = true,
				["Jomelyoo"] = true,
				["Conquerer"] = true,
				["Felyn"] = true,
				["Scruffen"] = true,
				["Monkish"] = true,
				["Chrondonic"] = true,
				["Mozaic"] = true,
				["Hepaestus"] = true,
				["Scruffier"] = true,
				["Shoktacular"] = true,
				["Purrfec"] = true,
				["Jiveturky"] = true,
				["Scruffie"] = true,
				["Kaptiv"] = true,
			},
		},
	},
	["Uldum"] = {
		["Geil"] = {
			["friendList"] = {
				["|Kf46|k0000000000000|k"] = 2,
				["|Kf16|k0000000000|k"] = 2,
				["|Kf12|k000000000000000|k"] = 2,
				["|Kf22|k0000000000000|k"] = 2,
				["|Kf26|k0000000000000000|k"] = 2,
				["|Kf11|k000000000000|k"] = 2,
				["|Kf27|k0000000000|k"] = 2,
				["|Kf14|k00000000000|k"] = 2,
				["|Kf18|k000000|k"] = 2,
				["|Kf13|k0000000000|k"] = 2,
				["|Kf45|k00000000000000|k"] = 2,
				["|Kf38|k0000000000000|k"] = 2,
				["|Kf43|k000000000000000|k"] = 2,
				["|Kf31|k000000|k"] = 2,
				["|Kf15|k000000000000000|k"] = 2,
				["|Kf17|k000000000000000|k"] = 2,
				["|Kf7|k000000000000|k"] = 2,
				["|Kf6|k0000|k"] = 2,
				["|Kf42|k000000000000|k"] = 2,
				["|Kf41|k0000000000000|k"] = 2,
				["|Kf34|k00000000000|k"] = 2,
				["|Kf5|k000000000|k"] = 2,
				["|Kf32|k00000000000|k"] = 2,
				["|Kf40|k0000000000000|k"] = 2,
				["|Kf24|k00000000000|k"] = 2,
				["|Kf19|k000000000000|k"] = 2,
				["|Kf21|k000000000000|k"] = 2,
				["|Kf28|k000000000000|k"] = 2,
				["|Kf23|k0000000000|k"] = 2,
				["|Kf33|k000000000000000000|k"] = 2,
				["|Kf39|k000000000000|k"] = 2,
				["|Kf30|k000000000|k"] = 2,
				["|Kf20|k00000000000000|k"] = 2,
				["|Kf44|k00000000000000|k"] = 2,
				["|Kf9|k00000000000000|k"] = 2,
				["|Kf25|k000000000000|k"] = 2,
				["|Kf36|k00000000000000|k"] = 2,
				["|Kf8|k0000000000|k"] = 2,
				["|Kf37|k0000000000000000|k"] = 2,
				["|Kf48|k000000000|k"] = 2,
				["|Kf35|k000000000000|k"] = 2,
				["|Kf10|k000000000000000|k"] = 2,
				["|Kf49|k000000|k"] = 2,
				["|Kf29|k00000000000000|k"] = 2,
				["|Kf47|k0000000000000000|k"] = 2,
			},
			["guildList"] = {
				["Ladalasia"] = true,
				["Ryca"] = true,
				["Mesfory"] = true,
				["Wariuss"] = true,
				["Vuth"] = true,
				["Raylria"] = true,
				["Hhcc"] = true,
				["Justindatnd"] = true,
				["Erirn"] = true,
				["Dørå"] = true,
				["Prieust"] = true,
				["Samiliany"] = true,
				["Keston"] = true,
				["Kalroonniy"] = true,
				["Fuman"] = true,
				["Kaylaine"] = true,
				["Hölywrãth"] = true,
				["Yinjuch"] = true,
				["Berreme"] = true,
				["Drador"] = true,
				["Hëavyduty"] = true,
				["Endare"] = true,
				["Vaell"] = true,
				["Beera"] = true,
				["Louisianatye"] = true,
				["Soopewalawa"] = true,
				["Pandachow"] = true,
				["Corlea"] = true,
				["Shammyshammy"] = true,
				["Smallbrew"] = true,
				["Rhyker"] = true,
				["Sangrè"] = true,
				["Kyriira"] = true,
				["Yeoh"] = true,
				["Quinestra"] = true,
				["Glolita"] = true,
				["Alonstara"] = true,
				["Dawhitewiz"] = true,
				["Sunstalkér"] = true,
				["Coldhunt"] = true,
				["Luigee"] = true,
				["Wariance"] = true,
				["Totototo"] = true,
				["Shamaniqua"] = true,
				["Ontogeny"] = true,
				["Mordok"] = true,
				["Mathilas"] = true,
				["Danyiya"] = true,
				["Keta"] = true,
				["Aamik"] = true,
				["Ruffio"] = true,
				["Purplekushh"] = true,
				["Noctarus"] = true,
				["Orcha"] = true,
				["Asmon"] = true,
				["Perfectiion"] = true,
				["Thellair"] = true,
				["Mnhgjkdheuc"] = true,
				["Nardorn"] = true,
				["Chitinghor"] = true,
				["Pillpopper"] = true,
				["Puniypanda"] = true,
				["Byranotsom"] = true,
				["Strutin"] = true,
				["Hellforge"] = true,
				["Bunnyfluffy"] = true,
				["Bry"] = true,
				["Sqwushy"] = true,
				["Gypy"] = true,
				["Saintlister"] = true,
				["Arcilles"] = true,
				["Kronoes"] = true,
				["Voh"] = true,
				["Shockrock"] = true,
				["Glorsword"] = true,
				["Shivatin"] = true,
				["Myrianius"] = true,
				["Starlling"] = true,
				["Kurloway"] = true,
				["Acinorev"] = true,
				["Teetyme"] = true,
				["Thadyr"] = true,
				["Snipè"] = true,
				["Reqwyem"] = true,
				["Suttbéx"] = true,
				["Veladax"] = true,
				["Geil"] = true,
				["Scrimor"] = true,
				["Abam"] = true,
				["Hsijs"] = true,
				["Wingknightt"] = true,
				["Nadinzu"] = true,
				["Iwillhealzu"] = true,
				["Trinvek"] = true,
				["Arakles"] = true,
				["Lau"] = true,
				["Panaynay"] = true,
				["Catriannah"] = true,
				["Rumsydrunk"] = true,
				["Shprong"] = true,
				["Licklickpepe"] = true,
				["Xso"] = true,
				["Pichaidan"] = true,
				["Quichean"] = true,
				["Kneeshooter"] = true,
				["Mckaela"] = true,
				["Ziinon"] = true,
				["Murakum"] = true,
				["Kimche"] = true,
				["Freaknpanda"] = true,
				["Lilpander"] = true,
				["Darkfoot"] = true,
				["Shadowpwnage"] = true,
				["Elfhunts"] = true,
				["Hunbang"] = true,
				["Reesepiece"] = true,
				["Faginhilan"] = true,
				["Jackofshadow"] = true,
				["Bellu"] = true,
				["Nysia"] = true,
				["Brothabaldy"] = true,
				["Melriel"] = true,
				["Kkira"] = true,
				["Deadetotus"] = true,
				["Riceballs"] = true,
				["Natesch"] = true,
				["Jaysa"] = true,
				["Broccolee"] = true,
				["Predank"] = true,
				["Darthtanker"] = true,
				["Eragonpro"] = true,
				["Juanjose"] = true,
				["Danyfilth"] = true,
				["Cuturhead"] = true,
				["Fantasi"] = true,
				["Homoerotica"] = true,
				["Billko"] = true,
				["Bambooette"] = true,
				["Mcdrake"] = true,
				["Penitration"] = true,
				["Lunaliaa"] = true,
				["Smally"] = true,
				["Snhickers"] = true,
				["Warligus"] = true,
				["Uldris"] = true,
				["Annabef"] = true,
				["Edwinthewolf"] = true,
				["Ârkadia"] = true,
				["Shadyassasin"] = true,
				["Khendhie"] = true,
				["Pandodur"] = true,
				["Hege"] = true,
				["Coppergreen"] = true,
				["Wizzem"] = true,
				["Vìktòr"] = true,
				["Themuse"] = true,
				["Wellandender"] = true,
				["Ceris"] = true,
				["Umpire"] = true,
				["Slola"] = true,
				["Imabadazz"] = true,
				["Fatboyy"] = true,
				["Yogafire"] = true,
				["Delwar"] = true,
				["Gravemoon"] = true,
				["Tèn"] = true,
				["Latencyissue"] = true,
				["Thec"] = true,
				["Zombiefists"] = true,
				["Admetius"] = true,
				["Mispanda"] = true,
				["Mércy"] = true,
				["Siminah"] = true,
				["Alveres"] = true,
				["Skunkdiesel"] = true,
				["Meowcats"] = true,
				["Bellakita"] = true,
				["Sheebich"] = true,
				["Korisa"] = true,
				["Macgyvericus"] = true,
				["Evilpinky"] = true,
				["Kyonaru"] = true,
				["Joron"] = true,
				["Birk"] = true,
				["Jolythely"] = true,
				["Deusdedeus"] = true,
				["Fallensky"] = true,
				["Andew"] = true,
				["Erglston"] = true,
				["Gaylil"] = true,
				["Animar"] = true,
				["Tinytoezz"] = true,
				["Gerbyl"] = true,
				["Craftybagel"] = true,
				["Ulumar"] = true,
				["Lutero"] = true,
				["Imacracker"] = true,
				["Holory"] = true,
				["Ervee"] = true,
				["Nisvip"] = true,
				["Danisaca"] = true,
				["Nightseer"] = true,
				["Amirbowman"] = true,
				["Pandapunch"] = true,
				["Miracedis"] = true,
				["Mythreir"] = true,
				["Armoured"] = true,
				["Blistering"] = true,
				["Ðeathmonk"] = true,
				["Hurke"] = true,
				["Cuttiepie"] = true,
				["Tati"] = true,
				["Asteross"] = true,
				["Breenail"] = true,
				["Luclie"] = true,
				["Marlene"] = true,
				["Adealia"] = true,
				["Phou"] = true,
				["Huyo"] = true,
				["Thegabber"] = true,
				["Oreidin"] = true,
				["Barme"] = true,
				["Grimmond"] = true,
				["Pandarie"] = true,
				["Druidmantan"] = true,
				["Fcp"] = true,
				["Coquelicot"] = true,
				["Admentitus"] = true,
				["Kungfatpanda"] = true,
				["Friskyfowl"] = true,
				["Nadamonk"] = true,
				["Odalir"] = true,
				["Bronon"] = true,
				["Khoros"] = true,
				["Iolalyral"] = true,
				["Rikioh"] = true,
				["Kirette"] = true,
				["Haikü"] = true,
				["Mundone"] = true,
				["Purbble"] = true,
				["Wärriör"] = true,
				["Squelle"] = true,
				["Milexison"] = true,
				["Ardora"] = true,
				["Tacolord"] = true,
				["Diablô"] = true,
				["Kimilde"] = true,
				["Àrcane"] = true,
				["Dionarra"] = true,
				["Magemôn"] = true,
				["Yojimbo"] = true,
				["Azac"] = true,
				["Rulok"] = true,
				["Sohalia"] = true,
				["Nightviper"] = true,
				["Phriix"] = true,
				["Rowanmage"] = true,
				["Aliviss"] = true,
				["Elemedrunk"] = true,
				["Aonil"] = true,
				["Chity"] = true,
				["Skylerr"] = true,
				["Thraq"] = true,
				["Lockster"] = true,
				["Nhs"] = true,
				["Pulverizeyou"] = true,
				["Zelderian"] = true,
				["Saborclaw"] = true,
				["Wangsang"] = true,
				["Arkanius"] = true,
				["Relsea"] = true,
				["Gargadran"] = true,
				["Veridia"] = true,
				["Laalin"] = true,
				["Chukknoris"] = true,
				["Daniifilth"] = true,
				["Vertede"] = true,
				["Dïsçküshørbz"] = true,
				["Pelickpelick"] = true,
				["Galaul"] = true,
				["Bloodlusting"] = true,
				["Kwillin"] = true,
				["Yoora"] = true,
				["Yunliu"] = true,
				["Rageopriest"] = true,
				["Dusknight"] = true,
				["Ohlord"] = true,
				["Seian"] = true,
				["Cianiis"] = true,
				["Pantherage"] = true,
				["Shalariana"] = true,
				["Ryai"] = true,
				["Rayiden"] = true,
				["Lickpepelick"] = true,
				["Muukk"] = true,
				["Vaeyn"] = true,
				["Snakeyez"] = true,
				["Cerraghor"] = true,
				["Pinetrees"] = true,
				["Nerdrage"] = true,
				["Forestgümp"] = true,
				["Tidusally"] = true,
				["Romilly"] = true,
				["Halort"] = true,
				["Twingeegeek"] = true,
				["Sloppytits"] = true,
				["Vanho"] = true,
				["Ðëmønküsh"] = true,
				["Giha"] = true,
				["Sativea"] = true,
				["Fideaux"] = true,
				["Ladorine"] = true,
				["Sarbarola"] = true,
				["Terronge"] = true,
				["Donarvo"] = true,
				["Rowanpalin"] = true,
				["Meadmini"] = true,
				["Midgetmonsta"] = true,
				["Aabooh"] = true,
				["Shalarien"] = true,
				["Thrillerguy"] = true,
				["Manapipe"] = true,
				["Sagameras"] = true,
				["Bëåst"] = true,
				["Kaiheitai"] = true,
				["Ilikehealing"] = true,
				["Sarandipity"] = true,
				["Deadpandazx"] = true,
				["Aliistari"] = true,
				["Karoojin"] = true,
				["Jackychanele"] = true,
				["Chipsmith"] = true,
				["Shåmän"] = true,
				["Arikel"] = true,
				["Beastexpress"] = true,
				["Bohika"] = true,
				["Epicdeathman"] = true,
				["Calavelor"] = true,
				["Combatrogue"] = true,
				["Draynex"] = true,
				["Vectoris"] = true,
				["Woofslayer"] = true,
				["Imafuzzynome"] = true,
				["Moondancr"] = true,
				["Osriel"] = true,
				["Hack"] = true,
				["Lastran"] = true,
				["Neuman"] = true,
				["Sugår"] = true,
				["Phoebeth"] = true,
				["Sparring"] = true,
				["Liliani"] = true,
				["Trina"] = true,
				["Rocyn"] = true,
				["Rruunnyy"] = true,
				["Buddahknight"] = true,
				["Savagekush"] = true,
				["Skuttlebutt"] = true,
				["Thorrim"] = true,
				["Guapis"] = true,
				["Fuur"] = true,
				["Bareyethunn"] = true,
				["Patrokolas"] = true,
				["Leonaston"] = true,
				["Margare"] = true,
				["Omgghoul"] = true,
				["Fluffysalad"] = true,
				["Ozcorp"] = true,
				["Pulin"] = true,
				["Papales"] = true,
				["Garrchi"] = true,
				["Hirohana"] = true,
				["Fluffydog"] = true,
				["Toltop"] = true,
				["Mibatman"] = true,
			},
		},
	},
	["Jubei'Thos"] = {
		["Untote"] = {
			["friendList"] = {
				["|Kf69|k000000000000|k"] = 2,
				["|Kf66|k0000000000|k"] = 2,
				["|Kf82|k00000000000|k"] = 2,
				["|Kf70|k000000000000000|k"] = 2,
				["|Kf63|k000000000|k"] = 2,
				["|Kf99|k0000000000000|k"] = 2,
				["|Kf92|k00000000000|k"] = 2,
				["|Kf85|k0000000000|k"] = 2,
				["|Kf79|k000000000000|k"] = 2,
				["|Kf107|k000000|k"] = 2,
				["|Kf74|k0000000000|k"] = 2,
				["|Kf97|k000000000000|k"] = 2,
				["|Kf72|k00000000000|k"] = 2,
				["|Kf78|k00000000000000|k"] = 2,
				["|Kf81|k0000000000|k"] = 2,
				["|Kf101|k000000000000000|k"] = 2,
				["|Kf75|k000000000000000|k"] = 2,
				["|Kf100|k000000000000|k"] = 2,
				["|Kf67|k00000000000000|k"] = 2,
				["|Kf65|k000000000000|k"] = 2,
				["|Kf76|k000000|k"] = 2,
				["|Kf86|k000000000000|k"] = 2,
				["|Kf106|k000000000|k"] = 2,
				["|Kf87|k00000000000000|k"] = 2,
				["|Kf91|k000000000000000000|k"] = 2,
				["|Kf103|k00000000000000|k"] = 2,
				["|Kf105|k0000000000000000|k"] = 2,
				["|Kf68|k000000000000000|k"] = 2,
				["|Kf77|k000000000000|k"] = 2,
				["|Kf89|k000000|k"] = 2,
				["|Kf98|k0000000000000|k"] = 2,
				["|Kf88|k000000000|k"] = 2,
				["|Kf104|k0000000000000|k"] = 2,
				["|Kf94|k00000000000000|k"] = 2,
				["|Kf73|k000000000000000|k"] = 2,
				["|Kf93|k000000000000|k"] = 2,
				["|Kf102|k00000000000000|k"] = 2,
				["|Kf80|k0000000000000|k"] = 2,
				["|Kf83|k000000000000|k"] = 2,
				["|Kf95|k0000000000000000|k"] = 2,
				["|Kf90|k00000000000|k"] = 2,
				["|Kf64|k0000|k"] = 2,
				["|Kf96|k0000000000000|k"] = 2,
				["|Kf71|k0000000000|k"] = 2,
				["|Kf84|k0000000000000000|k"] = 2,
			},
		},
	},
}
WIM3_Filters = {
	{
		["enabled"] = true,
		["type"] = 1,
		["pattern"] = "^<T>PartyQuests[^A-Z]+\n^<M_N>\n^ItemDB-Request:\n^LVBM\n^YOU ARE BEING WATCHED!\n^YOU ARE MARKED!\n^YOU ARE CURSED!\n^YOU HAVE THE PLAGUE!\n^YOU ARE BURNING!\n^YOU ARE THE BOMB!\nVOLATILE INFECTION\n^/^GA[^A-Z]+\n^<METAMAP\n^<CT",
		["sent"] = true,
		["name"] = "Whispers Sent by Addons",
		["received"] = true,
		["action"] = 2,
		["stats"] = 0,
		["protected"] = true,
		["tag"] = "addons",
	}, -- [1]
	{
		["enabled"] = false,
		["type"] = 2,
		["action"] = 1,
		["friend"] = true,
		["party"] = true,
		["name"] = "WhisperSelect Part 1",
		["guild"] = true,
		["raid"] = true,
		["received"] = true,
		["stats"] = 0,
	}, -- [2]
	{
		["enabled"] = false,
		["type"] = 3,
		["name"] = "Example Spam Blocker",
		["notify"] = true,
		["action"] = 3,
		["level"] = 2,
		["received"] = true,
		["stats"] = 0,
	}, -- [3]
	{
		["enabled"] = false,
		["type"] = 2,
		["name"] = "WhisperSelect Part 2",
		["action"] = 2,
		["all"] = true,
		["received"] = true,
		["stats"] = 0,
	}, -- [4]
}
WIM3_History = {
	["Deathwing"] = {
		["Prallend"] = {
			["Auric"] = {
				{
					["type"] = 1,
					["time"] = 1349306337,
					["from"] = "Auric",
					["msg"] = "going to work out",
					["inbound"] = true,
					["convo"] = "Auric",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349306341,
					["from"] = "Prallend",
					["msg"] = "ok hf",
					["inbound"] = false,
					["convo"] = "Auric",
				}, -- [2]
				["info"] = {
				},
			},
			["Tudd"] = {
				{
					["type"] = 1,
					["time"] = 1348976298,
					["from"] = "Tudd",
					["msg"] = "Sup panda fag",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348976312,
					["from"] = "Prallend",
					["msg"] = "nm just naked wow while i'm home alone",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348976318,
					["from"] = "Tudd",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348976334,
					["from"] = "Prallend",
					["msg"] = "what are you doin",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348976395,
					["from"] = "Tudd",
					["msg"] = "Tryna get dat 90, naw mean?!",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348976403,
					["from"] = "Prallend",
					["msg"] = "you on the dl nigga?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348976454,
					["from"] = "Tudd",
					["msg"] = "Bitch, don't front.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348976517,
					["from"] = "Prallend",
					["msg"] = "i'm on top, no front",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348965319,
					["from"] = "Tudd",
					["msg"] = "How are monks so far?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348965331,
					["from"] = "Prallend",
					["msg"] = "i played em to 20 something on the ptr",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348965338,
					["from"] = "Prallend",
					["msg"] = "i liked healing",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348965350,
					["from"] = "Tudd",
					["msg"] = "So are they similar to a shaman?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348965357,
					["from"] = "Prallend",
					["msg"] = "no",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348965401,
					["from"] = "Tudd",
					["msg"] = "What are they? Like a melee/healer hybrid?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348965412,
					["from"] = "Prallend",
					["msg"] = "kind of like assassins in d2",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348965418,
					["from"] = "Prallend",
					["msg"] = "build up combo points called chi",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348965422,
					["from"] = "Prallend",
					["msg"] = "then do stuff with that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348965433,
					["from"] = "Prallend",
					["msg"] = "or rogues i guess",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348965447,
					["from"] = "Tudd",
					["msg"] = "But they can heal too?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348965451,
					["from"] = "Prallend",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1348965778,
					["from"] = "Tudd",
					["msg"] = "TOo many god damn mobs in pandaria",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1348965798,
					["from"] = "Prallend",
					["msg"] = "lol ur 89",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1348965802,
					["from"] = "Prallend",
					["msg"] = "you should be happy with that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1348965817,
					["from"] = "Tudd",
					["msg"] = "They really hit the nail on the head when it came to sterotyping Asia.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1348967563,
					["from"] = "Prallend",
					["msg"] = "why do they show small guy dicks?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1348967581,
					["from"] = "Tudd",
					["msg"] = "What?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1348967604,
					["from"] = "Prallend",
					["msg"] = "you said they played on stereotypes",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1348967609,
					["from"] = "Tudd",
					["msg"] = "OH",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1348967611,
					["from"] = "Tudd",
					["msg"] = "hahahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1348967620,
					["from"] = "Tudd",
					["msg"] = "I'm sure it's somewhere in here",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1348967631,
					["from"] = "Prallend",
					["msg"] = "not on this toon",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1348967662,
					["from"] = "Tudd",
					["msg"] = "How do you know?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1348967679,
					["from"] = "Prallend",
					["msg"] = "used the custom settings",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1348967694,
					["from"] = "Tudd",
					["msg"] = "Ah, I see",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1348967730,
					["from"] = "Prallend",
					["msg"] = "man these quests were so fucked on the ptr",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1348969116,
					["from"] = "Tudd",
					["msg"] = "Is there a SW, Shattrath, Dalaran, ",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1348969121,
					["from"] = "Tudd",
					["msg"] = "of pandaria?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1348969132,
					["from"] = "Prallend",
					["msg"] = "is there a kingdom?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1348969133,
					["from"] = "Prallend",
					["msg"] = "yes",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1348987309,
					["from"] = "Tudd",
					["msg"] = "Jesus, that took too long",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1348987314,
					["from"] = "Prallend",
					["msg"] = "what's that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1348987316,
					["from"] = "Prallend",
					["msg"] = "getting to 90?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1348987318,
					["from"] = "Tudd",
					["msg"] = "90 bitch",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1348987324,
					["from"] = "Prallend",
					["msg"] = "it was hardly even a few days",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1348987335,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349067140,
					["from"] = "Tudd",
					["msg"] = "How do you get Valor of ANcients?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349067295,
					["from"] = "Prallend",
					["msg"] = "idk",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349060345,
					["from"] = "Tudd",
					["msg"] = "Jesus, do you read every word of every quest?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349060363,
					["from"] = "Prallend",
					["msg"] = "of ones i haven't done before yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349060372,
					["from"] = "Tudd",
					["msg"] = "Damn",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349060380,
					["from"] = "Tudd",
					["msg"] = "You must know a lot about the story behind this game.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349060389,
					["from"] = "Tudd",
					["msg"] = "Or \"within\" *",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349060405,
					["from"] = "Prallend",
					["msg"] = "i'm bad with names",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349060407,
					["from"] = "Prallend",
					["msg"] = "so not really",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349060412,
					["from"] = "Tudd",
					["msg"] = "Hahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349234357,
					["from"] = "Tudd",
					["msg"] = "No",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [56]
				["info"] = {
				},
			},
			["Zaldek"] = {
				{
					["type"] = 1,
					["time"] = 1348968664,
					["from"] = "Prallend",
					["msg"] = "grats on 90 ur so amazing",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348968691,
					["from"] = "Zaldek",
					["msg"] = "thx pumpkin",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348968994,
					["from"] = "Prallend",
					["msg"] = "ffs people are like braindead",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348969008,
					["from"] = "Prallend",
					["msg"] = "some guy asks how ppl are doin in general",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348969012,
					["from"] = "Prallend",
					["msg"] = "i'm like \"my dad died\"",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348969024,
					["from"] = "Prallend",
					["msg"] = "and 5 whispers from people saying how sorry they are",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348969386,
					["from"] = "Zaldek",
					["msg"] = "LOL",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348969393,
					["from"] = "Zaldek",
					["msg"] = "This guy just asked for help with a flash game",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348969416,
					["from"] = "Prallend",
					["msg"] = "are you at a library?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348969425,
					["from"] = "Zaldek",
					["msg"] = "No, I mean in general",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348969474,
					["from"] = "Prallend",
					["msg"] = "lol wow",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348972292,
					["from"] = "Zaldek",
					["msg"] = "how ya likin the fat panda?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348972299,
					["from"] = "Prallend",
					["msg"] = "i like dat ass",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348972307,
					["from"] = "Zaldek",
					["msg"] = "dat ass o.o",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348972312,
					["from"] = "Prallend",
					["msg"] = "big boy ass",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348972313,
					["from"] = "Prallend",
					["msg"] = "mmm",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348972328,
					["from"] = "Zaldek",
					["msg"] = "NO PANDA ASS",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348972427,
					["from"] = "Prallend",
					["msg"] = "why? nice n hairy like yours",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348972435,
					["from"] = "Zaldek",
					["msg"] = "My ass is not hairy.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348972436,
					["from"] = "Zaldek",
					["msg"] = "My ass is immaculate,.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1348972445,
					["from"] = "Zaldek",
					["msg"] = "actually maybe it is.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1348972448,
					["from"] = "Zaldek",
					["msg"] = "WHO KNOWS.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1348972461,
					["from"] = "Prallend",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1348972464,
					["from"] = "Prallend",
					["msg"] = "you don't even know",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1348972476,
					["from"] = "Prallend",
					["msg"] = "that's actually disturbing",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1348972497,
					["from"] = "Zaldek",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1348972638,
					["from"] = "Prallend",
					["msg"] = "ok dr. who time",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1348987703,
					["from"] = "Prallend",
					["msg"] = "what you doin cute boy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1348987715,
					["from"] = "Zaldek",
					["msg"] = "Not a lot :(",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1348987717,
					["from"] = "Zaldek",
					["msg"] = "Figurin' out what to do.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1348987720,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1348987726,
					["from"] = "Zaldek",
					["msg"] = "You on facebook champ",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1348987731,
					["from"] = "Prallend",
					["msg"] = "of course sexy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349032214,
					["from"] = "Prallend",
					["msg"] = "nice job sleeping",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349032224,
					["from"] = "Zaldek",
					["msg"] = "Yea.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349032228,
					["from"] = "Zaldek",
					["msg"] = "I figured I'd stay up because I'm dumb irl.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349032398,
					["from"] = "Prallend",
					["msg"] = "you need to stop talking about yourself like that",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349032405,
					["from"] = "Prallend",
					["msg"] = "ur just like my brother",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349032408,
					["from"] = "Prallend",
					["msg"] = "always putting urself down",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349032418,
					["from"] = "Prallend",
					["msg"] = "that's why you get in trouble with interactions with other ppl",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349032418,
					["from"] = "Zaldek",
					["msg"] = ":(",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349032426,
					["from"] = "Zaldek",
					["msg"] = "People don't like negativity?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349032426,
					["from"] = "Prallend",
					["msg"] = "start saying how awesome you are",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349032430,
					["from"] = "Prallend",
					["msg"] = "SURPRISE",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349032435,
					["from"] = "Zaldek",
					["msg"] = "hahhaaha",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349394675,
					["from"] = "Prallend",
					["msg"] = "sup qt",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349394686,
					["from"] = "Zaldek",
					["msg"] = "Not a lot",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349394689,
					["from"] = "Zaldek",
					["msg"] = "how're you?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349394698,
					["from"] = "Prallend",
					["msg"] = "just doing quests",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349394703,
					["from"] = "Prallend",
					["msg"] = "i'm lvln faster than the zones allow",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349394707,
					["from"] = "Prallend",
					["msg"] = "kind of annoying",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349394716,
					["from"] = "Zaldek",
					["msg"] = "It's actually pretty fast in retrospect",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349394724,
					["from"] = "Zaldek",
					["msg"] = "I kinda wanna level something else",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349394725,
					["from"] = "Zaldek",
					["msg"] = "not sure what though",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349394732,
					["from"] = "Zaldek",
					["msg"] = "between DK and druid..*SIGH*",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349395498,
					["from"] = "Prallend",
					["msg"] = "...",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349395502,
					["from"] = "Zaldek",
					["msg"] = "hm?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349395502,
					["from"] = "Prallend",
					["msg"] = "what lvl is ur monk",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349395508,
					["from"] = "Zaldek",
					["msg"] = "uhm",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349395510,
					["from"] = "Zaldek",
					["msg"] = "45?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349395515,
					["from"] = "Zaldek",
					["msg"] = "maybe 47",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349395531,
					["from"] = "Prallend",
					["msg"] = "...",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1349395533,
					["from"] = "Prallend",
					["msg"] = "i hate you",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1349395548,
					["from"] = "Zaldek",
					["msg"] = "y4",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1349395555,
					["from"] = "Prallend",
					["msg"] = "cause you should be 30",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1349395559,
					["from"] = "Prallend",
					["msg"] = "or 31",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1349395565,
					["from"] = "Zaldek",
					["msg"] = "maybe u should be 45-53",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1349395602,
					["from"] = "Prallend",
					["msg"] = "working on it",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1349395629,
					["from"] = "Zaldek",
					["msg"] = "hehe",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1349395645,
					["from"] = "Prallend",
					["msg"] = "did you waste all ur gold already",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1349395649,
					["from"] = "Zaldek",
					["msg"] = "No sir",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1349395652,
					["from"] = "Prallend",
					["msg"] = "good",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1349395665,
					["from"] = "Prallend",
					["msg"] = "are there any mounts to buy?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1349395668,
					["from"] = "Zaldek",
					["msg"] = "ARGH LEFT MY INSCRIPTION",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1349395673,
					["from"] = "Zaldek",
					["msg"] = "WHERE DID THAT THING GO",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1349395678,
					["from"] = "Prallend",
					["msg"] = ":O",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1349395697,
					["from"] = "Prallend",
					["msg"] = "it makes coffee",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1349395700,
					["from"] = "Zaldek",
					["msg"] = "Oh",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1349395700,
					["from"] = "Prallend",
					["msg"] = "brb",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1349395703,
					["from"] = "Zaldek",
					["msg"] = "maybe hiding in the bank",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1349395706,
					["from"] = "Zaldek",
					["msg"] = "all dis fullness",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1349586876,
					["from"] = "Prallend",
					["msg"] = "how long til the timer is over",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1349586881,
					["from"] = "Zaldek",
					["msg"] = "I gave up",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1349586882,
					["from"] = "Zaldek",
					["msg"] = "fuck it",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1349586885,
					["from"] = "Zaldek",
					["msg"] = "its not that big of a deal anyways",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1349586890,
					["from"] = "Prallend",
					["msg"] = "good boy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1349586902,
					["from"] = "Prallend",
					["msg"] = "don't you have enough gold to buy it all ",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1349586910,
					["from"] = "Zaldek",
					["msg"] = "The cards?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1349586916,
					["from"] = "Prallend",
					["msg"] = "is that flask thing bop?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1349586920,
					["from"] = "Zaldek",
					["msg"] = "Oh, eya it is.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1349586924,
					["from"] = "Prallend",
					["msg"] = "oh ",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1349587006,
					["from"] = "Prallend",
					["msg"] = "almost feel bad killing so many innocent centaurs",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1349587006,
					["from"] = "Zaldek",
					["msg"] = "im pissed the cards arent on the ah",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1349587012,
					["from"] = "Prallend",
					["msg"] = "it's pretty early still ",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1349587028,
					["from"] = "Zaldek",
					["msg"] = "Just need four more",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1349587030,
					["from"] = "Zaldek",
					["msg"] = ";(",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1349587034,
					["from"] = "Prallend",
					["msg"] = "people are buying them up faster than you will",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1349587053,
					["from"] = "Zaldek",
					["msg"] = "Seems likely",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1349587100,
					["from"] = "Zaldek",
					["msg"] = "oh well",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1349587103,
					["from"] = "Zaldek",
					["msg"] = "just gotta keep my fingers crossed",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1349587133,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1349587140,
					["from"] = "Prallend",
					["msg"] = "did you say anything in trade",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1349587147,
					["from"] = "Zaldek",
					["msg"] = "Yea. stupid isnt it.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1349587174,
					["from"] = "Prallend",
					["msg"] = "i'd do that instead of the AH",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1349587188,
					["from"] = "Zaldek",
					["msg"] = "I suppose I may try",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1349587194,
					["from"] = "Zaldek",
					["msg"] = "lets seeee..",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1349587204,
					["from"] = "Zaldek",
					["msg"] = "I have a two, a seven, a four, and an ace",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1349587215,
					["from"] = "Zaldek",
					["msg"] = "so three, five, six, and eight",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1349587226,
					["from"] = "Zaldek",
					["msg"] = "I wish I could talk the people into selling em for 4k a pop",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1349587230,
					["from"] = "Prallend",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1349587234,
					["from"] = "Zaldek",
					["msg"] = "fucking scalpers",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1349587236,
					["from"] = "Prallend",
					["msg"] = "find a gay guy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1349587239,
					["from"] = "Zaldek",
					["msg"] = "LOL",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1349587239,
					["from"] = "Prallend",
					["msg"] = "and jerk off for him",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1349587262,
					["from"] = "Zaldek",
					["msg"] = "immorality abounds",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1349587285,
					["from"] = "Zaldek",
					["msg"] = "Oh shit",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1349587286,
					["from"] = "Zaldek",
					["msg"] = "brb",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1349587289,
					["from"] = "Prallend",
					["msg"] = "nothing immoral about getting shit for free",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1349587294,
					["from"] = "Prallend",
					["msg"] = "l2use ur dick",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [119]
				["info"] = {
				},
			},
			["Dalara"] = {
				{
					["type"] = 1,
					["time"] = 1349028544,
					["from"] = "Prallend",
					["msg"] = "yo sir can you ginvite me when you get a sec (it's beichte)",
					["inbound"] = false,
					["convo"] = "Dalara",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349028564,
					["from"] = "Prallend",
					["msg"] = "why ty",
					["inbound"] = false,
					["convo"] = "Dalara",
				}, -- [2]
				["info"] = {
				},
			},
			["Noël"] = {
				{
					["type"] = 1,
					["time"] = 1349018082,
					["from"] = "Noël",
					["msg"] = " |cff1eff00|Hitem:72104:0:0:0:0:0:0:0:86:0:0|h[Living Steel]|h|r is 2500",
					["inbound"] = true,
					["convo"] = "Noël",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349018101,
					["from"] = "Prallend",
					["msg"] = "who the hell are you",
					["inbound"] = false,
					["convo"] = "Noël",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349018123,
					["from"] = "Noël",
					["msg"] = "a super misclicker sry",
					["inbound"] = true,
					["convo"] = "Noël",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349018138,
					["from"] = "Noël",
					["msg"] = "a friend asked what server price was",
					["inbound"] = true,
					["convo"] = "Noël",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349018154,
					["from"] = "Noël",
					["msg"] = "his server and horde is about 1500 for them",
					["inbound"] = true,
					["convo"] = "Noël",
				}, -- [5]
				["info"] = {
				},
			},
			["hunterz32"] = {
				{
					["type"] = 1,
					["time"] = 1349232781,
					["from"] = "Prallend",
					["msg"] = "mom said you went to go get a physical?",
					["inbound"] = false,
					["convo"] = "hunterz32",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349232793,
					["from"] = "hunterz32",
					["msg"] = "just a check up",
					["inbound"] = true,
					["convo"] = "hunterz32",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349232802,
					["from"] = "Prallend",
					["msg"] = "not a physical?",
					["inbound"] = false,
					["convo"] = "hunterz32",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349232805,
					["from"] = "hunterz32",
					["msg"] = "no",
					["inbound"] = true,
					["convo"] = "hunterz32",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349232807,
					["from"] = "Prallend",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "hunterz32",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349232810,
					["from"] = "Prallend",
					["msg"] = "well you should get a physical",
					["inbound"] = false,
					["convo"] = "hunterz32",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349232823,
					["from"] = "Prallend",
					["msg"] = "before you come off any insurance and stuff",
					["inbound"] = false,
					["convo"] = "hunterz32",
				}, -- [7]
				["info"] = {
				},
			},
			["Moonstin"] = {
				{
					["type"] = 1,
					["time"] = 1348970217,
					["from"] = "Moonstin",
					["msg"] = "hey qt",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348970261,
					["from"] = "Prallend",
					["msg"] = "oh 90 already eh boy",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348970266,
					["from"] = "Moonstin",
					["msg"] = "duh",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348970279,
					["from"] = "Moonstin",
					["msg"] = "i've been really busy actually",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348970281,
					["from"] = "Moonstin",
					["msg"] = "i just level fast",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348970325,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348970329,
					["from"] = "Prallend",
					["msg"] = "well that's kewl, how is it",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348970335,
					["from"] = "Moonstin",
					["msg"] = "so many fucking reputations",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348970345,
					["from"] = "Moonstin",
					["msg"] = "and daily zones",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348970348,
					["from"] = "Moonstin",
					["msg"] = "its insane",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348970377,
					["from"] = "Moonstin",
					["msg"] = "blizzard doesn't want me to leave my room for the next few months it seems",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348970391,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348970393,
					["from"] = "Prallend",
					["msg"] = "idk",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348970397,
					["from"] = "Prallend",
					["msg"] = "those can get pretty annoying",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348970407,
					["from"] = "Moonstin",
					["msg"] = "yeah but, i'm an addict",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348970411,
					["from"] = "Moonstin",
					["msg"] = "this used to be all I did, ever.",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348970429,
					["from"] = "Moonstin",
					["msg"] = "i can't fall back into that now",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348970506,
					["from"] = "Prallend",
					["msg"] = "yea you grow out of it i think",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348970510,
					["from"] = "Prallend",
					["msg"] = "able to take it in moderation",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348970526,
					["from"] = "Prallend",
					["msg"] = "really i just spread out my addictions to other things",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1348970528,
					["from"] = "Moonstin",
					["msg"] = "just don't have as much time as when I used to play in high school",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1348970528,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1348970531,
					["from"] = "Prallend",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1348970536,
					["from"] = "Prallend",
					["msg"] = "same with me except college",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1348970551,
					["from"] = "Moonstin",
					["msg"] = "i didn't give a shit in high school, not that I would have if i wasn't playing wow lol",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1348970581,
					["from"] = "Prallend",
					["msg"] = "meh high school was worthless",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1348970588,
					["from"] = "Moonstin",
					["msg"] = "i just fucked around",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1348970594,
					["from"] = "Moonstin",
					["msg"] = "i was a bully lol",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1348970607,
					["from"] = "Prallend",
					["msg"] = "you look like a douche",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1348970614,
					["from"] = "Moonstin",
					["msg"] = "i was",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1348970634,
					["from"] = "Moonstin",
					["msg"] = "i'm not anymore",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1348970663,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1348970667,
					["from"] = "Prallend",
					["msg"] = "that's what they all say ;)",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1348970687,
					["from"] = "Moonstin",
					["msg"] = "haha really i'm not",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1348970696,
					["from"] = "Prallend",
					["msg"] = "that's alright i don't like nice guys",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1348970699,
					["from"] = "Prallend",
					["msg"] = "they just get walked all over",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1348970711,
					["from"] = "Moonstin",
					["msg"] = "i just don't take shit from people",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1348970716,
					["from"] = "Prallend",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1348970809,
					["from"] = "Moonstin",
					["msg"] = "i was so mean in high school hah",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1348970820,
					["from"] = "Moonstin",
					["msg"] = "i got away with it most the time, i only got suspended a few times",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1348970858,
					["from"] = "Prallend",
					["msg"] = "lol bad boy",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1348970871,
					["from"] = "Prallend",
					["msg"] = "i was the good boy that got a long with everyone",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1348970873,
					["from"] = "Moonstin",
					["msg"] = "i had names for almost everyone in my school",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1348970888,
					["from"] = "Moonstin",
					["msg"] = "i had a lot of friends",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1348970894,
					["from"] = "Prallend",
					["msg"] = "lol nicknames or?",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1348970908,
					["from"] = "Moonstin",
					["msg"] = "my school wasn't clique at all but i guess you could say i was with the popular crowd?",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1348970911,
					["from"] = "Moonstin",
					["msg"] = "not nice names",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1348970914,
					["from"] = "Prallend",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1348970928,
					["from"] = "Moonstin",
					["msg"] = "i probably had over 100",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1348970929,
					["from"] = "Prallend",
					["msg"] = "mine had 2100 ppl in it, hard to make cliques and have \"popular\" people so much",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1348970947,
					["from"] = "Prallend",
					["msg"] = "except for the usual jocks",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1348970952,
					["from"] = "Moonstin",
					["msg"] = "think mine was like 1200",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1348970962,
					["from"] = "Moonstin",
					["msg"] = "most of my friends were on the football team, i wasn't tough at all but i never got in fights cuz",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1348970965,
					["from"] = "Moonstin",
					["msg"] = "cuz of it",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1348970992,
					["from"] = "Prallend",
					["msg"] = "oh, i'm pretty good with words",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1348971003,
					["from"] = "Prallend",
					["msg"] = "so i can usually break a boy that way",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1348971007,
					["from"] = "Moonstin",
					["msg"] = "I was a cyber bully back on myspace days lmao",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1348971012,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1348971017,
					["from"] = "Prallend",
					["msg"] = "i'm not a bully",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1348971020,
					["from"] = "Moonstin",
					["msg"] = "funny times",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1348971026,
					["from"] = "Prallend",
					["msg"] = "so much as a condescending troll",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1348971037,
					["from"] = "Moonstin",
					["msg"] = "I was even worse on wow",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1348971061,
					["from"] = "Prallend",
					["msg"] = "yea i love it",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1348971095,
					["from"] = "Moonstin",
					["msg"] = "i went to the renassiance festival today",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1348971096,
					["from"] = "Moonstin",
					["msg"] = "it was fun",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1348971110,
					["from"] = "Prallend",
					["msg"] = "that's kewl, looked like it was gonna be a nice day out",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1348971111,
					["from"] = "Moonstin",
					["msg"] = "so many fucking furries there",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1348971116,
					["from"] = "Prallend",
					["msg"] = "that's weird",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1348971126,
					["from"] = "Moonstin",
					["msg"] = "the darkest outcasts of society were there",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1348971131,
					["from"] = "Moonstin",
					["msg"] = "i people watched for so long",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1348971143,
					["from"] = "Prallend",
					["msg"] = "pretty sure they weren'",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1348971151,
					["from"] = "Prallend",
					["msg"] = "they were at the midnight magic the gathering tournament last night",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1348971169,
					["from"] = "Moonstin",
					["msg"] = "omg they still have those?",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1348971214,
					["from"] = "Prallend",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1348971222,
					["from"] = "Prallend",
					["msg"] = "just went to return to ravnica's last night",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1348971225,
					["from"] = "Prallend",
					["msg"] = "woke up at like 6",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1349068379,
					["from"] = "Prallend",
					["msg"] = "sup boy",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1349068391,
					["from"] = "Moonstin",
					["msg"] = "doing expploration achievs",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1349068397,
					["from"] = "Prallend",
					["msg"] = "ew",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1349068427,
					["from"] = "Moonstin",
					["msg"] = "HEY",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1349068429,
					["from"] = "Moonstin",
					["msg"] = "be nice",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1349068433,
					["from"] = "Prallend",
					["msg"] = "i am",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1349068445,
					["from"] = "Prallend",
					["msg"] = "i coulda said \"that sounds boooring as fuck\" :P",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1349068454,
					["from"] = "Moonstin",
					["msg"] = "i'm gonna put my cock in your ear",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1349068497,
					["from"] = "Prallend",
					["msg"] = "it'd prolly fit",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1349068522,
					["from"] = "Moonstin",
					["msg"] = "oh yeah ;)",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1349068769,
					["from"] = "Moonstin",
					["msg"] = "warriors and mages are gonna be fucking insane for pvp this seaosn",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1349068771,
					["from"] = "Moonstin",
					["msg"] = "holy shit",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1349068780,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1349068786,
					["from"] = "Prallend",
					["msg"] = "pvp = fail",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1349068786,
					["from"] = "Moonstin",
					["msg"] = "i was doing some bgs earlier",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1349068797,
					["from"] = "Prallend",
					["msg"] = "they keep fucking this game up bases shit around pvp",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1349068816,
					["from"] = "Moonstin",
					["msg"] = "yeah but they don't release anything for pvp",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1349068823,
					["from"] = "Moonstin",
					["msg"] = "one arena an expansion if we're lucky",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1349068831,
					["from"] = "Moonstin",
					["msg"] = "where raiders get huge massive raid zones and daily zones every patch",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1349068843,
					["from"] = "Prallend",
					["msg"] = "good it's a pve game :P",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1349068869,
					["from"] = "Moonstin",
					["msg"] = "i've always done both back and forth",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1349068877,
					["from"] = "Prallend",
					["msg"] = "oh a vers boy eh",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1349068879,
					["from"] = "Moonstin",
					["msg"] = "raiding is so much easier but you have to rely on 24 other peopel to not fucking suckl",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1349068889,
					["from"] = "Moonstin",
					["msg"] = "what teh fuck is up with fags making everything sexual",
					["inbound"] = true,
					["convo"] = "Moonstin",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1349068892,
					["from"] = "Prallend",
					["msg"] = "lol easy compared to 40",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1349068905,
					["from"] = "Prallend",
					["msg"] = "we're good at it",
					["inbound"] = false,
					["convo"] = "Moonstin",
				}, -- [102]
				["info"] = {
				},
			},
			["Callmebaby"] = {
				{
					["type"] = 1,
					["time"] = 1348968517,
					["from"] = "Callmebaby",
					["msg"] = "im sorry about ur dad",
					["inbound"] = true,
					["convo"] = "Callmebaby",
				}, -- [1]
				["info"] = {
				},
			},
			["Nyriph"] = {
				{
					["type"] = 1,
					["time"] = 1349225041,
					["from"] = "Prallend",
					["msg"] = "get on wow fagbait",
					["inbound"] = false,
					["convo"] = "Nyriph",
				}, -- [1]
				["info"] = {
				},
			},
			["Lightborn"] = {
				{
					["type"] = 1,
					["time"] = 1348963494,
					["from"] = "Lightborn",
					["msg"] = "HEY TURD",
					["inbound"] = true,
					["convo"] = "Lightborn",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348963502,
					["from"] = "Prallend",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Lightborn",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348963516,
					["from"] = "Lightborn",
					["msg"] = "Not that I'll give a decision in any hurry perse. Just figured that'd be easier",
					["inbound"] = true,
					["convo"] = "Lightborn",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348963526,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Lightborn",
				}, -- [4]
				["info"] = {
				},
			},
			["Foxypaws"] = {
				{
					["type"] = 1,
					["time"] = 1348972479,
					["from"] = "Foxypaws",
					["msg"] = "do you watch robin hood?",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348972486,
					["from"] = "Foxypaws",
					["msg"] = "or just merlin?",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348972487,
					["from"] = "Prallend",
					["msg"] = "nope",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348972489,
					["from"] = "Prallend",
					["msg"] = "just merlin",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348972500,
					["from"] = "Foxypaws",
					["msg"] = "Did it get better",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348972514,
					["from"] = "Foxypaws",
					["msg"] = "I only watched it when it was on nbc I think",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348972568,
					["from"] = "Prallend",
					["msg"] = "um",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348972580,
					["from"] = "Prallend",
					["msg"] = "are you sure you're not thinking of the made for tv one and not the bbc produced one",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348972603,
					["from"] = "Foxypaws",
					["msg"] = "is it on syfy?",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348972605,
					["from"] = "Foxypaws",
					["msg"] = "now",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348972631,
					["from"] = "Prallend",
					["msg"] = "idk i watch it from the source",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348972643,
					["from"] = "Prallend",
					["msg"] = "gonna go watch dr. who",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348972703,
					["from"] = "Foxypaws",
					["msg"] = "oh fun",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349059108,
					["from"] = "Foxypaws",
					["msg"] = "are you any good at math;0 ",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349059178,
					["from"] = "Prallend",
					["msg"] = "depends",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349059642,
					["from"] = "Foxypaws",
					["msg"] = "pre-cal? graphing",
					["inbound"] = true,
					["convo"] = "Foxypaws",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349059681,
					["from"] = "Prallend",
					["msg"] = "lol nah been too long",
					["inbound"] = false,
					["convo"] = "Foxypaws",
				}, -- [17]
				["info"] = {
				},
			},
			["Nofoxgiven"] = {
				{
					["type"] = 1,
					["time"] = 1348975641,
					["from"] = "Prallend",
					["msg"] = "so how are the dungeons so far",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348975650,
					["from"] = "Nofoxgiven",
					["msg"] = "they're alright",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348975654,
					["from"] = "Prallend",
					["msg"] = "nothin crazy?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348975663,
					["from"] = "Nofoxgiven",
					["msg"] = "no same shit new models",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348975667,
					["from"] = "Prallend",
					["msg"] = "ah gay",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348975684,
					["from"] = "Nofoxgiven",
					["msg"] = "pretty much",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348975708,
					["from"] = "Prallend",
					["msg"] = "you doin any of the challenge mode shit yet?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348975716,
					["from"] = "Prallend",
					["msg"] = "i was curious how that would end up bein received",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348975718,
					["from"] = "Nofoxgiven",
					["msg"] = "my guild is I just dont care",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348975724,
					["from"] = "Prallend",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348975732,
					["from"] = "Nofoxgiven",
					["msg"] = "we start raiding tuesday",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348975742,
					["from"] = "Prallend",
					["msg"] = "well that's good, don't have to wait long",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348975752,
					["from"] = "Nofoxgiven",
					["msg"] = "ya it should be nice",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348975766,
					["from"] = "Prallend",
					["msg"] = "what will you be doin? dps or healing?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348975772,
					["from"] = "Nofoxgiven",
					["msg"] = "healing",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348975780,
					["from"] = "Prallend",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348975794,
					["from"] = "Nofoxgiven",
					["msg"] = "ya it should be good",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348975812,
					["from"] = "Prallend",
					["msg"] = "how is the priest at 90, are the new abilities any good? the transfer health one seemed retarded",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [18]
				["info"] = {
				},
			},
			["Djflipsixx"] = {
				{
					["type"] = 1,
					["time"] = 1348975960,
					["from"] = "Prallend",
					["msg"] = "sup cute guy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348976195,
					["from"] = "Djflipsixx",
					["msg"] = "sup you slut",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348976247,
					["from"] = "Prallend",
					["msg"] = "just playin wow naked like a slut",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348976251,
					["from"] = "Prallend",
					["msg"] = "since the roommate is gone",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348976264,
					["from"] = "Djflipsixx",
					["msg"] = "lmao,thats just wrong in so many ways.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348976290,
					["from"] = "Prallend",
					["msg"] = "that's all that's right",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348976300,
					["from"] = "Prallend",
					["msg"] = "how video games should be played",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348976313,
					["from"] = "Djflipsixx",
					["msg"] = "i have to deal with my roomates gf and her stupid kids,fucken shit is annoying.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348976341,
					["from"] = "Prallend",
					["msg"] = "wtf",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348976350,
					["from"] = "Prallend",
					["msg"] = "she's ugly and she has fucking kids?!",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348976358,
					["from"] = "Prallend",
					["msg"] = "is ur roommate seriously handicapped",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348976379,
					["from"] = "Djflipsixx",
					["msg"] = "ya dude like i bone semi decent girls,just for fun,but this bitch is ugly as sin,i would touch her with your dick.'",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348976389,
					["from"] = "Djflipsixx",
					["msg"] = "wouldnt",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348976390,
					["from"] = "Prallend",
					["msg"] = "AND she has children",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348976394,
					["from"] = "Prallend",
					["msg"] = "that's like",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348976395,
					["from"] = "Prallend",
					["msg"] = "messed",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348976395,
					["from"] = "Djflipsixx",
					["msg"] = "3 kids",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348976421,
					["from"] = "Djflipsixx",
					["msg"] = "he is a lame ass thats why.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348976422,
					["from"] = "Prallend",
					["msg"] = "whoa",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348976428,
					["from"] = "Prallend",
					["msg"] = "sounds like it",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1348976432,
					["from"] = "Prallend",
					["msg"] = "i thought you had a bromance with him",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1348976444,
					["from"] = "Prallend",
					["msg"] = "sit ur bf down and tell him wtf is up",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1348976444,
					["from"] = "Djflipsixx",
					["msg"] = "i daont date girls with any kids,or any drama at all,fuck all that.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1348976455,
					["from"] = "Prallend",
					["msg"] = "yea that's why i date guys",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1348976456,
					["from"] = "Djflipsixx",
					["msg"] = "my bf lmao,my roomate fool./",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1348976461,
					["from"] = "Prallend",
					["msg"] = "i can't handle that",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1348976472,
					["from"] = "Prallend",
					["msg"] = "whatever just fuck him every once in awhile and you'll be good",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1348976484,
					["from"] = "Djflipsixx",
					["msg"] = "umm no ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1348976505,
					["from"] = "Prallend",
					["msg"] = "yea that's true make him go to the gym first",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1348976510,
					["from"] = "Prallend",
					["msg"] = "no fatties",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1348977618,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1348963385,
					["from"] = "Djflipsixx",
					["msg"] = "lv 5 wtf dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1348963417,
					["from"] = "Prallend",
					["msg"] = "just got up from a midnight magic tournament",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1348963423,
					["from"] = "Prallend",
					["msg"] = "and was cammin with a hot guy on skype",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1348963430,
					["from"] = "Djflipsixx",
					["msg"] = "wow ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1348963438,
					["from"] = "Djflipsixx",
					["msg"] = "never even played that game",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1348963447,
					["from"] = "Prallend",
					["msg"] = "poor guy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1348963450,
					["from"] = "Prallend",
					["msg"] = "it's fun as hell",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1348963471,
					["from"] = "Djflipsixx",
					["msg"] = "my roomate plays it,and no i'll pass/",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1348963475,
					["from"] = "Prallend",
					["msg"] = "but i been playin since like 8th grade",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1348963482,
					["from"] = "Prallend",
					["msg"] = "ur roommate isn't a good example to go by",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1348963488,
					["from"] = "Djflipsixx",
					["msg"] = "fuck no",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1348963490,
					["from"] = "Prallend",
					["msg"] = "he's prolly just as bad at it as he is finding hot girls",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1348963503,
					["from"] = "Djflipsixx",
					["msg"] = "he is the reason obesity is a problem.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1348963520,
					["from"] = "Prallend",
					["msg"] = "tell that to mine too",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1348963524,
					["from"] = "Djflipsixx",
					["msg"] = "he fat ?",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1348963528,
					["from"] = "Prallend",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1348963533,
					["from"] = "Djflipsixx",
					["msg"] = "why dont you tell him ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1348963533,
					["from"] = "Prallend",
					["msg"] = "idk how they live like that",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1348963535,
					["from"] = "Djflipsixx",
					["msg"] = "he beat you up?",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1348963536,
					["from"] = "Prallend",
					["msg"] = "i do",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1348963540,
					["from"] = "Prallend",
					["msg"] = "kidding me?",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1348963542,
					["from"] = "Djflipsixx",
					["msg"] = "o",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1348963544,
					["from"] = "Prallend",
					["msg"] = "lol no one touches me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1348963549,
					["from"] = "Prallend",
					["msg"] = "i'll kill anyone who does",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1348963555,
					["from"] = "Djflipsixx",
					["msg"] = "sure lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1348963560,
					["from"] = "Djflipsixx",
					["msg"] = "you look really scary ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1348963603,
					["from"] = "Prallend",
					["msg"] = "doesn't mean i can't kick ur ass",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1348963604,
					["from"] = "Djflipsixx",
					["msg"] = "i would be more worried about a dragqueen then you lol.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1348963616,
					["from"] = "Prallend",
					["msg"] = "that's what i like",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1348963628,
					["from"] = "Prallend",
					["msg"] = "ppl underestimating me already gives me the advantage ;)",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1348963638,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1348963649,
					["from"] = "Djflipsixx",
					["msg"] = "dude i would make you tap out in like 1 second",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1348963665,
					["from"] = "Prallend",
					["msg"] = "last time i checked i'm the one that fucks dudes",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1348963674,
					["from"] = "Prallend",
					["msg"] = "pretty sure i would make you tap out",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1348963674,
					["from"] = "Djflipsixx",
					["msg"] = "true lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1348963686,
					["from"] = "Prallend",
					["msg"] = "get my tongue all up in there and you'd be like whoa",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1348963689,
					["from"] = "Djflipsixx",
					["msg"] = "no make you tap,not in a gay way.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1348963689,
					["from"] = "Prallend",
					["msg"] = "keep goin",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1348963697,
					["from"] = "Djflipsixx",
					["msg"] = "perv",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1348963700,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1348963704,
					["from"] = "Prallend",
					["msg"] = "i don't play clean",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1348963821,
					["from"] = "Djflipsixx",
					["msg"] = "i can tell",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1348963836,
					["from"] = "Djflipsixx",
					["msg"] = "i think you would be cool to party with,if you dont try to hit on me.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1348963860,
					["from"] = "Prallend",
					["msg"] = "i flirt pretty much with everyone",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1348963864,
					["from"] = "Prallend",
					["msg"] = "don't get yourself all flustered",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1348963871,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1348963877,
					["from"] = "Prallend",
					["msg"] = "but yea i like to hang out and have fun",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1348963885,
					["from"] = "Prallend",
					["msg"] = "makin ppl laugh is what i'm good at ",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1348963896,
					["from"] = "Djflipsixx",
					["msg"] = "same i bust jokes at random allt he time.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1348963906,
					["from"] = "Prallend",
					["msg"] = "lol yea",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1348963922,
					["from"] = "Prallend",
					["msg"] = "i'm more of a conversation joker",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1348963931,
					["from"] = "Prallend",
					["msg"] = "not good with like stand up shit",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1348963942,
					["from"] = "Djflipsixx",
					["msg"] = "ya i dont do no standup shit,",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1348963949,
					["from"] = "Djflipsixx",
					["msg"] = "and no center of attetion shit",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1348963951,
					["from"] = "Prallend",
					["msg"] = "ah i thought you'd be all cute up n stage",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1348963959,
					["from"] = "Prallend",
					["msg"] = "ah i go for center of attention",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1348963965,
					["from"] = "Prallend",
					["msg"] = "i like the boys watchin me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1348963968,
					["from"] = "Djflipsixx",
					["msg"] = "well most gay dudes do lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1348963980,
					["from"] = "Prallend",
					["msg"] = "straight guys same with girls :P",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1348963989,
					["from"] = "Djflipsixx",
					["msg"] = "gay guys have hot gf",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1348963995,
					["from"] = "Djflipsixx",
					["msg"] = "its crazy",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1348964010,
					["from"] = "Prallend",
					["msg"] = "ya last night this hot waittress was all ove rme",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1348964020,
					["from"] = "Prallend",
					["msg"] = "she was sittin down goin over drink choices with me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1348964022,
					["from"] = "Prallend",
					["msg"] = "arm around me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1348964028,
					["from"] = "Prallend",
					["msg"] = "my friends were laughin so hard",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1348964028,
					["from"] = "Djflipsixx",
					["msg"] = "thats hot",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1348964033,
					["from"] = "Djflipsixx",
					["msg"] = "you should of touch the tit",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1348964038,
					["from"] = "Djflipsixx",
					["msg"] = "i would of",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1348964050,
					["from"] = "Prallend",
					["msg"] = "sure if you gonna touch my dick when i put my arm around you",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1348964051,
					["from"] = "Djflipsixx",
					["msg"] = "-]",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1348964058,
					["from"] = "Djflipsixx",
					["msg"] = "damn it dude ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1348964062,
					["from"] = "Prallend",
					["msg"] = "i'm not that easy boy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1348964068,
					["from"] = "Djflipsixx",
					["msg"] = "i think you are",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1348964072,
					["from"] = "Prallend",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1348964075,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1348964089,
					["from"] = "Prallend",
					["msg"] = "depends if the guy is hot and kewl",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1348964104,
					["from"] = "Prallend",
					["msg"] = "i can't get hard if the guy is a flamer or crazy as fuck",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1348964111,
					["from"] = "Prallend",
					["msg"] = "rather just jack off",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1348964114,
					["from"] = "Djflipsixx",
					["msg"] = "lol flamers are funny",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1348964121,
					["from"] = "Djflipsixx",
					["msg"] = "they make me laugh my ass off dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1348964124,
					["from"] = "Prallend",
					["msg"] = "can't stand it",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1348964132,
					["from"] = "Prallend",
					["msg"] = "i mean as a friend that's kewl, but i'd never date one",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1348964135,
					["from"] = "Prallend",
					["msg"] = "or fuck one",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1348964138,
					["from"] = "Djflipsixx",
					["msg"] = "maybe cause im not gay,so i dont get the diffrence",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1348964166,
					["from"] = "Djflipsixx",
					["msg"] = "cause my good friend is a flamer type,as you call it,but he is mad funny.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1348964225,
					["from"] = "Prallend",
					["msg"] = "yea that's kewl, i just don't get hard for that shit",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1348964230,
					["from"] = "Prallend",
					["msg"] = "not attractive",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1348964294,
					["from"] = "Djflipsixx",
					["msg"] = "i dont mind anyone,just not black people.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1348964326,
					["from"] = "Prallend",
					["msg"] = "fuck that",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1348964330,
					["from"] = "Prallend",
					["msg"] = "never fuck that either",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1348964342,
					["from"] = "Djflipsixx",
					["msg"] = "no i just dont like black peopel period",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1348964491,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1348964494,
					["from"] = "Prallend",
					["msg"] = "that's kewl",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1348964498,
					["from"] = "Djflipsixx",
					["msg"] = "-]",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1348964499,
					["from"] = "Prallend",
					["msg"] = "i like white boys the best",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1348964581,
					["from"] = "Djflipsixx",
					["msg"] = "hurry and lv dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1348964706,
					["from"] = "Prallend",
					["msg"] = "get on skype and get me motivated ",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1348964729,
					["from"] = "Djflipsixx",
					["msg"] = "no way got music on sucka",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1348964737,
					["from"] = "Djflipsixx",
					["msg"] = "thats my drug of choice music",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1348964765,
					["from"] = "Prallend",
					["msg"] = "lol yea same",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1348964772,
					["from"] = "Prallend",
					["msg"] = "i can still watch",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1348964778,
					["from"] = "Djflipsixx",
					["msg"] = "i love music beyoind words.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1348964792,
					["from"] = "Djflipsixx",
					["msg"] = "spell check wtb",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1348964798,
					["from"] = "Prallend",
					["msg"] = "lol gg",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1348965156,
					["from"] = "Prallend",
					["msg"] = "dl misspelled",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1348965162,
					["from"] = "Prallend",
					["msg"] = "good spellcheck addon",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1348965184,
					["from"] = "Djflipsixx",
					["msg"] = "ya i need to sound smart,so i need one of the.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1348965185,
					["from"] = "Djflipsixx",
					["msg"] = "them",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1348965240,
					["from"] = "Djflipsixx",
					["msg"] = "really though,never get a roomate that has a gf with kids,i just want to toss them out the fucken window.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1348965251,
					["from"] = "Prallend",
					["msg"] = "i'm like that with our neighbors dogs",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1348965260,
					["from"] = "Djflipsixx",
					["msg"] = "o i love dogs",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1348965266,
					["from"] = "Prallend",
					["msg"] = "little peices of shit i want to drown",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1348965278,
					["from"] = "Prallend",
					["msg"] = "i like dogs that aren't poodles and bark 24/7",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1348965287,
					["from"] = "Prallend",
					["msg"] = "my dogs are fucking trained",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1348965292,
					["from"] = "Djflipsixx",
					["msg"] = "lol ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1348965294,
					["from"] = "Djflipsixx",
					["msg"] = "i have a cat",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1348965299,
					["from"] = "Prallend",
					["msg"] = "and i'm the faggot",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1348965299,
					["from"] = "Djflipsixx",
					["msg"] = "and she rocks",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1349067476,
					["from"] = "Prallend",
					["msg"] = "not gettin up by bein afk all day",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1349138141,
					["from"] = "Prallend",
					["msg"] = "gnotime says he has noodz of you",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1349138147,
					["from"] = "Prallend",
					["msg"] = "he's tryin to sell them to me for gold",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1349138154,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1349138164,
					["from"] = "Prallend",
					["msg"] = "and you call me a slut",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1349138180,
					["from"] = "Djflipsixx",
					["msg"] = "i9 would never send nudes of me you fool lol.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1349138187,
					["from"] = "Djflipsixx",
					["msg"] = "thats 2 funny",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1349138194,
					["from"] = "Prallend",
					["msg"] = "you didn't send them to me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1349138197,
					["from"] = "Prallend",
					["msg"] = "you sent them to gnotime",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1349138202,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1349138205,
					["from"] = "Prallend",
					["msg"] = "fuckin slut",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1349138215,
					["from"] = "Djflipsixx",
					["msg"] = "dude you lv slow",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1349138225,
					["from"] = "Prallend",
					["msg"] = "i'm not in a rush",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1349138235,
					["from"] = "Prallend",
					["msg"] = "i haven't done all the new areas since cata",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1349138253,
					["from"] = "Djflipsixx",
					["msg"] = "ya lving is boring as fuck,need to hit atleast 85 allready",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1349138258,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1349138260,
					["from"] = "Prallend",
					["msg"] = "i like it",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1349138299,
					["from"] = "Djflipsixx",
					["msg"] = "i hate it ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1349138305,
					["from"] = "Djflipsixx",
					["msg"] = "i done these places 2 much ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1349138318,
					["from"] = "Prallend",
					["msg"] = "that's how i feel with instances",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1349138322,
					["from"] = "Djflipsixx",
					["msg"] = "but the panda tank is way to fun.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1349138326,
					["from"] = "Prallend",
					["msg"] = "plus i just jerk off every hour",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1349138331,
					["from"] = "Prallend",
					["msg"] = "so doesn't get boring",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [172]
				{
					["type"] = 1,
					["time"] = 1349138337,
					["from"] = "Djflipsixx",
					["msg"] = "wow dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [173]
				{
					["type"] = 1,
					["time"] = 1349138405,
					["from"] = "Prallend",
					["msg"] = "what is that a lot",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [174]
				{
					["type"] = 1,
					["time"] = 1349225325,
					["from"] = "Prallend",
					["msg"] = "what's goin on cute boy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [175]
				{
					["type"] = 1,
					["time"] = 1349405065,
					["from"] = "Prallend",
					["msg"] = "hurry up son",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [176]
				{
					["type"] = 1,
					["time"] = 1349405112,
					["from"] = "Djflipsixx",
					["msg"] = "lving out here takes forever.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [177]
				{
					["type"] = 1,
					["time"] = 1349405153,
					["from"] = "Prallend",
					["msg"] = "lol poor guy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [178]
				{
					["type"] = 1,
					["time"] = 1349548404,
					["from"] = "Prallend",
					["msg"] = "so close",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [179]
				{
					["type"] = 1,
					["time"] = 1349548419,
					["from"] = "Djflipsixx",
					["msg"] = "ya its boring ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [180]
				{
					["type"] = 1,
					["time"] = 1349548427,
					["from"] = "Prallend",
					["msg"] = "poor guy lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [181]
				{
					["type"] = 1,
					["time"] = 1349548443,
					["from"] = "Prallend",
					["msg"] = "wouldn't be if you had ur own webcam",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [182]
				{
					["type"] = 1,
					["time"] = 1349548451,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [183]
				{
					["type"] = 1,
					["time"] = 1349548465,
					["from"] = "Prallend",
					["msg"] = "just get a bitch with some kids, you won't be bored",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [184]
				{
					["type"] = 1,
					["time"] = 1349548486,
					["from"] = "Djflipsixx",
					["msg"] = "i will never date a girl with kids",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [185]
				{
					["type"] = 1,
					["time"] = 1349548507,
					["from"] = "Prallend",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [186]
				{
					["type"] = 1,
					["time"] = 1349548523,
					["from"] = "Prallend",
					["msg"] = "do you date anyway :P",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [187]
				{
					["type"] = 1,
					["time"] = 1349548532,
					["from"] = "Prallend",
					["msg"] = "thought you were just a pump n dump boy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [188]
				{
					["type"] = 1,
					["time"] = 1349548552,
					["from"] = "Djflipsixx",
					["msg"] = "i do if she is a cool person.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [189]
				{
					["type"] = 1,
					["time"] = 1349548564,
					["from"] = "Prallend",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [190]
				{
					["type"] = 1,
					["time"] = 1349548572,
					["from"] = "Prallend",
					["msg"] = "sounds like you don't date then",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [191]
				{
					["type"] = 1,
					["time"] = 1349548586,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [192]
				{
					["type"] = 1,
					["time"] = 1349548600,
					["from"] = "Prallend",
					["msg"] = "some black chick was all over me yesterday",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [193]
				{
					["type"] = 1,
					["time"] = 1349548606,
					["from"] = "Prallend",
					["msg"] = "tellin me how she loves guys with lip rings",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [194]
				{
					["type"] = 1,
					["time"] = 1349548609,
					["from"] = "Prallend",
					["msg"] = "i was like ugggh",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [195]
				{
					["type"] = 1,
					["time"] = 1349548610,
					["from"] = "Djflipsixx",
					["msg"] = "lol thats scary",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [196]
				{
					["type"] = 1,
					["time"] = 1349548617,
					["from"] = "Prallend",
					["msg"] = "she was good looking",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [197]
				{
					["type"] = 1,
					["time"] = 1349548623,
					["from"] = "Prallend",
					["msg"] = "but black and a woman",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [198]
				{
					["type"] = 1,
					["time"] = 1349548629,
					["from"] = "Djflipsixx",
					["msg"] = "o i have seen alot of hot ones",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [199]
				{
					["type"] = 1,
					["time"] = 1349548644,
					["from"] = "Prallend",
					["msg"] = "i was just like can't you be a hot white boy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [200]
				{
					["type"] = 1,
					["time"] = 1349548668,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [201]
				{
					["type"] = 1,
					["time"] = 1349548694,
					["from"] = "Djflipsixx",
					["msg"] = "what did she say ?",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [202]
				{
					["type"] = 1,
					["time"] = 1349548707,
					["from"] = "Prallend",
					["msg"] = "oh i didn't say that lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [203]
				{
					["type"] = 1,
					["time"] = 1349548710,
					["from"] = "Prallend",
					["msg"] = "i thought it really loud",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [204]
				{
					["type"] = 1,
					["time"] = 1349548712,
					["from"] = "Djflipsixx",
					["msg"] = "o",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [205]
				{
					["type"] = 1,
					["time"] = 1349548720,
					["from"] = "Prallend",
					["msg"] = "i don't need to get slapped",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [206]
				{
					["type"] = 1,
					["time"] = 1349548732,
					["from"] = "Prallend",
					["msg"] = "and black ppl hate gays",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [207]
				{
					["type"] = 1,
					["time"] = 1349548740,
					["from"] = "Djflipsixx",
					["msg"] = "lol ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [208]
				["info"] = {
				},
			},
			["Gloomhaze"] = {
				{
					["type"] = 1,
					["time"] = 1348976082,
					["from"] = "Prallend",
					["msg"] = "oh there you are",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348976088,
					["from"] = "Gloomhaze",
					["msg"] = "Oh sorry",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348976089,
					["from"] = "Gloomhaze",
					["msg"] = "hahaha",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348976095,
					["from"] = "Gloomhaze",
					["msg"] = "forgot bout FB :P",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348976104,
					["from"] = "Prallend",
					["msg"] = "np it's just me",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348976114,
					["from"] = "Gloomhaze",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348976127,
					["from"] = "Prallend",
					["msg"] = "i know how i compare to when girls talk to you ;)",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348976141,
					["from"] = "Gloomhaze",
					["msg"] = "IMPOLITENESS ABOUNDS",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348976155,
					["from"] = "Prallend",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348976267,
					["from"] = "Gloomhaze",
					["msg"] = "Who the fuck is GOldenhero",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348976270,
					["from"] = "Gloomhaze",
					["msg"] = "I hear his name a lot.",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348976278,
					["from"] = "Prallend",
					["msg"] = "he's a retard",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348976282,
					["from"] = "Prallend",
					["msg"] = "who stalks me",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348976301,
					["from"] = "Gloomhaze",
					["msg"] = "dandy",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348976416,
					["from"] = "Prallend",
					["msg"] = "just tell him jaymes > him and he'll flip",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348976449,
					["from"] = "Gloomhaze",
					["msg"] = "LOL",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348976466,
					["from"] = "Gloomhaze",
					["msg"] = "im not even talking in it anymore",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348976468,
					["from"] = "Gloomhaze",
					["msg"] = "it makes my fucking brain hurt",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348976472,
					["from"] = "Gloomhaze",
					["msg"] = "and im stupid",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348976475,
					["from"] = "Gloomhaze",
					["msg"] = "which is saying a lot",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1348976496,
					["from"] = "Prallend",
					["msg"] = "if it makes ur brain hurt you're not stupid ;)",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [21]
				["info"] = {
				},
			},
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1349395665,
					["from"] = "Gip",
					["msg"] = "i now have  |Hitem:89684:0:0:0:0:0:0:404155648:90:0:0|h[Umbrella of Chi-Ji]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349395717,
					["from"] = "Prallend",
					["msg"] = "did you buy it?",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349395747,
					["from"] = "Gip",
					["msg"] = "it's from archaeology, you can't buy it. random project discovery",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349395757,
					["from"] = "Prallend",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349395759,
					["from"] = "Prallend",
					["msg"] = "lame",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [5]
				["info"] = {
				},
			},
			["Greiser"] = {
				{
					["type"] = 1,
					["time"] = 1349234068,
					["from"] = "Greiser",
					["msg"] = "racoon city?",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349234076,
					["from"] = "Prallend",
					["msg"] = "the one that came out today",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349234084,
					["from"] = "Greiser",
					["msg"] = "is it a game?",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349234086,
					["from"] = "Greiser",
					["msg"] = "i r confused",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349234089,
					["from"] = "Prallend",
					["msg"] = "yes sir",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349234093,
					["from"] = "Prallend",
					["msg"] = "poor guy",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349234095,
					["from"] = "Greiser",
					["msg"] = "is it good??",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349234098,
					["from"] = "Greiser",
					["msg"] = "i bought rc",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349234100,
					["from"] = "Greiser",
					["msg"] = "it SUCKED",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349234100,
					["from"] = "Prallend",
					["msg"] = "IDK THAT'S WHAT I WANT TO KNOW LOL",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349234113,
					["from"] = "Greiser",
					["msg"] = "NOU",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349234115,
					["from"] = "Prallend",
					["msg"] = "last one i played was RE5",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349234122,
					["from"] = "Prallend",
					["msg"] = "i think",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349234124,
					["from"] = "Prallend",
					["msg"] = "with cultists",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349234150,
					["from"] = "Prallend",
					["msg"] = "that and bioshock 3 need to come out",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [15]
				["info"] = {
				},
			},
			["Zeelycan"] = {
				{
					["type"] = 1,
					["time"] = 1349068212,
					["from"] = "Prallend",
					["msg"] = "it's jaymes you fat fuck",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349068235,
					["from"] = "Zeelycan",
					["msg"] = "haha oh okay well hi you skinny prick ^_^",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349068240,
					["from"] = "Prallend",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349068246,
					["from"] = "Prallend",
					["msg"] = "who let you in here",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349068258,
					["from"] = "Zeelycan",
					["msg"] = "been in here for a while",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349068264,
					["from"] = "Zeelycan",
					["msg"] = "where you been?",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349068264,
					["from"] = "Prallend",
					["msg"] = "oh have you",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349068272,
					["from"] = "Prallend",
					["msg"] = "busy watching porn",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349068279,
					["from"] = "Prallend",
					["msg"] = "seventh was telling me you were starting some guild",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349068315,
					["from"] = "Zeelycan",
					["msg"] = "makes sense and lol Im just recruiting for a friend's guild and 7th said he'd bring his monk in..",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349068325,
					["from"] = "Prallend",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349068329,
					["from"] = "Prallend",
					["msg"] = "he's a lazy slut liar",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349068332,
					["from"] = "Prallend",
					["msg"] = "don't trust him",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349068342,
					["from"] = "Zeelycan",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349068454,
					["from"] = "Zeelycan",
					["msg"] = "yea once I finish with my DK for a bit, I'll start helping that other guild again.. If you have an alt or friends with alts, you're welcome to come.. ^_^",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349068461,
					["from"] = "Prallend",
					["msg"] = "prolly would fit",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349068465,
					["from"] = "Prallend",
					["msg"] = "mt",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349068482,
					["from"] = "Prallend",
					["msg"] = "yea idk this is about all i have",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349068490,
					["from"] = "Prallend",
					["msg"] = "everything else is 85 ha",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349068500,
					["from"] = "Zeelycan",
					["msg"] = "haha kk np.. just a thought",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349068515,
					["from"] = "Prallend",
					["msg"] = "mebe my rogue if you can get me noodz of 7th",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349068635,
					["from"] = "Zeelycan",
					["msg"] = "hrmm.. im sure he would.. lol",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349068717,
					["from"] = "Prallend",
					["msg"] = "good boy",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349059208,
					["from"] = "Prallend",
					["msg"] = "say you're sellin it in general, take the money then the mount",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349132526,
					["from"] = "Prallend",
					["msg"] = "holy shit are we the \"train me i'm new\" guild",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349132624,
					["from"] = "Zeelycan",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Zeelycan",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349133433,
					["from"] = "Prallend",
					["msg"] = "i'm pretty close too",
					["inbound"] = false,
					["convo"] = "Zeelycan",
				}, -- [27]
				["info"] = {
				},
			},
			["Mav"] = {
				{
					["type"] = 1,
					["time"] = 1348977621,
					["from"] = "Mav",
					["msg"] = "We got to get together some weekend for some wow",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348977639,
					["from"] = "Prallend",
					["msg"] = "you're the one who has the leaving the house issues :P",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348977656,
					["from"] = "Mav",
					["msg"] = "lol Well evertime I ask Gip you guys have something ging on",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348977695,
					["from"] = "Prallend",
					["msg"] = "i don't think so, we've only done stuff this weekend and next weekend, and you could come over now if you wanted lol",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348977700,
					["from"] = "Prallend",
					["msg"] = "do drinks and shit",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348963453,
					["from"] = "Mav",
					["msg"] = "thought  about it...  until you said you wanted to sleep",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348963465,
					["from"] = "Prallend",
					["msg"] = "i just woke up lol",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348963470,
					["from"] = "Mav",
					["msg"] = "oh lol",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [8]
				["info"] = {
				},
			},
		},
		["Dunskull"] = {
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1350144469,
					["from"] = "Gip",
					["msg"] = " |Hitem:89685:0:0:0:0:0:0:863411456:90:0:0|h[Spear of Xuen]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				["info"] = {
				},
			},
		},
		["Jaymes"] = {
			["Inertia"] = {
				{
					["type"] = 1,
					["time"] = 1349140855,
					["from"] = "Inertia",
					["msg"] = "sup trouble",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349140927,
					["from"] = "Jaymes",
					["msg"] = "oh my",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349140931,
					["from"] = "Jaymes",
					["msg"] = "hello there sexy man",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349140940,
					["from"] = "Jaymes",
					["msg"] = "how are you doin",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349141032,
					["from"] = "Inertia",
					["msg"] = "good :)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349141033,
					["from"] = "Inertia",
					["msg"] = "and you",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349141035,
					["from"] = "Inertia",
					["msg"] = "new wow?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349141044,
					["from"] = "Inertia",
					["msg"] = "wasnt there going to be wow 2 at some point?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349141059,
					["from"] = "Jaymes",
					["msg"] = "lol it's just an expansion",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349141062,
					["from"] = "Jaymes",
					["msg"] = "and i don't think so",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349141063,
					["from"] = "Jaymes",
					["msg"] = "but idk",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349141064,
					["from"] = "Inertia",
					["msg"] = "ye thats what i mean",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349141068,
					["from"] = "Jaymes",
					["msg"] = "i'm better now that you're here",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349141071,
					["from"] = "Inertia",
					["msg"] = "how is the new xpan?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349141075,
					["from"] = "Inertia",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349141075,
					["from"] = "Jaymes",
					["msg"] = "pretty kewl so far",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349141078,
					["from"] = "Inertia",
					["msg"] = "nice",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349141084,
					["from"] = "Jaymes",
					["msg"] = "i haven't been on too much, been workin and magic the gathering was this weekend",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349141090,
					["from"] = "Jaymes",
					["msg"] = "what's your cute self been up to",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349141094,
					["from"] = "Inertia",
					["msg"] = "i always enjoyed leveling in xpans with guildies fun process, goes downhill after that ",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349141104,
					["from"] = "Inertia",
					["msg"] = "nada",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349141109,
					["from"] = "Inertia",
					["msg"] = "climbing well",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349141119,
					["from"] = "Inertia",
					["msg"] = "competing on road biking",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349141125,
					["from"] = "Inertia",
					["msg"] = "season is cover to an end in the us",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349141190,
					["from"] = "Jaymes",
					["msg"] = "yea well i got plenty to lvl",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349141194,
					["from"] = "Jaymes",
					["msg"] = "so you can join in anytime ;)",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349141200,
					["from"] = "Inertia",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349141201,
					["from"] = "Jaymes",
					["msg"] = "sounds fun",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349141205,
					["from"] = "Jaymes",
					["msg"] = "you all in shape and hot then eh",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349141213,
					["from"] = "Jaymes",
					["msg"] = "got a cute little girly for yourself?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349141221,
					["from"] = "Inertia",
					["msg"] = "meh",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349141234,
					["from"] = "Jaymes",
					["msg"] = "or a boy",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349141235,
					["from"] = "Inertia",
					["msg"] = "im tiny",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349141241,
					["from"] = "Inertia",
					["msg"] = "the sports i do require me to bve tiny lol",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349141241,
					["from"] = "Jaymes",
					["msg"] = "you'd be good in my bed",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349141244,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349141248,
					["from"] = "Jaymes",
					["msg"] = "nice n tight",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349141252,
					["from"] = "Inertia",
					["msg"] = "cycling gotta stay really tiny and climbing same thing",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349141263,
					["from"] = "Jaymes",
					["msg"] = "then you an do skydiving",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349141264,
					["from"] = "Inertia",
					["msg"] = "girls refr to it as \"ripped\"",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349141271,
					["from"] = "Jaymes",
					["msg"] = "oh do they",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349141274,
					["from"] = "Jaymes",
					["msg"] = "they're dumb",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349141289,
					["from"] = "Inertia",
					["msg"] = "its a compliment lol",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349141298,
					["from"] = "Inertia",
					["msg"] = "but most definetly dumb haha",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349141306,
					["from"] = "Jaymes",
					["msg"] = "lol yea that's true",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349141311,
					["from"] = "Jaymes",
					["msg"] = "one tried to take me out the other day",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349141314,
					["from"] = "Jaymes",
					["msg"] = "i was like are you blind",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349141322,
					["from"] = "Inertia",
					["msg"] = "have u ever seen a good player that a female? lol never!",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349141335,
					["from"] = "Jaymes",
					["msg"] = "katz was",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349141340,
					["from"] = "Jaymes",
					["msg"] = "but i think that's it",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349141345,
					["from"] = "Inertia",
					["msg"] = "RARE!",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349141348,
					["from"] = "Jaymes",
					["msg"] = "and idk if she was even a girl",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349141349,
					["from"] = "Jaymes",
					["msg"] = "tbh",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349141356,
					["from"] = "Inertia",
					["msg"] = "^^^^",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349141386,
					["from"] = "Inertia",
					["msg"] = "so a chikc tried to make out with u yesteerday? :)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349141398,
					["from"] = "Jaymes",
					["msg"] = "lol yea she was tryin to get me to ask her out or somethin",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349141402,
					["from"] = "Jaymes",
					["msg"] = "i was like damn bitch ur dumb",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349141418,
					["from"] = "Inertia",
					["msg"] = "lololol",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349141457,
					["from"] = "Inertia",
					["msg"] = "yo when did u realize that u were same sex only?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349141462,
					["from"] = "Inertia",
					["msg"] = "like how old were u?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349141470,
					["from"] = "Jaymes",
					["msg"] = "like",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349141484,
					["from"] = "Jaymes",
					["msg"] = "preschool i started thinking about it, but \"realize\" not til later",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1349141491,
					["from"] = "Jaymes",
					["msg"] = "i just thought it was normal to get hard for boys lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1349141500,
					["from"] = "Inertia",
					["msg"] = "hahahahaha",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1349141501,
					["from"] = "Inertia",
					["msg"] = "!!!",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1349141512,
					["from"] = "Inertia",
					["msg"] = "thats awesome",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1349141521,
					["from"] = "Jaymes",
					["msg"] = "ya there were some hot twins in gradeschool",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1349141525,
					["from"] = "Jaymes",
					["msg"] = "always wanted to do naked sleepovers",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1349141530,
					["from"] = "Inertia",
					["msg"] = "!!!",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1349141532,
					["from"] = "Inertia",
					["msg"] = "nice",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1349141547,
					["from"] = "Inertia",
					["msg"] = "but mentally that kicked in like in 5th grade?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1349141560,
					["from"] = "Jaymes",
					["msg"] = "yea somethin like that, that it was different",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1349141563,
					["from"] = "Inertia",
					["msg"] = "i actually realized, like did u need to experiment with both sexes?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1349141566,
					["from"] = "Jaymes",
					["msg"] = "or not accepted lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1349141571,
					["from"] = "Jaymes",
					["msg"] = "nah",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1349141580,
					["from"] = "Jaymes",
					["msg"] = "my dick told me what i wanted ;)",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1349141584,
					["from"] = "Jaymes",
					["msg"] = "nice boy ass",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1349141590,
					["from"] = "Inertia",
					["msg"] = "ye ye society and all the standarts with its terms and shit., the environment is not gay friendly in this country ",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1349141602,
					["from"] = "Jaymes",
					["msg"] = "at least it's not russia",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1349141605,
					["from"] = "Jaymes",
					["msg"] = "or the middle east ha",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1349141613,
					["from"] = "Inertia",
					["msg"] = "oh fuck that shit is crazy",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1349141619,
					["from"] = "Jaymes",
					["msg"] = "ya =/",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1349141625,
					["from"] = "Jaymes",
					["msg"] = "where are we supposed to run off to?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1349141629,
					["from"] = "Inertia",
					["msg"] = "it seems all the same at times political shit",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1349141647,
					["from"] = "Jaymes",
					["msg"] = "lol true",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1349141650,
					["from"] = "Inertia",
					["msg"] = "europe i would think is more open minded in certain aspects",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1349141653,
					["from"] = "Inertia",
					["msg"] = "but it takes time",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1349141667,
					["from"] = "Inertia",
					["msg"] = "i mean look where we are coming from",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1349141686,
					["from"] = "Inertia",
					["msg"] = "we still have heavy segragation and racism in diffeerent coommunities",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1349141690,
					["from"] = "Jaymes",
					["msg"] = "yea need to go back to germany",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1349141696,
					["from"] = "Jaymes",
					["msg"] = "europe is def better",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1349141703,
					["from"] = "Jaymes",
					["msg"] = "meh we're supposed to be america",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1349141707,
					["from"] = "Jaymes",
					["msg"] = "all crazy and radical",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1349141713,
					["from"] = "Jaymes",
					["msg"] = "nope, just the opposite",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1349141744,
					["from"] = "Inertia",
					["msg"] = "there is something weird tho, i have some sort of a connection with russians sometimes",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1349141754,
					["from"] = "Jaymes",
					["msg"] = "what do you mean",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1349141764,
					["from"] = "Inertia",
					["msg"] = "like things click. it must have to do something with similar cultur growing up",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1349141773,
					["from"] = "Inertia",
					["msg"] = "like implicit things",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1349141779,
					["from"] = "Jaymes",
					["msg"] = "like russian guys?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1349141785,
					["from"] = "Inertia",
					["msg"] = "thoughts, understanding each other half way, similar views",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1349141795,
					["from"] = "Jaymes",
					["msg"] = "ah yea prolly culturally ",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1349141798,
					["from"] = "Jaymes",
					["msg"] = "brought up the same or somethin",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1349141806,
					["from"] = "Jaymes",
					["msg"] = "i get on better with europeans",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1349141809,
					["from"] = "Jaymes",
					["msg"] = "they're crazy like me",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1349141811,
					["from"] = "Inertia",
					["msg"] = "people in general, well i guess european part of russia in general that i have met over the yeaers",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1349141821,
					["from"] = "Inertia",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1349141824,
					["from"] = "Inertia",
					["msg"] = "crazy like u hehe",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1349141828,
					["from"] = "Jaymes",
					["msg"] = "lol ;)",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1349141841,
					["from"] = "Jaymes",
					["msg"] = "yea idk given up on american boys",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1349141848,
					["from"] = "Inertia",
					["msg"] = " whats up with u mang? I baught a house last i recall",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1349141860,
					["from"] = "Inertia",
					["msg"] = "i mean u baught*",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1349141862,
					["from"] = "Jaymes",
					["msg"] = "yea been a couple months, just breaking it in ;)",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1349141867,
					["from"] = "Inertia",
					["msg"] = "hehehe",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1349141869,
					["from"] = "Jaymes",
					["msg"] = "and paying off bills lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1349141873,
					["from"] = "Inertia",
					["msg"] = "i like how u puit that hehe",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1349141874,
					["from"] = "Jaymes",
					["msg"] = "when you gonna bike up and stay?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1349141881,
					["from"] = "Inertia",
					["msg"] = "fucking bills man that shit is so dumb",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1349141886,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1349141888,
					["from"] = "Inertia",
					["msg"] = "it be cool",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1349141894,
					["from"] = "Jaymes",
					["msg"] = "if i didn't have loans i'd be rich",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1349141905,
					["from"] = "Jaymes",
					["msg"] = "ya the finished basement is like a hotel",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1349141912,
					["from"] = "Jaymes",
					["msg"] = "can stay for however long",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1349141923,
					["from"] = "Jaymes",
					["msg"] = "maybe break you in while ur here ;)",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1349141930,
					["from"] = "Inertia",
					["msg"] = "and at the same time im pretty focused with the time limitations u know. like trying to manage it (wish we didnt need to sleep - could do so much more)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1349141939,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1349141944,
					["from"] = "Jaymes",
					["msg"] = "sleep is so awesome tho",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1349141950,
					["from"] = "Jaymes",
					["msg"] = "one of my favs",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1349141952,
					["from"] = "Inertia",
					["msg"] = "focused on getting better at climbing - making climbing trips etc and cycling - competing",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1349141964,
					["from"] = "Jaymes",
					["msg"] = "that body needs a break sometimes",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1349141969,
					["from"] = "Jaymes",
					["msg"] = "nice relaxin vacation",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1349141975,
					["from"] = "Inertia",
					["msg"] = "ye but liek everything it has its pro and cons. the con is its half of our lifes lol",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1349141993,
					["from"] = "Jaymes",
					["msg"] = "well if you don't sleep you wouldn't live that long lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1349142014,
					["from"] = "Inertia",
					["msg"] = "ye but u know if there was liek an elexir that would allow u to sleep once a week",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1349142020,
					["from"] = "Inertia",
					["msg"] = "u would have double the time",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1349142034,
					["from"] = "Inertia",
					["msg"] = "like i could personally game more haha",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1349142036,
					["from"] = "Jaymes",
					["msg"] = "yea i guess i could jerk off more",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1349142040,
					["from"] = "Inertia",
					["msg"] = "or make more money",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1349142045,
					["from"] = "Jaymes",
					["msg"] = "yea lol that",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1349142051,
					["from"] = "Inertia",
					["msg"] = "yo wacking off is so weird",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1349142056,
					["from"] = "Inertia",
					["msg"] = "or wacking off/ having sex",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1349142062,
					["from"] = "Jaymes",
					["msg"] = "lol what",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1349142064,
					["from"] = "Inertia",
					["msg"] = "i get so chill asfter lol",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1349142072,
					["from"] = "Jaymes",
					["msg"] = "what you mean chill",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1349142074,
					["from"] = "Jaymes",
					["msg"] = "tired?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1349142078,
					["from"] = "Inertia",
					["msg"] = "not rly tired",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1349142088,
					["from"] = "Jaymes",
					["msg"] = "you feel relaxed",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1349142090,
					["from"] = "Inertia",
					["msg"] = "but reflexes come down, became more relaxed",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1349142093,
					["from"] = "Inertia",
					["msg"] = "nto competitive ",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1349142093,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1349142097,
					["from"] = "Inertia",
					["msg"] = "down to earth",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1349142097,
					["from"] = "Jaymes",
					["msg"] = "that's supposed to happen lol",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1349142105,
					["from"] = "Jaymes",
					["msg"] = "being all crazy active 24/7 isn't good",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1349142108,
					["from"] = "Jaymes",
					["msg"] = "gotta chill boy",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1349142125,
					["from"] = "Inertia",
					["msg"] = "yep yep ",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1349142132,
					["from"] = "Inertia",
					["msg"] = "gonna play some sc2 :)",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1349142140,
					["from"] = "Inertia",
					["msg"] = "<< so bad!",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1349142141,
					["from"] = "Inertia",
					["msg"] = "arg",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1349142150,
					["from"] = "Jaymes",
					["msg"] = "alright sexy, well lemme know if you wanna come up and stay for a bit",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1349142158,
					["from"] = "Jaymes",
					["msg"] = "can't be that bad",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1349142160,
					["from"] = "Jaymes",
					["msg"] = "go get better",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1350098659,
					["from"] = "Inertia",
					["msg"] = "xpan out?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1350098707,
					["from"] = "Jaymes",
					["msg"] = "what's that cute boy?",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1350098728,
					["from"] = "Inertia",
					["msg"] = "panda xpan out?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1350098753,
					["from"] = "Jaymes",
					["msg"] = "oh yea boy",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1350098755,
					["from"] = "Jaymes",
					["msg"] = "should try it out",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1350098765,
					["from"] = "Inertia",
					["msg"] = "naice",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1350098768,
					["from"] = "Inertia",
					["msg"] = "u like it?",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1350098772,
					["from"] = "Jaymes",
					["msg"] = "yea it's fun",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1350098775,
					["from"] = "Jaymes",
					["msg"] = "like it more if you were here",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1350098781,
					["from"] = "Inertia",
					["msg"] = ":P",
					["inbound"] = true,
					["convo"] = "Inertia",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1350098782,
					["from"] = "Jaymes",
					["msg"] = "have that cute ass doing good",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1355030517,
					["from"] = "Jaymes",
					["msg"] = "fucker",
					["inbound"] = false,
					["convo"] = "Inertia",
				}, -- [172]
				["info"] = {
				},
			},
			["Koordara-Azuremyst"] = {
				{
					["type"] = 1,
					["time"] = 1352523089,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Koordara-Azuremyst",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352523303,
					["from"] = "Jaymes",
					["msg"] = "should use healing wave instead of GHW and you won't go oom ;)",
					["inbound"] = false,
					["convo"] = "Koordara-Azuremyst",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352523310,
					["from"] = "Koordara-Azuremyst",
					["msg"] = "i didn't go oom lol",
					["inbound"] = true,
					["convo"] = "Koordara-Azuremyst",
				}, -- [3]
				["info"] = {
				},
			},
			["Alisonshammy"] = {
				{
					["type"] = 1,
					["time"] = 1355287289,
					["from"] = "Jaymes",
					["msg"] = "i'll go",
					["inbound"] = false,
					["convo"] = "Alisonshammy",
				}, -- [1]
				["info"] = {
				},
			},
			["Steroids"] = {
				{
					["type"] = 1,
					["time"] = 1349061561,
					["from"] = "Steroids",
					["msg"] = "u see once upon a time tonight?",
					["inbound"] = true,
					["convo"] = "Steroids",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349061581,
					["from"] = "Jaymes",
					["msg"] = "lol nah i was lvln, i think tivo should have gotten it tho",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349061583,
					["from"] = "Jaymes",
					["msg"] = "how was it",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349061622,
					["from"] = "Steroids",
					["msg"] = "twas pretty good",
					["inbound"] = true,
					["convo"] = "Steroids",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349061635,
					["from"] = "Jaymes",
					["msg"] = "kewl, i'll have to watch it tomorrow ",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349061640,
					["from"] = "Jaymes",
					["msg"] = "you don't watch dr. who do you",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349061766,
					["from"] = "Jaymes",
					["msg"] = "well i'm off to bed sir, on the off chance you've got free time this weekend, return to ravnica is being released",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [7]
				["info"] = {
				},
			},
			["Mav"] = {
				{
					["type"] = 1,
					["time"] = 1349823604,
					["from"] = "Mav",
					["msg"] = "so I bought a talbe just like yours",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349823667,
					["from"] = "Jaymes",
					["msg"] = "kewl, the dining room one?",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349823677,
					["from"] = "Mav",
					["msg"] = "no like your computer table",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349823693,
					["from"] = "Jaymes",
					["msg"] = "oh nice",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349823694,
					["from"] = "Jaymes",
					["msg"] = "where from",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349823702,
					["from"] = "Mav",
					["msg"] = "staples",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349823706,
					["from"] = "Jaymes",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349823707,
					["from"] = "Mav",
					["msg"] = "they were on sale ",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349823716,
					["from"] = "Jaymes",
					["msg"] = "pretty sure that's where i got mine as well",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349823720,
					["from"] = "Jaymes",
					["msg"] = "Z something style desk",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349823729,
					["from"] = "Mav",
					["msg"] = "yeah",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349823746,
					["from"] = "Mav",
					["msg"] = "I went there to get a chair.... walked out with a talbe too",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349823827,
					["from"] = "Jaymes",
					["msg"] = "should have gone to ikea for the chair",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349823836,
					["from"] = "Mav",
					["msg"] = "cheeper?",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349823842,
					["from"] = "Jaymes",
					["msg"] = "idk they have good shit",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349824122,
					["from"] = "Mav",
					["msg"] = "Ill have to look and see what they got. The chair i got was kinda of alot",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349824163,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349824168,
					["from"] = "Jaymes",
					["msg"] = "i wouldn't spend less than 100",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1352939222,
					["from"] = "Jaymes",
					["msg"] = "you raiding?",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1352939230,
					["from"] = "Mav",
					["msg"] = "tonight?",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1352939235,
					["from"] = "Mav",
					["msg"] = "im in lfr",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1352939269,
					["from"] = "Jaymes",
					["msg"] = "ah gotcha",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1352939269,
					["from"] = "Mav",
					["msg"] = "<Deadly Boss Mods> Mav is busy fighting against Raid Finder - Garalon (100%, 24/24 people alive)",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1352939337,
					["from"] = "Mav",
					["msg"] = "<DBM> Mav has wiped on Raid Finder - Garalon at 100%. They have 4 total wipes on this difficulty.",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1352939344,
					["from"] = "Jaymes",
					["msg"] = "4",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1352939346,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1353887577,
					["from"] = "Mav",
					["msg"] = "so yeah",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1353887582,
					["from"] = "Mav",
					["msg"] = "that camera",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1353887588,
					["from"] = "Jaymes",
					["msg"] = "doubles as a dildo",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1353887589,
					["from"] = "Mav",
					["msg"] = "pretty neat",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1353887594,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1353887606,
					["from"] = "Jaymes",
					["msg"] = "so you can refocus any pic and make another pic",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1353887613,
					["from"] = "Jaymes",
					["msg"] = "and i think it was only 300",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1353887624,
					["from"] = "Jaymes",
					["msg"] = "some guy from the NYT was saying it was expensive",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1353887631,
					["from"] = "Jaymes",
					["msg"] = "but 300 is fairly priced for a camera i think",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1353887678,
					["from"] = "Mav",
					["msg"] = "yeah you will spend that much on it for a good one anyway..",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1353887684,
					["from"] = "Jaymes",
					["msg"] = "ya",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1353887870,
					["from"] = "Mav",
					["msg"] = "I wish there was somewhere I could test it out",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1353887895,
					["from"] = "Jaymes",
					["msg"] = "there might be idk what stores carry it, i just order offline lol",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1353887911,
					["from"] = "Mav",
					["msg"] = "So you bought one?",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1353887930,
					["from"] = "Jaymes",
					["msg"] = "no i just mean in general",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1353887934,
					["from"] = "Mav",
					["msg"] = "ah",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1353888610,
					["from"] = "Mav",
					["msg"] = "If i take this other camera back its on you",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1353888613,
					["from"] = "Mav",
					["msg"] = "FYI",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1353888626,
					["from"] = "Jaymes",
					["msg"] = "you take everything back",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1353888639,
					["from"] = "Jaymes",
					["msg"] = "YOU CAN'T RETURN BABIES JUST FYI",
					["inbound"] = false,
					["convo"] = "Mav",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1353888646,
					["from"] = "Mav",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1353888649,
					["from"] = "Mav",
					["msg"] = "gg",
					["inbound"] = true,
					["convo"] = "Mav",
				}, -- [48]
				["info"] = {
				},
			},
			["Mithrandir-Andorhal"] = {
				{
					["type"] = 1,
					["time"] = 1349642361,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Mithrandir-Andorhal",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349643391,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Mithrandir-Andorhal",
				}, -- [2]
				["info"] = {
				},
			},
			["Kharthus"] = {
				{
					["type"] = 1,
					["time"] = 1349747282,
					["from"] = "Jaymes",
					["msg"] = "ur cute for an old man ;)",
					["inbound"] = false,
					["convo"] = "Kharthus",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349747285,
					["from"] = "Kharthus",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Kharthus",
				}, -- [2]
				["info"] = {
				},
			},
			["Greiser"] = {
				{
					["type"] = 1,
					["time"] = 1348789626,
					["from"] = "Jaymes",
					["msg"] = "do you know Nofoxgiven?",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348789635,
					["from"] = "Greiser",
					["msg"] = "nosir",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348789637,
					["from"] = "Jaymes",
					["msg"] = "mk",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348789642,
					["from"] = "Jaymes",
					["msg"] = "he's on KT too",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [4]
				["info"] = {
				},
			},
			["Furypvp"] = {
				{
					["type"] = 1,
					["time"] = 1350148976,
					["from"] = "Jaymes",
					["msg"] = "you got an 8 of serpents?",
					["inbound"] = false,
					["convo"] = "Furypvp",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350148984,
					["from"] = "Furypvp",
					["msg"] = "no i have a 4",
					["inbound"] = true,
					["convo"] = "Furypvp",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350148990,
					["from"] = "Jaymes",
					["msg"] = "ah k thx",
					["inbound"] = false,
					["convo"] = "Furypvp",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350149008,
					["from"] = "Furypvp",
					["msg"] = "would u trade me the 3 for sumthing else?",
					["inbound"] = true,
					["convo"] = "Furypvp",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350149017,
					["from"] = "Jaymes",
					["msg"] = "sorry just in need of an 8",
					["inbound"] = false,
					["convo"] = "Furypvp",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350149035,
					["from"] = "Furypvp",
					["msg"] = "u got a  |cff0070dd|Hitem:79731:0:0:0:0:0:0:0:90:0:0|h[Scroll of Wisdom]|h|r up?",
					["inbound"] = true,
					["convo"] = "Furypvp",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350149067,
					["from"] = "Jaymes",
					["msg"] = "nein frau",
					["inbound"] = false,
					["convo"] = "Furypvp",
				}, -- [7]
				["info"] = {
				},
			},
			["Cantankarus-Khadgar"] = {
				{
					["type"] = 1,
					["time"] = 1352525917,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Cantankarus-Khadgar",
				}, -- [1]
				["info"] = {
				},
			},
			["Lightborn"] = {
				{
					["type"] = 1,
					["time"] = 1349747430,
					["from"] = "Lightborn",
					["msg"] = "*sigh*",
					["inbound"] = true,
					["convo"] = "Lightborn",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349747433,
					["from"] = "Lightborn",
					["msg"] = "Just one more card...",
					["inbound"] = true,
					["convo"] = "Lightborn",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349747435,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Lightborn",
				}, -- [3]
				["info"] = {
				},
			},
			["Doubt"] = {
				{
					["type"] = 1,
					["time"] = 1355700475,
					["from"] = "Doubt",
					["msg"] = "hey man how are ya doin",
					["inbound"] = true,
					["convo"] = "Doubt",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355700574,
					["from"] = "Jaymes",
					["msg"] = "hello",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355700578,
					["from"] = "Jaymes",
					["msg"] = "fine yourself?",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355700628,
					["from"] = "Doubt",
					["msg"] = "good, just reupped wow again, how are locks at 90? enjoyable?",
					["inbound"] = true,
					["convo"] = "Doubt",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355700666,
					["from"] = "Jaymes",
					["msg"] = "yea i like em",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355700676,
					["from"] = "Jaymes",
					["msg"] = "consolidated a lot of stuff",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355700682,
					["from"] = "Jaymes",
					["msg"] = "unlike wars/hunters who have shitloads more buttons now",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355700754,
					["from"] = "Doubt",
					["msg"] = "i hear wars are really fun now though, and killin it",
					["inbound"] = true,
					["convo"] = "Doubt",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355700797,
					["from"] = "Jaymes",
					["msg"] = "i've only been prot so far",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1355700824,
					["from"] = "Doubt",
					["msg"] = "pvp wise how is it?",
					["inbound"] = true,
					["convo"] = "Doubt",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1355700844,
					["from"] = "Jaymes",
					["msg"] = "that i don't know i haven't touched pvp in mop yet",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1355700858,
					["from"] = "Jaymes",
					["msg"] = "pvp always ends up taking me after an expansion is announced and pve dies",
					["inbound"] = false,
					["convo"] = "Doubt",
				}, -- [12]
				["info"] = {
				},
			},
			["Odelo"] = {
				{
					["type"] = 1,
					["time"] = 1349745405,
					["from"] = "Odelo",
					["msg"] = "are you 90 yet?",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349745411,
					["from"] = "Jaymes",
					["msg"] = "yes",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349745427,
					["from"] = "Odelo",
					["msg"] = "oh I'm not lol",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349745440,
					["from"] = "Jaymes",
					["msg"] = "lol neither am i noob",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349745460,
					["from"] = "Odelo",
					["msg"] = "I mean on any of my toons",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349745466,
					["from"] = "Jaymes",
					["msg"] = "same",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349745478,
					["from"] = "Odelo",
					["msg"] = "oh are you close?",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349745485,
					["from"] = "Jaymes",
					["msg"] = "no",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349745511,
					["from"] = "Odelo",
					["msg"] = "How far are you into that zone?",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349746265,
					["from"] = "Odelo",
					["msg"] = "do you know people who still mess with glyphs",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349746273,
					["from"] = "Jaymes",
					["msg"] = "how do you mean",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349746286,
					["from"] = "Odelo",
					["msg"] = "sell them reg",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349746302,
					["from"] = "Odelo",
					["msg"] = "they post them daily, make them",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349746308,
					["from"] = "Jaymes",
					["msg"] = "i do",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349746359,
					["from"] = "Odelo",
					["msg"] = "think they would buy that gbank",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349746378,
					["from"] = "Jaymes",
					["msg"] = "not for anything much",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349746393,
					["from"] = "Jaymes",
					["msg"] = "unless it has all the new glyphs and shit",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349746453,
					["from"] = "Odelo",
					["msg"] = "there at least 6tabs of glyphs + 1 tab of ink, and if each glyph sold for 20g that would be around70k",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349746472,
					["from"] = "Jaymes",
					["msg"] = "ya i doubt anyone is gonna give that to you",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349746481,
					["from"] = "Jaymes",
					["msg"] = "just advertise it maybe",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349746485,
					["from"] = "Odelo",
					["msg"] = "What could I get ",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349746508,
					["from"] = "Jaymes",
					["msg"] = "idk ppl would have to look at it and see",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349746510,
					["from"] = "Odelo",
					["msg"] = "but there are glyphs in there that sell for 20g+",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349746543,
					["from"] = "Jaymes",
					["msg"] = "no one cares about 20g glyphs",
					["inbound"] = false,
					["convo"] = "Odelo",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349746561,
					["from"] = "Odelo",
					["msg"] = "true",
					["inbound"] = true,
					["convo"] = "Odelo",
				}, -- [25]
				["info"] = {
				},
			},
			["Danö"] = {
				{
					["type"] = 1,
					["time"] = 1355288608,
					["from"] = "Jaymes",
					["msg"] = "i'll go",
					["inbound"] = false,
					["convo"] = "Danö",
				}, -- [1]
				["info"] = {
				},
			},
			["Wàyfaerer"] = {
				{
					["type"] = 1,
					["time"] = 1350101007,
					["from"] = "Jaymes",
					["msg"] = "so you ever get that tat?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350101012,
					["from"] = "Wàyfaerer",
					["msg"] = "negative",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350101016,
					["from"] = "Jaymes",
					["msg"] = "good boy",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350101044,
					["from"] = "Wàyfaerer",
					["msg"] = "blow me. its more like the copy of it i brought had a black background that doesnt transfer well",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350101058,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350101064,
					["from"] = "Jaymes",
					["msg"] = "find an SVG of it",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350101066,
					["from"] = "Jaymes",
					["msg"] = "those scale well",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350101100,
					["from"] = "Jaymes",
					["msg"] = "but i'll let you know after i get done eating :P",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350101108,
					["from"] = "Wàyfaerer",
					["msg"] = "huh?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350101116,
					["from"] = "Jaymes",
					["msg"] = "i'll need a toothpick afterwards",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350178675,
					["from"] = "Wàyfaerer",
					["msg"] = "james",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350178723,
					["from"] = "Jaymes",
					["msg"] = "sup boy",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350178732,
					["from"] = "Wàyfaerer",
					["msg"] = "can u hope on fb for a sec?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350178735,
					["from"] = "Wàyfaerer",
					["msg"] = "hop*",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350178738,
					["from"] = "Jaymes",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350178740,
					["from"] = "Jaymes",
					["msg"] = "i think i'm on",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350178776,
					["from"] = "Wàyfaerer",
					["msg"] = "dont show on",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [17]
				["info"] = {
				},
			},
			["Agnostyc-Anetheron"] = {
				{
					["type"] = 1,
					["time"] = 1351481881,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Agnostyc-Anetheron",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351482179,
					["from"] = "Jaymes",
					["msg"] = "should be using heal and not flash heal, you'll go oom too fast just fyi",
					["inbound"] = false,
					["convo"] = "Agnostyc-Anetheron",
				}, -- [2]
				["info"] = {
				},
			},
			["Candrissa"] = {
				{
					["type"] = 1,
					["time"] = 1350149035,
					["from"] = "Jaymes",
					["msg"] = "i'd do 12k",
					["inbound"] = false,
					["convo"] = "Candrissa",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350149048,
					["from"] = "Candrissa",
					["msg"] = "14k,ok?",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350149061,
					["from"] = "Jaymes",
					["msg"] = "all i got is 12 on me",
					["inbound"] = false,
					["convo"] = "Candrissa",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350149068,
					["from"] = "Candrissa",
					["msg"] = "ok",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350149078,
					["from"] = "Candrissa",
					["msg"] = "u need  recruit me through battle.net to get it,then i will give u  my mail to recruit .plz trade 6k first,after u get it ,trade the rest again:)a few mins,u will get it:)",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350149167,
					["from"] = "Candrissa",
					["msg"] = "ok?",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350149205,
					["from"] = "Jaymes",
					["msg"] = "i'll give you the 12k after i've received the mount, i'm not dumb boy",
					["inbound"] = false,
					["convo"] = "Candrissa",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350149227,
					["from"] = "Candrissa",
					["msg"] = "sorry,friend:(",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350149249,
					["from"] = "Candrissa",
					["msg"] = "if u trade,a few mins,u will get it:)",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350149258,
					["from"] = "Jaymes",
					["msg"] = "lol i bet",
					["inbound"] = false,
					["convo"] = "Candrissa",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350149289,
					["from"] = "Candrissa",
					["msg"] = "someone have cheated me:(",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350149324,
					["from"] = "Candrissa",
					["msg"] = "so?",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350149348,
					["from"] = "Jaymes",
					["msg"] = "like i said, i'll give you 12k after i get the mount. otherwise i assume you're scamming",
					["inbound"] = false,
					["convo"] = "Candrissa",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350149376,
					["from"] = "Candrissa",
					["msg"] = "first trade 4k,ok?",
					["inbound"] = true,
					["convo"] = "Candrissa",
				}, -- [14]
				["info"] = {
				},
			},
			["Myrff"] = {
				{
					["type"] = 1,
					["time"] = 1351316625,
					["from"] = "Jaymes",
					["msg"] = "you know there's two banks in sw right",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351316644,
					["from"] = "Myrff",
					["msg"] = "yeah, no big.  need to mail some stuff to Cath too",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351316656,
					["from"] = "Jaymes",
					["msg"] = "just makin sure ;)",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351316662,
					["from"] = "Myrff",
					["msg"] = ":P",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351482024,
					["from"] = "Myrff",
					["msg"] = "night!",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351482028,
					["from"] = "Jaymes",
					["msg"] = "lata qt",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351566763,
					["from"] = "Myrff",
					["msg"] = "74% thru 84",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351566790,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351566795,
					["from"] = "Jaymes",
					["msg"] = "tomorrow then :P",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351566800,
					["from"] = "Jaymes",
					["msg"] = "i'm off to bed!",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351566805,
					["from"] = "Jaymes",
					["msg"] = "see you tomorrow ;)",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352525399,
					["from"] = "Myrff",
					["msg"] = "TY againf or the help earlier.  Logging for the evening.  Gratz on the sweet drop!",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352525408,
					["from"] = "Jaymes",
					["msg"] = "anytime, night!",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352525423,
					["from"] = "Myrff",
					["msg"] = "9/15 million thru 86.  New dungeons soon!",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352525432,
					["from"] = "Myrff",
					["msg"] = "g'night",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [15]
				["info"] = {
				},
			},
			["Bîshop-Gnomeregan"] = {
				{
					["type"] = 1,
					["time"] = 1352521319,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Bîshop-Gnomeregan",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352521797,
					["from"] = "Jaymes",
					["msg"] = "stop using divine light ur gonna go oom",
					["inbound"] = false,
					["convo"] = "Bîshop-Gnomeregan",
				}, -- [2]
				["info"] = {
				},
			},
			["Gloomhaze"] = {
				{
					["type"] = 1,
					["time"] = 1349910028,
					["from"] = "Jaymes",
					["msg"] = "don't make me kill you",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349910224,
					["from"] = "Gloomhaze",
					["msg"] = "y u wan do dat",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349910274,
					["from"] = "Jaymes",
					["msg"] = "then i can do w/e i want with ur body",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349910294,
					["from"] = "Gloomhaze",
					["msg"] = "nope",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349910301,
					["from"] = "Jaymes",
					["msg"] = "who gunna stop me",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349910303,
					["from"] = "Jaymes",
					["msg"] = "WHO",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349910305,
					["from"] = "Gloomhaze",
					["msg"] = "i have nanomachines with thermite",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349910314,
					["from"] = "Gloomhaze",
					["msg"] = "when my heart rate goes below a certain threshold I combust",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349910331,
					["from"] = "Gloomhaze",
					["msg"] = "SO IF U LIKE PLAYIN WITH ASHES",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349910354,
					["from"] = "Jaymes",
					["msg"] = "MAKES GOOD LUBE WHEN MIXED WITH WATER",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349910408,
					["from"] = "Gloomhaze",
					["msg"] = "O.o",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349910413,
					["from"] = "Gloomhaze",
					["msg"] = "I wont even ask",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349910416,
					["from"] = "Jaymes",
					["msg"] = "good",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349910421,
					["from"] = "Jaymes",
					["msg"] = "cause i'm not answering",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350739624,
					["from"] = "Jaymes",
					["msg"] = "sup qt",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350739687,
					["from"] = "Gloomhaze",
					["msg"] = "ntm, hbu?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350739708,
					["from"] = "Jaymes",
					["msg"] = "seein if i can get to 90",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350739719,
					["from"] = "Gloomhaze",
					["msg"] = "U CAN DOOO EEET",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350739723,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350739735,
					["from"] = "Jaymes",
					["msg"] = "so many fucking dalies now",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350739742,
					["from"] = "Gloomhaze",
					["msg"] = "You're telling me.",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350739755,
					["from"] = "Jaymes",
					["msg"] = "just started doing that for exp lol",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350739769,
					["from"] = "Gloomhaze",
					["msg"] = "its a good head start",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350863411,
					["from"] = "Gloomhaze",
					["msg"] = "btw grats on 90",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350863417,
					["from"] = "Jaymes",
					["msg"] = "lol thx qt",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350863423,
					["from"] = "Gloomhaze",
					["msg"] = "MISSED YOU IN TRADE",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350863427,
					["from"] = "Jaymes",
					["msg"] = "mining is the reason it took so long",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350863430,
					["from"] = "Jaymes",
					["msg"] = "DAMN THE NODES",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350863432,
					["from"] = "Gloomhaze",
					["msg"] = "ah yea?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1350863439,
					["from"] = "Gloomhaze",
					["msg"] = "Tons of EVERYTHING, just no trillium :(",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1350863441,
					["from"] = "Jaymes",
					["msg"] = "do an instance with me",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1350863448,
					["from"] = "Gloomhaze",
					["msg"] = "I DON WANNNNAAAAA",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1350863451,
					["from"] = "Gloomhaze",
					["msg"] = "Gimme a bit",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1350863451,
					["from"] = "Jaymes",
					["msg"] = "ok",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1350863454,
					["from"] = "Gloomhaze",
					["msg"] = "Im finishing up some dailies",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1350863458,
					["from"] = "Jaymes",
					["msg"] = "wow gross",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1350863459,
					["from"] = "Gloomhaze",
					["msg"] = "all 700 of them",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1350863462,
					["from"] = "Jaymes",
					["msg"] = "i was about to do the insect ones",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1350863470,
					["from"] = "Gloomhaze",
					["msg"] = "They give",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1350863474,
					["from"] = "Gloomhaze",
					["msg"] = "LOTS and lots of good stuff",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1350863475,
					["from"] = "Gloomhaze",
					["msg"] = "sadly.",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1350863481,
					["from"] = "Gloomhaze",
					["msg"] = "I need to do the insect ons oem character",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1350863484,
					["from"] = "Gloomhaze",
					["msg"] = "maybe this guy..hm",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1350863488,
					["from"] = "Jaymes",
					["msg"] = "idk what they give",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1350863490,
					["from"] = "Jaymes",
					["msg"] = "they're the only dailies i have",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1350863493,
					["from"] = "Gloomhaze",
					["msg"] = "Purple rings...purple stoof",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1350863496,
					["from"] = "Jaymes",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1350863497,
					["from"] = "Gloomhaze",
					["msg"] = "The golden lotus ones are good too",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1350863503,
					["from"] = "Jaymes",
					["msg"] = "i never found them",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1350863504,
					["from"] = "Gloomhaze",
					["msg"] = "theres a vendor at Niu Zhao temple?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1350863504,
					["from"] = "Jaymes",
					["msg"] = "where are they",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1350863510,
					["from"] = "Gloomhaze",
					["msg"] = "he shows you all the stuff you can buy",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1350863511,
					["from"] = "Jaymes",
					["msg"] = "no fucking clue",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1350863511,
					["from"] = "Gloomhaze",
					["msg"] = "with all the rep",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1350863513,
					["from"] = "Jaymes",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1350863515,
					["from"] = "Jaymes",
					["msg"] = "interesting",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1350863518,
					["from"] = "Gloomhaze",
					["msg"] = "Its in Western...KunLai?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1350863519,
					["from"] = "Gloomhaze",
					["msg"] = "I think",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1350863521,
					["from"] = "Jaymes",
					["msg"] = "ima find some rare spawn",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1350863523,
					["from"] = "Gloomhaze",
					["msg"] = "TownLong",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1350863527,
					["from"] = "Jaymes",
					["msg"] = "imlong",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1350863528,
					["from"] = "Jaymes",
					["msg"] = "?",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1350863532,
					["from"] = "Gloomhaze",
					["msg"] = "NO",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1350863534,
					["from"] = "Gloomhaze",
					["msg"] = "ANYWAYS BRB",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1351315932,
					["from"] = "Jaymes",
					["msg"] = "what's ur cute ass doin",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1351316015,
					["from"] = "Gloomhaze",
					["msg"] = "fixin food and helpin a buddy kill Vashj x.x",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1351316021,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1351316034,
					["from"] = "Jaymes",
					["msg"] = "wanna inv me so i can go in this instance",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1351316038,
					["from"] = "Jaymes",
					["msg"] = "and what are you making",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1351316045,
					["from"] = "Jaymes",
					["msg"] = "not shitty food i hope",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1351316047,
					["from"] = "Gloomhaze",
					["msg"] = "meh, probably just some pasta",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1351316068,
					["from"] = "Gloomhaze",
					["msg"] = "im shit tier at cooking",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1351316075,
					["from"] = "Jaymes",
					["msg"] = "=(",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1351316081,
					["from"] = "Gloomhaze",
					["msg"] = "if it wasnt so late I would have got some yummy chicken breast",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1351316085,
					["from"] = "Gloomhaze",
					["msg"] = "APPLEWOOD SMOKED",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1351316092,
					["from"] = "Gloomhaze",
					["msg"] = "bourbon barbecue glaze",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1351316104,
					["from"] = "Gloomhaze",
					["msg"] = "broccoli and cheese and...and...",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1351316117,
					["from"] = "Jaymes",
					["msg"] = "that would be better",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1351482860,
					["from"] = "Jaymes",
					["msg"] = "sup boy",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1351482875,
					["from"] = "Gloomhaze",
					["msg"] = "not a lot",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1351482887,
					["from"] = "Gloomhaze",
					["msg"] = "WHatcha up to?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1351482895,
					["from"] = "Jaymes",
					["msg"] = "wiping with a retarded priest/war combo",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1351482899,
					["from"] = "Jaymes",
					["msg"] = "i hate couples that play together",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1351482903,
					["from"] = "Jaymes",
					["msg"] = "they're always horrible",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1351482910,
					["from"] = "Gloomhaze",
					["msg"] = "Yepppp",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1351483019,
					["from"] = "Jaymes",
					["msg"] = "let me use you",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1351483026,
					["from"] = "Gloomhaze",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [87]
				["info"] = {
				},
			},
			["Seventhsin"] = {
				{
					["type"] = 1,
					["time"] = 1348793338,
					["from"] = "Jaymes",
					["msg"] = "ur cute",
					["inbound"] = false,
					["convo"] = "Seventhsin",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348793345,
					["from"] = "Seventhsin",
					["msg"] = "slut",
					["inbound"] = true,
					["convo"] = "Seventhsin",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348793359,
					["from"] = "Jaymes",
					["msg"] = "for your dick",
					["inbound"] = false,
					["convo"] = "Seventhsin",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348793400,
					["from"] = "Seventhsin",
					["msg"] = "ewwww",
					["inbound"] = true,
					["convo"] = "Seventhsin",
				}, -- [4]
				["info"] = {
				},
			},
			["Líck"] = {
				{
					["type"] = 1,
					["time"] = 1355032054,
					["from"] = "Líck",
					["msg"] = "can u only trade down inks?",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355032082,
					["from"] = "Líck",
					["msg"] = "i have a whole bunch of inferno ink",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355032097,
					["from"] = "Jaymes",
					["msg"] = "lol yea if you could trade up it'd be broken :P",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355032107,
					["from"] = "Líck",
					["msg"] = "but its green!",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355032112,
					["from"] = "Jaymes",
					["msg"] = ":(",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355032118,
					["from"] = "Jaymes",
					["msg"] = "old green",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355032120,
					["from"] = "Jaymes",
					["msg"] = "like mold",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355032126,
					["from"] = "Líck",
					["msg"] = "boogers",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355032131,
					["from"] = "Jaymes",
					["msg"] = "mmm",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1355032143,
					["from"] = "Líck",
					["msg"] = "did u trade  |cffffffff|Hitem:79254:0:0:0:0:0:0:1884800256:85:0:0|h[Ink of Dreams]|h|r for |cff1eff00|Hitem:79255:0:0:0:0:0:0:113260344:85:0:0|h[Starlight Ink]|h|r",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1355032148,
					["from"] = "Jaymes",
					["msg"] = "no",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1355032154,
					["from"] = "Jaymes",
					["msg"] = "i bought 25k worth of starlight ink",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1355032164,
					["from"] = "Líck",
					["msg"] = "which is like 250",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1355032166,
					["from"] = "Líck",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1355032170,
					["from"] = "Jaymes",
					["msg"] = "400",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1355032208,
					["from"] = "Líck",
					["msg"] = "damn only got 8 scrolls :(",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1355032213,
					["from"] = "Jaymes",
					["msg"] = ":(",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1355032220,
					["from"] = "Líck",
					["msg"] = "slacker",
					["inbound"] = true,
					["convo"] = "Líck",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1355032230,
					["from"] = "Jaymes",
					["msg"] = "yea you are",
					["inbound"] = false,
					["convo"] = "Líck",
				}, -- [19]
				["info"] = {
				},
			},
			["Kevyy"] = {
				{
					["type"] = 1,
					["time"] = 1355030841,
					["from"] = "Kevyy",
					["msg"] = "how much you pay for them",
					["inbound"] = true,
					["convo"] = "Kevyy",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355030859,
					["from"] = "Jaymes",
					["msg"] = "depends how many you have",
					["inbound"] = false,
					["convo"] = "Kevyy",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355030871,
					["from"] = "Kevyy",
					["msg"] = "well i can get some but yea",
					["inbound"] = true,
					["convo"] = "Kevyy",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355030883,
					["from"] = "Jaymes",
					["msg"] = "ok well when you get some lemme know",
					["inbound"] = false,
					["convo"] = "Kevyy",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355030912,
					["from"] = "Kevyy",
					["msg"] = "i have 4 atm",
					["inbound"] = true,
					["convo"] = "Kevyy",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355030918,
					["from"] = "Kevyy",
					["msg"] = "with me",
					["inbound"] = true,
					["convo"] = "Kevyy",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355030929,
					["from"] = "Jaymes",
					["msg"] = "ya, i'm lookin for bulk so 100+",
					["inbound"] = false,
					["convo"] = "Kevyy",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355030933,
					["from"] = "Jaymes",
					["msg"] = "thx tho",
					["inbound"] = false,
					["convo"] = "Kevyy",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355030942,
					["from"] = "Kevyy",
					["msg"] = "o ok np buddy good luck",
					["inbound"] = true,
					["convo"] = "Kevyy",
				}, -- [9]
				["info"] = {
				},
			},
			["Tuddy"] = {
				{
					["type"] = 1,
					["time"] = 1351997859,
					["from"] = "Tuddy",
					["msg"] = "What's up?",
					["inbound"] = true,
					["convo"] = "Tuddy",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351997921,
					["from"] = "Jaymes",
					["msg"] = "nm just got back from game night",
					["inbound"] = false,
					["convo"] = "Tuddy",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351998094,
					["from"] = "Tuddy",
					["msg"] = "Fun fun",
					["inbound"] = true,
					["convo"] = "Tuddy",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351998166,
					["from"] = "Tuddy",
					["msg"] = "I buy them with JP right?",
					["inbound"] = true,
					["convo"] = "Tuddy",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351998196,
					["from"] = "Tuddy",
					["msg"] = "blah, mt",
					["inbound"] = true,
					["convo"] = "Tuddy",
				}, -- [5]
				["info"] = {
				},
			},
			["Kurishjadar"] = {
				{
					["type"] = 1,
					["time"] = 1351814981,
					["from"] = "Kurishjadar",
					["msg"] = "ty",
					["inbound"] = true,
					["convo"] = "Kurishjadar",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351814986,
					["from"] = "Jaymes",
					["msg"] = "np",
					["inbound"] = false,
					["convo"] = "Kurishjadar",
				}, -- [2]
				["info"] = {
				},
			},
			["Jhuria-Ghostlands"] = {
				{
					["type"] = 1,
					["time"] = 1351037605,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Jhuria-Ghostlands",
				}, -- [1]
				["info"] = {
				},
			},
			["Nimna"] = {
				{
					["type"] = 1,
					["time"] = 1349662499,
					["from"] = "Jaymes",
					["msg"] = "get the trinket?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349662505,
					["from"] = "Nimna",
					["msg"] = "Nope :(",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349662510,
					["from"] = "Jaymes",
					["msg"] = "slut",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349662513,
					["from"] = "Nimna",
					["msg"] = "For sure",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349662516,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349662517,
					["from"] = "Jaymes",
					["msg"] = "that sucks",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349662520,
					["from"] = "Nimna",
					["msg"] = "I did however, find  |cff0070dd|Hitem:86569:0:0:0:0:0:0:1056014048:90:0:0|h[Crystal of Insanity]|h|r and  |cff0070dd|Hitem:90067:0:0:0:0:0:0:1351339392:90:0:0|h[B. F. F. Necklace]|h|r",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349662534,
					["from"] = "Jaymes",
					["msg"] = " |cff0070dd|Hitem:90067:0:0:0:0:0:0:1351339392:86:0:0|h[B. F. F. Necklace]|h|r ftw",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349662542,
					["from"] = "Jaymes",
					["msg"] = "that's a good 2nd",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349662547,
					["from"] = "Nimna",
					["msg"] = "yuppp, I'm still looking for someone to be my bff today ;)",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349662551,
					["from"] = "Jaymes",
					["msg"] = ":O",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349662564,
					["from"] = "Jaymes",
					["msg"] = "well i could give some bff advice",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349662574,
					["from"] = "Jaymes",
					["msg"] = "get rid of that blackberry bullshit and get a sexy haircut",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349662619,
					["from"] = "Nimna",
					["msg"] = "Ha yeah, man I'm working on it nig",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349662639,
					["from"] = "Jaymes",
					["msg"] = "good boy ;)",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350097735,
					["from"] = "Nimna",
					["msg"] = "I JUST BOUGHT YOUR GLYPH",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350097742,
					["from"] = "Jaymes",
					["msg"] = ":D",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350097748,
					["from"] = "Nimna",
					["msg"] = "ya rich bastard",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350097749,
					["from"] = "Jaymes",
					["msg"] = "i'm the cheapest boy out there!",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350097756,
					["from"] = "Jaymes",
					["msg"] = "i'll hook you up anytime qt",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350097773,
					["from"] = "Nimna",
					["msg"] = "Unfortunately I have almost every glyph :(",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350097796,
					["from"] = "Jaymes",
					["msg"] = "i meant gold :P",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350097799,
					["from"] = "Jaymes",
					["msg"] = "silly",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350097823,
					["from"] = "Nimna",
					["msg"] = "Oh lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350097833,
					["from"] = "Nimna",
					["msg"] = "Did you get to gold cap?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350097863,
					["from"] = "Jaymes",
					["msg"] = "i can't, i spend it getting cute wow guys to send me vids of them jerkin",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350097877,
					["from"] = "Nimna",
					["msg"] = "That'll get ya",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350097884,
					["from"] = "Jaymes",
					["msg"] = "damn boys fucking expensive",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350097891,
					["from"] = "Nimna",
					["msg"] = "how much was the last one?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1350097909,
					["from"] = "Jaymes",
					["msg"] = "depends how long the vid and how good it is, i gave em 50k",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1350097918,
					["from"] = "Jaymes",
					["msg"] = "cause it was pretty good",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1350097951,
					["from"] = "Nimna",
					["msg"] = "that's pretty awesome",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1350097960,
					["from"] = "Jaymes",
					["msg"] = "ya we both get what we want :P",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1350097974,
					["from"] = "Jaymes",
					["msg"] = "had a bunch of hot aussie friends in BC",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1350097982,
					["from"] = "Jaymes",
					["msg"] = "had a red belt of battle + 15k for a contest",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1350097985,
					["from"] = "Jaymes",
					["msg"] = "who could make the best vid",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1350097989,
					["from"] = "Jaymes",
					["msg"] = "that was hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1350097995,
					["from"] = "Nimna",
					["msg"] = "Love those accents",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1350097999,
					["from"] = "Jaymes",
					["msg"] = "^",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1350098006,
					["from"] = "Jaymes",
					["msg"] = "stayed there for 3 months",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1350098022,
					["from"] = "Jaymes",
					["msg"] = "bastard accents melt my cold ass heart",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1350098034,
					["from"] = "Nimna",
					["msg"] = "Lol I bet",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1350098213,
					["from"] = "Nimna",
					["msg"] = "Ugh I'm close to completing my serpents deck.",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1350098300,
					["from"] = "Jaymes",
					["msg"] = "hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1350098307,
					["from"] = "Jaymes",
					["msg"] = "did you give up on that other one?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1350098319,
					["from"] = "Nimna",
					["msg"] = "Nope I got that bitch",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1350098324,
					["from"] = "Nimna",
					["msg"] = " |cff0070dd|Hitem:81263:0:0:0:0:0:0:2032489472:90:138:0|h[Flashfrozen Resin Globule]|h|r",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1350098333,
					["from"] = "Jaymes",
					["msg"] = "oh hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1350098335,
					["from"] = "Jaymes",
					["msg"] = "grats",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1350098337,
					["from"] = "Nimna",
					["msg"] = "Thanks!",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1350098349,
					["from"] = "Nimna",
					["msg"] = "brb gonna go mill some herbs and make another card",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1350098566,
					["from"] = "Nimna",
					["msg"] = "damn 5 rare pigments short.",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1350098574,
					["from"] = "Jaymes",
					["msg"] = ":(",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1350098576,
					["from"] = "Jaymes",
					["msg"] = "poor boy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1350098642,
					["from"] = "Nimna",
					["msg"] = "I'll be alright",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1350098656,
					["from"] = "Nimna",
					["msg"] = "brb making enchant",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1350098661,
					["from"] = "Jaymes",
					["msg"] = "kk",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1350147951,
					["from"] = "Nimna",
					["msg"] = "hey you wouldn't happen to be a darkmoon card-monger would you?  I'm missing 2 cards and have many to trade",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1350147981,
					["from"] = "Jaymes",
					["msg"] = "lol sorry big boy i am not, too much effort for the $$ for me ",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1350147989,
					["from"] = "Jaymes",
					["msg"] = "which two are you lookin for",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1350147994,
					["from"] = "Jaymes",
					["msg"] = "i'll keep an eye out",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1350147994,
					["from"] = "Nimna",
					["msg"] = "3 and 8",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1350147997,
					["from"] = "Nimna",
					["msg"] = "of serpents",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1350148001,
					["from"] = "Jaymes",
					["msg"] = "okies",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1350148005,
					["from"] = "Jaymes",
					["msg"] = "so noted",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1350148015,
					["from"] = "Nimna",
					["msg"] = "how do you say too much effort?  Aren't they in high demand atm?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1350148160,
					["from"] = "Jaymes",
					["msg"] = "i've got my niche area of stuff that sells and the cards random element are just gay",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1350148166,
					["from"] = "Jaymes",
					["msg"] = "sorry faggot trying to gank me",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1350148176,
					["from"] = "Nimna",
					["msg"] = "you shouldn't use the term faggot like that",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1350148192,
					["from"] = "Jaymes",
					["msg"] = "i'm not a fan of censorship ;)",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1350148194,
					["from"] = "Jaymes",
					["msg"] = "for anyone",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1350148250,
					["from"] = "Nimna",
					["msg"] = "how do I make the big cash big daddy?  I've been slave laboring to make my gold",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1350148270,
					["from"] = "Jaymes",
					["msg"] = "get hot, then make a vid of you jackin off for me",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1350148279,
					["from"] = "Nimna",
					["msg"] = "Just got my hair cut",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1350148284,
					["from"] = "Jaymes",
					["msg"] = "lol nice",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1350148294,
					["from"] = "Jaymes",
					["msg"] = "now about that BB",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1350148347,
					["from"] = "Nimna",
					["msg"] = "Man I don't think I can fix that, I want a samsung galaxy S3 so bad, fucking dual core 1.2 ghz processor, so fast.  My shitty BB has a 600 mhz single core processor lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1350148359,
					["from"] = "Jaymes",
					["msg"] = "boy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1350148363,
					["from"] = "Jaymes",
					["msg"] = "why do you care about processing power",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1350148365,
					["from"] = "Jaymes",
					["msg"] = "on a phone",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1350148371,
					["from"] = "Jaymes",
					["msg"] = "it just wastes ur battery that much faster",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1350148377,
					["from"] = "Nimna",
					["msg"] = "Because my phone freezes",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1350148383,
					["from"] = "Jaymes",
					["msg"] = "because it's a BB",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1350148387,
					["from"] = "Jaymes",
					["msg"] = "old salesmen use that shit",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1350148404,
					["from"] = "Nimna",
					["msg"] = "Haha, my provider paid me money to upgrade to a blackberry lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1350148410,
					["from"] = "Jaymes",
					["msg"] = "wow",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1350148415,
					["from"] = "Jaymes",
					["msg"] = "RIM is a horrible company",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1350148418,
					["from"] = "Nimna",
					["msg"] = "Their that desperate",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1350148420,
					["from"] = "Nimna",
					["msg"] = "QFT",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1350148421,
					["from"] = "Jaymes",
					["msg"] = "and really should be wiped from the earth",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1350148485,
					["from"] = "Jaymes",
					["msg"] = "do your friends not make fun of you for it",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1350148599,
					["from"] = "Nimna",
					["msg"] = "Nope",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1350148616,
					["from"] = "Jaymes",
					["msg"] = "man",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1350148621,
					["from"] = "Jaymes",
					["msg"] = "you need some better friends :P",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1350148670,
					["from"] = "Nimna",
					["msg"] = "QFT",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1350148682,
					["from"] = "Jaymes",
					["msg"] = "did you already do ur darkmoon +5 skill quests",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1350148692,
					["from"] = "Nimna",
					["msg"] = "Nope",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1350148702,
					["from"] = "Jaymes",
					["msg"] = "ends tonight don't forget ;)",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1350148713,
					["from"] = "Nimna",
					["msg"] = "wait is darkmoon faire over today?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1350148720,
					["from"] = "Jaymes",
					["msg"] = "ya midnight boy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1350148724,
					["from"] = "Nimna",
					["msg"] = "OMG I HAVE TO GET THESE LAST 2 CARDS",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1350148727,
					["from"] = "Nimna",
					["msg"] = "adflkja;sdlkfja;sdljkf",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1350148732,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1350148742,
					["from"] = "Jaymes",
					["msg"] = "you'll get it",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1350148749,
					["from"] = "Jaymes",
					["msg"] = "what's ur budget?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1350148772,
					["from"] = "Nimna",
					["msg"] = "None lol, I only have billions of other cards to trade",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1350148784,
					["from"] = "Jaymes",
					["msg"] = "lol k",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1350148841,
					["from"] = "Jaymes",
					["msg"] = "ah is 6.5k for eight and 8k for a 3",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1350148857,
					["from"] = "Nimna",
					["msg"] = "i just found someone for the 3 to trade :) I just need the 8 now",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1350148862,
					["from"] = "Jaymes",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1350149307,
					["from"] = "Jaymes",
					["msg"] = "i'll buy the 8 if you give me cards of equal value if you'd like",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1350149326,
					["from"] = "Nimna",
					["msg"] = "I'd be down for that",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1350149353,
					["from"] = "Jaymes",
					["msg"] = "okies i have it",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1350149379,
					["from"] = "Jaymes",
					["msg"] = "so something that adds up to 6.5k",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1350149398,
					["from"] = "Nimna",
					["msg"] = "well they're all mostly 4k i think",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1350149411,
					["from"] = "Nimna",
					["msg"] = " |cff0070dd|Hitem:79292:0:0:0:0:0:0:682991808:90:0:0|h[Two of Oxen]|h|r +  |cff0070dd|Hitem:79298:0:0:0:0:0:0:1076691712:90:0:0|h[Eight of Oxen]|h|r ok?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1350149417,
					["from"] = "Jaymes",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1350149444,
					["from"] = "Nimna",
					["msg"] = "if you make a couple 2k gold or w/e if they sell at 4k each you should toss me 1,000 of it, lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1350149473,
					["from"] = "Jaymes",
					["msg"] = "i'll let you know how they do :P",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1350149489,
					["from"] = "Jaymes",
					["msg"] = "8 right",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1350149497,
					["from"] = "Jaymes",
					["msg"] = "enjoy sir",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1350149498,
					["from"] = "Nimna",
					["msg"] = "yeah!!",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1350149512,
					["from"] = "Jaymes",
					["msg"] = "damn that's hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1350149517,
					["from"] = "Jaymes",
					["msg"] = "don't get me started",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1350149535,
					["from"] = "Nimna",
					["msg"] = "be more hot if I was a male character, but I already have Dubz on t his server and Dubztep, lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1350149551,
					["from"] = "Jaymes",
					["msg"] = "lol i was using ur irl pic not ur toon",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1350149552,
					["from"] = "Jaymes",
					["msg"] = "gross",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1350149557,
					["from"] = "Jaymes",
					["msg"] = "i'm not into hentai",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1350149565,
					["from"] = "Nimna",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1350149584,
					["from"] = "Nimna",
					["msg"] = "have you seen the int trinket from darkmoon yet?",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1350149603,
					["from"] = "Jaymes",
					["msg"] = "i believe so at some point",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1350149611,
					["from"] = "Jaymes",
					["msg"] = "gear doesn't get me as hard as it used to lol",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1350149635,
					["from"] = "Nimna",
					["msg"] = " |cffa335ee|Hitem:79331:0:0:0:0:0:0:0:90:0:0|h[Relic of Yu'lon]|h|r",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1350149653,
					["from"] = "Jaymes",
					["msg"] = "lol ",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1350149656,
					["from"] = "Jaymes",
					["msg"] = "that's hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1350149675,
					["from"] = "Nimna",
					["msg"] = "Yeah man",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1350149682,
					["from"] = "Jaymes",
					["msg"] = "grats boy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1350149704,
					["from"] = "Nimna",
					["msg"] = "Thanks couldn't have done it without you!",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1350149720,
					["from"] = "Jaymes",
					["msg"] = "always glad to help sexy guys ;)",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1350149736,
					["from"] = "Jaymes",
					["msg"] = "do your +5 skill while ur here",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1350149838,
					["from"] = "Nimna",
					["msg"] = "everything is maxed except cooking and fishing haha",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1350149859,
					["from"] = "Jaymes",
					["msg"] = "cooking is a bitch",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1350163908,
					["from"] = "Nimna",
					["msg"] = "So I hear you only live 5 hours from me",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1350163935,
					["from"] = "Jaymes",
					["msg"] = "warlock sex is hot",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1350163945,
					["from"] = "Nimna",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1350163953,
					["from"] = "Jaymes",
					["msg"] = "what are you in chicago?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1350163971,
					["from"] = "Nimna",
					["msg"] = "Yes, a little west of",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1350163974,
					["from"] = "Jaymes",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1350164021,
					["from"] = "Jaymes",
					["msg"] = "i haven't been to chicago yet",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1350164024,
					["from"] = "Jaymes",
					["msg"] = "heard it's pretty kewl",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1350164033,
					["from"] = "Nimna",
					["msg"] = "It's ok, neither have I HAHAHAHAHA",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1350164044,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1350179421,
					["from"] = "Nimna",
					["msg"] = "grats on 88",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1350179652,
					["from"] = "Jaymes",
					["msg"] = "lol thx qt",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1350260148,
					["from"] = "Jaymes",
					["msg"] = "how's the trinket going sir?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1350260154,
					["from"] = "Nimna",
					["msg"] = "amazing",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1350260158,
					["from"] = "Jaymes",
					["msg"] = "sexy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1350260162,
					["from"] = "Nimna",
					["msg"] = "you should see me out in halfhill, killing horde",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1350260164,
					["from"] = "Nimna",
					["msg"] = "in town",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1350260168,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1350260178,
					["from"] = "Jaymes",
					["msg"] = "i'll have to make my way out there been laaazy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1350260182,
					["from"] = "Nimna",
					["msg"] = "double chaos bolting ppl for 250k then demonic circle to my crops, phases me and guards disapear",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1350260218,
					["from"] = "Jaymes",
					["msg"] = "yea i'm curious how they're going to work with that",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1350260230,
					["from"] = "Jaymes",
					["msg"] = "cause i was fucking with ppl doing that, not that high of dmg lol",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1350260238,
					["from"] = "Jaymes",
					["msg"] = "but i don't see blizz not doing something about that idk",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1350260243,
					["from"] = "Jaymes",
					["msg"] = "so many ppl gonna QQ",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1350260255,
					["from"] = "Nimna",
					["msg"] = "I've killed probably 6 ppl and not gotten killed yet",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1350260260,
					["from"] = "Jaymes",
					["msg"] = "awesome",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1350260447,
					["from"] = "Nimna",
					["msg"] = "But yeah I've gotten up over 100,000 dps a few times with the new trink",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1350260488,
					["from"] = "Jaymes",
					["msg"] = "snap boy",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1352003468,
					["from"] = "Nimna",
					["msg"] = "jaymes are there people in inertia that do rbg's",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1352003500,
					["from"] = "Jaymes",
					["msg"] = "i don't think as a group, saw some interest last week but idk what came of it",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [172]
				{
					["type"] = 1,
					["time"] = 1352003515,
					["from"] = "Jaymes",
					["msg"] = "dalara might know if he comes on ",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [173]
				{
					["type"] = 1,
					["time"] = 1352003532,
					["from"] = "Nimna",
					["msg"] = "I'm extremely interested.",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [174]
				{
					["type"] = 1,
					["time"] = 1352003559,
					["from"] = "Jaymes",
					["msg"] = "oh my",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [175]
				{
					["type"] = 1,
					["time"] = 1352003571,
					["from"] = "Jaymes",
					["msg"] = "well if i see em on i'll inquire ;)",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [176]
				{
					["type"] = 1,
					["time"] = 1352003616,
					["from"] = "Nimna",
					["msg"] = "besides dalara and I in the same group, we'll kill anything in 3 seconds",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [177]
				{
					["type"] = 1,
					["time"] = 1352003627,
					["from"] = "Jaymes",
					["msg"] = "yea lol",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [178]
				{
					["type"] = 1,
					["time"] = 1352939357,
					["from"] = "Jaymes",
					["msg"] = "boy can i use you for a sec",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [179]
				{
					["type"] = 1,
					["time"] = 1352939368,
					["from"] = "Nimna",
					["msg"] = "sure",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [180]
				["info"] = {
				},
			},
			["Shadydeath"] = {
				{
					["type"] = 1,
					["time"] = 1353886305,
					["from"] = "Jaymes",
					["msg"] = "i have 3 if you can get to a proper city",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353886337,
					["from"] = "Shadydeath",
					["msg"] = "where at im in dal",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353886371,
					["from"] = "Jaymes",
					["msg"] = "can you do SW?",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353886379,
					["from"] = "Shadydeath",
					["msg"] = "yep",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353886389,
					["from"] = "Shadydeath",
					["msg"] = "invite",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353886390,
					["from"] = "Jaymes",
					["msg"] = "k gimme a sec need to mail them over to this guy",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353886395,
					["from"] = "Jaymes",
					["msg"] = "on diff toons",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353886855,
					["from"] = "Shadydeath",
					["msg"] = "its not letting me clk it",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353886875,
					["from"] = "Jaymes",
					["msg"] = "does ur picking fail?",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353886907,
					["from"] = "Shadydeath",
					["msg"] = "no ",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1353886916,
					["from"] = "Jaymes",
					["msg"] = "all you should have to do is pick it then press trade",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1353886929,
					["from"] = "Shadydeath",
					["msg"] = "just not clicking it",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1353886954,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1353886956,
					["from"] = "Jaymes",
					["msg"] = "thx",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1353886960,
					["from"] = "Shadydeath",
					["msg"] = "did it take",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1353886963,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1353886975,
					["from"] = "Shadydeath",
					["msg"] = "are u sure",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1353886982,
					["from"] = "Jaymes",
					["msg"] = "yep they're unlocked",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1353887001,
					["from"] = "Shadydeath",
					["msg"] = "ok ",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1353887007,
					["from"] = "Shadydeath",
					["msg"] = "thanks",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1353887010,
					["from"] = "Jaymes",
					["msg"] = "ty",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1353887020,
					["from"] = "Jaymes",
					["msg"] = "let me know when you can do 450",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1353887088,
					["from"] = "Shadydeath",
					["msg"] = "thats what im working on but cant lvl lock picking past 430 this sucks",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1353887098,
					["from"] = "Jaymes",
					["msg"] = "lol prolly have to lvl",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1353887157,
					["from"] = "Shadydeath",
					["msg"] = "is it not by how many u unlock but by my toons lvl?",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1353887177,
					["from"] = "Jaymes",
					["msg"] = "it's both as far as i know",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1353887185,
					["from"] = "Shadydeath",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1353887192,
					["from"] = "Jaymes",
					["msg"] = "check wowhead just to be sure",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1353887199,
					["from"] = "Shadydeath",
					["msg"] = "thanks again",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1353887205,
					["from"] = "Jaymes",
					["msg"] = "anytime",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1353887567,
					["from"] = "Shadydeath",
					["msg"] = "ok i just found it i have to lvl to 90 to pick 450 locks IT IS by my toons lvl now",
					["inbound"] = true,
					["convo"] = "Shadydeath",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1353887577,
					["from"] = "Jaymes",
					["msg"] = "yea =(",
					["inbound"] = false,
					["convo"] = "Shadydeath",
				}, -- [32]
				["info"] = {
				},
			},
			["ßloodedge"] = {
				{
					["type"] = 1,
					["time"] = 1349224293,
					["from"] = "ßloodedge",
					["msg"] = "b!",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349224308,
					["from"] = "Jaymes",
					["msg"] = "sup qt",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349224317,
					["from"] = "ßloodedge",
					["msg"] = "how u do on ur prerelease?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349224334,
					["from"] = "Jaymes",
					["msg"] = "um",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349224347,
					["from"] = "Jaymes",
					["msg"] = "i got like 34/92 cause i threw the last game to my friend so he could get packs",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349224354,
					["from"] = "Jaymes",
					["msg"] = "so i'd have gotten like 19th or something",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349224359,
					["from"] = "ßloodedge",
					["msg"] = "lame",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349224364,
					["from"] = "Jaymes",
					["msg"] = "but my friend got 3rd",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349224366,
					["from"] = "Jaymes",
					["msg"] = "so he got a box",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349224370,
					["from"] = "Jaymes",
					["msg"] = "so we opened that",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349224380,
					["from"] = "Jaymes",
					["msg"] = "but it's pretty fun",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349224385,
					["from"] = "Jaymes",
					["msg"] = "i like the set so far",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349224387,
					["from"] = "Jaymes",
					["msg"] = "goin all out this weekend",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349224430,
					["from"] = "ßloodedge",
					["msg"] = "i won my 2 headed giant tourny",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349224437,
					["from"] = "Jaymes",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349224443,
					["from"] = "Jaymes",
					["msg"] = "i skipped that one maybe this week",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349224446,
					["from"] = "ßloodedge",
					["msg"] = "what guild did u use?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349224450,
					["from"] = "Jaymes",
					["msg"] = "golgari",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349224452,
					["from"] = "Jaymes",
					["msg"] = "you guys?",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349224456,
					["from"] = "ßloodedge",
					["msg"] = "how did u like it?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349224459,
					["from"] = "ßloodedge",
					["msg"] = "az and sel",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349224461,
					["from"] = "Jaymes",
					["msg"] = "it was fun",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349224466,
					["from"] = "Jaymes",
					["msg"] = "slap bitches around",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349224474,
					["from"] = "Jaymes",
					["msg"] = "i had a few party times",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349224478,
					["from"] = "Jaymes",
					["msg"] = "or w/e that retarded name is",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349224479,
					["from"] = "ßloodedge",
					["msg"] = "i wanted golgari but they ran out by the time the 2headed started",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349224483,
					["from"] = "Jaymes",
					["msg"] = "wow",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349224485,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349224492,
					["from"] = "Jaymes",
					["msg"] = "i got the dual land too",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349224493,
					["from"] = "ßloodedge",
					["msg"] = "but it worked out",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349224502,
					["from"] = "Jaymes",
					["msg"] = "and we opened 4 of the g/b planeswalker",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349224503,
					["from"] = "ßloodedge",
					["msg"] = "i got 2 overgrown, 1 steam, 1 hallowed",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349224508,
					["from"] = "Jaymes",
					["msg"] = "hot",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349224509,
					["from"] = "ßloodedge",
					["msg"] = "fuckkkks u",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349224515,
					["from"] = "ßloodedge",
					["msg"] = "i want that planeswalker its the sex",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349224516,
					["from"] = "Jaymes",
					["msg"] = "everyone but me got one",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349224521,
					["from"] = "ßloodedge",
					["msg"] = "lame sauce",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349224523,
					["from"] = "Jaymes",
					["msg"] = "rofl yea",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349224526,
					["from"] = "Jaymes",
					["msg"] = "and i was the only golgari",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349224530,
					["from"] = "ßloodedge",
					["msg"] = "lames",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349224530,
					["from"] = "Jaymes",
					["msg"] = "NO ONE ELSE PLAYED THEIRS",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349224538,
					["from"] = "ßloodedge",
					["msg"] = "WAY LAME",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349224538,
					["from"] = "Jaymes",
					["msg"] = "i was like seriously just give it to me under the table",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349224546,
					["from"] = "ßloodedge",
					["msg"] = "u would under the table",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349224551,
					["from"] = "Jaymes",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349224556,
					["from"] = "Jaymes",
					["msg"] = "there were cute boys at this one",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349224561,
					["from"] = "Jaymes",
					["msg"] = "i'm gonna keep goin to this new place",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349224565,
					["from"] = "ßloodedge",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349224566,
					["from"] = "Jaymes",
					["msg"] = "right by a college campus",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349224567,
					["from"] = "Jaymes",
					["msg"] = "hot ass",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349224573,
					["from"] = "ßloodedge",
					["msg"] = "eye candy while u play?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349224580,
					["from"] = "Jaymes",
					["msg"] = "at least more than none",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349224601,
					["from"] = "ßloodedge",
					["msg"] = "well thats fun for u",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349224604,
					["from"] = "Jaymes",
					["msg"] = "indeed",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349224610,
					["from"] = "Jaymes",
					["msg"] = "it'll be fun this weekend too",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349224614,
					["from"] = "ßloodedge",
					["msg"] = "think ul get any bites?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349224633,
					["from"] = "Jaymes",
					["msg"] = "idk i was talking with two",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349224637,
					["from"] = "Jaymes",
					["msg"] = "got their email",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349224638,
					["from"] = "Jaymes",
					["msg"] = "so we'll see",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349224653,
					["from"] = "ßloodedge",
					["msg"] = "how u liking mop?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349224661,
					["from"] = "Jaymes",
					["msg"] = "i haven't had a whole lot of time for it",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349224663,
					["from"] = "Jaymes",
					["msg"] = "but i mean",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1349224667,
					["from"] = "ßloodedge",
					["msg"] = "why that?",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1349224668,
					["from"] = "Jaymes",
					["msg"] = "at least there's shit to do now lol",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1349224678,
					["from"] = "Jaymes",
					["msg"] = "just workin and been doin shit with the house",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1349224686,
					["from"] = "Jaymes",
					["msg"] = "i feel lazy if i just play all day and don't do some work",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1349224704,
					["from"] = "ßloodedge",
					["msg"] = "lol i feel the same but i also cant stop doing pet battles",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1349224713,
					["from"] = "Jaymes",
					["msg"] = "lol you would",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1349224720,
					["from"] = "ßloodedge",
					["msg"] = "i love me some pokemon",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1349224728,
					["from"] = "Jaymes",
					["msg"] = "i haven't tried them out yet",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1349224732,
					["from"] = "Jaymes",
					["msg"] = "i'll have to check it out",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1349224732,
					["from"] = "ßloodedge",
					["msg"] = "its fun",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1349224773,
					["from"] = "Jaymes",
					["msg"] = "do you like",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1349224775,
					["from"] = "Jaymes",
					["msg"] = "win anything",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1349224793,
					["from"] = "ßloodedge",
					["msg"] = "nah just a lot of pets",
					["inbound"] = true,
					["convo"] = "ßloodedge",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1349224798,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "ßloodedge",
				}, -- [76]
				["info"] = {
				},
			},
			["Faethe-Icecrown"] = {
				{
					["type"] = 1,
					["time"] = 1352524977,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Faethe-Icecrown",
				}, -- [1]
				["info"] = {
				},
			},
			["Somalaind-Auchindoun"] = {
				{
					["type"] = 1,
					["time"] = 1351916553,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Somalaind-Auchindoun",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351917460,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Somalaind-Auchindoun",
				}, -- [2]
				["info"] = {
				},
			},
			["Denhartt"] = {
				{
					["type"] = 1,
					["time"] = 1352048306,
					["from"] = "Denhartt",
					["msg"] = "whats qft mean?",
					["inbound"] = true,
					["convo"] = "Denhartt",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352048311,
					["from"] = "Jaymes",
					["msg"] = "quote for truth",
					["inbound"] = false,
					["convo"] = "Denhartt",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352048314,
					["from"] = "Denhartt",
					["msg"] = "ah",
					["inbound"] = true,
					["convo"] = "Denhartt",
				}, -- [3]
				["info"] = {
				},
			},
			["Zaldek"] = {
				{
					["type"] = 1,
					["time"] = 1349140177,
					["from"] = "Zaldek",
					["msg"] = "x.x",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349140182,
					["from"] = "Jaymes",
					["msg"] = "ur cute",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349140185,
					["from"] = "Zaldek",
					["msg"] = "u thank",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349140185,
					["from"] = "Jaymes",
					["msg"] = "let's skype",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349140196,
					["from"] = "Jaymes",
					["msg"] = "how is ur present treating you",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349140245,
					["from"] = "Zaldek",
					["msg"] = "Present?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349140247,
					["from"] = "Zaldek",
					["msg"] = "Like, my right now?!",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349140256,
					["from"] = "Zaldek",
					["msg"] = "I can't really brag about it.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349140257,
					["from"] = "Zaldek",
					["msg"] = "Im insane.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349140264,
					["from"] = "Jaymes",
					["msg"] = "you lost me",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349140271,
					["from"] = "Zaldek",
					["msg"] = "LOl",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349140274,
					["from"] = "Zaldek",
					["msg"] = "It's well.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349143014,
					["from"] = "Jaymes",
					["msg"] = "whisper shadowblege if you wanna do sha of anger",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349143022,
					["from"] = "Zaldek",
					["msg"] = "try again",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349143027,
					["from"] = "Jaymes",
					["msg"] = "i misclicked",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349143030,
					["from"] = "Zaldek",
					["msg"] = "and, already done it twice -.-",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349143036,
					["from"] = "Zaldek",
					["msg"] = "It only gives loot once a week",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349143041,
					["from"] = "Zaldek",
					["msg"] = "unfortunately",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349143084,
					["from"] = "Jaymes",
					["msg"] = "poor boy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349143482,
					["from"] = "Zaldek",
					["msg"] = "If I had glyphed..",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349143486,
					["from"] = "Zaldek",
					["msg"] = "I could understand your STUPID DEMONIC SHIT.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349143493,
					["from"] = "Jaymes",
					["msg"] = "lol idk how i turned it on",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349143497,
					["from"] = "Zaldek",
					["msg"] = "hahaaha",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349143499,
					["from"] = "Zaldek",
					["msg"] = ":D",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349143518,
					["from"] = "Jaymes",
					["msg"] = "thx",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349143522,
					["from"] = "Zaldek",
					["msg"] = "yarp",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349143529,
					["from"] = "Jaymes",
					["msg"] = "ugh won't turn off",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349143534,
					["from"] = "Zaldek",
					["msg"] = "Forever a demon",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349143545,
					["from"] = "Jaymes",
					["msg"] = "it must be this glyph",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349143551,
					["from"] = "Zaldek",
					["msg"] = "sounds likely",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349143553,
					["from"] = "Jaymes",
					["msg"] = "wow",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349143554,
					["from"] = "Jaymes",
					["msg"] = "that's gay",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349143556,
					["from"] = "Jaymes",
					["msg"] = "it is",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349583806,
					["from"] = "Jaymes",
					["msg"] = "what's goin on sexy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349583811,
					["from"] = "Zaldek",
					["msg"] = "Camping and being sad.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349583817,
					["from"] = "Zaldek",
					["msg"] = "SO SAD.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349583831,
					["from"] = "Jaymes",
					["msg"] = "are you being camped?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349583835,
					["from"] = "Zaldek",
					["msg"] = "Nawh",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349583841,
					["from"] = "Jaymes",
					["msg"] = "so what's wrong",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349583842,
					["from"] = "Zaldek",
					["msg"] = "Just waiting on a rare spawn for a neat-o item",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349583846,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349583847,
					["from"] = "Zaldek",
					["msg"] = "I could be doing dailies for useful shit.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349583847,
					["from"] = "Jaymes",
					["msg"] = "what spawn",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349583853,
					["from"] = "Zaldek",
					["msg"] = "instead of wasting my fucking time with a gimp flask",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349583860,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349583862,
					["from"] = "Zaldek",
					["msg"] = "some Mogu",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349583867,
					["from"] = "Jaymes",
					["msg"] = "wtf is that",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349583870,
					["from"] = "Zaldek",
					["msg"] = "It gives a 15m cooldown item that boosts all stats by 500",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349583885,
					["from"] = "Zaldek",
					["msg"] = "but...it drops like 11 items",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349583891,
					["from"] = "Zaldek",
					["msg"] = "so its kind of impractical unless you get lucky",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349583892,
					["from"] = "Zaldek",
					["msg"] = "im jus a masochist",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349583899,
					["from"] = "Jaymes",
					["msg"] = "clearly",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349583905,
					["from"] = "Jaymes",
					["msg"] = "can i bother to use you while you camp",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349583916,
					["from"] = "Jaymes",
					["msg"] = "need a raid party",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349583941,
					["from"] = "Zaldek",
					["msg"] = "I reckon.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349583947,
					["from"] = "Zaldek",
					["msg"] = "gopher it",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349744902,
					["from"] = "Zaldek",
					["msg"] = "Only need two more crds...",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349744906,
					["from"] = "Zaldek",
					["msg"] = "*sigh*",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349744908,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349744915,
					["from"] = "Zaldek",
					["msg"] = "Do you have a scribe?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349744917,
					["from"] = "Jaymes",
					["msg"] = "what was that thing you were looking for the other day",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349744929,
					["from"] = "Zaldek",
					["msg"] = "hm, whatcha mean?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1349744930,
					["from"] = "Zaldek",
					["msg"] = "Oh.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1349744934,
					["from"] = "Zaldek",
					["msg"] = "A crystal of insanity",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1349744934,
					["from"] = "Jaymes",
					["msg"] = "the alchemist stone",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1349744936,
					["from"] = "Jaymes",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1349744941,
					["from"] = "Jaymes",
					["msg"] = "is that the epic one?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1349744948,
					["from"] = "Zaldek",
					["msg"] = "nope?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1349744956,
					["from"] = "Zaldek",
					["msg"] = "It's a perma 50% flask",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1349744959,
					["from"] = "Zaldek",
					["msg"] = "+500 to all stats",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1349744967,
					["from"] = "Jaymes",
					["msg"] = "ah k",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1349744972,
					["from"] = "Jaymes",
					["msg"] = "but yes i have a scribe",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1349744977,
					["from"] = "Zaldek",
					["msg"] = "What is it at?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1349744981,
					["from"] = "Jaymes",
					["msg"] = "not high",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1349744984,
					["from"] = "Jaymes",
					["msg"] = "like 560 maybe",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1349744990,
					["from"] = "Zaldek",
					["msg"] = "Toon's 85 though right?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1349744994,
					["from"] = "Jaymes",
					["msg"] = "yes",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1349745013,
					["from"] = "Zaldek",
					["msg"] = "if I stumble across the stuff would you try making a card",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1349745025,
					["from"] = "Zaldek",
					["msg"] = "cause GOD DAMN FUCK",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1349745028,
					["from"] = "Zaldek",
					["msg"] = "I NEEDS IT.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1349745063,
					["from"] = "Jaymes",
					["msg"] = "sure but idk how high i have to be for that",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1349745072,
					["from"] = "Zaldek",
					["msg"] = "Pretty sure you need 600-ish",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1349745076,
					["from"] = "Jaymes",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1349745086,
					["from"] = "Zaldek",
					["msg"] = "but I'll get you the mats to do that too if I decide to need your services for it",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1349745094,
					["from"] = "Zaldek",
					["msg"] = "NOT THAT ITD BE DIFFICULT FOR YOU, MR RICH PANTS",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1349745094,
					["from"] = "Zaldek",
					["msg"] = ":(",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1349745104,
					["from"] = "Jaymes",
					["msg"] = "i'm not a charity",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1349745109,
					["from"] = "Zaldek",
					["msg"] = "clearly not!",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1349745110,
					["from"] = "Jaymes",
					["msg"] = "and you're not black",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1349745117,
					["from"] = "Zaldek",
					["msg"] = "hahaha",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1349745123,
					["from"] = "Jaymes",
					["msg"] = "if you happen to get hard and want to jack off i may make a donation",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1349837173,
					["from"] = "Jaymes",
					["msg"] = "did you get all ur cards",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1349825041,
					["from"] = "Zaldek",
					["msg"] = "Sorry, I was dealing with drama, mom and brother found some stray dogs",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1349825048,
					["from"] = "Zaldek",
					["msg"] = "I got it though ;p",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1349825048,
					["from"] = "Jaymes",
					["msg"] = "...",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1349825052,
					["from"] = "Jaymes",
					["msg"] = "lol nice",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1349825055,
					["from"] = "Jaymes",
					["msg"] = "did they take the dogs in",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1349825070,
					["from"] = "Zaldek",
					["msg"] = "Eh, we had an old dog bed",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1349825075,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1349825076,
					["from"] = "Zaldek",
					["msg"] = "put some shavings and a blanket and gave them some food",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1349825083,
					["from"] = "Zaldek",
					["msg"] = "I'd let them in the fence but my dog would eat them",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1349825088,
					["from"] = "Zaldek",
					["msg"] = "and one had a flea collar",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1349825101,
					["from"] = "Jaymes",
					["msg"] = "they're dogs",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1349825104,
					["from"] = "Jaymes",
					["msg"] = "they can live in the wild just fine",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1349825125,
					["from"] = "Zaldek",
					["msg"] = "Crazy concept",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1349825188,
					["from"] = "Jaymes",
					["msg"] = "i've been called crazy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1349825195,
					["from"] = "Zaldek",
					["msg"] = "lol ;p",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1350863619,
					["from"] = "Jaymes",
					["msg"] = "sigh i hate rare spawns",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1350863624,
					["from"] = "Jaymes",
					["msg"] = "people always not horde",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1350863626,
					["from"] = "Jaymes",
					["msg"] = "so i can't steal them",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1350863634,
					["from"] = "Zaldek",
					["msg"] = "yep :(",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1350863637,
					["from"] = "Zaldek",
					["msg"] = "I need to get npcscan again",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1350863759,
					["from"] = "Jaymes",
					["msg"] = "yea you do",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1350958043,
					["from"] = "Jaymes",
					["msg"] = "i need you",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1350958048,
					["from"] = "Zaldek",
					["msg"] = "busy",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1350958062,
					["from"] = "Zaldek",
					["msg"] = "whats up",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1350958066,
					["from"] = "Jaymes",
					["msg"] = "rare spawn 2 minutes",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1350958070,
					["from"] = "Zaldek",
					["msg"] = "where",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1350958075,
					["from"] = "Jaymes",
					["msg"] = "i'll summon you",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1350958083,
					["from"] = "Zaldek",
					["msg"] = "go",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1350958084,
					["from"] = "Zaldek",
					["msg"] = "quick",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1350958398,
					["from"] = "Jaymes",
					["msg"] = "thx for cumin cute guy",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1350958403,
					["from"] = "Zaldek",
					["msg"] = "Yarp.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1350958413,
					["from"] = "Zaldek",
					["msg"] = "Just finishin up dailies myself",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1350958418,
					["from"] = "Jaymes",
					["msg"] = "oh lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1350958422,
					["from"] = "Jaymes",
					["msg"] = "in the wastes?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1350958429,
					["from"] = "Zaldek",
					["msg"] = "Vale",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1350958431,
					["from"] = "Jaymes",
					["msg"] = "ah k",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1350958433,
					["from"] = "Zaldek",
					["msg"] = "Theres a quest to talk to four people in SSS",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1350958435,
					["from"] = "Jaymes",
					["msg"] = "i'm doin the mantid guys",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1350958436,
					["from"] = "Zaldek",
					["msg"] = "and then it opens a hub",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1350958445,
					["from"] = "Zaldek",
					["msg"] = "I need to do that next",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1350958458,
					["from"] = "Jaymes",
					["msg"] = "lemme knwo i'll go with u if you want",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1350958464,
					["from"] = "Zaldek",
					["msg"] = "will do",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1351210143,
					["from"] = "Jaymes",
					["msg"] = "WHAT'S GOIN ON THERE QT",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1351210155,
					["from"] = "Jaymes",
					["msg"] = "KNOW I'M SRS CAUSE I'M USIN CAPS",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1351210188,
					["from"] = "Zaldek",
					["msg"] = "WORLD PEEVAYPEE",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1351210191,
					["from"] = "Jaymes",
					["msg"] = ":O",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1351210200,
					["from"] = "Zaldek",
					["msg"] = "Nerds questing got pissed",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1351210204,
					["from"] = "Zaldek",
					["msg"] = "Apparently horde can kill in backup",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1351210206,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1351210211,
					["from"] = "Zaldek",
					["msg"] = "2v1 I can deal with, 7v2 I can't.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1351210217,
					["from"] = "Jaymes",
					["msg"] = ":(",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1351210221,
					["from"] = "Jaymes",
					["msg"] = "need a healer",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1351210234,
					["from"] = "Zaldek",
					["msg"] = "I had to call it quits to finish my dailies before the \"supposed\" raid",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1351210242,
					["from"] = "Jaymes",
					["msg"] = "no r aid?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1351210248,
					["from"] = "Zaldek",
					["msg"] = "Well its scheduled",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1351210252,
					["from"] = "Zaldek",
					["msg"] = "Everyones just flakey",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1351210259,
					["from"] = "Jaymes",
					["msg"] = "nothing changes ;)",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1351210272,
					["from"] = "Zaldek",
					["msg"] = "yep -.-",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1351210275,
					["from"] = "Zaldek",
					["msg"] = "Pisses me off",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1351210279,
					["from"] = "Zaldek",
					["msg"] = "we havent even downed first boss cause of people",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1351210285,
					["from"] = "Zaldek",
					["msg"] = "and other guilds have downed the whole place, some in fucking heroic",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1351210296,
					["from"] = "Jaymes",
					["msg"] = "time to find a new group of pplz",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1351210317,
					["from"] = "Zaldek",
					["msg"] = "TRANSFER TO HORDE YOU SAY?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1351210330,
					["from"] = "Jaymes",
					["msg"] = "ew",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1351210335,
					["from"] = "Jaymes",
					["msg"] = "i didn't say turn into a nigger",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1351210341,
					["from"] = "Zaldek",
					["msg"] = "how did you know I was going troll",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1351210347,
					["from"] = "Jaymes",
					["msg"] = "i'm smurt",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1351210349,
					["from"] = "Zaldek",
					["msg"] = "lulz",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1351210353,
					["from"] = "Jaymes",
					["msg"] = "i know you like that bbc",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1351210359,
					["from"] = "Zaldek",
					["msg"] = "I did kill a person named Rainbowdash though",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1351210361,
					["from"] = "Zaldek",
					["msg"] = "made me feel good inside.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1351210366,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1353205187,
					["from"] = "Jaymes",
					["msg"] = ":O",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1353205241,
					["from"] = "Zaldek",
					["msg"] = "Morning",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1353205246,
					["from"] = "Jaymes",
					["msg"] = "just wake up eh?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1353205257,
					["from"] = "Zaldek",
					["msg"] = "You bet!",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1353205260,
					["from"] = "Jaymes",
					["msg"] = "lucky ass",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1353205270,
					["from"] = "Zaldek",
					["msg"] = "I don't know if I'd go that far",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1353205274,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1353205275,
					["from"] = "Zaldek",
					["msg"] = "but....it was ok",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [172]
				{
					["type"] = 1,
					["time"] = 1353205290,
					["from"] = "Jaymes",
					["msg"] = "work schedule or just stay up all day?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [173]
				{
					["type"] = 1,
					["time"] = 1353205315,
					["from"] = "Zaldek",
					["msg"] = "Was helping father with some crazy funeral stuff and running around then I stayed up all yesterday basically",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [174]
				{
					["type"] = 1,
					["time"] = 1353205318,
					["from"] = "Zaldek",
					["msg"] = "so, I slept all day.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [175]
				{
					["type"] = 1,
					["time"] = 1353205322,
					["from"] = "Jaymes",
					["msg"] = "lol damn",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [176]
				{
					["type"] = 1,
					["time"] = 1353205333,
					["from"] = "Zaldek",
					["msg"] = "also my AH is broken, -.-",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [177]
				{
					["type"] = 1,
					["time"] = 1353205337,
					["from"] = "Jaymes",
					["msg"] = "how so",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [178]
				{
					["type"] = 1,
					["time"] = 1353205346,
					["from"] = "Zaldek",
					["msg"] = "forever searching",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [179]
				{
					["type"] = 1,
					["time"] = 1353205348,
					["from"] = "Zaldek",
					["msg"] = "nothing coming up",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [180]
				{
					["type"] = 1,
					["time"] = 1353205357,
					["from"] = "Jaymes",
					["msg"] = "do you have some addon or something",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [181]
				{
					["type"] = 1,
					["time"] = 1353205361,
					["from"] = "Zaldek",
					["msg"] = "Some sort of connection error im sure",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [182]
				{
					["type"] = 1,
					["time"] = 1353205367,
					["from"] = "Zaldek",
					["msg"] = "Newb, just Skada",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [183]
				{
					["type"] = 1,
					["time"] = 1353205371,
					["from"] = "Jaymes",
					["msg"] = "wow",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [184]
				{
					["type"] = 1,
					["time"] = 1353205372,
					["from"] = "Zaldek",
					["msg"] = "*newp...har",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [185]
				{
					["type"] = 1,
					["time"] = 1353205469,
					["from"] = "Zaldek",
					["msg"] = "this game doesnt make much sense",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [186]
				{
					["type"] = 1,
					["time"] = 1353205477,
					["from"] = "Zaldek",
					["msg"] = "why did the mogu build a wall to keep out an enemy that can fly",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [187]
				{
					["type"] = 1,
					["time"] = 1353205486,
					["from"] = "Zaldek",
					["msg"] = "and why are enemies that can fly attacking a wall?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [188]
				{
					["type"] = 1,
					["time"] = 1353205506,
					["from"] = "Jaymes",
					["msg"] = "well the walking ones can't fly",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [189]
				{
					["type"] = 1,
					["time"] = 1353205511,
					["from"] = "Jaymes",
					["msg"] = "and they're swarming",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [190]
				{
					["type"] = 1,
					["time"] = 1353205514,
					["from"] = "Jaymes",
					["msg"] = "so they don't think straight",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [191]
				{
					["type"] = 1,
					["time"] = 1353205520,
					["from"] = "Zaldek",
					["msg"] = "hm.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [192]
				{
					["type"] = 1,
					["time"] = 1353205525,
					["from"] = "Zaldek",
					["msg"] = "SEEMS LIKE A PRETTY COLOSSAL OVERSIGHT",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [193]
				{
					["type"] = 1,
					["time"] = 1353205536,
					["from"] = "Jaymes",
					["msg"] = "kind of like the canadian border",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [194]
				{
					["type"] = 1,
					["time"] = 1353205553,
					["from"] = "Zaldek",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [195]
				["info"] = {
				},
			},
			["Avenging-Duskwood"] = {
				{
					["type"] = 1,
					["time"] = 1349641061,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Avenging-Duskwood",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349641064,
					["from"] = "Avenging-Duskwood",
					["msg"] = "Thanks",
					["inbound"] = true,
					["convo"] = "Avenging-Duskwood",
				}, -- [2]
				["info"] = {
				},
			},
			["Today"] = {
				{
					["type"] = 1,
					["time"] = 1350156286,
					["from"] = "Today",
					["msg"] = "greenlight still around?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350156940,
					["from"] = "Jaymes",
					["msg"] = "who?",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350156953,
					["from"] = "Jaymes",
					["msg"] = "the mage?",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350157000,
					["from"] = "Today",
					["msg"] = "SEC",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350157002,
					["from"] = "Today",
					["msg"] = "sec",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350157004,
					["from"] = "Today",
					["msg"] = "greenlight",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350157005,
					["from"] = "Today",
					["msg"] = "gatsby?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350157014,
					["from"] = "Jaymes",
					["msg"] = "ya no",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350157022,
					["from"] = "Jaymes",
					["msg"] = "hasn't been around for a looong time :(",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350157026,
					["from"] = "Today",
					["msg"] = "ahh :(",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350157030,
					["from"] = "Today",
					["msg"] = "you play in bc?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350157037,
					["from"] = "Jaymes",
					["msg"] = "since vanilla yea",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350157045,
					["from"] = "Today",
					["msg"] = "that your main>",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350157056,
					["from"] = "Today",
					["msg"] = "fuck did you play a shammy in bc",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350157058,
					["from"] = "Jaymes",
					["msg"] = "beichte is i'd guess",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350157060,
					["from"] = "Today",
					["msg"] = "oh",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350157061,
					["from"] = "Today",
					["msg"] = "nvm",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350157138,
					["from"] = "Today",
					["msg"] = "inches still around?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350157158,
					["from"] = "Jaymes",
					["msg"] = "nah he quit sadly",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350157169,
					["from"] = "Today",
					["msg"] = "ic :P",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350157177,
					["from"] = "Today",
					["msg"] = "i have not played in a verrry long time",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350157178,
					["from"] = "Today",
					["msg"] = "just came basck",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350157184,
					["from"] = "Jaymes",
					["msg"] = "ah kewl",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350157188,
					["from"] = "Jaymes",
					["msg"] = "who was your main?",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350157198,
					["from"] = "Today",
					["msg"] = "quibal",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350157214,
					["from"] = "Today",
					["msg"] = "shammy",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350157218,
					["from"] = "Jaymes",
					["msg"] = "ah i've always been bad with names -.-",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350157222,
					["from"] = "Today",
					["msg"] = ":P",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350160964,
					["from"] = "Jaymes",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1350161091,
					["from"] = "Today",
					["msg"] = "your guild accept casuals?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1350161130,
					["from"] = "Jaymes",
					["msg"] = "i believe so, but you'd still have to apply i'm fairly certain",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1350161145,
					["from"] = "Today",
					["msg"] = "ahhh idk if i want to go through the trouble:P",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1350161160,
					["from"] = "Jaymes",
					["msg"] = "ya lol i'm not sure how they do it with casuals ",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1350161174,
					["from"] = "Today",
					["msg"] = "so intertia is still raiding strong?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1350161184,
					["from"] = "Today",
					["msg"] = "still #1 on server?",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1350161199,
					["from"] = "Jaymes",
					["msg"] = "think horde is #1 last i checked",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1350161208,
					["from"] = "Today",
					["msg"] = "sheeet",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1350161209,
					["from"] = "Jaymes",
					["msg"] = "but we have the best alliance side players",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1350161213,
					["from"] = "Today",
					["msg"] = "thats a change",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1350161216,
					["from"] = "Today",
					["msg"] = "yea",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1350161218,
					["from"] = "Today",
					["msg"] = "thats not nerw aha",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1350161221,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1350161228,
					["from"] = "Jaymes",
					["msg"] = "horde got pretty strong last expansion, most ppl went tehre",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1350161230,
					["from"] = "Jaymes",
					["msg"] = "there*",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1350161256,
					["from"] = "Today",
					["msg"] = "i did not play cata",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1350161264,
					["from"] = "Today",
					["msg"] = "barely played wotlk",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1350161280,
					["from"] = "Jaymes",
					["msg"] = "ah damn",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1350161297,
					["from"] = "Today",
					["msg"] = "came back near very end of cata had some old friends get me achieves then left aha",
					["inbound"] = true,
					["convo"] = "Today",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1350161415,
					["from"] = "Jaymes",
					["msg"] = "lol that sucks",
					["inbound"] = false,
					["convo"] = "Today",
				}, -- [49]
				["info"] = {
				},
			},
			["Spankbank"] = {
				{
					["type"] = 1,
					["time"] = 1353021691,
					["from"] = "Jaymes",
					["msg"] = "how many you have",
					["inbound"] = false,
					["convo"] = "Spankbank",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353021697,
					["from"] = "Spankbank",
					["msg"] = "7",
					["inbound"] = true,
					["convo"] = "Spankbank",
				}, -- [2]
				["info"] = {
				},
			},
			["Gladiator"] = {
				{
					["type"] = 1,
					["time"] = 1351478742,
					["from"] = "Jaymes",
					["msg"] = "i'll go",
					["inbound"] = false,
					["convo"] = "Gladiator",
				}, -- [1]
				["info"] = {
				},
			},
			["Zaxa-Dalaran"] = {
				{
					["type"] = 1,
					["time"] = 1351211367,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Zaxa-Dalaran",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351212274,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Zaxa-Dalaran",
				}, -- [2]
				["info"] = {
				},
			},
			["Polycarp"] = {
				{
					["type"] = 1,
					["time"] = 1355029941,
					["from"] = "Polycarp",
					["msg"] = "did u make all those?",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355029946,
					["from"] = "Polycarp",
					["msg"] = "and do u have a 3",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355029958,
					["from"] = "Jaymes",
					["msg"] = "yea i made em lemme c rq",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355029984,
					["from"] = "Jaymes",
					["msg"] = "no think they sold last week",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355029999,
					["from"] = "Polycarp",
					["msg"] = "just saw em 15 mins ago lol",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355030008,
					["from"] = "Jaymes",
					["msg"] = "a three of tigers?",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355030009,
					["from"] = "Polycarp",
					["msg"] = "the 5's anyway",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355030016,
					["from"] = "Jaymes",
					["msg"] = "oh yea i have the 5, i don't have the 3s",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355030022,
					["from"] = "Polycarp",
					["msg"] = "ah",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1355030034,
					["from"] = "Polycarp",
					["msg"] = "how much u want",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1355030047,
					["from"] = "Jaymes",
					["msg"] = "3k?",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1355030067,
					["from"] = "Polycarp",
					["msg"] = "ur rich rmember! i aint",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1355030073,
					["from"] = "Jaymes",
					["msg"] = "2 noodz?",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1355030078,
					["from"] = "Polycarp",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1355030090,
					["from"] = "Jaymes",
					["msg"] = "2k and a nood imo",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1355030136,
					["from"] = "Polycarp",
					["msg"] = "2500",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1355030145,
					["from"] = "Jaymes",
					["msg"] = "and no noodz?",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1355030151,
					["from"] = "Jaymes",
					["msg"] = "sigh you're difficult",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1355030251,
					["from"] = "Polycarp",
					["msg"] = "ty sir",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1355030289,
					["from"] = "Jaymes",
					["msg"] = "anytime boy",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1355031456,
					["from"] = "Polycarp",
					["msg"] = "whats the best herb to buy to mill",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1355031460,
					["from"] = "Polycarp",
					["msg"] = "cheapest",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1355031487,
					["from"] = "Jaymes",
					["msg"] = "sec",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1355031515,
					["from"] = "Jaymes",
					["msg"] = "the best to mill is fool's cap",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1355031520,
					["from"] = "Jaymes",
					["msg"] = "cheapest is green tea",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1355031531,
					["from"] = "Polycarp",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1355031542,
					["from"] = "Jaymes",
					["msg"] = "depends lately tho since they reduced the spawn rate",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [27]
				["info"] = {
				},
			},
			["Nightsbane-Doomhammer"] = {
				{
					["type"] = 1,
					["time"] = 1351647187,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Nightsbane-Doomhammer",
				}, -- [1]
				["info"] = {
				},
			},
			["Adile"] = {
				{
					["type"] = 1,
					["time"] = 1353021840,
					["from"] = "Adile",
					["msg"] = "so question.",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353021858,
					["from"] = "Adile",
					["msg"] = "I bought this case for my MBP laptop but dont really use it. ",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353021869,
					["from"] = "Jaymes",
					["msg"] = "ok",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353021872,
					["from"] = "Adile",
					["msg"] = "I feel that it gets to hot when i play wow",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353021874,
					["from"] = "Jaymes",
					["msg"] = "another thing you'll return",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353021890,
					["from"] = "Adile",
					["msg"] = "Would you want it for your laptop at work?",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353021897,
					["from"] = "Adile",
					["msg"] = "Got it online lol so I cant",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353021901,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353021910,
					["from"] = "Jaymes",
					["msg"] = "thanks but they gave me an incase sleeve with mine",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353021934,
					["from"] = "Adile",
					["msg"] = "ah ok",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1353021952,
					["from"] = "Adile",
					["msg"] = "its a hard case... I didnt know if you really even cared that much ... but thought becaues it was for free",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1353021972,
					["from"] = "Jaymes",
					["msg"] = "like",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1353021979,
					["from"] = "Jaymes",
					["msg"] = "a hardcase you have for your phone?",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1353021985,
					["from"] = "Adile",
					["msg"] = "yeah ",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1353021989,
					["from"] = "Jaymes",
					["msg"] = "weird",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1353021990,
					["from"] = "Adile",
					["msg"] = "hard plastic",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1353021998,
					["from"] = "Jaymes",
					["msg"] = "i never liked those :P",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1353022002,
					["from"] = "Adile",
					["msg"] = "i dont either",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1353022003,
					["from"] = "Jaymes",
					["msg"] = "i like sleeves",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1353022015,
					["from"] = "Jaymes",
					["msg"] = "what did you get it for?",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1353022016,
					["from"] = "Adile",
					["msg"] = "I need to get one of those",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1353022017,
					["from"] = "Jaymes",
					["msg"] = "just protection?",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1353022020,
					["from"] = "Adile",
					["msg"] = "yeah",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1353022022,
					["from"] = "Jaymes",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1353022029,
					["from"] = "Jaymes",
					["msg"] = "only thing i really need is",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1353022043,
					["from"] = "Jaymes",
					["msg"] = "let me find the link",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1353022112,
					["from"] = "Jaymes",
					["msg"] = "http://www.moshimonde.com/product/palmguard.aspx",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1353022145,
					["from"] = "Adile",
					["msg"] = "thats nice.",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1353022152,
					["from"] = "Adile",
					["msg"] = "the one I have goes on the outside",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1353022157,
					["from"] = "Adile",
					["msg"] = "both top and bottom",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1353022164,
					["from"] = "Jaymes",
					["msg"] = "yea this one is more for protecting the aluminum from your sweat",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1353022176,
					["from"] = "Jaymes",
					["msg"] = "which is the biggest threat, i wouldn't drop mine lol",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1353022231,
					["from"] = "Adile",
					["msg"] = "haha I sent you a e-mail pic",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1353022279,
					["from"] = "Jaymes",
					["msg"] = "yea that's gross",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1353022298,
					["from"] = "Jaymes",
					["msg"] = "get an incase sleeve",
					["inbound"] = false,
					["convo"] = "Adile",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1353022311,
					["from"] = "Adile",
					["msg"] = "roger that",
					["inbound"] = true,
					["convo"] = "Adile",
				}, -- [36]
				["info"] = {
				},
			},
			["Tipsytank-Doomhammer"] = {
				{
					["type"] = 1,
					["time"] = 1350165024,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Tipsytank-Doomhammer",
				}, -- [1]
				["info"] = {
				},
			},
			["Kelyndra"] = {
				{
					["type"] = 1,
					["time"] = 1353133536,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Kelyndra",
				}, -- [1]
				["info"] = {
				},
			},
			["Wrangled"] = {
				{
					["type"] = 1,
					["time"] = 1353733410,
					["from"] = "Jaymes",
					["msg"] = "how much and how many stacks",
					["inbound"] = false,
					["convo"] = "Wrangled",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353733465,
					["from"] = "Wrangled",
					["msg"] = "name a price and amount",
					["inbound"] = true,
					["convo"] = "Wrangled",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353733493,
					["from"] = "Jaymes",
					["msg"] = "i'll take all you have for a reasonable price",
					["inbound"] = false,
					["convo"] = "Wrangled",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353733507,
					["from"] = "Wrangled",
					["msg"] = "i have quite a bit",
					["inbound"] = true,
					["convo"] = "Wrangled",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353733514,
					["from"] = "Wrangled",
					["msg"] = "i can go 17g a stack?",
					["inbound"] = true,
					["convo"] = "Wrangled",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353733518,
					["from"] = "Jaymes",
					["msg"] = "that'd what i'm looking for is a bit",
					["inbound"] = false,
					["convo"] = "Wrangled",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353733556,
					["from"] = "Wrangled",
					["msg"] = "well i have about 40 stacks",
					["inbound"] = true,
					["convo"] = "Wrangled",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353733612,
					["from"] = "Jaymes",
					["msg"] = "ah thx, i'm kinda lookin for a few bank tabs full",
					["inbound"] = false,
					["convo"] = "Wrangled",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353733654,
					["from"] = "Wrangled",
					["msg"] = "i have 58 stacks",
					["inbound"] = true,
					["convo"] = "Wrangled",
				}, -- [9]
				["info"] = {
				},
			},
			["Cordelia"] = {
				{
					["type"] = 1,
					["time"] = 1350746809,
					["from"] = "Cordelia",
					["msg"] = "this",
					["inbound"] = true,
					["convo"] = "Cordelia",
				}, -- [1]
				["info"] = {
				},
			},
			["Destinyroses"] = {
				{
					["type"] = 1,
					["time"] = 1351649734,
					["from"] = "Jaymes",
					["msg"] = "how much/many",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351649746,
					["from"] = "Destinyroses",
					["msg"] = "50 a stack and alot",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351649781,
					["from"] = "Jaymes",
					["msg"] = "i'll buy it all if you can do a little better on the price",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351649792,
					["from"] = "Destinyroses",
					["msg"] = "what are u looking at",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351649801,
					["from"] = "Destinyroses",
					["msg"] = "45g a stack ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351649809,
					["from"] = "Jaymes",
					["msg"] = "sure for everythin you have",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351649824,
					["from"] = "Destinyroses",
					["msg"] = "you dont want all i have lol ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351649829,
					["from"] = "Jaymes",
					["msg"] = "yea i do",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351649834,
					["from"] = "Destinyroses",
					["msg"] = "im the guild whore i have 3 guild tabs full ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351649844,
					["from"] = "Jaymes",
					["msg"] = "ok so gimme a good price for em",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351649852,
					["from"] = "Jaymes",
					["msg"] = "i'm the guild whore too",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351649864,
					["from"] = "Destinyroses",
					["msg"] = "i got to make repair mony lol ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351649869,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351649878,
					["from"] = "Destinyroses",
					["msg"] = "45g is 20g less then ah thats a good price",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351649906,
					["from"] = "Jaymes",
					["msg"] = "how bout we start with 1 bank tab and see how you like the space",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351649967,
					["from"] = "Destinyroses",
					["msg"] = "my guild has 4 guild banks for officers lol i have 2 guild bone dry i dont need space lol ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1351649984,
					["from"] = "Jaymes",
					["msg"] = "ok well let me know how much you want to sell",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1351650003,
					["from"] = "Destinyroses",
					["msg"] = "ill do it all ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1351650017,
					["from"] = "Jaymes",
					["msg"] = "i'll do a tab for 45g/stack, not all 3",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1351650019,
					["from"] = "Destinyroses",
					["msg"] = "if thats what u want you want to cod or trade",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1351650021,
					["from"] = "Jaymes",
					["msg"] = "gonna have to do better",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1351650028,
					["from"] = "Jaymes",
					["msg"] = "for all 3",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1351650028,
					["from"] = "Destinyroses",
					["msg"] = "ok will do a tac then ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1351650032,
					["from"] = "Jaymes",
					["msg"] = "k",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1351650034,
					["from"] = "Destinyroses",
					["msg"] = "tab",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1351650043,
					["from"] = "Destinyroses",
					["msg"] = "do you want to trade or cod",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1351650060,
					["from"] = "Jaymes",
					["msg"] = "i'll trade on vergottlicht, brb",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [27]
				["info"] = {
				},
			},
			["Mormadin"] = {
				{
					["type"] = 1,
					["time"] = 1350351070,
					["from"] = "Jaymes",
					["msg"] = "how much a stack",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350351097,
					["from"] = "Mormadin",
					["msg"] = "for which?",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350351103,
					["from"] = "Jaymes",
					["msg"] = "both",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350351110,
					["from"] = "Mormadin",
					["msg"] = "depends on how many you want to buy lol",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350351115,
					["from"] = "Jaymes",
					["msg"] = "all",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350351123,
					["from"] = "Mormadin",
					["msg"] = "I have over 200 stacks of each",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350351132,
					["from"] = "Jaymes",
					["msg"] = "yea how much for them all then",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350351188,
					["from"] = "Mormadin",
					["msg"] = "50g  |cffffffff|Hitem:72234:0:0:0:0:0:0:2061158912:85:0:0|h[Green Tea Leaf]|h|r, 70  |cffffffff|Hitem:72092:0:0:0:0:0:0:1131793792:85:0:0|h[Ghost Iron Ore]|h|r",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350351244,
					["from"] = "Jaymes",
					["msg"] = "i'll give you 10k for 200 stacks of the ghost iron",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350351258,
					["from"] = "Mormadin",
					["msg"] = "yeah, NO",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350351264,
					["from"] = "Jaymes",
					["msg"] = "ok",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350351271,
					["from"] = "Mormadin",
					["msg"] = "that's such a low ball offer",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350351280,
					["from"] = "Jaymes",
					["msg"] = "gl selling it all at once",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350351286,
					["from"] = "Mormadin",
					["msg"] = "I don't need to lol",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350351290,
					["from"] = "Jaymes",
					["msg"] = "hf then",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350351296,
					["from"] = "Mormadin",
					["msg"] = "and at that offer, I'd rather take my time ",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350351314,
					["from"] = "Jaymes",
					["msg"] = "that's fine i buy bulk from sellers, not small times shit",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350351321,
					["from"] = "Mormadin",
					["msg"] = "yeah small time my ass",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [18]
				["info"] = {
				},
			},
			["Jus"] = {
				{
					["type"] = 1,
					["time"] = 1349748134,
					["from"] = "Jaymes",
					["msg"] = "sorry was alt tabbed lol",
					["inbound"] = false,
					["convo"] = "Jus",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349748141,
					["from"] = "Jus",
					["msg"] = "np",
					["inbound"] = true,
					["convo"] = "Jus",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349748149,
					["from"] = "Jus",
					["msg"] = "I got those traning sticks for my pet lol",
					["inbound"] = true,
					["convo"] = "Jus",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349748175,
					["from"] = "Jaymes",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Jus",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349748181,
					["from"] = "Jaymes",
					["msg"] = "i need something flashy",
					["inbound"] = false,
					["convo"] = "Jus",
				}, -- [5]
				["info"] = {
				},
			},
			["Ardrhys-Undermine"] = {
				{
					["type"] = 1,
					["time"] = 1350098148,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Ardrhys-Undermine",
				}, -- [1]
				["info"] = {
				},
			},
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1350146005,
					["from"] = "Gip",
					["msg"] = " |Hitem:89611:0:0:0:0:0:0:29651260:90:0:0|h[Quilen Statuette]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350146046,
					["from"] = "Jaymes",
					["msg"] = " |Hitem:80779:0:0:0:0:0:0:1563514240:87:0:0|h[Mirror Strider Emblem]|h",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350167178,
					["from"] = "Gip",
					["msg"] = " |Hitem:87208:0:0:0:0:0:0:522778336:90:0:0|h[Sigil of Power]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350957972,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351306683,
					["from"] = "Gip",
					["msg"] = "you missed this",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351306688,
					["from"] = "Gip",
					["msg"] = " |Hachievement:7438:05800000000306BE:1:10:26:12:4294967295:4294967295:4294967295:4294967295|h[Could We Find More Like That?]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351733325,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = "Skada: Damage for Total, 00:22:37 - 21:17:25:",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 1. Jaymes   86.76M (55935.3, 39.7%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 2. Cantankarus   51.47M (33187.7, 23.6%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 3. Jarc   43.51M (30552.5, 19.9%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 4. Rawrawrest   31.47M (21600.0, 14.4%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 5. Light's Hammer   4.30M (9594.1, 2.0%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 6. Faethe   726.2K (476.2, 0.3%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 7. Venomous Snake   29.5K (116.7, 0.0%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1352859445,
					["from"] = "Jaymes",
					["msg"] = " 8. Viper   19.4K (85.7, 0.0%)",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352859448,
					["from"] = "Jaymes",
					["msg"] = "baseline",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1355545237,
					["from"] = "Gip",
					["msg"] = "are you naping?",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1355545287,
					["from"] = "Jaymes",
					["msg"] = "after i post my auctions",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1355545297,
					["from"] = "Gip",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1355545335,
					["from"] = "Gip",
					["msg"] = "nothing important, can wait until you wake up. ",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1355545410,
					["from"] = "Jaymes",
					["msg"] = "k",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [22]
				["info"] = {
				},
			},
			["Chronz"] = {
				{
					["type"] = 1,
					["time"] = 1350261168,
					["from"] = "Chronz",
					["msg"] = "what's a scam? ",
					["inbound"] = true,
					["convo"] = "Chronz",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350261206,
					["from"] = "Chronz",
					["msg"] = "oh that 30 days gametime nvm",
					["inbound"] = true,
					["convo"] = "Chronz",
				}, -- [2]
				["info"] = {
				},
			},
			["Tudd"] = {
				{
					["type"] = 1,
					["time"] = 1349744007,
					["from"] = "Tudd",
					["msg"] = "It's so fucking cold in this place.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349744010,
					["from"] = "Tudd",
					["msg"] = "I guess the heat doesn't work.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349744029,
					["from"] = "Jaymes",
					["msg"] = "get someone to fix that shit",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349744053,
					["from"] = "Tudd",
					["msg"] = "The guy who lives downstairs (who owns the place) is fixing it/getting someone to fix it.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349744118,
					["from"] = "Tudd",
					["msg"] = "It's kinda like I'm homeless... except with TV and computer.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349744122,
					["from"] = "Tudd",
					["msg"] = "And food.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349744123,
					["from"] = "Tudd",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349744132,
					["from"] = "Tudd",
					["msg"] = "And a home.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349744145,
					["from"] = "Tudd",
					["msg"] = "So it's kinda like I'm just cold.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349744283,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349744287,
					["from"] = "Jaymes",
					["msg"] = "yea that's kinda shitty",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349744290,
					["from"] = "Jaymes",
					["msg"] = "where are you?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349744293,
					["from"] = "Jaymes",
					["msg"] = "apartment now?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349744301,
					["from"] = "Jaymes",
					["msg"] = "my room is nice and cozy",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349744305,
					["from"] = "Jaymes",
					["msg"] = "should come here imo",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349744307,
					["from"] = "Tudd",
					["msg"] = "It's a 2 family home",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349744337,
					["from"] = "Tudd",
					["msg"] = "That a family friend owns. And I just rent out a room in the upstairs \"apartment\" with his best friend.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349744350,
					["from"] = "Jaymes",
					["msg"] = "so tell them to turn the fucking heat on",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349744362,
					["from"] = "Tudd",
					["msg"] = "It's messed up I guess lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349744368,
					["from"] = "Jaymes",
					["msg"] = "uh",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349744371,
					["from"] = "Jaymes",
					["msg"] = "it's freezing out lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349744377,
					["from"] = "Tudd",
					["msg"] = "It's not FREEZING here.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349744383,
					["from"] = "Jaymes",
					["msg"] = "40 is freezing",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349744396,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349744470,
					["from"] = "Tudd",
					["msg"] = "You get your monk to 90?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349744475,
					["from"] = "Jaymes",
					["msg"] = "fuck no",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349744476,
					["from"] = "Jaymes",
					["msg"] = "37",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349744492,
					["from"] = "Tudd",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349745006,
					["from"] = "Jaymes",
					["msg"] = "maybe if i had a cute boy to lvl with",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349745010,
					["from"] = "Jaymes",
					["msg"] = "who wasn't flakey",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349745193,
					["from"] = "Tudd",
					["msg"] = "That'd be lame.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349745219,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349745286,
					["from"] = "Tudd",
					["msg"] = "Badlands quests were actually pretty cool",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349745471,
					["from"] = "Jaymes",
					["msg"] = "yea i haven't been there yet",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349745509,
					["from"] = "Tudd",
					["msg"] = "There is this Deathwing questline",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349745520,
					["from"] = "Jaymes",
					["msg"] = "neat",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349745531,
					["from"] = "Tudd",
					["msg"] = "Where you fight through their \"side of the story\"",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349745539,
					["from"] = "Tudd",
					["msg"] = "It's just 3 guys",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349745603,
					["from"] = "Jaymes",
					["msg"] = "have to skype getting gankgd",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349745613,
					["from"] = "Tudd",
					["msg"] = "What?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349745621,
					["from"] = "Jaymes",
					["msg"] = "busy for a min lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349747250,
					["from"] = "Jaymes",
					["msg"] = "yea the sound and stuff was good",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349747256,
					["from"] = "Jaymes",
					["msg"] = "but might need a 2nd look ;)",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349747269,
					["from"] = "Tudd",
					["msg"] = "I'm even more clothed this time...",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349747270,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349747286,
					["from"] = "Jaymes",
					["msg"] = "lame",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349747302,
					["from"] = "Tudd",
					["msg"] = "It's cold bruh",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349747309,
					["from"] = "Jaymes",
					["msg"] = "not in my bed it ain't",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349747314,
					["from"] = "Jaymes",
					["msg"] = "tempur-pedic 4sho",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349747522,
					["from"] = "Tudd",
					["msg"] = "Are you 80:",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349747540,
					["from"] = "Jaymes",
					["msg"] = "what",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349747625,
					["from"] = "Tudd",
					["msg"] = "Needing that mattress?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349747634,
					["from"] = "Jaymes",
					["msg"] = "no but i want to live to be 80",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349747640,
					["from"] = "Jaymes",
					["msg"] = "and that shit is top notch",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349747645,
					["from"] = "Tudd",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349823176,
					["from"] = "Tudd",
					["msg"] = "You ever going to hit 90?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349823221,
					["from"] = "Tudd",
					["msg"] = "Also, do you an John ever talk? Does your house have 2 kitchens and/or separate wings?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349823229,
					["from"] = "Tudd",
					["msg"] = "So you two can just simply live together, but never interact",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349823613,
					["from"] = "Jaymes",
					["msg"] = "sorry back",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349823627,
					["from"] = "Jaymes",
					["msg"] = "not for awhile lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349823637,
					["from"] = "Jaymes",
					["msg"] = "yea we see each other every day lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349823654,
					["from"] = "Jaymes",
					["msg"] = "we just don't discuss you or what you say to us, sorry to burst your bubble",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1351645000,
					["from"] = "Tudd",
					["msg"] = "Oh wow, you are 90?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1351645010,
					["from"] = "Jaymes",
					["msg"] = "been 90 for awhile",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1351645025,
					["from"] = "Tudd",
					["msg"] = "2 days is a while?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1351645034,
					["from"] = "Jaymes",
					["msg"] = "prolly more like a week :P",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1351645039,
					["from"] = "Jaymes",
					["msg"] = "mister i haven't been on in forever",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1351645076,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1351648493,
					["from"] = "Jaymes",
					["msg"] = "what are you doin",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1351648506,
					["from"] = "Tudd",
					["msg"] = "Battling critters",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1351648524,
					["from"] = "Jaymes",
					["msg"] = "can i use you for a raid rq",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1351648724,
					["from"] = "Tudd",
					["msg"] = "Yeah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1351648728,
					["from"] = "Tudd",
					["msg"] = "Sorry, was talkin gon the phone",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1351648733,
					["from"] = "Jaymes",
					["msg"] = "cute",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1351648738,
					["from"] = "Tudd",
					["msg"] = "What're you doing?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1351648768,
					["from"] = "Jaymes",
					["msg"] = "tryin to get  |Hitem:50761:3789:3518:0:0:0:0:1583747584:90:0:0|h[Citadel Enforcer's Claymore]|h for my felguard",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1351648779,
					["from"] = "Tudd",
					["msg"] = "Want help?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1351648785,
					["from"] = "Jaymes",
					["msg"] = "if you'd like to come sure",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1351648802,
					["from"] = "Tudd",
					["msg"] = "Yeah I can, I don't really want to do anything otherwise.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1351648806,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1351648811,
					["from"] = "Jaymes",
					["msg"] = "i need to get back on my pets",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1351648815,
					["from"] = "Jaymes",
					["msg"] = "haven't battled in awhile",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1351648822,
					["from"] = "Tudd",
					["msg"] = "What raid is this?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1351648828,
					["from"] = "Jaymes",
					["msg"] = "icecrown citadel",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1351648836,
					["from"] = "Tudd",
					["msg"] = "You need a port?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1351648837,
					["from"] = "Jaymes",
					["msg"] = "just the first boss",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1351648843,
					["from"] = "Jaymes",
					["msg"] = "nah i'm here  |Hitem:48933:0:0:0:0:0:0:764408512:90:0:0|h[Wormhole Generator: Northrend]|h",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1351648849,
					["from"] = "Jaymes",
					["msg"] = "but ty ;)",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1351648914,
					["from"] = "Tudd",
					["msg"] = "Yeah w/e",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1351648965,
					["from"] = "Tudd",
					["msg"] = "idk if I've ever done this",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1351648970,
					["from"] = "Jaymes",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1351648991,
					["from"] = "Jaymes",
					["msg"] = "the first boss is pretty slick",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1351648994,
					["from"] = "Jaymes",
					["msg"] = "his model is anyway",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1351649010,
					["from"] = "Jaymes",
					["msg"] = "want him as a pet",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1351649019,
					["from"] = "Tudd",
					["msg"] = "I don't even remember how to get in",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1351649031,
					["from"] = "Jaymes",
					["msg"] = "front of the stairs",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1351649036,
					["from"] = "Jaymes",
					["msg"] = "leading up to the enterance lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1351649042,
					["from"] = "Tudd",
					["msg"] = "Ah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1351649250,
					["from"] = "Tudd",
					["msg"] = "Sorry, was talking to the guy I live with about this tattoo show he's watching",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1352255698,
					["from"] = "Jaymes",
					["msg"] = "goin to icc if you wanted to join",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1352255803,
					["from"] = "Tudd",
					["msg"] = "Bleh",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1352255810,
					["from"] = "Tudd",
					["msg"] = "Trying to finish these golden lotus dailies",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1352255819,
					["from"] = "Jaymes",
					["msg"] = "kk",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1352255843,
					["from"] = "Jaymes",
					["msg"] = "then let me use you for the raid",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1352255854,
					["from"] = "Tudd",
					["msg"] = "Can I still do quests though?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1352255860,
					["from"] = "Jaymes",
					["msg"] = "yea they changed it",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1352255863,
					["from"] = "Tudd",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1352257398,
					["from"] = "Jaymes",
					["msg"] = "one more to go",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1352257402,
					["from"] = "Jaymes",
					["msg"] = "thx ;)",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1352257434,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1352257450,
					["from"] = "Jaymes",
					["msg"] = "they really need to remove the stupid raid lockouts for legacy raids",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1352257464,
					["from"] = "Jaymes",
					["msg"] = "or have a mode where you get no achvs.",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1352257467,
					["from"] = "Jaymes",
					["msg"] = "and just go for loot",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1352257620,
					["from"] = "Tudd",
					["msg"] = "I would just run ony all day",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1352257628,
					["from"] = "Jaymes",
					["msg"] = "for what item",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1352257632,
					["from"] = "Jaymes",
					["msg"] = "just the helm?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1352257640,
					["from"] = "Tudd",
					["msg"] = "Nah... just to do. lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1352257649,
					["from"] = "Tudd",
					["msg"] = "Was always my favorite raid",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1352257658,
					["from"] = "Tudd",
					["msg"] = "I did a weekly ony back in vanilla",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1352257665,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1352257668,
					["from"] = "Tudd",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1355692916,
					["from"] = "Tudd",
					["msg"] = "Hey",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1355692924,
					["from"] = "Jaymes",
					["msg"] = "sup",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1355692940,
					["from"] = "Tudd",
					["msg"] = "Not too much. Just got back from running an errand. Had to exchange my curtain and get another",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1355692944,
					["from"] = "Tudd",
					["msg"] = "Got two actually",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1355692980,
					["from"] = "Jaymes",
					["msg"] = "lol why",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1355692991,
					["from"] = "Tudd",
					["msg"] = "Well it's two panels",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1355693020,
					["from"] = "Tudd",
					["msg"] = "So now I can spread them apart from the middle and there is a little curtain on each side",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1355693054,
					["from"] = "Jaymes",
					["msg"] = "omg so upscale",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1355693090,
					["from"] = "Tudd",
					["msg"] = "Yeah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1355693270,
					["from"] = "Tudd",
					["msg"] = "I need a new computer",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1355693310,
					["from"] = "Jaymes",
					["msg"] = "what do you have",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1355693369,
					["from"] = "Tudd",
					["msg"] = "An old MacBook Pro",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1355693394,
					["from"] = "Jaymes",
					["msg"] = "how old",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1355693401,
					["from"] = "Tudd",
					["msg"] = "5 years",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1355693405,
					["from"] = "Jaymes",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1355693407,
					["from"] = "Jaymes",
					["msg"] = "imac",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1355693410,
					["from"] = "Jaymes",
					["msg"] = "80% thinner",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1355693412,
					["from"] = "Tudd",
					["msg"] = "Yep, that's what I want",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [139]
				["info"] = {
				},
			},
			["Areno"] = {
				{
					["type"] = 1,
					["time"] = 1351733158,
					["from"] = "Jaymes",
					["msg"] = "i'll go",
					["inbound"] = false,
					["convo"] = "Areno",
				}, -- [1]
				["info"] = {
				},
			},
			["Malumcanis-Azuremyst"] = {
				{
					["type"] = 1,
					["time"] = 1350722010,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Malumcanis-Azuremyst",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350722924,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Malumcanis-Azuremyst",
				}, -- [2]
				["info"] = {
				},
			},
			["Nofoxgiven"] = {
				{
					["type"] = 1,
					["time"] = 1349742407,
					["from"] = "Jaymes",
					["msg"] = "if you want anyone else on ur 86 sometime lemme know sir",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349742432,
					["from"] = "Nofoxgiven",
					["msg"] = "are you horde?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349742447,
					["from"] = "Jaymes",
					["msg"] = "oh is he horde? you cocksucker",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349742453,
					["from"] = "Jaymes",
					["msg"] = "i just saw you playin an 86 yesterday",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350098810,
					["from"] = "Nofoxgiven",
					["msg"] = "hey jim guess whats down in georgia",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350098824,
					["from"] = "Jaymes",
					["msg"] = "a lot of hicks?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350098828,
					["from"] = "Nofoxgiven",
					["msg"] = "wrong",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350098831,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350098831,
					["from"] = "Nofoxgiven",
					["msg"] = "its all niggers",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350098836,
					["from"] = "Jaymes",
					["msg"] = "oh that sucks :(",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350098838,
					["from"] = "Nofoxgiven",
					["msg"] = "EVERYWHERE",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350098839,
					["from"] = "Jaymes",
					["msg"] = "they're in detroit too",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350098845,
					["from"] = "Nofoxgiven",
					["msg"] = "99% fucking black ",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350098848,
					["from"] = "Nofoxgiven",
					["msg"] = "im in hell",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350098849,
					["from"] = "Jaymes",
					["msg"] = "mexicans of the south!",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350098853,
					["from"] = "Jaymes",
					["msg"] = "what are you doin down there",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350098856,
					["from"] = "Nofoxgiven",
					["msg"] = "work",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350098862,
					["from"] = "Jaymes",
					["msg"] = "oh did you transfer?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350098864,
					["from"] = "Nofoxgiven",
					["msg"] = "and i have a couple of klan meetings",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350098869,
					["from"] = "Nofoxgiven",
					["msg"] = "nah just travelling",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350098869,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350098872,
					["from"] = "Jaymes",
					["msg"] = "that's kewl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350098876,
					["from"] = "Jaymes",
					["msg"] = "when you get to come up here?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350098885,
					["from"] = "Nofoxgiven",
					["msg"] = "god knows",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350098893,
					["from"] = "Jaymes",
					["msg"] = "there's less blacks i know that for sure rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350098905,
					["from"] = "Nofoxgiven",
					["msg"] = "in detroit?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350098907,
					["from"] = "Jaymes",
					["msg"] = "eya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350098911,
					["from"] = "Nofoxgiven",
					["msg"] = "thank god",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350098912,
					["from"] = "Jaymes",
					["msg"] = "less than the south anyway",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1350098917,
					["from"] = "Nofoxgiven",
					["msg"] = "sadly i have to go to jersey after this",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1350098921,
					["from"] = "Jaymes",
					["msg"] = "LOL",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1350098922,
					["from"] = "Jaymes",
					["msg"] = "ouch",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1350098925,
					["from"] = "Nofoxgiven",
					["msg"] = "pray to a god you dont believe in for me",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1350098928,
					["from"] = "Jaymes",
					["msg"] = "now you can be with douchebags",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1350098932,
					["from"] = "Nofoxgiven",
					["msg"] = "that i dont blow a bunch of guido's away",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1350098942,
					["from"] = "Jaymes",
					["msg"] = "don't get killed, i like you",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1350098957,
					["from"] = "Nofoxgiven",
					["msg"] = "im a good shot and they're easy to spot",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1350098974,
					["from"] = "Jaymes",
					["msg"] = "babe they have gangs, ur white ass will be raped",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1350098974,
					["from"] = "Nofoxgiven",
					["msg"] = "fucking glitter shirts and faggle pants with sparkles",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1350098987,
					["from"] = "Nofoxgiven",
					["msg"] = "guido gangs?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1350098992,
					["from"] = "Jaymes",
					["msg"] = "oh i didn't mean at the pride parades",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1350098996,
					["from"] = "Jaymes",
					["msg"] = "ya they stick together",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1350098997,
					["from"] = "Nofoxgiven",
					["msg"] = "or you talking about in georgia?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1350099001,
					["from"] = "Jaymes",
					["msg"] = "no jersey",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1350099005,
					["from"] = "Nofoxgiven",
					["msg"] = "ah ok",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1350099006,
					["from"] = "Jaymes",
					["msg"] = "all those fag boys",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1350099009,
					["from"] = "Nofoxgiven",
					["msg"] = "guido pride",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1350099012,
					["from"] = "Jaymes",
					["msg"] = "^",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1350099024,
					["from"] = "Nofoxgiven",
					["msg"] = "this world is terrible jim",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1350099028,
					["from"] = "Jaymes",
					["msg"] = "no lie",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1350099034,
					["from"] = "Jaymes",
					["msg"] = "putting in my naturalization to germany",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1350099042,
					["from"] = "Jaymes",
					["msg"] = "hopefully it doesn't take 5 years to get approved!",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1350099051,
					["from"] = "Nofoxgiven",
					["msg"] = "so you're going to germany?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1350099061,
					["from"] = "Jaymes",
					["msg"] = "well i'll be a dual citizen if it gets approved",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1350099067,
					["from"] = "Jaymes",
					["msg"] = "i need a place to escape to",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1350099073,
					["from"] = "Jaymes",
					["msg"] = "when shit goes down here lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1350099083,
					["from"] = "Nofoxgiven",
					["msg"] = "ya when you vote this country into shit with obama again you fucking hippy",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1350099085,
					["from"] = "Jaymes",
					["msg"] = "and what's better than former nazi germany",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1350099092,
					["from"] = "Jaymes",
					["msg"] = "nah i'm votin jill stein",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1350099099,
					["from"] = "Nofoxgiven",
					["msg"] = "who the fuck is that",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1350099107,
					["from"] = "Jaymes",
					["msg"] = "green party candidate ",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1350099112,
					["from"] = "Nofoxgiven",
					["msg"] = "ah you femster",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1350099115,
					["from"] = "Jaymes",
					["msg"] = "need multiple parties ",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1350099118,
					["from"] = "Jaymes",
					["msg"] = "2 party system = fail",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1350099125,
					["from"] = "Nofoxgiven",
					["msg"] = "need less nigger presidents",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1350099128,
					["from"] = "Nofoxgiven",
					["msg"] = "and less mormons",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1350099132,
					["from"] = "Jaymes",
					["msg"] = "exactly",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1350099138,
					["from"] = "Jaymes",
					["msg"] = "need more me",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1350099140,
					["from"] = "Nofoxgiven",
					["msg"] = "god if ron paul could win",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1350099141,
					["from"] = "Nofoxgiven",
					["msg"] = "gg",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1350099142,
					["from"] = "Jaymes",
					["msg"] = "pretty much",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1350099144,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1350099147,
					["from"] = "Jaymes",
					["msg"] = "HUCKABEE",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1350099150,
					["from"] = "Nofoxgiven",
					["msg"] = "YAY",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1350099155,
					["from"] = "Jaymes",
					["msg"] = "then i'd kill myself",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1350099157,
					["from"] = "Nofoxgiven",
					["msg"] = "i love mike huckabee though",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1350099160,
					["from"] = "Jaymes",
					["msg"] = "stop it",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1350099166,
					["from"] = "Nofoxgiven",
					["msg"] = "he almost called obama a nigger on live TV",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1350099174,
					["from"] = "Jaymes",
					["msg"] = "i'm surprised he didn't",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1350099177,
					["from"] = "Nofoxgiven",
					["msg"] = "id have voted for him simply on that",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1350099179,
					["from"] = "Jaymes",
					["msg"] = "says everything else crazy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1350099187,
					["from"] = "Jaymes",
					["msg"] = "muslim space nigger",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1350099187,
					["from"] = "Nofoxgiven",
					["msg"] = "do you like romney?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1350099194,
					["from"] = "Jaymes",
					["msg"] = "no they're both worthless morons",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1350099200,
					["from"] = "Nofoxgiven",
					["msg"] = "true that",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1350099204,
					["from"] = "Jaymes",
					["msg"] = "only thing good about romney is his vp is hot",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1350099208,
					["from"] = "Jaymes",
					["msg"] = "and i'd tear that boy up",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1350099213,
					["from"] = "Nofoxgiven",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1350099216,
					["from"] = "Nofoxgiven",
					["msg"] = "paul ryan?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1350099218,
					["from"] = "Jaymes",
					["msg"] = "ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1350099228,
					["from"] = "Nofoxgiven",
					["msg"] = "well im sure he can count on your vote then",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1350099233,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1350099248,
					["from"] = "Nofoxgiven",
					["msg"] = "if he gave you a bj would you vote romney?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1350099257,
					["from"] = "Jaymes",
					["msg"] = "no, i'd just use him for a bj",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1350099261,
					["from"] = "Jaymes",
					["msg"] = "but i'd tell him iw ould",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1350099265,
					["from"] = "Nofoxgiven",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1350099267,
					["from"] = "Jaymes",
					["msg"] = "then i'd fuck him",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1350099271,
					["from"] = "Jaymes",
					["msg"] = "and still not vote",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1350099273,
					["from"] = "Nofoxgiven",
					["msg"] = "would you vote for him as president?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1350099277,
					["from"] = "Jaymes",
					["msg"] = "no way",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1350099289,
					["from"] = "Jaymes",
					["msg"] = "i hate everyone really",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1350099290,
					["from"] = "Nofoxgiven",
					["msg"] = "god you're such a hippie bastard",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1350099298,
					["from"] = "Nofoxgiven",
					["msg"] = "we need more war mongers jim",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1350099300,
					["from"] = "Jaymes",
					["msg"] = "i want a pirate party member",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1350099313,
					["from"] = "Jaymes",
					["msg"] = "careful boy you don't want that cute ass gettin drafted :P",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1350099314,
					["from"] = "Nofoxgiven",
					["msg"] = "WE NEED MORE WAR",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1350099321,
					["from"] = "Nofoxgiven",
					["msg"] = "i wouldnt be drafted",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1350099324,
					["from"] = "Jaymes",
					["msg"] = "it helps the economy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1350099328,
					["from"] = "Nofoxgiven",
					["msg"] = "id straight up join and slay the huns",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1350099332,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1350099336,
					["from"] = "Jaymes",
					["msg"] = "i'd be a flamer",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1350099338,
					["from"] = "Jaymes",
					["msg"] = "and get kicked out",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1350099343,
					["from"] = "Nofoxgiven",
					["msg"] = "thats cute",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1350099349,
					["from"] = "Nofoxgiven",
					["msg"] = "but you wouldnt get kicked out",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1350099350,
					["from"] = "Jaymes",
					["msg"] = "or an intelligence officer",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1350099361,
					["from"] = "Nofoxgiven",
					["msg"] = "just dont be flat footed",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1350099370,
					["from"] = "Jaymes",
					["msg"] = "i can run until my asthma kicks in",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1350099380,
					["from"] = "Nofoxgiven",
					["msg"] = "haha you wimp",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1350099390,
					["from"] = "Jaymes",
					["msg"] = "not my fault my mom smoked while pregnant with me",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1350099395,
					["from"] = "Jaymes",
					["msg"] = "she gave me asthma and turned me gay",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1350099402,
					["from"] = "Nofoxgiven",
					["msg"] = "apparently so",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1350099415,
					["from"] = "Nofoxgiven",
					["msg"] = "so smoking causing gay children",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1350099425,
					["from"] = "Nofoxgiven",
					["msg"] = "im going to give my wife LSD and see what happens",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1350099428,
					["from"] = "Jaymes",
					["msg"] = "that's what i told this one white trash bitch in college who was pregnant and smoking",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1350099436,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1350099442,
					["from"] = "Nofoxgiven",
					["msg"] = "she probably quit right after that",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1350099446,
					["from"] = "Jaymes",
					["msg"] = "you might get a black baby",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1350099448,
					["from"] = "Jaymes",
					["msg"] = "with LSD",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1350099457,
					["from"] = "Nofoxgiven",
					["msg"] = "ill throw that shit in a dumpster",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1350099459,
					["from"] = "Jaymes",
					["msg"] = "she'll go nuts and want a big dick in her",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1350099466,
					["from"] = "Jaymes",
					["msg"] = "then next thing you know black baby",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1350099474,
					["from"] = "Nofoxgiven",
					["msg"] = "luckily she will get a big dick in her",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1350099487,
					["from"] = "Jaymes",
					["msg"] = "ya from big daddy bubba",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1350099493,
					["from"] = "Nofoxgiven",
					["msg"] = "nah id have to give her crack for her to need a nig",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1350099494,
					["from"] = "Jaymes",
					["msg"] = "while her white ass husband is out workin",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1350099499,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1350099510,
					["from"] = "Nofoxgiven",
					["msg"] = "ya but i still have a very satisfiable penis",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1350099514,
					["from"] = "Nofoxgiven",
					["msg"] = "im not ashamed",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1350099515,
					["from"] = "Jaymes",
					["msg"] = "idk i don't think polish boys fit the bill",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1350099530,
					["from"] = "Nofoxgiven",
					["msg"] = "polocks are fucking annoying",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1350099531,
					["from"] = "Jaymes",
					["msg"] = "iphone 5 screen might be bigger",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1350099541,
					["from"] = "Nofoxgiven",
					["msg"] = "ur a douche",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1350099544,
					["from"] = "Jaymes",
					["msg"] = "LOL",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1350099551,
					["from"] = "Jaymes",
					["msg"] = "just playin i love ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1350099559,
					["from"] = "Nofoxgiven",
					["msg"] = "i know i love you too jim",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1350099562,
					["from"] = "Jaymes",
					["msg"] = "i'm sure you can put any girl to sleep :)",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1350099590,
					["from"] = "Jaymes",
					["msg"] = "so you stayin by yourself down there or are they putting you up somewhere?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1350099590,
					["from"] = "Nofoxgiven",
					["msg"] = "idk i came in this chicks mouth I ment in TN a couple days ago",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1350099594,
					["from"] = "Nofoxgiven",
					["msg"] = "and made her leave right after",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1350099597,
					["from"] = "Nofoxgiven",
					["msg"] = "by myself",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1350099598,
					["from"] = "Jaymes",
					["msg"] = "lolol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1350099603,
					["from"] = "Jaymes",
					["msg"] = "well she got what she wanted",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1350099610,
					["from"] = "Nofoxgiven",
					["msg"] = "exactly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1350099614,
					["from"] = "Jaymes",
					["msg"] = "i can't get off on oral, need a hole to pound",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1350099624,
					["from"] = "Nofoxgiven",
					["msg"] = "its funny",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1350099629,
					["from"] = "Nofoxgiven",
					["msg"] = "because I had to jerk myself off",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1350099635,
					["from"] = "Nofoxgiven",
					["msg"] = "she gave shitty ass head",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1350099635,
					["from"] = "Jaymes",
					["msg"] = "that sucks",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1350099636,
					["from"] = "Jaymes",
					["msg"] = "ahaha",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1350099641,
					["from"] = "Jaymes",
					["msg"] = "what'd you get her on CL?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1350099648,
					["from"] = "Nofoxgiven",
					["msg"] = "nah the hotel bar",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1350099656,
					["from"] = "Jaymes",
					["msg"] = "CL might have been better",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1350099667,
					["from"] = "Nofoxgiven",
					["msg"] = "lol is that where you find dudes in CL?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1350099671,
					["from"] = "Jaymes",
					["msg"] = "fuck no",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1350099673,
					["from"] = "Jaymes",
					["msg"] = "i don't want HIV",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1350099677,
					["from"] = "Nofoxgiven",
					["msg"] = "ok good",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1350099686,
					["from"] = "Nofoxgiven",
					["msg"] = "i dont want to have to come to your funeral",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1350099692,
					["from"] = "Jaymes",
					["msg"] = "lol ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1350099714,
					["from"] = "Nofoxgiven",
					["msg"] = "i do laugh at hiv patients though",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1350099719,
					["from"] = "Nofoxgiven",
					["msg"] = "im sorry but its hilarious",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1350099722,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1350099730,
					["from"] = "Nofoxgiven",
					["msg"] = "\"I can't believe this happened to me\"",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [172]
				{
					["type"] = 1,
					["time"] = 1350099732,
					["from"] = "Nofoxgiven",
					["msg"] = "i can",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [173]
				{
					["type"] = 1,
					["time"] = 1350099734,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [174]
				{
					["type"] = 1,
					["time"] = 1350099742,
					["from"] = "Jaymes",
					["msg"] = "it's avoidable",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [175]
				{
					["type"] = 1,
					["time"] = 1350099747,
					["from"] = "Nofoxgiven",
					["msg"] = "exactly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [176]
				{
					["type"] = 1,
					["time"] = 1350099755,
					["from"] = "Nofoxgiven",
					["msg"] = "dont use needs and dont fuck men you dont know",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [177]
				{
					["type"] = 1,
					["time"] = 1350099757,
					["from"] = "Jaymes",
					["msg"] = "i mean you can get it from cheating people",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [178]
				{
					["type"] = 1,
					["time"] = 1350099763,
					["from"] = "Jaymes",
					["msg"] = "ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [179]
				{
					["type"] = 1,
					["time"] = 1350099772,
					["from"] = "Jaymes",
					["msg"] = "don't let random guys fuck you in ur house off CL",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [180]
				{
					["type"] = 1,
					["time"] = 1350099774,
					["from"] = "Jaymes",
					["msg"] = "seems easy enough",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [181]
				{
					["type"] = 1,
					["time"] = 1350099779,
					["from"] = "Nofoxgiven",
					["msg"] = "if i ever get hiv im fucking tons of dudes straight up",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [182]
				{
					["type"] = 1,
					["time"] = 1350099785,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [183]
				{
					["type"] = 1,
					["time"] = 1350099789,
					["from"] = "Nofoxgiven",
					["msg"] = "viagra and im good",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [184]
				{
					["type"] = 1,
					["time"] = 1350099791,
					["from"] = "Nofoxgiven",
					["msg"] = "come over",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [185]
				{
					["type"] = 1,
					["time"] = 1350099798,
					["from"] = "Jaymes",
					["msg"] = "just be careful, it's easy for str8 guys to get it from chicks",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [186]
				{
					["type"] = 1,
					["time"] = 1350099802,
					["from"] = "Jaymes",
					["msg"] = "i don't bottom sir",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [187]
				{
					["type"] = 1,
					["time"] = 1350099804,
					["from"] = "Jaymes",
					["msg"] = "sorry :P",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [188]
				{
					["type"] = 1,
					["time"] = 1350099814,
					["from"] = "Jaymes",
					["msg"] = "you'd have to take it",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [189]
				{
					["type"] = 1,
					["time"] = 1350099818,
					["from"] = "Nofoxgiven",
					["msg"] = "its true which is why i wear a condom",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [190]
				{
					["type"] = 1,
					["time"] = 1350099823,
					["from"] = "Jaymes",
					["msg"] = "good boy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [191]
				{
					["type"] = 1,
					["time"] = 1350099829,
					["from"] = "Jaymes",
					["msg"] = "i don't want your funeral either ",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [192]
				{
					["type"] = 1,
					["time"] = 1350099841,
					["from"] = "Nofoxgiven",
					["msg"] = "me either id prefer not to die soon",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [193]
				{
					["type"] = 1,
					["time"] = 1350099860,
					["from"] = "Nofoxgiven",
					["msg"] = "if i got aids from a chick",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [194]
				{
					["type"] = 1,
					["time"] = 1350099860,
					["from"] = "Nofoxgiven",
					["msg"] = "id kill her",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [195]
				{
					["type"] = 1,
					["time"] = 1350099871,
					["from"] = "Jaymes",
					["msg"] = "ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [196]
				{
					["type"] = 1,
					["time"] = 1350099876,
					["from"] = "Jaymes",
					["msg"] = "i'd kill the guy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [197]
				{
					["type"] = 1,
					["time"] = 1350099878,
					["from"] = "Nofoxgiven",
					["msg"] = "like if I started banging dudes",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [198]
				{
					["type"] = 1,
					["time"] = 1350099882,
					["from"] = "Nofoxgiven",
					["msg"] = "its my fauly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [199]
				{
					["type"] = 1,
					["time"] = 1350099890,
					["from"] = "Nofoxgiven",
					["msg"] = "fault should've been careful",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [200]
				{
					["type"] = 1,
					["time"] = 1350099898,
					["from"] = "Nofoxgiven",
					["msg"] = "id go on a rampage",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [201]
				{
					["type"] = 1,
					["time"] = 1350099900,
					["from"] = "Jaymes",
					["msg"] = "well both ways should be careful :P",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [202]
				{
					["type"] = 1,
					["time"] = 1350099902,
					["from"] = "Nofoxgiven",
					["msg"] = "live all my fantasies",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [203]
				{
					["type"] = 1,
					["time"] = 1350099907,
					["from"] = "Jaymes",
					["msg"] = "i'd do it so i wouldn't get caught",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [204]
				{
					["type"] = 1,
					["time"] = 1350099909,
					["from"] = "Nofoxgiven",
					["msg"] = "like robbing a bank",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [205]
				{
					["type"] = 1,
					["time"] = 1350099911,
					["from"] = "Jaymes",
					["msg"] = "i don't wanna die in jail",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [206]
				{
					["type"] = 1,
					["time"] = 1350099920,
					["from"] = "Nofoxgiven",
					["msg"] = "oh id just kill myself",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [207]
				{
					["type"] = 1,
					["time"] = 1350099927,
					["from"] = "Nofoxgiven",
					["msg"] = "fuck going to jail",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [208]
				{
					["type"] = 1,
					["time"] = 1350099927,
					["from"] = "Jaymes",
					["msg"] = "ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [209]
				{
					["type"] = 1,
					["time"] = 1350099929,
					["from"] = "Jaymes",
					["msg"] = "true",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [210]
				{
					["type"] = 1,
					["time"] = 1350099944,
					["from"] = "Jaymes",
					["msg"] = "hopefully they just get a cure so we don't have to deal with that shit ha",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [211]
				{
					["type"] = 1,
					["time"] = 1350099947,
					["from"] = "Nofoxgiven",
					["msg"] = "id buy a ton of ammo and raid the capitol building while congress is in session",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [212]
				{
					["type"] = 1,
					["time"] = 1350099959,
					["from"] = "Jaymes",
					["msg"] = "no one would really be upset about that",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [213]
				{
					["type"] = 1,
					["time"] = 1350099963,
					["from"] = "Nofoxgiven",
					["msg"] = "hmm",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [214]
				{
					["type"] = 1,
					["time"] = 1350099965,
					["from"] = "Jaymes",
					["msg"] = "you'd be praised imo",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [215]
				{
					["type"] = 1,
					["time"] = 1350099972,
					["from"] = "Nofoxgiven",
					["msg"] = "ya i dont want to die a martyr",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [216]
				{
					["type"] = 1,
					["time"] = 1350099975,
					["from"] = "Nofoxgiven",
					["msg"] = "just a badass",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [217]
				{
					["type"] = 1,
					["time"] = 1350099980,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [218]
				{
					["type"] = 1,
					["time"] = 1350099991,
					["from"] = "Nofoxgiven",
					["msg"] = "I dont need shirts with my face 30 years from now being idolized like chegovera",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [219]
				{
					["type"] = 1,
					["time"] = 1350100009,
					["from"] = "Jaymes",
					["msg"] = "ya only hippies wear that shit",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [220]
				{
					["type"] = 1,
					["time"] = 1350100011,
					["from"] = "Nofoxgiven",
					["msg"] = "or however you spell his beaner name",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [221]
				{
					["type"] = 1,
					["time"] = 1350100013,
					["from"] = "Nofoxgiven",
					["msg"] = "exactly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [222]
				{
					["type"] = 1,
					["time"] = 1350100025,
					["from"] = "Nofoxgiven",
					["msg"] = "id kill ryan seacrest for sure",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [223]
				{
					["type"] = 1,
					["time"] = 1350100042,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [224]
				{
					["type"] = 1,
					["time"] = 1350100047,
					["from"] = "Jaymes",
					["msg"] = "i don't know enough about him ",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [225]
				{
					["type"] = 1,
					["time"] = 1350100050,
					["from"] = "Nofoxgiven",
					["msg"] = "metrosexual... the fuck",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [226]
				{
					["type"] = 1,
					["time"] = 1350100052,
					["from"] = "Jaymes",
					["msg"] = "will ferril",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [227]
				{
					["type"] = 1,
					["time"] = 1350100053,
					["from"] = "Jaymes",
					["msg"] = "plz",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [228]
				{
					["type"] = 1,
					["time"] = 1350100056,
					["from"] = "Nofoxgiven",
					["msg"] = "oh hell ya",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [229]
				{
					["type"] = 1,
					["time"] = 1350100061,
					["from"] = "Nofoxgiven",
					["msg"] = "dbag and a half right there",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [230]
				{
					["type"] = 1,
					["time"] = 1350100070,
					["from"] = "Jaymes",
					["msg"] = "annoying as fuck",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [231]
				{
					["type"] = 1,
					["time"] = 1350100072,
					["from"] = "Jaymes",
					["msg"] = "i'd strangle him",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [232]
				{
					["type"] = 1,
					["time"] = 1350100074,
					["from"] = "Jaymes",
					["msg"] = "if i could",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [233]
				{
					["type"] = 1,
					["time"] = 1350100076,
					["from"] = "Nofoxgiven",
					["msg"] = "can I waste george clooney?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [234]
				{
					["type"] = 1,
					["time"] = 1350100080,
					["from"] = "Jaymes",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [235]
				{
					["type"] = 1,
					["time"] = 1350100084,
					["from"] = "Jaymes",
					["msg"] = "he's too old anyway to be hot",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [236]
				{
					["type"] = 1,
					["time"] = 1350100085,
					["from"] = "Nofoxgiven",
					["msg"] = "hmm who else",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [237]
				{
					["type"] = 1,
					["time"] = 1350100088,
					["from"] = "Jaymes",
					["msg"] = "and cocky",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [238]
				{
					["type"] = 1,
					["time"] = 1350100093,
					["from"] = "Nofoxgiven",
					["msg"] = "ya he's a prick",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [239]
				{
					["type"] = 1,
					["time"] = 1350100099,
					["from"] = "Jaymes",
					["msg"] = "everyone on The View",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [240]
				{
					["type"] = 1,
					["time"] = 1350100101,
					["from"] = "Nofoxgiven",
					["msg"] = "MATT DAMON",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [241]
				{
					["type"] = 1,
					["time"] = 1350100103,
					["from"] = "Nofoxgiven",
					["msg"] = "oh FUCK YA",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [242]
				{
					["type"] = 1,
					["time"] = 1350100108,
					["from"] = "Nofoxgiven",
					["msg"] = "ROSIE OFUCKINGDONNEL",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [243]
				{
					["type"] = 1,
					["time"] = 1350100110,
					["from"] = "Jaymes",
					["msg"] = "idk if he's worth the time rofl",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [244]
				{
					["type"] = 1,
					["time"] = 1350100111,
					["from"] = "Nofoxgiven",
					["msg"] = "hell yes",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [245]
				{
					["type"] = 1,
					["time"] = 1350100142,
					["from"] = "Nofoxgiven",
					["msg"] = "i can only hope that if either of us ever get hiv we both have it at the same time",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [246]
				{
					["type"] = 1,
					["time"] = 1350100145,
					["from"] = "Nofoxgiven",
					["msg"] = "killing spree",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [247]
				{
					["type"] = 1,
					["time"] = 1350100150,
					["from"] = "Jaymes",
					["msg"] = "like that movie",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [248]
				{
					["type"] = 1,
					["time"] = 1350100155,
					["from"] = "Nofoxgiven",
					["msg"] = ":D",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [249]
				{
					["type"] = 1,
					["time"] = 1350100155,
					["from"] = "Jaymes",
					["msg"] = "god bless america or something",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [250]
				{
					["type"] = 1,
					["time"] = 1350100158,
					["from"] = "Nofoxgiven",
					["msg"] = "yup",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [251]
				{
					["type"] = 1,
					["time"] = 1350100163,
					["from"] = "Nofoxgiven",
					["msg"] = "that movie made me laugh",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [252]
				{
					["type"] = 1,
					["time"] = 1350100166,
					["from"] = "Jaymes",
					["msg"] = "lol ya",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [253]
				{
					["type"] = 1,
					["time"] = 1350100172,
					["from"] = "Jaymes",
					["msg"] = "just the dark shit i like",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [254]
				{
					["type"] = 1,
					["time"] = 1350100177,
					["from"] = "Nofoxgiven",
					["msg"] = "but you dont like god though",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [255]
				{
					["type"] = 1,
					["time"] = 1350100191,
					["from"] = "Jaymes",
					["msg"] = "when used in a sarcastic context like that i'm fine with it :P",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [256]
				{
					["type"] = 1,
					["time"] = 1350100193,
					["from"] = "Nofoxgiven",
					["msg"] = "are you religious now?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [257]
				{
					["type"] = 1,
					["time"] = 1350100209,
					["from"] = "Jaymes",
					["msg"] = "no sir",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [258]
				{
					["type"] = 1,
					["time"] = 1350100210,
					["from"] = "Nofoxgiven",
					["msg"] = "if not do you need me to help you find jesus?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [259]
				{
					["type"] = 1,
					["time"] = 1350100219,
					["from"] = "Jaymes",
					["msg"] = "ya lemme check in ur ass",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [260]
				{
					["type"] = 1,
					["time"] = 1350100224,
					["from"] = "Jaymes",
					["msg"] = "maybe i'll find em",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [261]
				{
					["type"] = 1,
					["time"] = 1350100228,
					["from"] = "Nofoxgiven",
					["msg"] = "wont find him there",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [262]
				{
					["type"] = 1,
					["time"] = 1350100233,
					["from"] = "Jaymes",
					["msg"] = "i have to be sure",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [263]
				{
					["type"] = 1,
					["time"] = 1350100242,
					["from"] = "Nofoxgiven",
					["msg"] = "try NPH or someone",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [264]
				{
					["type"] = 1,
					["time"] = 1350100245,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [265]
				{
					["type"] = 1,
					["time"] = 1350100260,
					["from"] = "Nofoxgiven",
					["msg"] = "we all know ben affleck is secretly gay",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [266]
				{
					["type"] = 1,
					["time"] = 1350100263,
					["from"] = "Nofoxgiven",
					["msg"] = "try him as well",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [267]
				{
					["type"] = 1,
					["time"] = 1350100265,
					["from"] = "Jaymes",
					["msg"] = "ugh",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [268]
				{
					["type"] = 1,
					["time"] = 1350100268,
					["from"] = "Jaymes",
					["msg"] = "he's annoying as fuck",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [269]
				{
					["type"] = 1,
					["time"] = 1350100271,
					["from"] = "Nofoxgiven",
					["msg"] = "i know",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [270]
				{
					["type"] = 1,
					["time"] = 1350100274,
					["from"] = "Jaymes",
					["msg"] = "i'll take dean from supernatural",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [271]
				{
					["type"] = 1,
					["time"] = 1350100278,
					["from"] = "Nofoxgiven",
					["msg"] = "rofl",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [272]
				{
					["type"] = 1,
					["time"] = 1350100281,
					["from"] = "Jaymes",
					["msg"] = "i'd let him fuck me with that voice",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [273]
				{
					["type"] = 1,
					["time"] = 1350100282,
					["from"] = "Jaymes",
					["msg"] = "shit",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [274]
				{
					["type"] = 1,
					["time"] = 1350100296,
					["from"] = "Nofoxgiven",
					["msg"] = "how about tyler perry?",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [275]
				{
					["type"] = 1,
					["time"] = 1350100309,
					["from"] = "Nofoxgiven",
					["msg"] = "or R Kelly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [276]
				{
					["type"] = 1,
					["time"] = 1350100398,
					["from"] = "Jaymes",
					["msg"] = "tyler perry yes",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [277]
				{
					["type"] = 1,
					["time"] = 1350100409,
					["from"] = "Jaymes",
					["msg"] = "prolly rkelly is good too lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [278]
				{
					["type"] = 1,
					["time"] = 1350100418,
					["from"] = "Nofoxgiven",
					["msg"] = "he might pee on me",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [279]
				{
					["type"] = 1,
					["time"] = 1350100422,
					["from"] = "Jaymes",
					["msg"] = "but that guy needs to stop making retarded movies/shows that i don't watch",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [280]
				{
					["type"] = 1,
					["time"] = 1350100426,
					["from"] = "Jaymes",
					["msg"] = "do you like that?'",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [281]
				{
					["type"] = 1,
					["time"] = 1352257548,
					["from"] = "Nofoxgiven",
					["msg"] = "someone needs to blow obama away kthx",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [282]
				{
					["type"] = 1,
					["time"] = 1352257579,
					["from"] = "Jaymes",
					["msg"] = "take congress with him",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [283]
				{
					["type"] = 1,
					["time"] = 1352257594,
					["from"] = "Nofoxgiven",
					["msg"] = "please",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [284]
				{
					["type"] = 1,
					["time"] = 1352257598,
					["from"] = "Nofoxgiven",
					["msg"] = "fucking hate this shit",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [285]
				{
					["type"] = 1,
					["time"] = 1352257611,
					["from"] = "Jaymes",
					["msg"] = "lol yea need a few more years to get out of debt then i'm outta",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [286]
				{
					["type"] = 1,
					["time"] = 1352257637,
					["from"] = "Nofoxgiven",
					["msg"] = "ya dude im thinking about moving now",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [287]
				{
					["type"] = 1,
					["time"] = 1352257644,
					["from"] = "Nofoxgiven",
					["msg"] = "like fuck this shit",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [288]
				{
					["type"] = 1,
					["time"] = 1352257648,
					["from"] = "Jaymes",
					["msg"] = "anywhere in particular?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [289]
				{
					["type"] = 1,
					["time"] = 1352257665,
					["from"] = "Nofoxgiven",
					["msg"] = "idk fuck if we're gonna be liberals ill just move somewhere where it's done right",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [290]
				{
					["type"] = 1,
					["time"] = 1352257669,
					["from"] = "Nofoxgiven",
					["msg"] = "england or germany",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [291]
				{
					["type"] = 1,
					["time"] = 1352257673,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [292]
				{
					["type"] = 1,
					["time"] = 1352257679,
					["from"] = "Jaymes",
					["msg"] = "i'm sick of half ass bs",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [293]
				{
					["type"] = 1,
					["time"] = 1352257690,
					["from"] = "Nofoxgiven",
					["msg"] = "we didnt get where we are today by being retards",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [294]
				{
					["type"] = 1,
					["time"] = 1352257692,
					["from"] = "Jaymes",
					["msg"] = "at least they have no electoral college and the people vote",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [295]
				{
					["type"] = 1,
					["time"] = 1352257694,
					["from"] = "Nofoxgiven",
					["msg"] = "this is just saddening",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [296]
				{
					["type"] = 1,
					["time"] = 1352257708,
					["from"] = "Nofoxgiven",
					["msg"] = "we need more than 2 parties in fucking america",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [297]
				{
					["type"] = 1,
					["time"] = 1352257731,
					["from"] = "Jaymes",
					["msg"] = "idk how people think 2 parties can adequately represent all of us",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [298]
				{
					["type"] = 1,
					["time"] = 1352257735,
					["from"] = "Jaymes",
					["msg"] = "the UK is like 1/5 the size",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [299]
				{
					["type"] = 1,
					["time"] = 1352257737,
					["from"] = "Jaymes",
					["msg"] = "and they have dozens",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [300]
				{
					["type"] = 1,
					["time"] = 1352257764,
					["from"] = "Nofoxgiven",
					["msg"] = "exactly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [301]
				{
					["type"] = 1,
					["time"] = 1352257780,
					["from"] = "Jaymes",
					["msg"] = "and their pound is strong",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [302]
				{
					["type"] = 1,
					["time"] = 1352257781,
					["from"] = "Jaymes",
					["msg"] = "or at least",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [303]
				{
					["type"] = 1,
					["time"] = 1352257783,
					["from"] = "Nofoxgiven",
					["msg"] = "im fiscally conservative in the fact I dont want to keep paying a shit ton of taxes for niggers and people who dont deserve it",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [304]
				{
					["type"] = 1,
					["time"] = 1352257785,
					["from"] = "Jaymes",
					["msg"] = "stronger than the USD lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [305]
				{
					["type"] = 1,
					["time"] = 1352257789,
					["from"] = "Nofoxgiven",
					["msg"] = "exactly",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [306]
				{
					["type"] = 1,
					["time"] = 1352257796,
					["from"] = "Nofoxgiven",
					["msg"] = "thanks obama left us worse off than bush did",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [307]
				{
					["type"] = 1,
					["time"] = 1352257799,
					["from"] = "Nofoxgiven",
					["msg"] = "so wonderful",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [308]
				{
					["type"] = 1,
					["time"] = 1352257803,
					["from"] = "Jaymes",
					["msg"] = "i didn't think it was possible",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [309]
				{
					["type"] = 1,
					["time"] = 1352257804,
					["from"] = "Jaymes",
					["msg"] = "but yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [310]
				{
					["type"] = 1,
					["time"] = 1352257811,
					["from"] = "Jaymes",
					["msg"] = "sometimes i'm too optimistic lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [311]
				{
					["type"] = 1,
					["time"] = 1352257853,
					["from"] = "Jaymes",
					["msg"] = "how do you feel about flat tax ideas",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [312]
				{
					["type"] = 1,
					["time"] = 1352257923,
					["from"] = "Nofoxgiven",
					["msg"] = "dude i love it",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [313]
				{
					["type"] = 1,
					["time"] = 1352257939,
					["from"] = "Nofoxgiven",
					["msg"] = "flat tax is smarter than what we have now",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [314]
				{
					["type"] = 1,
					["time"] = 1352257945,
					["from"] = "Nofoxgiven",
					["msg"] = "idk what you think but our shit sucks",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [315]
				{
					["type"] = 1,
					["time"] = 1352257957,
					["from"] = "Jaymes",
					["msg"] = "nah i was just curious",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [316]
				{
					["type"] = 1,
					["time"] = 1352257959,
					["from"] = "Nofoxgiven",
					["msg"] = "and if they do that they need to get rid of minimum wage laws",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [317]
				{
					["type"] = 1,
					["time"] = 1352257961,
					["from"] = "Jaymes",
					["msg"] = "how you felt about it",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [318]
				{
					["type"] = 1,
					["time"] = 1352257974,
					["from"] = "Jaymes",
					["msg"] = "and affirmative action",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [319]
				{
					["type"] = 1,
					["time"] = 1352257976,
					["from"] = "Nofoxgiven",
					["msg"] = "well i understand people with billions of dollars need to pay more",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [320]
				{
					["type"] = 1,
					["time"] = 1352257979,
					["from"] = "Nofoxgiven",
					["msg"] = "that too",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [321]
				{
					["type"] = 1,
					["time"] = 1352257994,
					["from"] = "Nofoxgiven",
					["msg"] = "i get the leveling the playing field",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [322]
				{
					["type"] = 1,
					["time"] = 1352257996,
					["from"] = "Jaymes",
					["msg"] = "i don't think they do if the gov. just stop letting corporations away with paying 0 taxes",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [323]
				{
					["type"] = 1,
					["time"] = 1352258017,
					["from"] = "Nofoxgiven",
					["msg"] = "right",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [324]
				{
					["type"] = 1,
					["time"] = 1352258026,
					["from"] = "Nofoxgiven",
					["msg"] = "im so sick of politics in this country",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [325]
				{
					["type"] = 1,
					["time"] = 1352258027,
					["from"] = "Jaymes",
					["msg"] = "i mean apple isn't paying taxes, and it's the most profitable company on the planet",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [326]
				{
					["type"] = 1,
					["time"] = 1352258029,
					["from"] = "Jaymes",
					["msg"] = "it's crazy lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [327]
				{
					["type"] = 1,
					["time"] = 1352258048,
					["from"] = "Jaymes",
					["msg"] = "yea i'm just sick of people not realizing how bad it is",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [328]
				{
					["type"] = 1,
					["time"] = 1352258050,
					["from"] = "Nofoxgiven",
					["msg"] = "well hey they're keep the genius's employed",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [329]
				{
					["type"] = 1,
					["time"] = 1352258050,
					["from"] = "Jaymes",
					["msg"] = "or not caring",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [330]
				{
					["type"] = 1,
					["time"] = 1352258060,
					["from"] = "Nofoxgiven",
					["msg"] = "i dont care who wins",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [331]
				{
					["type"] = 1,
					["time"] = 1352258063,
					["from"] = "Nofoxgiven",
					["msg"] = "just not obama",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [332]
				{
					["type"] = 1,
					["time"] = 1352258063,
					["from"] = "Jaymes",
					["msg"] = "that's fine they still get taxed :P",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [333]
				{
					["type"] = 1,
					["time"] = 1352258070,
					["from"] = "Nofoxgiven",
					["msg"] = "lol indeed",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [334]
				{
					["type"] = 1,
					["time"] = 1352258087,
					["from"] = "Nofoxgiven",
					["msg"] = "give me ron paul, gary johnson",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [335]
				{
					["type"] = 1,
					["time"] = 1352258090,
					["from"] = "Nofoxgiven",
					["msg"] = "i dgaf",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [336]
				{
					["type"] = 1,
					["time"] = 1352258093,
					["from"] = "Nofoxgiven",
					["msg"] = "just somebody else",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [337]
				{
					["type"] = 1,
					["time"] = 1352258097,
					["from"] = "Jaymes",
					["msg"] = "i'm just gonna ride it out and pray it doesn't turn into civil war before i get out",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [338]
				{
					["type"] = 1,
					["time"] = 1352258110,
					["from"] = "Nofoxgiven",
					["msg"] = "id be really worried right now if I were you",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [339]
				{
					["type"] = 1,
					["time"] = 1352258111,
					["from"] = "Jaymes",
					["msg"] = "yea i wish a 3rd party would get 30%",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [340]
				{
					["type"] = 1,
					["time"] = 1352258112,
					["from"] = "Nofoxgiven",
					["msg"] = "im worried",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [341]
				{
					["type"] = 1,
					["time"] = 1352258128,
					["from"] = "Jaymes",
					["msg"] = "idk we have to see",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [342]
				{
					["type"] = 1,
					["time"] = 1352258134,
					["from"] = "Jaymes",
					["msg"] = "they've started with anarchists in washington",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [343]
				{
					["type"] = 1,
					["time"] = 1352258142,
					["from"] = "Jaymes",
					["msg"] = "we'll have to see who else they start randomly jailing",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [344]
				{
					["type"] = 1,
					["time"] = 1352258144,
					["from"] = "Nofoxgiven",
					["msg"] = "i know its just shitty we have to think about this shit",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [345]
				{
					["type"] = 1,
					["time"] = 1352258161,
					["from"] = "Jaymes",
					["msg"] = "that's why i have wow friends in other countries ;)",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [346]
				{
					["type"] = 1,
					["time"] = 1352258164,
					["from"] = "Jaymes",
					["msg"] = "and live close to CA",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [347]
				{
					["type"] = 1,
					["time"] = 1352258165,
					["from"] = "Nofoxgiven",
					["msg"] = "ya right anarchy is something written into the foundation of our country",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [348]
				{
					["type"] = 1,
					["time"] = 1352258176,
					["from"] = "Jaymes",
					["msg"] = "yea but no one wants you to know that",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [349]
				{
					["type"] = 1,
					["time"] = 1352258191,
					["from"] = "Nofoxgiven",
					["msg"] = "thomas jefferson called for it every 10 years if the government forgets its place",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [350]
				{
					["type"] = 1,
					["time"] = 1352258199,
					["from"] = "Nofoxgiven",
					["msg"] = "someone should impeach all of them",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [351]
				{
					["type"] = 1,
					["time"] = 1352258200,
					["from"] = "Jaymes",
					["msg"] = "we're a little overdue",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [352]
				{
					["type"] = 1,
					["time"] = 1352258202,
					["from"] = "Nofoxgiven",
					["msg"] = "send them to prison",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [353]
				{
					["type"] = 1,
					["time"] = 1352258207,
					["from"] = "Jaymes",
					["msg"] = "we tried with bush",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [354]
				{
					["type"] = 1,
					["time"] = 1352258218,
					["from"] = "Jaymes",
					["msg"] = "obama waved all his shit",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [355]
				{
					["type"] = 1,
					["time"] = 1352258219,
					["from"] = "Nofoxgiven",
					["msg"] = "if bush didn't have 9/11",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [356]
				{
					["type"] = 1,
					["time"] = 1352258222,
					["from"] = "Nofoxgiven",
					["msg"] = "it would of happened",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [357]
				{
					["type"] = 1,
					["time"] = 1352258237,
					["from"] = "Jaymes",
					["msg"] = "NATO is trying with obama",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [358]
				{
					["type"] = 1,
					["time"] = 1352258240,
					["from"] = "Jaymes",
					["msg"] = "but what are they going to do",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [359]
				{
					["type"] = 1,
					["time"] = 1352258254,
					["from"] = "Jaymes",
					["msg"] = "maybe china will get power and give the US something to think about",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [360]
				{
					["type"] = 1,
					["time"] = 1352258270,
					["from"] = "Nofoxgiven",
					["msg"] = "dude nato is a joke",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [361]
				{
					["type"] = 1,
					["time"] = 1352258274,
					["from"] = "Nofoxgiven",
					["msg"] = "so is the UN",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [362]
				{
					["type"] = 1,
					["time"] = 1352258275,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [363]
				{
					["type"] = 1,
					["time"] = 1352258280,
					["from"] = "Jaymes",
					["msg"] = "they have no real power lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [364]
				{
					["type"] = 1,
					["time"] = 1352258297,
					["from"] = "Jaymes",
					["msg"] = "and the US doesn't follow international law",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [365]
				{
					["type"] = 1,
					["time"] = 1352258300,
					["from"] = "Nofoxgiven",
					["msg"] = "its bullshit we abide by these rules while the rest of them get slaps on the wrist",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [366]
				{
					["type"] = 1,
					["time"] = 1352258304,
					["from"] = "Jaymes",
					["msg"] = "so idk what they do other than get paid a lot of money ",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [367]
				{
					["type"] = 1,
					["time"] = 1352258308,
					["from"] = "Jaymes",
					["msg"] = "right",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [368]
				{
					["type"] = 1,
					["time"] = 1352258311,
					["from"] = "Jaymes",
					["msg"] = "just like celebs with drugs",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [369]
				{
					["type"] = 1,
					["time"] = 1352258315,
					["from"] = "Jaymes",
					["msg"] = "white man goes to jail",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [370]
				{
					["type"] = 1,
					["time"] = 1352258317,
					["from"] = "Nofoxgiven",
					["msg"] = "i know right",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [371]
				{
					["type"] = 1,
					["time"] = 1352258319,
					["from"] = "Jaymes",
					["msg"] = "celeb gets to go to rehab",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [372]
				{
					["type"] = 1,
					["time"] = 1352258331,
					["from"] = "Nofoxgiven",
					["msg"] = "dude jim lets do heroin and make bad choices together",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [373]
				{
					["type"] = 1,
					["time"] = 1352258334,
					["from"] = "Nofoxgiven",
					["msg"] = "we go to jail",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [374]
				{
					["type"] = 1,
					["time"] = 1352258344,
					["from"] = "Nofoxgiven",
					["msg"] = "jake gyllenfag goes to rehab doing the same",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [375]
				{
					["type"] = 1,
					["time"] = 1352258349,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [376]
				{
					["type"] = 1,
					["time"] = 1352258349,
					["from"] = "Nofoxgiven",
					["msg"] = "i hate america",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [377]
				{
					["type"] = 1,
					["time"] = 1352258352,
					["from"] = "Jaymes",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [378]
				{
					["type"] = 1,
					["time"] = 1352258365,
					["from"] = "Jaymes",
					["msg"] = "just let's move to london or berlin and get a civil union",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [379]
				{
					["type"] = 1,
					["time"] = 1352258366,
					["from"] = "Nofoxgiven",
					["msg"] = "im about ready to just become a marxist",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [380]
				{
					["type"] = 1,
					["time"] = 1352258377,
					["from"] = "Nofoxgiven",
					["msg"] = "lol ok but we wont be having sex",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [381]
				{
					["type"] = 1,
					["time"] = 1352258378,
					["from"] = "Jaymes",
					["msg"] = "i just want to be anti-american at this point ha",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [382]
				{
					["type"] = 1,
					["time"] = 1352258383,
					["from"] = "Nofoxgiven",
					["msg"] = "just reap the tax benefits",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [383]
				{
					["type"] = 1,
					["time"] = 1352258389,
					["from"] = "Jaymes",
					["msg"] = "that's fine i can deal with just handjobs",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [384]
				{
					["type"] = 1,
					["time"] = 1352258398,
					["from"] = "Nofoxgiven",
					["msg"] = "pfft you wont get that from me",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [385]
				{
					["type"] = 1,
					["time"] = 1352258404,
					["from"] = "Nofoxgiven",
					["msg"] = "you can find yourself a hot guy with an accent",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [386]
				{
					["type"] = 1,
					["time"] = 1352258405,
					["from"] = "Jaymes",
					["msg"] = "cuddling then ffs",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [387]
				{
					["type"] = 1,
					["time"] = 1352258411,
					["from"] = "Nofoxgiven",
					["msg"] = "fine cuddling it is",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [388]
				{
					["type"] = 1,
					["time"] = 1352258413,
					["from"] = "Jaymes",
					["msg"] = "k",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [389]
				{
					["type"] = 1,
					["time"] = 1352258427,
					["from"] = "Jaymes",
					["msg"] = "lol i gotta like the person",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [390]
				{
					["type"] = 1,
					["time"] = 1352258431,
					["from"] = "Jaymes",
					["msg"] = "can't just fuck no random german boy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [391]
				{
					["type"] = 1,
					["time"] = 1352258457,
					["from"] = "Jaymes",
					["msg"] = "you still down south?",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [392]
				["info"] = {
				},
			},
			["Reggy"] = {
				{
					["type"] = 1,
					["time"] = 1350863034,
					["from"] = "Reggy",
					["msg"] = "wtf is your problem dont be a dick",
					["inbound"] = true,
					["convo"] = "Reggy",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350863051,
					["from"] = "Jaymes",
					["msg"] = "sorry bra no homo",
					["inbound"] = false,
					["convo"] = "Reggy",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350863059,
					["from"] = "Reggy",
					["msg"] = "just stuf or youll get kicked out of inertia seriouisly",
					["inbound"] = true,
					["convo"] = "Reggy",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350863066,
					["from"] = "Jaymes",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Reggy",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350863075,
					["from"] = "Jaymes",
					["msg"] = "i've been here 6 years, you're an idiot",
					["inbound"] = false,
					["convo"] = "Reggy",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350863084,
					["from"] = "Reggy",
					["msg"] = "not if your harrasing and putting down ppl",
					["inbound"] = true,
					["convo"] = "Reggy",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350863096,
					["from"] = "Jaymes",
					["msg"] = "clearly you haven't been on this server long",
					["inbound"] = false,
					["convo"] = "Reggy",
				}, -- [7]
				["info"] = {
				},
			},
			["Djflipsixx"] = {
				{
					["type"] = 1,
					["time"] = 1348793434,
					["from"] = "Jaymes",
					["msg"] = "that small huh :(?",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1348793461,
					["from"] = "Djflipsixx",
					["msg"] = "kinda",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1348793468,
					["from"] = "Jaymes",
					["msg"] = "that sucks",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1348793481,
					["from"] = "Jaymes",
					["msg"] = "guy with the smallest dick is the one that takes it :(",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1348793497,
					["from"] = "Djflipsixx",
					["msg"] = "wow",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1348793508,
					["from"] = "Jaymes",
					["msg"] = "hey i don't make the rules",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1348793510,
					["from"] = "Jaymes",
					["msg"] = "just enforce em",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1348793639,
					["from"] = "Jaymes",
					["msg"] = "so is the panda tank easy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1348793659,
					["from"] = "Djflipsixx",
					["msg"] = "no alot of cd,and paying attention to like debuffs.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1348793667,
					["from"] = "Jaymes",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1348793672,
					["from"] = "Jaymes",
					["msg"] = "that's good then",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1348793678,
					["from"] = "Jaymes",
					["msg"] = "least it's interesting",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1348793692,
					["from"] = "Djflipsixx",
					["msg"] = "ya i like it,alot of fun compared to the rest of my toons.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1348793769,
					["from"] = "Jaymes",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1348793774,
					["from"] = "Jaymes",
					["msg"] = "hopefully the healer is the same",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1348793788,
					["from"] = "Djflipsixx",
					["msg"] = "from what i hear,it's pretty cool healing /",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1348793792,
					["from"] = "Jaymes",
					["msg"] = "sexy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1348793793,
					["from"] = "Djflipsixx",
					["msg"] = "and you dps to heal i guess.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1348793804,
					["from"] = "Jaymes",
					["msg"] = "yea i played it on the beta server",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1348793807,
					["from"] = "Jaymes",
					["msg"] = "but only up to like 20",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349583798,
					["from"] = "Jaymes",
					["msg"] = "let's make out",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349640503,
					["from"] = "Jaymes",
					["msg"] = "lol 89",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349640510,
					["from"] = "Djflipsixx",
					["msg"] = "o ya",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349640522,
					["from"] = "Djflipsixx",
					["msg"] = "now im gonna chill and pvp",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349640527,
					["from"] = "Jaymes",
					["msg"] = "cute",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349822818,
					["from"] = "Jaymes",
					["msg"] = "i'll give you kinky boy",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349822828,
					["from"] = "Jaymes",
					["msg"] = "when you puttin a new pic up fgt",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349822914,
					["from"] = "Djflipsixx",
					["msg"] = "i was gonna,but havent got around to it,i never really use facebook much.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349822923,
					["from"] = "Jaymes",
					["msg"] = "LOL",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349822924,
					["from"] = "Djflipsixx",
					["msg"] = "to much drama on that thing.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349822925,
					["from"] = "Jaymes",
					["msg"] = "caps",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349822928,
					["from"] = "Jaymes",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349822933,
					["from"] = "Jaymes",
					["msg"] = "i don't subscribe to drama queens",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349822945,
					["from"] = "Jaymes",
					["msg"] = "just hot wow players",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349822951,
					["from"] = "Djflipsixx",
					["msg"] = "i know i shouldnt lol,so many randoms with life drama,and it's like all that is on fb.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349822971,
					["from"] = "Jaymes",
					["msg"] = "that's cause you accept any girl that friends you",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349822990,
					["from"] = "Djflipsixx",
					["msg"] = "no lol half of them i know,some are just randoms.\\",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349823008,
					["from"] = "Jaymes",
					["msg"] = "get rid of the randoms and unsubscribe from seeing the other girls posts",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349823014,
					["from"] = "Jaymes",
					["msg"] = "drama drops 90% i bet",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349823019,
					["from"] = "Djflipsixx",
					["msg"] = "ya i dont know how to do all that lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349823024,
					["from"] = "Jaymes",
					["msg"] = "man",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349823027,
					["from"] = "Jaymes",
					["msg"] = "you're supposed to be young",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349823032,
					["from"] = "Djflipsixx",
					["msg"] = "im nub witht he social network",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349823035,
					["from"] = "Djflipsixx",
					["msg"] = "the",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349823038,
					["from"] = "Jaymes",
					["msg"] = "i can tell lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349823057,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1350100734,
					["from"] = "Jaymes",
					["msg"] = "sup qt",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1350863883,
					["from"] = "Jaymes",
					["msg"] = "what's been goin on qt",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [48]
				["info"] = {
				},
			},
			["Chichenlady"] = {
				{
					["type"] = 1,
					["time"] = 1352774714,
					["from"] = "Chichenlady",
					["msg"] = "buy it its good shit",
					["inbound"] = true,
					["convo"] = "Chichenlady",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352774728,
					["from"] = "Jaymes",
					["msg"] = "oh i meant prince anduin",
					["inbound"] = false,
					["convo"] = "Chichenlady",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352774744,
					["from"] = "Chichenlady",
					["msg"] = "?",
					["inbound"] = true,
					["convo"] = "Chichenlady",
				}, -- [3]
				["info"] = {
				},
			},
			["Köölaid"] = {
				{
					["type"] = 1,
					["time"] = 1352569921,
					["from"] = "Köölaid",
					["msg"] = "lolol 8k????  |cffa335ee|Hitem:79335:0:0:0:0:0:0:134412352:90:0:0|h[Inscribed Red Fan]|h|r is better and its 5k.",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352569932,
					["from"] = "Köölaid",
					["msg"] = "plus  |cff0070dd|Hitem:87457:0:0:0:0:0:0:2018697344:90:0:0|h[Record of Mysterious Deeds]|h|r is 450. your dumb lolol",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352569945,
					["from"] = "Jaymes",
					["msg"] = "deeds requires lvl 85. you're* an idiot",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352569951,
					["from"] = "Köölaid",
					["msg"] = "so?",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352569966,
					["from"] = "Jaymes",
					["msg"] = "i'm not explaining obvious reasons to an incompetent moron",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352569973,
					["from"] = "Köölaid",
					["msg"] = "lolol",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352569979,
					["from"] = "Köölaid",
					["msg"] = "so what if its 85",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352569988,
					["from"] = "Köölaid",
					["msg"] = "people rnt going to waste money for that",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352569990,
					["from"] = "Jaymes",
					["msg"] = "ask in trade and see how people tell you how dumb you are",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352570004,
					["from"] = "Köölaid",
					["msg"] = "they get better offhands in dungeons for free and ",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352570031,
					["from"] = "Jaymes",
					["msg"] = "it's ilvl 450 you can't get better in dungeons until lvl 90",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352570036,
					["from"] = "Jaymes",
					["msg"] = "it's not hard to understand",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352570056,
					["from"] = "Köölaid",
					["msg"] = "i know. but people are not going to waste 8k at lvl 85",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352570065,
					["from"] = "Köölaid",
					["msg"] = "4 that when they can hit 90 and get free",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352570068,
					["from"] = "Jaymes",
					["msg"] = "just because you won't doesn't mean anyone else won't",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1352570072,
					["from"] = "Jaymes",
					["msg"] = "i've already sold one",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352570084,
					["from"] = "Jaymes",
					["msg"] = "and tons of other 450 boes like the ilvl 450 trinket for 13k",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1352570085,
					["from"] = "Köölaid",
					["msg"] = "and i can open your lockbox",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1352570090,
					["from"] = "Jaymes",
					["msg"] = "i don't want you to",
					["inbound"] = false,
					["convo"] = "Köölaid",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1352570099,
					["from"] = "Köölaid",
					["msg"] = "ok then lolol",
					["inbound"] = true,
					["convo"] = "Köölaid",
				}, -- [20]
				["info"] = {
				},
			},
			["Cathmor"] = {
				{
					["type"] = 1,
					["time"] = 1350190293,
					["from"] = "Jaymes",
					["msg"] = "bout time",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350190297,
					["from"] = "Cathmor",
					["msg"] = "I'm back!  TY for the scroll",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350190300,
					["from"] = "Jaymes",
					["msg"] = "np",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350190304,
					["from"] = "Jaymes",
					["msg"] = "poor john he was waiting up for you",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350190309,
					["from"] = "Cathmor",
					["msg"] = "downloader SLOWW",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350190315,
					["from"] = "Jaymes",
					["msg"] = "get better internet",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350190339,
					["from"] = "Jaymes",
					["msg"] = "so did it get you free shit",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350190361,
					["from"] = "Cathmor",
					["msg"] = "i did get a free upgrade to Cata!  ",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350190378,
					["from"] = "Cathmor",
					["msg"] = "get to return the box i bought",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350190399,
					["from"] = "Jaymes",
					["msg"] = "that's good you didn't open it lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350190403,
					["from"] = "Cathmor",
					["msg"] = "need to figure out now which toon to take to free level eighty.  mage or lock",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350190407,
					["from"] = "Cathmor",
					["msg"] = "yes, agreed!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350190446,
					["from"] = "Jaymes",
					["msg"] = "do the one you hate playing the most",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350190454,
					["from"] = "Cathmor",
					["msg"] = "wtf, 400g for refunded honor, lol",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350190462,
					["from"] = "Jaymes",
					["msg"] = "ya it was some stupid thing",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350190494,
					["from"] = "Cathmor",
					["msg"] = "i'll take it!  got a total of over 700g for expired stuff",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350190500,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350190510,
					["from"] = "Jaymes",
					["msg"] = "see you don't even need gold",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350190519,
					["from"] = "Cathmor",
					["msg"] = "going to take a tour around my toons and see who has what",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350190543,
					["from"] = "Jaymes",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350191510,
					["from"] = "Cathmor",
					["msg"] = "hello my Real friend.  :)",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350191514,
					["from"] = "Jaymes",
					["msg"] = "lol ya",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350191517,
					["from"] = "Jaymes",
					["msg"] = "now it's official",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350191551,
					["from"] = "Cathmor",
					["msg"] = "well, i'm done for the night.  i've officially forgotten everything in 2.5 yrs.  dont even remember the gear this toon's wearing.",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350191562,
					["from"] = "Jaymes",
					["msg"] = "lol yea",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350191566,
					["from"] = "Jaymes",
					["msg"] = "prolly good to start fresh ;)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350191631,
					["from"] = "Cathmor",
					["msg"] = "well, sir, im loggin.  have a good night ",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350191636,
					["from"] = "Jaymes",
					["msg"] = "you too night!",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350191643,
					["from"] = "Cathmor",
					["msg"] = ":)",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1351316249,
					["from"] = "Jaymes",
					["msg"] = "can i borrow you for a sec",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1351316263,
					["from"] = "Cathmor",
					["msg"] = "whatcha need?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1351316272,
					["from"] = "Jaymes",
					["msg"] = "to invite you to a group for a minute",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1351316282,
					["from"] = "Cathmor",
					["msg"] = "sure",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1351316325,
					["from"] = "Cathmor",
					["msg"] = "np!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1351316343,
					["from"] = "Jaymes",
					["msg"] = "you're welcome to stay but i don't think you can do quests if you're in a raid",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1351316351,
					["from"] = "Jaymes",
					["msg"] = "tho they may have changed it",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1351316361,
					["from"] = "Jaymes",
					["msg"] = "and if i leave i'll get booted lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1351316363,
					["from"] = "Cathmor",
					["msg"] = "im done for the night.  just some cleanup",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1351316366,
					["from"] = "Jaymes",
					["msg"] = "ah kewl",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1351316524,
					["from"] = "Cathmor",
					["msg"] = "dear god. horde in my bank lol",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1351316536,
					["from"] = "Jaymes",
					["msg"] = "don't go to the blue one",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1351316545,
					["from"] = "Cathmor",
					["msg"] = "raiding our bank",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1351316557,
					["from"] = "Jaymes",
					["msg"] = "are you in the trade district?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1351316562,
					["from"] = "Cathmor",
					["msg"] = "SW under attack",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1351475348,
					["from"] = "Cathmor",
					["msg"] = "G'evening!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1351475424,
					["from"] = "Jaymes",
					["msg"] = "sup big boy",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1351475431,
					["from"] = "Jaymes",
					["msg"] = "damn",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1351475436,
					["from"] = "Jaymes",
					["msg"] = "83 != 85",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1351475450,
					["from"] = "Cathmor",
					["msg"] = "working fast",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1351475455,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1351481394,
					["from"] = "Cathmor",
					["msg"] = "Ding!  84!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1351481399,
					["from"] = "Jaymes",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1351481409,
					["from"] = "Jaymes",
					["msg"] = "hurry up my 85s are impatient",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1351481416,
					["from"] = "Jaymes",
					["msg"] = "tomorrow is a rest day",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1351928478,
					["from"] = "Jaymes",
					["msg"] = "WHAT THE FUCK ARE YOU DOING",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1351928494,
					["from"] = "Cathmor",
					["msg"] = "chilling at the AH, why?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1351928507,
					["from"] = "Jaymes",
					["msg"] = "on ur laptop?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1351928511,
					["from"] = "Cathmor",
					["msg"] = "yes",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1351928513,
					["from"] = "Jaymes",
					["msg"] = "gay",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1351928525,
					["from"] = "Cathmor",
					["msg"] = "gearing up and clearing bags",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1351928526,
					["from"] = "Jaymes",
					["msg"] = "time to tracpad tank",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1351928541,
					["from"] = "Jaymes",
					["msg"] = "lol gear up",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1351928547,
					["from"] = "Jaymes",
					["msg"] = "babe it's 85 lvl content",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1351928572,
					["from"] = "Jaymes",
					["msg"] = "do you have a bs",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1352176112,
					["from"] = "Cathmor",
					["msg"] = "Damn, i am so ready to get back into an instance and tank again.  my stuff is tight now.",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1352176118,
					["from"] = "Jaymes",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1352176123,
					["from"] = "Jaymes",
					["msg"] = "i can go another on beichte",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1352176139,
					["from"] = "Cathmor",
					["msg"] = "lol, nah, i gotta check AH and looogggg",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1352176152,
					["from"] = "Cathmor",
					["msg"] = "hf voting for Romney and ty in advance for the tax cut",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1352176152,
					["from"] = "Jaymes",
					["msg"] = "ok",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1352176154,
					["from"] = "Jaymes",
					["msg"] = "well night!",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1352255771,
					["from"] = "Jaymes",
					["msg"] = "can i borrow you for a raid while you quest",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1352331682,
					["from"] = "Jaymes",
					["msg"] = "what did you run home",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1352331754,
					["from"] = "Cathmor",
					["msg"] = "whatcha mean?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1352331765,
					["from"] = "Jaymes",
					["msg"] = "it's before 9pm and you're already on",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1352331771,
					["from"] = "Jaymes",
					["msg"] = "shouldn't you still be in the office",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1352331775,
					["from"] = "Cathmor",
					["msg"] = "haha, yes.",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1352331783,
					["from"] = "Cathmor",
					["msg"] = "told you i was slow",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1352331789,
					["from"] = "Jaymes",
					["msg"] = "that's good",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1352331803,
					["from"] = "Jaymes",
					["msg"] = "you should see my demon",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1352331809,
					["from"] = "Cathmor",
					["msg"] = "unfortunately, i have to go to my daughter's H.S. for a seven p.m. parent meeting",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1352331813,
					["from"] = "Jaymes",
					["msg"] = " |cffa335ee|Hitem:50761:0:0:0:0:0:0:1715579264:90:0:0|h[Citadel Enforcer's Claymore]|h|r",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1352331843,
					["from"] = "Cathmor",
					["msg"] = "niceeeee",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1352331850,
					["from"] = "Jaymes",
					["msg"] = "need another",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1352331854,
					["from"] = "Jaymes",
					["msg"] = "so my demon can dw them",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1352331875,
					["from"] = "Cathmor",
					["msg"] = "lol, that would be awesome to see",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1352331889,
					["from"] = "Jaymes",
					["msg"] = "you can see one after i post these auctions",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1352332067,
					["from"] = "Jaymes",
					["msg"] = "want to see it?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1352332131,
					["from"] = "Jaymes",
					["msg"] = "take it and come here",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1352332140,
					["from"] = "Jaymes",
					["msg"] = "rare spawn",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1352524381,
					["from"] = "Jaymes",
					["msg"] = "YOU WANNA DO AN INSTANCE",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1352524385,
					["from"] = "Jaymes",
					["msg"] = "caps",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1352524493,
					["from"] = "Cathmor",
					["msg"] = "i was just going to log in a few",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1352524507,
					["from"] = "Jaymes",
					["msg"] = "ok",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1352524661,
					["from"] = "Cathmor",
					["msg"] = "some pretty decent quests in this Jade F zone",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1352524675,
					["from"] = "Jaymes",
					["msg"] = "i never finished it on my first run",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1352524688,
					["from"] = "Jaymes",
					["msg"] = "only did the pearlfin village then moved on",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1352524696,
					["from"] = "Cathmor",
					["msg"] = "ah",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1352524700,
					["from"] = "Jaymes",
					["msg"] = "so now it's new",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1352524702,
					["from"] = "Jaymes",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1352524738,
					["from"] = "Jaymes",
					["msg"] = "so apparently i found a boe i didn't know",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1352524743,
					["from"] = "Jaymes",
					["msg"] = "and it sells for 8k rofl",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1352524745,
					["from"] = "Jaymes",
					["msg"] = " |Hitem:87457:0:0:0:0:0:0:2018697344:90:0:0|h[Record of Mysterious Deeds]|h",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1352524749,
					["from"] = "Cathmor",
					["msg"] = "nice!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1352524756,
					["from"] = "Jaymes",
					["msg"] = "twice that's happend",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1352524765,
					["from"] = "Jaymes",
					["msg"] = "that's one bad thing about the new looting",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1352524772,
					["from"] = "Jaymes",
					["msg"] = " don't look as closely",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1352524780,
					["from"] = "Cathmor",
					["msg"] = "lol that's true",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1352774848,
					["from"] = "Cathmor",
					["msg"] = "Fat ass? Orly?  grrr",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1352774867,
					["from"] = "Jaymes",
					["msg"] = "i also called you old man",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1352774872,
					["from"] = "Jaymes",
					["msg"] = "seriously? who uses powerpoints",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1352774927,
					["from"] = "Cathmor",
					["msg"] = "apparently HSs still do",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1352774932,
					["from"] = "Jaymes",
					["msg"] = "wow",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1352774942,
					["from"] = "Jaymes",
					["msg"] = "5 seconds just finishing auctions",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [114]
				["info"] = {
				},
			},
			["Bankofrock"] = {
				{
					["type"] = 1,
					["time"] = 1353798466,
					["from"] = "Jaymes",
					["msg"] = "tell me dirty lies",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353798472,
					["from"] = "Jaymes",
					["msg"] = "like how much and how many",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353798474,
					["from"] = "Bankofrock",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353798505,
					["from"] = "Bankofrock",
					["msg"] = "I have 2 guild tabs full of foolscap and snowlily. and my mail is overflowing. levelled three 90s and now trying to sort it out. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353798513,
					["from"] = "Bankofrock",
					["msg"] = "hundreds of stacks",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353798552,
					["from"] = "Bankofrock",
					["msg"] = "green tea and silkweed also but probably < 100 stacks of those",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353798562,
					["from"] = "Jaymes",
					["msg"] = "i'd be down for all the snowlily",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353798569,
					["from"] = "Bankofrock",
					["msg"] = "how much per stack?",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353798606,
					["from"] = "Jaymes",
					["msg"] = "25g a stack for all of em",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353798619,
					["from"] = "Bankofrock",
					["msg"] = "deal. I'll COD them right now. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1353798627,
					["from"] = "Jaymes",
					["msg"] = "wanna trade instead?",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1353798643,
					["from"] = "Jaymes",
					["msg"] = "i can come to if on my herb alt",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1353798657,
					["from"] = "Bankofrock",
					["msg"] = "ok i'm in IF at the bank",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1353798661,
					["from"] = "Jaymes",
					["msg"] = "brt",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [14]
				["info"] = {
				},
			},
			["Deviryn-Arygos"] = {
				{
					["type"] = 1,
					["time"] = 1350863927,
					["from"] = "Jaymes",
					["msg"] = ">> You are now soulstoned! <<",
					["inbound"] = false,
					["convo"] = "Deviryn-Arygos",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350864156,
					["from"] = "Jaymes",
					["msg"] = "if you use heal instead of gheal you won't run out of mana",
					["inbound"] = false,
					["convo"] = "Deviryn-Arygos",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350864167,
					["from"] = "Deviryn-Arygos",
					["msg"] = "I know",
					["inbound"] = true,
					["convo"] = "Deviryn-Arygos",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350864173,
					["from"] = "Deviryn-Arygos",
					["msg"] = "But I need to gheal sometimes",
					["inbound"] = true,
					["convo"] = "Deviryn-Arygos",
				}, -- [4]
				["info"] = {
				},
			},
		},
		["Notwehr"] = {
			["Orokusakí"] = {
				{
					["type"] = 1,
					["time"] = 1352773127,
					["from"] = "Notwehr",
					["msg"] = "i'll dance for you without a shield on",
					["inbound"] = false,
					["convo"] = "Orokusakí",
				}, -- [1]
				["info"] = {
				},
			},
			["Zaldek"] = {
				{
					["type"] = 1,
					["time"] = 1352773609,
					["from"] = "Notwehr",
					["msg"] = "4 ppl asking me what you signed",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352773612,
					["from"] = "Notwehr",
					["msg"] = "and lol nerd alert",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352773617,
					["from"] = "Zaldek",
					["msg"] = "rofl.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352773625,
					["from"] = "Zaldek",
					["msg"] = "Petition to secede from the USA",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352773629,
					["from"] = "Zaldek",
					["msg"] = "GET DAT NA",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352773630,
					["from"] = "Notwehr",
					["msg"] = "that's what i said",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352773637,
					["from"] = "Zaldek",
					["msg"] = "My christian aunt",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352773640,
					["from"] = "Notwehr",
					["msg"] = "100% go \"um?\"",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352773641,
					["from"] = "Zaldek",
					["msg"] = "when they went to vote",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352773652,
					["from"] = "Zaldek",
					["msg"] = "\"C'MON YALL LETS GET THAT NIGGER OUT OF THE WHITE HOUSE\"",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352773658,
					["from"] = "Zaldek",
					["msg"] = "fucking, absurd.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352773668,
					["from"] = "Zaldek",
					["msg"] = "people are so backwards.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352773670,
					["from"] = "Notwehr",
					["msg"] = "LOL",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352773673,
					["from"] = "Notwehr",
					["msg"] = "i agree with them",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352773678,
					["from"] = "Notwehr",
					["msg"] = "but for different reasons",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1352773681,
					["from"] = "Zaldek",
					["msg"] = "Yea well",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352773685,
					["from"] = "Zaldek",
					["msg"] = "I'd prefer Romney tbh.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1352773688,
					["from"] = "Zaldek",
					["msg"] = "but they both suck.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1352773689,
					["from"] = "Notwehr",
					["msg"] = "i can use white trash to my advantage",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1352773692,
					["from"] = "Zaldek",
					["msg"] = "Obama is useless.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1352773704,
					["from"] = "Zaldek",
					["msg"] = "Did they ever release the vote demographic though?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1352773706,
					["from"] = "Notwehr",
					["msg"] = "yea i need to start a religion",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1352773710,
					["from"] = "Zaldek",
					["msg"] = "Im curious if 99.9% of blacks voted for him again",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1352773716,
					["from"] = "Notwehr",
					["msg"] = "i'm sure they did",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1352773723,
					["from"] = "Notwehr",
					["msg"] = "all 20 of them that voted",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1352773726,
					["from"] = "Zaldek",
					["msg"] = "hahaha",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1352773737,
					["from"] = "Zaldek",
					["msg"] = "I have no interest voting.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1352773746,
					["from"] = "Zaldek",
					["msg"] = "No desire to feel responsible for the sinking of this country",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1352773797,
					["from"] = "Notwehr",
					["msg"] = "i voted 3rd party",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1352773799,
					["from"] = "Notwehr",
					["msg"] = "so i can do both",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1352773805,
					["from"] = "Zaldek",
					["msg"] = "rofl.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1352773808,
					["from"] = "Zaldek",
					["msg"] = "Gary Johnson?",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1352773816,
					["from"] = "Notwehr",
					["msg"] = "nah i liked jill stein more",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1352773829,
					["from"] = "Notwehr",
					["msg"] = "but only by a little",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1352773832,
					["from"] = "Zaldek",
					["msg"] = "Bachmann Palin 2016",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1352773833,
					["from"] = "Notwehr",
					["msg"] = "i liked them both",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1352773843,
					["from"] = "Notwehr",
					["msg"] = "i won't be of age til 2020...",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1352773846,
					["from"] = "Notwehr",
					["msg"] = "fucking bullshit",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1352773878,
					["from"] = "Notwehr",
					["msg"] = "brb",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [39]
				["info"] = {
				},
			},
			["Nåyru"] = {
				{
					["type"] = 1,
					["time"] = 1351807961,
					["from"] = "Nåyru",
					["msg"] = "do you have like 50k +?",
					["inbound"] = true,
					["convo"] = "Nåyru",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351807978,
					["from"] = "Notwehr",
					["msg"] = "all i have is 35k",
					["inbound"] = false,
					["convo"] = "Nåyru",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351807990,
					["from"] = "Nåyru",
					["msg"] = "ya i bought it for more then that =S sorry",
					["inbound"] = true,
					["convo"] = "Nåyru",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351807995,
					["from"] = "Notwehr",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Nåyru",
				}, -- [4]
				["info"] = {
				},
			},
			["Steroids"] = {
				{
					["type"] = 1,
					["time"] = 1350525926,
					["from"] = "Notwehr",
					["msg"] = "opening a box saturday just fyi, welcome as usual",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350525937,
					["from"] = "Steroids",
					["msg"] = "sweetest day workin 12 hrs",
					["inbound"] = true,
					["convo"] = "Steroids",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350525960,
					["from"] = "Notwehr",
					["msg"] = "there's a bed in the basement with a shower",
					["inbound"] = false,
					["convo"] = "Steroids",
				}, -- [3]
				["info"] = {
				},
			},
			["Saelding"] = {
				{
					["type"] = 1,
					["time"] = 1352159933,
					["from"] = "Notwehr",
					["msg"] = "i'll buy em all for 45g/stack",
					["inbound"] = false,
					["convo"] = "Saelding",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352159946,
					["from"] = "Saelding",
					["msg"] = "srry on ah all",
					["inbound"] = true,
					["convo"] = "Saelding",
				}, -- [2]
				["info"] = {
				},
			},
			["Ipinghorde"] = {
				{
					["type"] = 1,
					["time"] = 1353884934,
					["from"] = "Notwehr",
					["msg"] = "ok all set",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353885546,
					["from"] = "Ipinghorde",
					["msg"] = "ty so much",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353885552,
					["from"] = "Notwehr",
					["msg"] = "anytime sir",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353885568,
					["from"] = "Ipinghorde",
					["msg"] = "if u need more tomorrow pst me",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353885571,
					["from"] = "Notwehr",
					["msg"] = "you do golden lotus?",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353885578,
					["from"] = "Ipinghorde",
					["msg"] = "nope i use it",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353885584,
					["from"] = "Notwehr",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353885602,
					["from"] = "Ipinghorde",
					["msg"] = "i can do 400 a day if u need that everday",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353885615,
					["from"] = "Notwehr",
					["msg"] = "kewl i'll add you to friends",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353885622,
					["from"] = "Notwehr",
					["msg"] = "i'll let you know",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [10]
				["info"] = {
				},
			},
			["Seriack"] = {
				{
					["type"] = 1,
					["time"] = 1350353977,
					["from"] = "Seriack",
					["msg"] = "I'll take a pony over a twinkie!",
					["inbound"] = true,
					["convo"] = "Seriack",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350353983,
					["from"] = "Notwehr",
					["msg"] = "i'm a horse",
					["inbound"] = false,
					["convo"] = "Seriack",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350353986,
					["from"] = "Notwehr",
					["msg"] = "that's close enough",
					["inbound"] = false,
					["convo"] = "Seriack",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350354073,
					["from"] = "Seriack",
					["msg"] = "NO, IT'S NOT! >.> Unless you are Princess Luna....",
					["inbound"] = true,
					["convo"] = "Seriack",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350354111,
					["from"] = "Notwehr",
					["msg"] = "you can pretend I am Princess Luna, though I might have parts she's missing?",
					["inbound"] = false,
					["convo"] = "Seriack",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350354128,
					["from"] = "Seriack",
					["msg"] = "It won't be the same!",
					["inbound"] = true,
					["convo"] = "Seriack",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350354145,
					["from"] = "Notwehr",
					["msg"] = "just better!",
					["inbound"] = false,
					["convo"] = "Seriack",
				}, -- [7]
				["info"] = {
				},
			},
			["Shaylán"] = {
				{
					["type"] = 1,
					["time"] = 1352773528,
					["from"] = "Shaylán",
					["msg"] = "signed what?",
					["inbound"] = true,
					["convo"] = "Shaylán",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352773550,
					["from"] = "Notwehr",
					["msg"] = "the petition to secede from the union",
					["inbound"] = false,
					["convo"] = "Shaylán",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352773577,
					["from"] = "Shaylán",
					["msg"] = "ah?",
					["inbound"] = true,
					["convo"] = "Shaylán",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352773584,
					["from"] = "Shaylán",
					["msg"] = "lol my bad ",
					["inbound"] = true,
					["convo"] = "Shaylán",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352773599,
					["from"] = "Shaylán",
					["msg"] = "thalt you were talking about smthn else",
					["inbound"] = true,
					["convo"] = "Shaylán",
				}, -- [5]
				["info"] = {
				},
			},
			["Modd"] = {
				{
					["type"] = 1,
					["time"] = 1352175290,
					["from"] = "Modd",
					["msg"] = "sick ass transmog",
					["inbound"] = true,
					["convo"] = "Modd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352175299,
					["from"] = "Notwehr",
					["msg"] = "thx",
					["inbound"] = false,
					["convo"] = "Modd",
				}, -- [2]
				["info"] = {
				},
			},
			["Lesleyqt"] = {
				{
					["type"] = 1,
					["time"] = 1352335646,
					["from"] = "Lesleyqt",
					["msg"] = "mgk is white",
					["inbound"] = true,
					["convo"] = "Lesleyqt",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352335659,
					["from"] = "Notwehr",
					["msg"] = "yea that's what they said about MJ too",
					["inbound"] = false,
					["convo"] = "Lesleyqt",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352335665,
					["from"] = "Notwehr",
					["msg"] = "didn't make it true then either",
					["inbound"] = false,
					["convo"] = "Lesleyqt",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352335666,
					["from"] = "Lesleyqt",
					["msg"] = "mj's black tho",
					["inbound"] = true,
					["convo"] = "Lesleyqt",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352335668,
					["from"] = "Lesleyqt",
					["msg"] = "he has a skin disease",
					["inbound"] = true,
					["convo"] = "Lesleyqt",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352335671,
					["from"] = "Notwehr",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Lesleyqt",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352335673,
					["from"] = "Lesleyqt",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Lesleyqt",
				}, -- [7]
				["info"] = {
				},
			},
			["Melisandr"] = {
				{
					["type"] = 1,
					["time"] = 1355028969,
					["from"] = "Melisandr",
					["msg"] = "the company didn t give it to america, us willingly created it bought it and ate it",
					["inbound"] = true,
					["convo"] = "Melisandr",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355028987,
					["from"] = "Melisandr",
					["msg"] = "company responsability is quite low compared to the public who bought it",
					["inbound"] = true,
					["convo"] = "Melisandr",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355028993,
					["from"] = "Notwehr",
					["msg"] = "and now they're bankrupt",
					["inbound"] = false,
					["convo"] = "Melisandr",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355028999,
					["from"] = "Notwehr",
					["msg"] = "just took awhile for them to realize it",
					["inbound"] = false,
					["convo"] = "Melisandr",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355029002,
					["from"] = "Melisandr",
					["msg"] = "yea lol",
					["inbound"] = true,
					["convo"] = "Melisandr",
				}, -- [5]
				["info"] = {
				},
			},
			["Periodqueef"] = {
				{
					["type"] = 1,
					["time"] = 1355294769,
					["from"] = "Notwehr",
					["msg"] = "do you play any gamer games",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355294780,
					["from"] = "Notwehr",
					["msg"] = "like magic the gathering, settlers of catan, munchkin type shit",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355294803,
					["from"] = "Periodqueef",
					["msg"] = "I played magic from 10-18 or so, but haven't played since high school, my brother's trying to get me back into it",
					["inbound"] = true,
					["convo"] = "Periodqueef",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355276833,
					["from"] = "Notwehr",
					["msg"] = "is he hot",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355276853,
					["from"] = "Notwehr",
					["msg"] = "maybe i'll drop you for him and we can get on jerry springer",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355276858,
					["from"] = "Periodqueef",
					["msg"] = "Nah, I'm the looks, he's the personality, =P",
					["inbound"] = true,
					["convo"] = "Periodqueef",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355276861,
					["from"] = "Notwehr",
					["msg"] = "LOL",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355276864,
					["from"] = "Notwehr",
					["msg"] = "ouch",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355276874,
					["from"] = "Notwehr",
					["msg"] = "well was gonna say you should go to GenCon in august",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1355276877,
					["from"] = "Notwehr",
					["msg"] = "if you were a gamer oy",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1355276878,
					["from"] = "Notwehr",
					["msg"] = "boy*",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1355276881,
					["from"] = "Notwehr",
					["msg"] = "a proper one",
					["inbound"] = false,
					["convo"] = "Periodqueef",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1355276885,
					["from"] = "Periodqueef",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Periodqueef",
				}, -- [13]
				["info"] = {
				},
			},
			["Myrff"] = {
				{
					["type"] = 1,
					["time"] = 1351307181,
					["from"] = "Notwehr",
					["msg"] = "who would you like ur bday present sent to",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351307215,
					["from"] = "Myrff",
					["msg"] = "this one's good!  :)",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351307259,
					["from"] = "Notwehr",
					["msg"] = "ok sent ;)",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351307272,
					["from"] = "Myrff",
					["msg"] = "thx!  happy happy joy joy",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351307298,
					["from"] = "Notwehr",
					["msg"] = "i guess that was around in ur 20s",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351307309,
					["from"] = "Myrff",
					["msg"] = "yep",
					["inbound"] = true,
					["convo"] = "Myrff",
				}, -- [6]
				["info"] = {
				},
			},
			["Tudd"] = {
				{
					["type"] = 1,
					["time"] = 1350624070,
					["from"] = "Tudd",
					["msg"] = "Wuddup?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350624088,
					["from"] = "Notwehr",
					["msg"] = "woke up from a nap",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350624283,
					["from"] = "Tudd",
					["msg"] = "I'm going around trick or treating.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350624382,
					["from"] = "Notwehr",
					["msg"] = "it's not halloween",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350624399,
					["from"] = "Tudd",
					["msg"] = "You're right, it's Hallow's End.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350624413,
					["from"] = "Tudd",
					["msg"] = "They're similar, so I'd see how you would make that mistake.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350624444,
					["from"] = "Notwehr",
					["msg"] = "so you're going to be playing pranks?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350624459,
					["from"] = "Notwehr",
					["msg"] = "or celebrating the autumnal cycle?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350624466,
					["from"] = "Notwehr",
					["msg"] = "clearly you've never watch charmed",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350624468,
					["from"] = "Tudd",
					["msg"] = "No. In this game I am going around to different Inns and taking their candy.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350624639,
					["from"] = "Notwehr",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350624642,
					["from"] = "Notwehr",
					["msg"] = "fag",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350624679,
					["from"] = "Tudd",
					["msg"] = "How are you so dumb?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350624693,
					["from"] = "Tudd",
					["msg"] = ";) jk jk",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350624715,
					["from"] = "Notwehr",
					["msg"] = "i just picture you being a lot more gay than you are",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350624722,
					["from"] = "Notwehr",
					["msg"] = "so it impairs my assumptions",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350624831,
					["from"] = "Tudd",
					["msg"] = "That sucks",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350624924,
					["from"] = "Notwehr",
					["msg"] = "so does my mouth",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350624931,
					["from"] = "Tudd",
					["msg"] = "Cool?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350624981,
					["from"] = "Notwehr",
					["msg"] = "pretty much",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1352426414,
					["from"] = "Notwehr",
					["msg"] = "how'd you win the shirt",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1352426762,
					["from"] = "Tudd",
					["msg"] = "Commenting on their status",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1352426827,
					["from"] = "Notwehr",
					["msg"] = "lol well that's kewl",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1355190182,
					["from"] = "Tudd",
					["msg"] = "Wuddup bitch",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1355190240,
					["from"] = "Notwehr",
					["msg"] = "sup boy",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1355190252,
					["from"] = "Notwehr",
					["msg"] = "how's the place going",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1355190260,
					["from"] = "Tudd",
					["msg"] = "I'll answer that in just a sec",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1355190310,
					["from"] = "Tudd",
					["msg"] = "Mmk. The place is good so far.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1355190322,
					["from"] = "Tudd",
					["msg"] = "Got my clothing and few belongings moved on Friday night",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1355190334,
					["from"] = "Notwehr",
					["msg"] = "just end up carrying it?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1355190340,
					["from"] = "Tudd",
					["msg"] = "Then went shopping for my furniture Saturday morning. It was delivered Saturday evening.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1355190346,
					["from"] = "Notwehr",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1355190348,
					["from"] = "Tudd",
					["msg"] = "No, I got a moving company.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1355190352,
					["from"] = "Notwehr",
					["msg"] = "how much was it?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1355190376,
					["from"] = "Tudd",
					["msg"] = "$200 with tip",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1355190399,
					["from"] = "Notwehr",
					["msg"] = "that's not bad",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1355190423,
					["from"] = "Tudd",
					["msg"] = "Yeah, I got them to bring the price down a little since I hardly had anything to move.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1355446582,
					["from"] = "Tudd",
					["msg"] = "Sup brah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1355447711,
					["from"] = "Notwehr",
					["msg"] = "my dick",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1355447712,
					["from"] = "Notwehr",
					["msg"] = "you?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [40]
				["info"] = {
				},
			},
			["Nimna"] = {
				{
					["type"] = 1,
					["time"] = 1352772601,
					["from"] = "Nimna",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352772614,
					["from"] = "Notwehr",
					["msg"] = "i've had that macro for almost 8 years",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352772622,
					["from"] = "Notwehr",
					["msg"] = "and have not used it nearly enough :(",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352772631,
					["from"] = "Nimna",
					["msg"] = "I don't think there's any truth to that my friend",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352772637,
					["from"] = "Nimna",
					["msg"] = "Wow's only been out for like 6 years!",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352772643,
					["from"] = "Notwehr",
					["msg"] = "baby",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352772650,
					["from"] = "Notwehr",
					["msg"] = "it celebrated it's 7th anniversary last year",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352772662,
					["from"] = "Nimna",
					["msg"] = "DON'T SAY THAT YOU'RE MAKING ME FEEL OLD",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352772670,
					["from"] = "Notwehr",
					["msg"] = "RECEDING HAIRLINE!?",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352772674,
					["from"] = "Nimna",
					["msg"] = "Damn, guess you're right.",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352772707,
					["from"] = "Notwehr",
					["msg"] = "it's one of my many flaws (",
					["inbound"] = false,
					["convo"] = "Nimna",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352772709,
					["from"] = "Nimna",
					["msg"] = "What about it",
					["inbound"] = true,
					["convo"] = "Nimna",
				}, -- [12]
				["info"] = {
				},
			},
			["Gloomhaze"] = {
				{
					["type"] = 1,
					["time"] = 1351308069,
					["from"] = "Notwehr",
					["msg"] = "how's it goin qt",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351308082,
					["from"] = "Gloomhaze",
					["msg"] = "not too shabby",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351308083,
					["from"] = "Gloomhaze",
					["msg"] = "and you?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351308088,
					["from"] = "Notwehr",
					["msg"] = "pretty good",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351308092,
					["from"] = "Notwehr",
					["msg"] = "just woke up from a drunken nap",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [5]
				["info"] = {
				},
			},
			["Cathmor"] = {
				{
					["type"] = 1,
					["time"] = 1350752652,
					["from"] = "Cathmor",
					["msg"] = "been on 14 min, ganked twice.    thought is was all love and peace?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350752669,
					["from"] = "Notwehr",
					["msg"] = "coulda been 81 by now if you'd run instances :P",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350752689,
					["from"] = "Notwehr",
					["msg"] = "leave hyjal",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350752699,
					["from"] = "Notwehr",
					["msg"] = "that place was always a gankfest even when it was active",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1350752724,
					["from"] = "Notwehr",
					["msg"] = "you should do vash'ir",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1350752727,
					["from"] = "Notwehr",
					["msg"] = "that's a lot more fun",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1350752730,
					["from"] = "Notwehr",
					["msg"] = "hyjal is boring as fuck",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1350752834,
					["from"] = "Notwehr",
					["msg"] = "sweet loraine's tonight at 5",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1350752844,
					["from"] = "Notwehr",
					["msg"] = "so nice to have a clear schedule so i can do whatever",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1350752856,
					["from"] = "Cathmor",
					["msg"] = "lol  hardeeharhar",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1350752860,
					["from"] = "Notwehr",
					["msg"] = ":P",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1350752866,
					["from"] = "Notwehr",
					["msg"] = "why are you still in hyjal",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1350752872,
					["from"] = "Notwehr",
					["msg"] = "get vash'ir opened",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1350752876,
					["from"] = "Cathmor",
					["msg"] = "bc im logging in a few",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1350752888,
					["from"] = "Notwehr",
					["msg"] = "oh well make sure you ask me before you make more mistakes ;)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1350752936,
					["from"] = "Cathmor",
					["msg"] = "fukcing loser DK wtf is he lvling here for?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1350752944,
					["from"] = "Cathmor",
					["msg"] = "83",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1350752957,
					["from"] = "Notwehr",
					["msg"] = "cause the quests there open up some other shit that's stupid now",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1350752965,
					["from"] = "Notwehr",
					["msg"] = "when you log on next, start vash'ir, no one will be there",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1350752973,
					["from"] = "Notwehr",
					["msg"] = "it's all underwater so people can't fly",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1350752978,
					["from"] = "Notwehr",
					["msg"] = "so no one lvls there",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1350752979,
					["from"] = "Cathmor",
					["msg"] = "bc it sucks",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1350752982,
					["from"] = "Notwehr",
					["msg"] = "it's awesome",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1350752991,
					["from"] = "Notwehr",
					["msg"] = "you get to ride a seahorse",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1350753116,
					["from"] = "Cathmor",
					["msg"] = "now, now and alliance asshole takes my mobs",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1350753128,
					["from"] = "Notwehr",
					["msg"] = "you'd still have that on pve",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1350753143,
					["from"] = "Notwehr",
					["msg"] = "are you prot yet",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1350753212,
					["from"] = "Cathmor",
					["msg"] = "i have that as a second spec",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1350753246,
					["from"] = "Notwehr",
					["msg"] = "give it a try when you do some mob quests",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1350753251,
					["from"] = "Notwehr",
					["msg"] = "might like it ;)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1350753263,
					["from"] = "Notwehr",
					["msg"] = "survivability goes way up",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1350753362,
					["from"] = "Cathmor",
					["msg"] = "logging.  laterz  ",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1350753369,
					["from"] = "Notwehr",
					["msg"] = "kisses",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1352175236,
					["from"] = "Cathmor",
					["msg"] = "omfg  |Hspell:6544|h[Heroic Leap]|h  Not on button bar",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1352175246,
					["from"] = "Cathmor",
					["msg"] = "mightve helped a TAD lol",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1352175248,
					["from"] = "Notwehr",
					["msg"] = "link me your aoe",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1352175298,
					["from"] = "Cathmor",
					["msg"] = " |cff71d5ff|Hspell:6544|h[Heroic Leap]|h|r |cff71d5ff|Hspell:6343|h[Thunder Clap]|h|r |cff71d5ff|Hspell:118000|h[Dragon Roar]|h|r",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1352175360,
					["from"] = "Cathmor",
					["msg"] = "didnt use the Leap at all.  wouldve made a huge diff having three aoe",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1352175368,
					["from"] = "Notwehr",
					["msg"] = "i don't think you need it",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1352175374,
					["from"] = "Cathmor",
					["msg"] = "every bit helps",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1352175380,
					["from"] = "Cathmor",
					["msg"] = "i was using TC only at the beginning",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1352175385,
					["from"] = "Notwehr",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1352175392,
					["from"] = "Cathmor",
					["msg"] = "and cleave",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1352175407,
					["from"] = "Notwehr",
					["msg"] = "yea i saw execution",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1352175407,
					["from"] = "Cathmor",
					["msg"] = "Dragon Roar is a new talent I'd not used.  ",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1352175419,
					["from"] = "Notwehr",
					["msg"] = "yea i wasn't too happy with it, i'm old school with shockwave",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1352175430,
					["from"] = "Cathmor",
					["msg"] = "i wanted to carefully review adn set up bars, but just jumped in for that run. lol",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1352175449,
					["from"] = "Cathmor",
					["msg"] = "my bars were a godawful mess those two runs stuff completely out of place",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1352175452,
					["from"] = "Cathmor",
					["msg"] = "much better now.",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1352175483,
					["from"] = "Notwehr",
					["msg"] = "takes a few to get them proper",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1352175496,
					["from"] = "Notwehr",
					["msg"] = "i have 3 bars up cause i can't remember my hotkeys for awhile",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1352175509,
					["from"] = "Cathmor",
					["msg"] = "yeah, but the stuff came back pretty quickly",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1352175520,
					["from"] = "Notwehr",
					["msg"] = "yea it does when you only play 1 toon constantly",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1352175528,
					["from"] = "Notwehr",
					["msg"] = "it's harder for us 11 max lvls /flex",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1352175532,
					["from"] = "Cathmor",
					["msg"] = "i didnt \"use\" either trinket",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1352175540,
					["from"] = "Notwehr",
					["msg"] = "you shouldn't have on use trinkets :P",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1352175556,
					["from"] = "Cathmor",
					["msg"] = "they should be macro'ed",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1352175563,
					["from"] = "Notwehr",
					["msg"] = "yea bind em to TC",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1352175564,
					["from"] = "Cathmor",
					["msg"] = "but theyre not (yet",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1352175659,
					["from"] = "Cathmor",
					["msg"] = " |cff71d5ff|Hspell:97462|h[Rallying Cry]|h|r lolz",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1352175675,
					["from"] = "Cathmor",
					["msg"] = "  /sigh",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1352175701,
					["from"] = "Cathmor",
					["msg"] = " |cff71d5ff|Hspell:112048|h[Shield Barrier]|h|r  double /sigh",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1352175708,
					["from"] = "Cathmor",
					["msg"] = "none of the new talents on me barz",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1352175716,
					["from"] = "Notwehr",
					["msg"] = "i don't use either of those",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1352175726,
					["from"] = "Notwehr",
					["msg"] = "warriors have too many buttons",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1352175745,
					["from"] = "Notwehr",
					["msg"] = "i only use shield block cause of the bonus to slam or w/e it is",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1352175746,
					["from"] = "Cathmor",
					["msg"] = "even more than in the past!  it's pretty bad",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1352175754,
					["from"] = "Notwehr",
					["msg"] = "yea i was pissed when i got on my warrior",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1352175762,
					["from"] = "Notwehr",
					["msg"] = "so i just left 3-5 buttons off",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1352175828,
					["from"] = "Notwehr",
					["msg"] = "now i've commited to waking up at 7am to vote",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1352175831,
					["from"] = "Notwehr",
					["msg"] = "so i'm going to go die",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1352253392,
					["from"] = "Cathmor",
					["msg"] = "Got my skillups!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1352253430,
					["from"] = "Notwehr",
					["msg"] = "for what",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1352253436,
					["from"] = "Notwehr",
					["msg"] = "oh the fair",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1352253438,
					["from"] = "Notwehr",
					["msg"] = "i need to do that",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1352253448,
					["from"] = "Notwehr",
					["msg"] = "at least for cooking",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1352253449,
					["from"] = "Cathmor",
					["msg"] = "easy peasy",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1352253454,
					["from"] = "Notwehr",
					["msg"] = "horrible profession",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1352253519,
					["from"] = "Notwehr",
					["msg"] = "are we doing instances",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1352253614,
					["from"] = "Cathmor",
					["msg"] = "not sure how long i'll be on tonight",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1352253627,
					["from"] = "Notwehr",
					["msg"] = "well figure it out boy",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1352253633,
					["from"] = "Notwehr",
					["msg"] = "they don't take that long",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1352253910,
					["from"] = "Cathmor",
					["msg"] = "i should probably just world quest.  kids are still up and im likely to get called away",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1352253931,
					["from"] = "Notwehr",
					["msg"] = "alrighty",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [84]
				["info"] = {
				},
			},
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1350738601,
					["from"] = "Gip",
					["msg"] = "ha, did you go back to bed or have you been up all night?",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350738610,
					["from"] = "Notwehr",
					["msg"] = "no i went back to bed",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350738615,
					["from"] = "Gip",
					["msg"] = "ha good",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351036149,
					["from"] = "Gip",
					["msg"] = " |Hitem:86547:0:0:0:0:0:0:894693184:90:0:0|h[Skyshard]|h",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351125711,
					["from"] = "Gip",
					["msg"] = "that was mine in the heatable dish in the fridge, yea?",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351125715,
					["from"] = "Notwehr",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351125721,
					["from"] = "Gip",
					["msg"] = "cool, thanks",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351125725,
					["from"] = "Notwehr",
					["msg"] = "np",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351357827,
					["from"] = "Gip",
					["msg"] = "do you want to queue for LFR (if you have the ilvl)?",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351357854,
					["from"] = "Notwehr",
					["msg"] = "nah that's kewl i'm just doin some AH and gonna make coffee",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351357873,
					["from"] = "Gip",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [11]
				["info"] = {
				},
			},
		},
		["Vergottlicht"] = {
			["Tudd"] = {
				{
					["type"] = 1,
					["time"] = 1351557438,
					["from"] = "Tudd",
					["msg"] = "Hey",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351557441,
					["from"] = "Vergottlicht",
					["msg"] = "sup",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351557463,
					["from"] = "Tudd",
					["msg"] = "Not too much",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351557475,
					["from"] = "Tudd",
					["msg"] = "Yes",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351557480,
					["from"] = "Tudd",
					["msg"] = "mt",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351557965,
					["from"] = "Tudd",
					["msg"] = "I accepted a job offer in NYC today.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351557972,
					["from"] = "Vergottlicht",
					["msg"] = "what",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351557977,
					["from"] = "Vergottlicht",
					["msg"] = "are you retarded",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351557980,
					["from"] = "Vergottlicht",
					["msg"] = "nyc isn't going to be there",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351557986,
					["from"] = "Tudd",
					["msg"] = "-_-",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351557988,
					["from"] = "Vergottlicht",
					["msg"] = "it's gone",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351558010,
					["from"] = "Tudd",
					["msg"] = "Well, guess that sucks.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351558014,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351558021,
					["from"] = "Vergottlicht",
					["msg"] = "what company?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351558037,
					["from"] = "Tudd",
					["msg"] = "A company called Thrillist",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351558096,
					["from"] = "Tudd",
					["msg"] = "I'll be designing ads that go into their emails and website for external clients (lots of national/global brands) and then doing basic web design when they need it and designs for events they put on for their sponsors.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1351558108,
					["from"] = "Vergottlicht",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1351558111,
					["from"] = "Vergottlicht",
					["msg"] = "www.thrillist.com?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1351558116,
					["from"] = "Tudd",
					["msg"] = "mmhmm",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1351558119,
					["from"] = "Vergottlicht",
					["msg"] = "hmm",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1351558144,
					["from"] = "Vergottlicht",
					["msg"] = "so looks like they do any kind of branding",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1351558154,
					["from"] = "Vergottlicht",
					["msg"] = "do they specialize or idk how that works",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1351558262,
					["from"] = "Tudd",
					["msg"] = "Their main business model is providing current lifestyle and entertainment news (trendy bars, restaurnts, retail shops, etc.) for guys 18-35.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1351558282,
					["from"] = "Tudd",
					["msg"] = "THe emails are supported by ads that are paid for by external clients (Coors light, Jack Daniels, etc.)",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1351558301,
					["from"] = "Tudd",
					["msg"] = "I'll be designing the ads for the clients that will then be put onto the emails.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1351558304,
					["from"] = "Vergottlicht",
					["msg"] = "so",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1351558306,
					["from"] = "Vergottlicht",
					["msg"] = "nyc",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1351558308,
					["from"] = "Vergottlicht",
					["msg"] = "like",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1351558314,
					["from"] = "Vergottlicht",
					["msg"] = "i hope you're ready to take it",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1351558319,
					["from"] = "Tudd",
					["msg"] = "Yep",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1351558323,
					["from"] = "Vergottlicht",
					["msg"] = "i mean take a dick",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1351558327,
					["from"] = "Tudd",
					["msg"] = "hahahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1351558329,
					["from"] = "Vergottlicht",
					["msg"] = "cause there's gonna be gay guys everywhere",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1351558336,
					["from"] = "Vergottlicht",
					["msg"] = "especially in marketing",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1351558342,
					["from"] = "Vergottlicht",
					["msg"] = "or graphic design i'd guess",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1351558344,
					["from"] = "Tudd",
					["msg"] = "I think they usually stay in West Village and Greenwich ;)",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1351558353,
					["from"] = "Tudd",
					["msg"] = "I'll avoid those areas.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1351558361,
					["from"] = "Vergottlicht",
					["msg"] = "i'm sure they venture out to pick up some white trash now n then",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1351558365,
					["from"] = "Tudd",
					["msg"] = "hahahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1351558384,
					["from"] = "Vergottlicht",
					["msg"] = "so where will you be staying?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1351558392,
					["from"] = "Vergottlicht",
					["msg"] = "do you know anyone downtown?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1351558402,
					["from"] = "Tudd",
					["msg"] = "Still undecided, but I know some people that live in the area.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1351558407,
					["from"] = "Vergottlicht",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1351558422,
					["from"] = "Vergottlicht",
					["msg"] = "so did you get to look at the place",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1351558424,
					["from"] = "Tudd",
					["msg"] = "Yeah, I need to talk with them and continue looking.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1351558425,
					["from"] = "Vergottlicht",
					["msg"] = "see what the work place is like",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1351558437,
					["from"] = "Tudd",
					["msg"] = "Yeah, it's super casual.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1351558442,
					["from"] = "Vergottlicht",
					["msg"] = "any pics?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1351558454,
					["from"] = "Tudd",
					["msg"] = "Ummm, I'm sure you can find some pics online somewhere lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1351558463,
					["from"] = "Vergottlicht",
					["msg"] = "did you go visit?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1351558499,
					["from"] = "Tudd",
					["msg"] = "Nope, they're not that amazing of a company. I'll hopefully be going in a couple of weeks to scout the area and if everything works, find a place to live.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1351558519,
					["from"] = "Vergottlicht",
					["msg"] = "oh i just meant did you go see the place yet",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1351558524,
					["from"] = "Vergottlicht",
					["msg"] = "when do you start",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1351558528,
					["from"] = "Tudd",
					["msg"] = "Unfortunately small companies in my field don't usually have money to throw at people to fly them out.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1351558537,
					["from"] = "Vergottlicht",
					["msg"] = "just take the train",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1351558552,
					["from"] = "Tudd",
					["msg"] = "So I have not seen them in person, but had a little virtual tour from them lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1351558558,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1351558561,
					["from"] = "Vergottlicht",
					["msg"] = "...so",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1351558571,
					["from"] = "Vergottlicht",
					["msg"] = "are the bosses guys or girls",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1351558575,
					["from"] = "Tudd",
					["msg"] = "Guys",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1351558577,
					["from"] = "Vergottlicht",
					["msg"] = "good",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1351558586,
					["from"] = "Vergottlicht",
					["msg"] = "what did you have to do",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1351558589,
					["from"] = "Vergottlicht",
					["msg"] = "show them work you've done?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1351558601,
					["from"] = "Tudd",
					["msg"] = "It's a company that targets guys 18-35... so most employees are guys.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1351558612,
					["from"] = "Vergottlicht",
					["msg"] = "sounds pretty gay",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1351558615,
					["from"] = "Tudd",
					["msg"] = "Yeah, I showed them my work and they had me do a sample project similar to what I'll be doing.,",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1351558618,
					["from"] = "Vergottlicht",
					["msg"] = "should look at Fab.com while ur there",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1351558621,
					["from"] = "Vergottlicht",
					["msg"] = "nice",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1351558639,
					["from"] = "Tudd",
					["msg"] = "Yeah, Fab was in my \"contract\" under the noncompete section.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1351558646,
					["from"] = "Vergottlicht",
					["msg"] = "ahaha",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1351558649,
					["from"] = "Vergottlicht",
					["msg"] = "that's awesome",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1351558657,
					["from"] = "Vergottlicht",
					["msg"] = "but they can't enforce that shit",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1351558661,
					["from"] = "Vergottlicht",
					["msg"] = "so always keep an eye open",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1351558667,
					["from"] = "Tudd",
					["msg"] = "Haha yeah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1351558703,
					["from"] = "Tudd",
					["msg"] = "It'll be an interesting experience to say the least. I'm nervous as shit, but I'm also excited to actually do something that I've been wanting to do for years.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1351558710,
					["from"] = "Vergottlicht",
					["msg"] = "plus it's in nyc",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1351558721,
					["from"] = "Tudd",
					["msg"] = "Yeah, opportunities galore. ",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1351558724,
					["from"] = "Vergottlicht",
					["msg"] = "so you'll prolly die from a terrorist attack anyway",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1351558729,
					["from"] = "Vergottlicht",
					["msg"] = "really no need to worry",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1351558730,
					["from"] = "Tudd",
					["msg"] = "Most likely.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1351558750,
					["from"] = "Vergottlicht",
					["msg"] = "probably closer to me now too",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1351558763,
					["from"] = "Tudd",
					["msg"] = "idk how far it is from Detroit",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1351558779,
					["from"] = "Vergottlicht",
					["msg"] = "612 miles",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1351558895,
					["from"] = "Tudd",
					["msg"] = "lol that's still a long way",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1351558916,
					["from"] = "Vergottlicht",
					["msg"] = "not that far",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1351558924,
					["from"] = "Vergottlicht",
					["msg"] = "wasn't bad by bus",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1351558927,
					["from"] = "Vergottlicht",
					["msg"] = "err train",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1351558940,
					["from"] = "Tudd",
					["msg"] = "That's like 9 hours",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1351558943,
					["from"] = "Vergottlicht",
					["msg"] = "12",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1351558944,
					["from"] = "Vergottlicht",
					["msg"] = "but yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1351558982,
					["from"] = "Vergottlicht",
					["msg"] = "so does that mean we don't need the site ;)",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1351559064,
					["from"] = "Tudd",
					["msg"] = "Hahaha, I still wanna get it done.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1351559082,
					["from"] = "Vergottlicht",
					["msg"] = "kk",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1355279218,
					["from"] = "Tudd",
					["msg"] = "What's up?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1355279225,
					["from"] = "Vergottlicht",
					["msg"] = "nm just debating what to do",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1355279235,
					["from"] = "Vergottlicht",
					["msg"] = "mill or play hunter for a bit",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1355279249,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1355279262,
					["from"] = "Tudd",
					["msg"] = "I just got some empanadas",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1355279267,
					["from"] = "Vergottlicht",
					["msg"] = "what",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1355279294,
					["from"] = "Tudd",
					["msg"] = "Empanada",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1355279312,
					["from"] = "Vergottlicht",
					["msg"] = "no idea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1355279317,
					["from"] = "Tudd",
					["msg"] = "It's a little tortilla stuffed with meats, cheese, etc... and then fried or baked.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1355279332,
					["from"] = "Vergottlicht",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1355279338,
					["from"] = "Vergottlicht",
					["msg"] = "is that mexican or something",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1355279363,
					["from"] = "Tudd",
					["msg"] = "lol... kind of. Not sure it's really MEXICAN... but one of those hispanic regions.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1355279369,
					["from"] = "Vergottlicht",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1355279371,
					["from"] = "Tudd",
					["msg"] = "Thinks it's a bit more south... Southern America.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1355279375,
					["from"] = "Tudd",
					["msg"] = "South America*",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1355279376,
					["from"] = "Vergottlicht",
					["msg"] = "not a fan of that food type",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1355279379,
					["from"] = "Tudd",
					["msg"] = "Really?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1355279428,
					["from"] = "Vergottlicht",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1355279434,
					["from"] = "Vergottlicht",
					["msg"] = "all the same just put together different",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1355279465,
					["from"] = "Tudd",
					["msg"] = "I think you're referring to food in general...",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1355279471,
					["from"] = "Vergottlicht",
					["msg"] = "no",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1355279490,
					["from"] = "Vergottlicht",
					["msg"] = "all it is a tortilla with filling prepared different ways",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1355279502,
					["from"] = "Tudd",
					["msg"] = "That's one thing.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1355279508,
					["from"] = "Vergottlicht",
					["msg"] = "exactly",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1355279517,
					["from"] = "Vergottlicht",
					["msg"] = "one thing that's their whole food",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1355279533,
					["from"] = "Tudd",
					["msg"] = "lol there are more things than just empanadas",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [119]
				{
					["type"] = 1,
					["time"] = 1355279537,
					["from"] = "Vergottlicht",
					["msg"] = "taco, quesadilla, enchalada, empandas",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [120]
				{
					["type"] = 1,
					["time"] = 1355279542,
					["from"] = "Vergottlicht",
					["msg"] = "same thing prepared different",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [121]
				{
					["type"] = 1,
					["time"] = 1355279568,
					["from"] = "Tudd",
					["msg"] = "Burgers are that way",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [122]
				{
					["type"] = 1,
					["time"] = 1355279570,
					["from"] = "Vergottlicht",
					["msg"] = "it's all a tortilla with meat/veggie",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [123]
				{
					["type"] = 1,
					["time"] = 1355279581,
					["from"] = "Vergottlicht",
					["msg"] = "yea but we have other types of food",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [124]
				{
					["type"] = 1,
					["time"] = 1355279586,
					["from"] = "Tudd",
					["msg"] = "Salads are that way",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [125]
				{
					["type"] = 1,
					["time"] = 1355279588,
					["from"] = "Vergottlicht",
					["msg"] = "that's all they eat",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [126]
				{
					["type"] = 1,
					["time"] = 1355279617,
					["from"] = "Tudd",
					["msg"] = "Eh, idk... seems like quite a blanket statement",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [127]
				{
					["type"] = 1,
					["time"] = 1355279631,
					["from"] = "Vergottlicht",
					["msg"] = "what other dishes do they have that aren't tortilla based",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [128]
				{
					["type"] = 1,
					["time"] = 1355279640,
					["from"] = "Tudd",
					["msg"] = "Rice dishes",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [129]
				{
					["type"] = 1,
					["time"] = 1355279644,
					["from"] = "Vergottlicht",
					["msg"] = "oh damn",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [130]
				{
					["type"] = 1,
					["time"] = 1355279647,
					["from"] = "Tudd",
					["msg"] = "Seafood stews",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [131]
				{
					["type"] = 1,
					["time"] = 1355279650,
					["from"] = "Tudd",
					["msg"] = " t",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [132]
				{
					["type"] = 1,
					["time"] = 1355279654,
					["from"] = "Tudd",
					["msg"] = "Other types of stews",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [133]
				{
					["type"] = 1,
					["time"] = 1355279664,
					["from"] = "Vergottlicht",
					["msg"] = "and that's not just southern states?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [134]
				{
					["type"] = 1,
					["time"] = 1355279673,
					["from"] = "Vergottlicht",
					["msg"] = "like that's proper central america?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [135]
				{
					["type"] = 1,
					["time"] = 1355279681,
					["from"] = "Tudd",
					["msg"] = "Yeah",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [136]
				{
					["type"] = 1,
					["time"] = 1355279685,
					["from"] = "Tudd",
					["msg"] = "They roast whole hogs",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [137]
				{
					["type"] = 1,
					["time"] = 1355279689,
					["from"] = "Vergottlicht",
					["msg"] = "ok so stews of seafood",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [138]
				{
					["type"] = 1,
					["time"] = 1355279711,
					["from"] = "Vergottlicht",
					["msg"] = "i've had that once, but never at a mexican/spanish resturant",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [139]
				{
					["type"] = 1,
					["time"] = 1355279717,
					["from"] = "Vergottlicht",
					["msg"] = "and the one time i had it it was nasty",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [140]
				{
					["type"] = 1,
					["time"] = 1355279729,
					["from"] = "Vergottlicht",
					["msg"] = "and that was at a very good resturant",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [141]
				{
					["type"] = 1,
					["time"] = 1355279737,
					["from"] = "Vergottlicht",
					["msg"] = "so i'll have to see",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [142]
				{
					["type"] = 1,
					["time"] = 1355279746,
					["from"] = "Vergottlicht",
					["msg"] = "still probably don't like their culture and should just get rid of it",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [143]
				{
					["type"] = 1,
					["time"] = 1355279754,
					["from"] = "Tudd",
					["msg"] = "hahahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [144]
				{
					["type"] = 1,
					["time"] = 1355279755,
					["from"] = "Tudd",
					["msg"] = "k",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [145]
				{
					["type"] = 1,
					["time"] = 1355279860,
					["from"] = "Vergottlicht",
					["msg"] = "i hate how windows can't fucking have a small footprint and you need a 60gb disk just for the OS",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [146]
				{
					["type"] = 1,
					["time"] = 1355279876,
					["from"] = "Vergottlicht",
					["msg"] = "can't install itunes update out of space",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [147]
				{
					["type"] = 1,
					["time"] = 1355279878,
					["from"] = "Vergottlicht",
					["msg"] = "durpdrupdr",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [148]
				{
					["type"] = 1,
					["time"] = 1355279900,
					["from"] = "Tudd",
					["msg"] = "lol that sucks",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [149]
				{
					["type"] = 1,
					["time"] = 1355279915,
					["from"] = "Vergottlicht",
					["msg"] = "just want to play games on linux",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [150]
				{
					["type"] = 1,
					["time"] = 1355279918,
					["from"] = "Vergottlicht",
					["msg"] = "so gay",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [151]
				{
					["type"] = 1,
					["time"] = 1355280033,
					["from"] = "Tudd",
					["msg"] = "Those empanadas were SPICY",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [152]
				{
					["type"] = 1,
					["time"] = 1355280083,
					["from"] = "Vergottlicht",
					["msg"] = "oh my",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [153]
				{
					["type"] = 1,
					["time"] = 1355280087,
					["from"] = "Vergottlicht",
					["msg"] = "no fuckin you tonight",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [154]
				{
					["type"] = 1,
					["time"] = 1355280094,
					["from"] = "Tudd",
					["msg"] = "Thank god",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [155]
				{
					["type"] = 1,
					["time"] = 1355280100,
					["from"] = "Vergottlicht",
					["msg"] = "feels good after awhile",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [156]
				{
					["type"] = 1,
					["time"] = 1355280103,
					["from"] = "Vergottlicht",
					["msg"] = "maybe few weeks",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [157]
				{
					["type"] = 1,
					["time"] = 1355280106,
					["from"] = "Tudd",
					["msg"] = "Doubt it",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [158]
				{
					["type"] = 1,
					["time"] = 1355280111,
					["from"] = "Vergottlicht",
					["msg"] = "ask ur landlord",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [159]
				{
					["type"] = 1,
					["time"] = 1355280130,
					["from"] = "Tudd",
					["msg"] = "\"Hey, does it feel good after a while?\"",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [160]
				{
					["type"] = 1,
					["time"] = 1355280139,
					["from"] = "Vergottlicht",
					["msg"] = "no have him try it out on you",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [161]
				{
					["type"] = 1,
					["time"] = 1355280144,
					["from"] = "Vergottlicht",
					["msg"] = "it's worth 1200/month",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [162]
				{
					["type"] = 1,
					["time"] = 1355280145,
					["from"] = "Tudd",
					["msg"] = "No thanks",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [163]
				{
					["type"] = 1,
					["time"] = 1355280164,
					["from"] = "Vergottlicht",
					["msg"] = "thought you had a business minor or something",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [164]
				{
					["type"] = 1,
					["time"] = 1355280168,
					["from"] = "Vergottlicht",
					["msg"] = "that's good business",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [165]
				{
					["type"] = 1,
					["time"] = 1355280172,
					["from"] = "Tudd",
					["msg"] = "hahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [166]
				{
					["type"] = 1,
					["time"] = 1355280177,
					["from"] = "Tudd",
					["msg"] = "That's \"shady business\"",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [167]
				{
					["type"] = 1,
					["time"] = 1355280212,
					["from"] = "Vergottlicht",
					["msg"] = "we're in america",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [168]
				{
					["type"] = 1,
					["time"] = 1355280215,
					["from"] = "Vergottlicht",
					["msg"] = "it's business",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [169]
				{
					["type"] = 1,
					["time"] = 1355280349,
					["from"] = "Tudd",
					["msg"] = "lol you are ridiculous",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [170]
				{
					["type"] = 1,
					["time"] = 1355280356,
					["from"] = "Vergottlicht",
					["msg"] = "ridiculously serious",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [171]
				{
					["type"] = 1,
					["time"] = 1355280373,
					["from"] = "Vergottlicht",
					["msg"] = "just make him wear a condom",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [172]
				{
					["type"] = 1,
					["time"] = 1355280380,
					["from"] = "Vergottlicht",
					["msg"] = "save the real stuff for me",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [173]
				{
					["type"] = 1,
					["time"] = 1355280405,
					["from"] = "Vergottlicht",
					["msg"] = "if he's dumb enough to give you 1200/month for you to just lay there, take advantage of his dumb ass",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [174]
				{
					["type"] = 1,
					["time"] = 1355280418,
					["from"] = "Tudd",
					["msg"] = "I don't even know who my landlord is",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [175]
				{
					["type"] = 1,
					["time"] = 1355280425,
					["from"] = "Vergottlicht",
					["msg"] = "the guy in the next room",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [176]
				{
					["type"] = 1,
					["time"] = 1355280433,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [177]
				{
					["type"] = 1,
					["time"] = 1355447859,
					["from"] = "Tudd",
					["msg"] = "Not much. About to go out and find something for dinner.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [178]
				{
					["type"] = 1,
					["time"] = 1355447863,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [179]
				{
					["type"] = 1,
					["time"] = 1355447865,
					["from"] = "Vergottlicht",
					["msg"] = "no cookin?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [180]
				{
					["type"] = 1,
					["time"] = 1355447887,
					["from"] = "Tudd",
					["msg"] = "I havne't had time to go grocery shopping since moving in yet.",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [181]
				{
					["type"] = 1,
					["time"] = 1355447894,
					["from"] = "Vergottlicht",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [182]
				{
					["type"] = 1,
					["time"] = 1355447895,
					["from"] = "Tudd",
					["msg"] = "Going to do that this weekend",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [183]
				{
					["type"] = 1,
					["time"] = 1355447897,
					["from"] = "Vergottlicht",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [184]
				{
					["type"] = 1,
					["time"] = 1355540935,
					["from"] = "Vergottlicht",
					["msg"] = "sorry crashed",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [185]
				{
					["type"] = 1,
					["time"] = 1355540961,
					["from"] = "Tudd",
					["msg"] = "lol no good",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [186]
				{
					["type"] = 1,
					["time"] = 1355540985,
					["from"] = "Tudd",
					["msg"] = "do you ever shop at Trader Joe's? Or do you shop at the same local market that John does?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [187]
				{
					["type"] = 1,
					["time"] = 1355540988,
					["from"] = "Vergottlicht",
					["msg"] = "stupid ah addon",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [188]
				{
					["type"] = 1,
					["time"] = 1355540994,
					["from"] = "Vergottlicht",
					["msg"] = "same local market",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [189]
				{
					["type"] = 1,
					["time"] = 1355541014,
					["from"] = "Vergottlicht",
					["msg"] = "been to trader joe's once, it was interesting but not something i'd buy",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [190]
				{
					["type"] = 1,
					["time"] = 1355541046,
					["from"] = "Tudd",
					["msg"] = "I think cost-wise it's going to be my best option",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [191]
				{
					["type"] = 1,
					["time"] = 1355541070,
					["from"] = "Vergottlicht",
					["msg"] = "damn",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [192]
				{
					["type"] = 1,
					["time"] = 1355541101,
					["from"] = "Tudd",
					["msg"] = "I could do Whole Foods",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [193]
				{
					["type"] = 1,
					["time"] = 1355541120,
					["from"] = "Tudd",
					["msg"] = "That'll be a bit pricier though",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [194]
				{
					["type"] = 1,
					["time"] = 1355541127,
					["from"] = "Vergottlicht",
					["msg"] = "does trader joe's sell produce?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [195]
				{
					["type"] = 1,
					["time"] = 1355541134,
					["from"] = "Vergottlicht",
					["msg"] = "the one i was in just sold all prepackaged shit",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [196]
				{
					["type"] = 1,
					["time"] = 1355541146,
					["from"] = "Vergottlicht",
					["msg"] = "not like a grocery store where i could buy meat/produce",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [197]
				{
					["type"] = 1,
					["time"] = 1355541157,
					["from"] = "Tudd",
					["msg"] = "The one here sells it all",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [198]
				{
					["type"] = 1,
					["time"] = 1355541161,
					["from"] = "Vergottlicht",
					["msg"] = "ah k",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [199]
				{
					["type"] = 1,
					["time"] = 1355541173,
					["from"] = "Vergottlicht",
					["msg"] = "well then just do that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [200]
				{
					["type"] = 1,
					["time"] = 1355639707,
					["from"] = "Vergottlicht",
					["msg"] = "what do you mean opposite faction achv",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [201]
				{
					["type"] = 1,
					["time"] = 1355639773,
					["from"] = "Tudd",
					["msg"] = "Like having to go into Horde cities",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [202]
				{
					["type"] = 1,
					["time"] = 1355639845,
					["from"] = "Vergottlicht",
					["msg"] = "oh",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [203]
				{
					["type"] = 1,
					["time"] = 1355639851,
					["from"] = "Vergottlicht",
					["msg"] = "never done that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [204]
				["info"] = {
				},
			},
			["Zaldek"] = {
				{
					["type"] = 1,
					["time"] = 1353024797,
					["from"] = "Zaldek",
					["msg"] = "YOU GOT A PAN, YOU GOT A PLAN",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353024803,
					["from"] = "Zaldek",
					["msg"] = "GONNA FRY THAT SHADO IN THE PAN",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353024811,
					["from"] = "Zaldek",
					["msg"] = "HA HA HA, Oh Ms Peaches.",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353024836,
					["from"] = "Vergottlicht",
					["msg"] = "i'm so lost!",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353024844,
					["from"] = "Zaldek",
					["msg"] = "s...he...",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353024867,
					["from"] = "Zaldek",
					["msg"] = "She's a black man dressed as a woman frying chicken for underprivileged ghetto chitlins",
					["inbound"] = true,
					["convo"] = "Zaldek",
				}, -- [6]
				["info"] = {
				},
			},
			["Dresdenus"] = {
				{
					["type"] = 1,
					["time"] = 1351311096,
					["from"] = "Dresdenus",
					["msg"] = "invite plz",
					["inbound"] = true,
					["convo"] = "Dresdenus",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351311230,
					["from"] = "Dresdenus",
					["msg"] = "hey invite for sha group plz",
					["inbound"] = true,
					["convo"] = "Dresdenus",
				}, -- [2]
				["info"] = {
				},
			},
			["Fauxpaw"] = {
				{
					["type"] = 1,
					["time"] = 1349739197,
					["from"] = "Fauxpaw",
					["msg"] = "LEVEL YOUR INSCRIPTION AND MAKE ME CARDS :(",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349739208,
					["from"] = "Vergottlicht",
					["msg"] = "i hate cards",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349739211,
					["from"] = "Vergottlicht",
					["msg"] = "worthless!",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349739218,
					["from"] = "Fauxpaw",
					["msg"] = "BUT I LOVE SNAKES",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349739226,
					["from"] = "Vergottlicht",
					["msg"] = "rawr ;)",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349739344,
					["from"] = "Fauxpaw",
					["msg"] = "Cross realm zones are shit",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349739732,
					["from"] = "Vergottlicht",
					["msg"] = "you're shit",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349739737,
					["from"] = "Vergottlicht",
					["msg"] = "YEA I SAID IT",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349739738,
					["from"] = "Fauxpaw",
					["msg"] = "thats not nice",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349739746,
					["from"] = "Vergottlicht",
					["msg"] = "who keeps telling people i'm nice",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349739755,
					["from"] = "Fauxpaw",
					["msg"] = "I TELL EVERYONE YOURE NICE",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349739761,
					["from"] = "Vergottlicht",
					["msg"] = "ASSHAT",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349739765,
					["from"] = "Vergottlicht",
					["msg"] = "no more love for you",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349739766,
					["from"] = "Fauxpaw",
					["msg"] = "ITS TRUE",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349739770,
					["from"] = "Fauxpaw",
					["msg"] = "YOURE A REALLY SWELL GUY",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349739777,
					["from"] = "Vergottlicht",
					["msg"] = "i want to be evil",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349739779,
					["from"] = "Vergottlicht",
					["msg"] = "EVAL",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349739787,
					["from"] = "Fauxpaw",
					["msg"] = ":\\",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349739795,
					["from"] = "Fauxpaw",
					["msg"] = "Purge the dark half of your sul",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349739796,
					["from"] = "Fauxpaw",
					["msg"] = "SOUL",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349739804,
					["from"] = "Fauxpaw",
					["msg"] = "then ask it to give you evil lessons",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349739807,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349739829,
					["from"] = "Fauxpaw",
					["msg"] = "omg outland herb farming",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349739832,
					["from"] = "Fauxpaw",
					["msg"] = "is the worst thing ever",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349739855,
					["from"] = "Vergottlicht",
					["msg"] = ":(",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349739858,
					["from"] = "Vergottlicht",
					["msg"] = "farmin is retarded",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349739871,
					["from"] = "Fauxpaw",
					["msg"] = "Yea but im not paying people named Poppagrunt 100g a stack of herbs",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349739892,
					["from"] = "Vergottlicht",
					["msg"] = "that's hot",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349739896,
					["from"] = "Vergottlicht",
					["msg"] = "maybe he'll take noodz for herbs?",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349739900,
					["from"] = "Fauxpaw",
					["msg"] = "omg",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349739902,
					["from"] = "Fauxpaw",
					["msg"] = "I never thought of that",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349739911,
					["from"] = "Fauxpaw",
					["msg"] = "maybe someone will sell me the darkmoon card deck for nudes",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349739914,
					["from"] = "Vergottlicht",
					["msg"] = "that's how i get em",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349739918,
					["from"] = "Vergottlicht",
					["msg"] = "just jerk off",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349739944,
					["from"] = "Fauxpaw",
					["msg"] = "Idont think mom's gonna do this",
					["inbound"] = true,
					["convo"] = "Fauxpaw",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349740136,
					["from"] = "Vergottlicht",
					["msg"] = "what",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349740140,
					["from"] = "Vergottlicht",
					["msg"] = "you confuse me",
					["inbound"] = false,
					["convo"] = "Fauxpaw",
				}, -- [37]
				["info"] = {
				},
			},
			["Corroar"] = {
				{
					["type"] = 1,
					["time"] = 1351650374,
					["from"] = "Corroar",
					["msg"] = "could you spare me some gold please...?",
					["inbound"] = true,
					["convo"] = "Corroar",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351650389,
					["from"] = "Vergottlicht",
					["msg"] = "get a job",
					["inbound"] = false,
					["convo"] = "Corroar",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351650404,
					["from"] = "Corroar",
					["msg"] = "its hard at a low levell...D:",
					["inbound"] = true,
					["convo"] = "Corroar",
				}, -- [3]
				["info"] = {
				},
			},
			["Wàyfaerer"] = {
				{
					["type"] = 1,
					["time"] = 1349399931,
					["from"] = "Wàyfaerer",
					["msg"] = "JAMES!",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349399935,
					["from"] = "Vergottlicht",
					["msg"] = "sup boy",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1349399942,
					["from"] = "Wàyfaerer",
					["msg"] = "opinion ",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1349399949,
					["from"] = "Vergottlicht",
					["msg"] = "okies",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1349399973,
					["from"] = "Wàyfaerer",
					["msg"] = "i was gonna get another tattoo and was wondering what u thot of another horde thing? w",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1349400005,
					["from"] = "Vergottlicht",
					["msg"] = "lol idk, i mean you already have one",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1349400009,
					["from"] = "Vergottlicht",
					["msg"] = "what is the second going to be?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1349400132,
					["from"] = "Wàyfaerer",
					["msg"] = "the panda version of it",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1349400198,
					["from"] = "Vergottlicht",
					["msg"] = "checking to see what it looks like",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1349400201,
					["from"] = "Wàyfaerer",
					["msg"] = "okay",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1349400305,
					["from"] = "Vergottlicht",
					["msg"] = "the monk crest?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1349400313,
					["from"] = "Wàyfaerer",
					["msg"] = "no panda version",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1349400319,
					["from"] = "Wàyfaerer",
					["msg"] = "http://24.media.tumblr.com/tumblr_matnmlwwc21r3tj8qo1_500.jpg",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1349400321,
					["from"] = "Vergottlicht",
					["msg"] = "is it just teh paw?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1349400326,
					["from"] = "Wàyfaerer",
					["msg"] = "left one",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1349400334,
					["from"] = "Vergottlicht",
					["msg"] = "is that official?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1349400338,
					["from"] = "Wàyfaerer",
					["msg"] = "yes",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1349400348,
					["from"] = "Vergottlicht",
					["msg"] = "hmm",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1349400350,
					["from"] = "Vergottlicht",
					["msg"] = "idk",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1349400369,
					["from"] = "Vergottlicht",
					["msg"] = "they look pretty similiar ",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1349400383,
					["from"] = "Vergottlicht",
					["msg"] = "that can't be the alliance one",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1349400387,
					["from"] = "Wàyfaerer",
					["msg"] = "it is",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1349400399,
					["from"] = "Vergottlicht",
					["msg"] = "you sure someone didn't just draw these",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1349400413,
					["from"] = "Wàyfaerer",
					["msg"] = "1 sec",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1349400436,
					["from"] = "Vergottlicht",
					["msg"] = "i need scholarly sources",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1349400448,
					["from"] = "Wàyfaerer",
					["msg"] = " |Hitem:83080:0:0:0:0:0:0:0:85:0:0|h[Huojin Tabard]|h",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1349400471,
					["from"] = "Wàyfaerer",
					["msg"] = " |Hitem:83079:0:0:0:0:0:0:0:85:0:0|h[Tushui Tabard]|h",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1349400494,
					["from"] = "Vergottlicht",
					["msg"] = "that's horrible",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1349400499,
					["from"] = "Vergottlicht",
					["msg"] = "the alliance one is",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1349400503,
					["from"] = "Wàyfaerer",
					["msg"] = "yep",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1349400504,
					["from"] = "Vergottlicht",
					["msg"] = "idk the horde one is too ",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1349400504,
					["from"] = "Wàyfaerer",
					["msg"] = "it sucks",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1349400505,
					["from"] = "Vergottlicht",
					["msg"] = "like",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1349400508,
					["from"] = "Vergottlicht",
					["msg"] = "not original",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1349400511,
					["from"] = "Wàyfaerer",
					["msg"] = "but that is offical arnt",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1349400514,
					["from"] = "Vergottlicht",
					["msg"] = "looks just like the horde symbol",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1349400522,
					["from"] = "Wàyfaerer",
					["msg"] = "its azn inspired",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1349400557,
					["from"] = "Vergottlicht",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1349400561,
					["from"] = "Vergottlicht",
					["msg"] = "but you're latino",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1349400570,
					["from"] = "Wàyfaerer",
					["msg"] = "kinda",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1349400572,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1349400578,
					["from"] = "Wàyfaerer",
					["msg"] = "im mix blood",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1349400589,
					["from"] = "Vergottlicht",
					["msg"] = "then get the mudblood symbol",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1349400595,
					["from"] = "Wàyfaerer",
					["msg"] = "x,x",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1349400639,
					["from"] = "Vergottlicht",
					["msg"] = "i'm not sold on that one, only because you'll have two very similar tats of the same thing",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1349400647,
					["from"] = "Wàyfaerer",
					["msg"] = "i guess so",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1349400657,
					["from"] = "Vergottlicht",
					["msg"] = "i'd take time to ponder it",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1349400662,
					["from"] = "Vergottlicht",
					["msg"] = "keep picturing it on ur body",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1349400666,
					["from"] = "Vergottlicht",
					["msg"] = "and if you really like it after a year",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1349400667,
					["from"] = "Vergottlicht",
					["msg"] = "get it",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1349400669,
					["from"] = "Vergottlicht",
					["msg"] = ":P",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1349400676,
					["from"] = "Wàyfaerer",
					["msg"] = "so not helpful :P",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [52]
				{
					["type"] = 1,
					["time"] = 1349400684,
					["from"] = "Vergottlicht",
					["msg"] = "that's what i'm doing with mine ",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [53]
				{
					["type"] = 1,
					["time"] = 1349400688,
					["from"] = "Vergottlicht",
					["msg"] = "just need the $$ now",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [54]
				{
					["type"] = 1,
					["time"] = 1349400709,
					["from"] = "Wàyfaerer",
					["msg"] = "mine are free",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [55]
				{
					["type"] = 1,
					["time"] = 1349400717,
					["from"] = "Vergottlicht",
					["msg"] = "i don't suck off the guy",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [56]
				{
					["type"] = 1,
					["time"] = 1349400725,
					["from"] = "Wàyfaerer",
					["msg"] = "i dont either",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [57]
				{
					["type"] = 1,
					["time"] = 1349400728,
					["from"] = "Wàyfaerer",
					["msg"] = "its my brother",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [58]
				{
					["type"] = 1,
					["time"] = 1349400772,
					["from"] = "Vergottlicht",
					["msg"] = "that'd be hot",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [59]
				{
					["type"] = 1,
					["time"] = 1349400817,
					["from"] = "Wàyfaerer",
					["msg"] = "o.O",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [60]
				{
					["type"] = 1,
					["time"] = 1349400822,
					["from"] = "Vergottlicht",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [61]
				{
					["type"] = 1,
					["time"] = 1349400825,
					["from"] = "Wàyfaerer",
					["msg"] = "u into incest!",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [62]
				{
					["type"] = 1,
					["time"] = 1349400835,
					["from"] = "Vergottlicht",
					["msg"] = "hell yea if it's not me",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [63]
				{
					["type"] = 1,
					["time"] = 1349400881,
					["from"] = "Wàyfaerer",
					["msg"] = "ur weird",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [64]
				{
					["type"] = 1,
					["time"] = 1349400905,
					["from"] = "Vergottlicht",
					["msg"] = "this i know",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [65]
				{
					["type"] = 1,
					["time"] = 1349400916,
					["from"] = "Wàyfaerer",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [66]
				{
					["type"] = 1,
					["time"] = 1349400919,
					["from"] = "Wàyfaerer",
					["msg"] = "its cool ur cool",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [67]
				{
					["type"] = 1,
					["time"] = 1349400923,
					["from"] = "Vergottlicht",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [68]
				{
					["type"] = 1,
					["time"] = 1349400931,
					["from"] = "Wàyfaerer",
					["msg"] = "dont u go winking at me",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [69]
				{
					["type"] = 1,
					["time"] = 1349400932,
					["from"] = "Vergottlicht",
					["msg"] = "me u n tom need to get together sometime",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [70]
				{
					["type"] = 1,
					["time"] = 1349400937,
					["from"] = "Vergottlicht",
					["msg"] = "lol i'm not into azns",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [71]
				{
					["type"] = 1,
					["time"] = 1349400937,
					["from"] = "Wàyfaerer",
					["msg"] = "i know what that means :P",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [72]
				{
					["type"] = 1,
					["time"] = 1349400940,
					["from"] = "Vergottlicht",
					["msg"] = "nope",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [73]
				{
					["type"] = 1,
					["time"] = 1349400944,
					["from"] = "Vergottlicht",
					["msg"] = "just a friendly one ;)",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [74]
				{
					["type"] = 1,
					["time"] = 1349400957,
					["from"] = "Vergottlicht",
					["msg"] = "i'd never have sex with someone that has a horde tat",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [75]
				{
					["type"] = 1,
					["time"] = 1349400958,
					["from"] = "Vergottlicht",
					["msg"] = "fuck em",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [76]
				{
					["type"] = 1,
					["time"] = 1349400960,
					["from"] = "Wàyfaerer",
					["msg"] = "lol ya its tom that needs to worry",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [77]
				{
					["type"] = 1,
					["time"] = 1349400965,
					["from"] = "Vergottlicht",
					["msg"] = "^",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [78]
				{
					["type"] = 1,
					["time"] = 1349400968,
					["from"] = "Wàyfaerer",
					["msg"] = "aint that the goal?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [79]
				{
					["type"] = 1,
					["time"] = 1349400972,
					["from"] = "Wàyfaerer",
					["msg"] = "to fuck em?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [80]
				{
					["type"] = 1,
					["time"] = 1349400973,
					["from"] = "Wàyfaerer",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [81]
				{
					["type"] = 1,
					["time"] = 1349400978,
					["from"] = "Vergottlicht",
					["msg"] = "marry em",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [82]
				{
					["type"] = 1,
					["time"] = 1349400983,
					["from"] = "Vergottlicht",
					["msg"] = "he'll come around",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [83]
				{
					["type"] = 1,
					["time"] = 1349400990,
					["from"] = "Wàyfaerer",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [84]
				{
					["type"] = 1,
					["time"] = 1349401007,
					["from"] = "Vergottlicht",
					["msg"] = "fuckin is easy",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [85]
				{
					["type"] = 1,
					["time"] = 1349401067,
					["from"] = "Wàyfaerer",
					["msg"] = "how about http://beyondthebacklot.files.wordpress.com/2010/05/silent-hill-homecoming-cult-symbol.jpg",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [86]
				{
					["type"] = 1,
					["time"] = 1349401109,
					["from"] = "Vergottlicht",
					["msg"] = "has germanic symbols in it",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [87]
				{
					["type"] = 1,
					["time"] = 1349401114,
					["from"] = "Vergottlicht",
					["msg"] = "people are gonna think it's tolkein",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [88]
				{
					["type"] = 1,
					["time"] = 1349401128,
					["from"] = "Wàyfaerer",
					["msg"] = "tolkein as it lotr?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [89]
				{
					["type"] = 1,
					["time"] = 1349401132,
					["from"] = "Vergottlicht",
					["msg"] = "mhm",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [90]
				{
					["type"] = 1,
					["time"] = 1349401136,
					["from"] = "Vergottlicht",
					["msg"] = "he had those all over his stupid covers",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [91]
				{
					["type"] = 1,
					["time"] = 1349401137,
					["from"] = "Wàyfaerer",
					["msg"] = "its sh",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [92]
				{
					["type"] = 1,
					["time"] = 1349401141,
					["from"] = "Vergottlicht",
					["msg"] = "idk",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [93]
				{
					["type"] = 1,
					["time"] = 1349401147,
					["from"] = "Wàyfaerer",
					["msg"] = "do u know sh?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [94]
				{
					["type"] = 1,
					["time"] = 1349401149,
					["from"] = "Vergottlicht",
					["msg"] = "do you just want another tat?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [95]
				{
					["type"] = 1,
					["time"] = 1349401155,
					["from"] = "Vergottlicht",
					["msg"] = "lol of course i know SH",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [96]
				{
					["type"] = 1,
					["time"] = 1349401167,
					["from"] = "Vergottlicht",
					["msg"] = "i don't know it as well as wow",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [97]
				{
					["type"] = 1,
					["time"] = 1349401168,
					["from"] = "Wàyfaerer",
					["msg"] = "basically my bro want to give me one for my bday",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [98]
				{
					["type"] = 1,
					["time"] = 1349401169,
					["from"] = "Vergottlicht",
					["msg"] = "but i've played it",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [99]
				{
					["type"] = 1,
					["time"] = 1349401173,
					["from"] = "Vergottlicht",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [100]
				{
					["type"] = 1,
					["time"] = 1349401186,
					["from"] = "Wàyfaerer",
					["msg"] = "i have options",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [101]
				{
					["type"] = 1,
					["time"] = 1349401186,
					["from"] = "Vergottlicht",
					["msg"] = "i'm not good with this kind of stuff",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [102]
				{
					["type"] = 1,
					["time"] = 1349401193,
					["from"] = "Wàyfaerer",
					["msg"] = "u make me cry",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [103]
				{
					["type"] = 1,
					["time"] = 1349401194,
					["from"] = "Vergottlicht",
					["msg"] = "i would have to sit and think about it for a few months",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [104]
				{
					["type"] = 1,
					["time"] = 1349401201,
					["from"] = "Vergottlicht",
					["msg"] = "make sure i really want it on my body",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [105]
				{
					["type"] = 1,
					["time"] = 1349401247,
					["from"] = "Vergottlicht",
					["msg"] = "get the druid crest or something",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [106]
				{
					["type"] = 1,
					["time"] = 1349401253,
					["from"] = "Wàyfaerer",
					["msg"] = "whats that?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [107]
				{
					["type"] = 1,
					["time"] = 1349401264,
					["from"] = "Vergottlicht",
					["msg"] = "http://images.ctrustnetwork.com/static_pages/gaming/world_of_warcraft/classes/druid/druid.crest.png",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [108]
				{
					["type"] = 1,
					["time"] = 1349401285,
					["from"] = "Vergottlicht",
					["msg"] = "http://ropa-to.deviantart.com/art/Druid-Crest-297453728",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [109]
				{
					["type"] = 1,
					["time"] = 1349401287,
					["from"] = "Wàyfaerer",
					["msg"] = "i dont play druid anymore",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [110]
				{
					["type"] = 1,
					["time"] = 1349401298,
					["from"] = "Wàyfaerer",
					["msg"] = ":P",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [111]
				{
					["type"] = 1,
					["time"] = 1349401298,
					["from"] = "Vergottlicht",
					["msg"] = "it was your first love?",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [112]
				{
					["type"] = 1,
					["time"] = 1349401306,
					["from"] = "Wàyfaerer",
					["msg"] = "idk if u can call that love",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [113]
				{
					["type"] = 1,
					["time"] = 1349401312,
					["from"] = "Wàyfaerer",
					["msg"] = "i was cheating on it with my warrior",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [114]
				{
					["type"] = 1,
					["time"] = 1349401316,
					["from"] = "Vergottlicht",
					["msg"] = "clearly you don't know many married couples",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [115]
				{
					["type"] = 1,
					["time"] = 1349401354,
					["from"] = "Wàyfaerer",
					["msg"] = "should i?",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [116]
				{
					["type"] = 1,
					["time"] = 1349401362,
					["from"] = "Vergottlicht",
					["msg"] = "idk",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [117]
				{
					["type"] = 1,
					["time"] = 1349401366,
					["from"] = "Vergottlicht",
					["msg"] = "you're getting older :P",
					["inbound"] = false,
					["convo"] = "Wàyfaerer",
				}, -- [118]
				{
					["type"] = 1,
					["time"] = 1349401404,
					["from"] = "Wàyfaerer",
					["msg"] = "ish",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [119]
				["info"] = {
				},
			},
			["Jus"] = {
				{
					["type"] = 1,
					["time"] = 1353024327,
					["from"] = "Vergottlicht",
					["msg"] = "turn ur pet taunt off",
					["inbound"] = false,
					["convo"] = "Jus",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353026469,
					["from"] = "Vergottlicht",
					["msg"] = "kill the orbs ranged",
					["inbound"] = false,
					["convo"] = "Jus",
				}, -- [2]
				["info"] = {
				},
			},
			["Destinyroses"] = {
				{
					["type"] = 1,
					["time"] = 1351650188,
					["from"] = "Vergottlicht",
					["msg"] = "brt, blue district or dwarf?",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351650226,
					["from"] = "Destinyroses",
					["msg"] = "front bank i guess blue lol ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351650230,
					["from"] = "Vergottlicht",
					["msg"] = "kk",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351650493,
					["from"] = "Destinyroses",
					["msg"] = "i lost count more or was that enough",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351650508,
					["from"] = "Vergottlicht",
					["msg"] = "um i got room a few more",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351650513,
					["from"] = "Vergottlicht",
					["msg"] = "mine as well fill it up",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351650523,
					["from"] = "Destinyroses",
					["msg"] = "kk",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351650523,
					["from"] = "Vergottlicht",
					["msg"] = "prolly 5 trades or so",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351650563,
					["from"] = "Vergottlicht",
					["msg"] = "kk think that's all i can do",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351650568,
					["from"] = "Vergottlicht",
					["msg"] = "thx!",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351650568,
					["from"] = "Destinyroses",
					["msg"] = "kk",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351650571,
					["from"] = "Destinyroses",
					["msg"] = "np",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351650952,
					["from"] = "Destinyroses",
					["msg"] = "if you ever need some more send me a mail ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351650963,
					["from"] = "Vergottlicht",
					["msg"] = "sure thing, do this toon?",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351650983,
					["from"] = "Destinyroses",
					["msg"] = "ya cause i dont know how to make my special char on my main lol ",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351650995,
					["from"] = "Vergottlicht",
					["msg"] = "lol k",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352162006,
					["from"] = "Destinyroses",
					["msg"] = "i have some more herbs if you still need some what are u looking to pay there at 85g a stack now",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1352162031,
					["from"] = "Vergottlicht",
					["msg"] = "which herb you got?",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1352162040,
					["from"] = "Destinyroses",
					["msg"] = "same as last time  |cffffffff|Hitem:79010:0:0:0:0:0:0:-1974250624:16:0:0|h[Snow Lily]|h|r",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1352162061,
					["from"] = "Destinyroses",
					["msg"] = "it seems to sell the best for m e lol",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1352162075,
					["from"] = "Vergottlicht",
					["msg"] = "ah k, i just got a bunch yesterday for 45/stack so i'll pass this one til they go back down ",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1352162113,
					["from"] = "Destinyroses",
					["msg"] = "k let me know if u want more im going to sell for 50g a stack so just let me knwo",
					["inbound"] = true,
					["convo"] = "Destinyroses",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1352162179,
					["from"] = "Vergottlicht",
					["msg"] = "i'll buy in bulk again for 45g if you got a lot",
					["inbound"] = false,
					["convo"] = "Destinyroses",
				}, -- [23]
				["info"] = {
				},
			},
			["Rigidclaw"] = {
				{
					["type"] = 1,
					["time"] = 1351650398,
					["from"] = "Rigidclaw",
					["msg"] = "she just asked me for gold",
					["inbound"] = true,
					["convo"] = "Rigidclaw",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351650401,
					["from"] = "Rigidclaw",
					["msg"] = "and got some",
					["inbound"] = true,
					["convo"] = "Rigidclaw",
				}, -- [2]
				["info"] = {
				},
			},
			["Awzii"] = {
				{
					["type"] = 1,
					["time"] = 1352771292,
					["from"] = "Vergottlicht",
					["msg"] = "how much and how many",
					["inbound"] = false,
					["convo"] = "Awzii",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352771319,
					["from"] = "Awzii",
					["msg"] = "i have 43, 130g ea?",
					["inbound"] = true,
					["convo"] = "Awzii",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352771346,
					["from"] = "Vergottlicht",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Awzii",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352771369,
					["from"] = "Awzii",
					["msg"] = "wanna buy all 43?",
					["inbound"] = true,
					["convo"] = "Awzii",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352771373,
					["from"] = "Vergottlicht",
					["msg"] = "yes",
					["inbound"] = false,
					["convo"] = "Awzii",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352771467,
					["from"] = "Awzii",
					["msg"] = "ty",
					["inbound"] = true,
					["convo"] = "Awzii",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352771468,
					["from"] = "Vergottlicht",
					["msg"] = "thx",
					["inbound"] = false,
					["convo"] = "Awzii",
				}, -- [7]
				["info"] = {
				},
			},
			["Polycarp"] = {
				{
					["type"] = 1,
					["time"] = 1355029879,
					["from"] = "Polycarp",
					["msg"] = "sell me one of your tigers",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355029893,
					["from"] = "Vergottlicht",
					["msg"] = "which one you lookin at boy",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355029896,
					["from"] = "Polycarp",
					["msg"] = "5",
					["inbound"] = true,
					["convo"] = "Polycarp",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355029900,
					["from"] = "Vergottlicht",
					["msg"] = "lemme c",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [4]
				["info"] = {
				},
			},
			["Rivener"] = {
				{
					["type"] = 1,
					["time"] = 1352692880,
					["from"] = "Rivener",
					["msg"] = "g'night!  tty tomorrow.",
					["inbound"] = true,
					["convo"] = "Rivener",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352692885,
					["from"] = "Vergottlicht",
					["msg"] = "night!",
					["inbound"] = false,
					["convo"] = "Rivener",
				}, -- [2]
				["info"] = {
				},
			},
			["Gloomhaze"] = {
				{
					["type"] = 1,
					["time"] = 1351318692,
					["from"] = "Gloomhaze",
					["msg"] = "Didnt you",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351318698,
					["from"] = "Gloomhaze",
					["msg"] = "Ask me something earlier andI zoned the fuck out",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351318709,
					["from"] = "Vergottlicht",
					["msg"] = "lol yea but it's good",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351318752,
					["from"] = "Vergottlicht",
					["msg"] = "killed marrowgar but no sword :(",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351318843,
					["from"] = "Gloomhaze",
					["msg"] = " |Hitem:50761:0:0:0:0:0:0:891785664:90:0:0|h[Citadel Enforcer's Claymore]|h?",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351318847,
					["from"] = "Vergottlicht",
					["msg"] = "ya =/",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351318848,
					["from"] = "Gloomhaze",
					["msg"] = "I got that yesterday, ha",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351318851,
					["from"] = "Vergottlicht",
					["msg"] = "well fuck you",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351318863,
					["from"] = "Gloomhaze",
					["msg"] = ":(",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351318868,
					["from"] = "Vergottlicht",
					["msg"] = "that's a good thing ;)",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351556854,
					["from"] = "Vergottlicht",
					["msg"] = "what's goin on boy",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351556878,
					["from"] = "Gloomhaze",
					["msg"] = "Meh",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351556879,
					["from"] = "Gloomhaze",
					["msg"] = "not a lot",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351556884,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351556887,
					["from"] = "Gloomhaze",
					["msg"] = "gettin solicited for raids whilst tryin to do dailies and wanting to quit this game -.-",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351556889,
					["from"] = "Vergottlicht",
					["msg"] = "just putzin around?",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1351556894,
					["from"] = "Vergottlicht",
					["msg"] = "why now",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1351556916,
					["from"] = "Gloomhaze",
					["msg"] = "yep",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1351556933,
					["from"] = "Gloomhaze",
					["msg"] = "idk",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1351556941,
					["from"] = "Vergottlicht",
					["msg"] = "don't make me slap you",
					["inbound"] = false,
					["convo"] = "Gloomhaze",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1351556945,
					["from"] = "Gloomhaze",
					["msg"] = "x.x",
					["inbound"] = true,
					["convo"] = "Gloomhaze",
				}, -- [21]
				["info"] = {
				},
			},
			["Nofoxgiven"] = {
				{
					["type"] = 1,
					["time"] = 1349742734,
					["from"] = "Nofoxgiven",
					["msg"] = "ya its horde lol",
					["inbound"] = true,
					["convo"] = "Nofoxgiven",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349742757,
					["from"] = "Vergottlicht",
					["msg"] = "bad boy",
					["inbound"] = false,
					["convo"] = "Nofoxgiven",
				}, -- [2]
				["info"] = {
				},
			},
			["Djflipsixx"] = {
				{
					["type"] = 1,
					["time"] = 1349739263,
					["from"] = "Vergottlicht",
					["msg"] = "whoa grats",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1349739280,
					["from"] = "Djflipsixx",
					["msg"] = "thanks dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351809737,
					["from"] = "Djflipsixx",
					["msg"] = "dude you're mad funny.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351809766,
					["from"] = "Djflipsixx",
					["msg"] = "my head hurts from laughing.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351809769,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351809776,
					["from"] = "Vergottlicht",
					["msg"] = "you can send me some noodz as payment",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351809782,
					["from"] = "Djflipsixx",
					["msg"] = "wow you slut ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351809788,
					["from"] = "Vergottlicht",
					["msg"] = "^",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351809794,
					["from"] = "Djflipsixx",
					["msg"] = "i got that message on fb,did that guy hit you up?",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351809816,
					["from"] = "Vergottlicht",
					["msg"] = "yea lol",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351809823,
					["from"] = "Djflipsixx",
					["msg"] = "lmao ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351809837,
					["from"] = "Djflipsixx",
					["msg"] = "he was trying to hit on me,i was like yo,hit this guy up lol.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351809872,
					["from"] = "Vergottlicht",
					["msg"] = "fuck you he's ugly as hell",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351809880,
					["from"] = "Djflipsixx",
					["msg"] = "lmao so mean dude",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351809908,
					["from"] = "Vergottlicht",
					["msg"] = "it's true i'm like 5 levels above him",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351809923,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1351810015,
					["from"] = "Vergottlicht",
					["msg"] = "now that guy is whispering me",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1351810024,
					["from"] = "Djflipsixx",
					["msg"] = "why lol ",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1351810029,
					["from"] = "Djflipsixx",
					["msg"] = "think he wants you.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1351810031,
					["from"] = "Vergottlicht",
					["msg"] = "he's tryin to win me over or somethin",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1351810036,
					["from"] = "Djflipsixx",
					["msg"] = "lmao",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1351810039,
					["from"] = "Vergottlicht",
					["msg"] = "like \"man bro you're pretty kewl\"",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1351810041,
					["from"] = "Djflipsixx",
					["msg"] = "cause you trolled him to death.",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1351810052,
					["from"] = "Vergottlicht",
					["msg"] = "yea they always do this",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1351810055,
					["from"] = "Vergottlicht",
					["msg"] = "then i ask for noodz",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1351810068,
					["from"] = "Djflipsixx",
					["msg"] = "lmao how doe's that work out for ya?",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1351810080,
					["from"] = "Vergottlicht",
					["msg"] = "sometimes pretty well",
					["inbound"] = false,
					["convo"] = "Djflipsixx",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1351810084,
					["from"] = "Djflipsixx",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Djflipsixx",
				}, -- [28]
				["info"] = {
				},
			},
			["Myrff"] = {
				{
					["type"] = 1,
					["time"] = 1351559718,
					["from"] = "Vergottlicht",
					["msg"] = "80 lvls kthx",
					["inbound"] = false,
					["convo"] = "Myrff",
				}, -- [1]
				["info"] = {
				},
			},
			["Ipinghorde"] = {
				{
					["type"] = 1,
					["time"] = 1353884362,
					["from"] = "Vergottlicht",
					["msg"] = "how many you have?",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353884380,
					["from"] = "Ipinghorde",
					["msg"] = "let me check",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353884450,
					["from"] = "Ipinghorde",
					["msg"] = "387",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353884521,
					["from"] = "Ipinghorde",
					["msg"] = "how many u need",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353884593,
					["from"] = "Ipinghorde",
					["msg"] = "i can do a better price if need",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353884705,
					["from"] = "Vergottlicht",
					["msg"] = "sorry had to get the food out of the oven",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353884727,
					["from"] = "Vergottlicht",
					["msg"] = "i'll take em all if you can do a reasonable price",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353884775,
					["from"] = "Ipinghorde",
					["msg"] = "i can do 25k thats 65g each",
					["inbound"] = true,
					["convo"] = "Ipinghorde",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353884794,
					["from"] = "Vergottlicht",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353884807,
					["from"] = "Vergottlicht",
					["msg"] = "lemme grab notwehr and i'll trade you",
					["inbound"] = false,
					["convo"] = "Ipinghorde",
				}, -- [10]
				["info"] = {
				},
			},
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1350425053,
					["from"] = "Gip",
					["msg"] = "rare",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350425063,
					["from"] = "Vergottlicht",
					["msg"] = "kewl brt",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351557923,
					["from"] = "Vergottlicht",
					["msg"] = " |Hitem:24361:0:0:0:0:0:0:1378026496:85:0:0|h[Spellfire Longsword]|h",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351558053,
					["from"] = "Vergottlicht",
					["msg"] = " |Hitem:24378:0:0:0:0:0:0:958006272:85:0:0|h[Coilfang Hammer of Renewal]|h",
					["inbound"] = false,
					["convo"] = "Gip",
				}, -- [4]
				["info"] = {
				},
			},
			["Cathmor"] = {
				{
					["type"] = 1,
					["time"] = 1351560292,
					["from"] = "Vergottlicht",
					["msg"] = "%",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351560300,
					["from"] = "Cathmor",
					["msg"] = "like 3",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351560306,
					["from"] = "Vergottlicht",
					["msg"] = "you're only 3 in!?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351560311,
					["from"] = "Cathmor",
					["msg"] = "just hit 84 and logged. ",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351560317,
					["from"] = "Vergottlicht",
					["msg"] = "omg",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351560344,
					["from"] = "Vergottlicht",
					["msg"] = " |Hitem:86574:0:0:0:0:0:0:0:85:0:0|h[Elixir of Ancient Knowledge]|h if only you had that :(",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351562061,
					["from"] = "Vergottlicht",
					["msg"] = "i don't wanna hear power excuses",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351562071,
					["from"] = "Cathmor",
					["msg"] = "fucking sucks",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351562074,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351562086,
					["from"] = "Vergottlicht",
					["msg"] = "you can spend the night here ",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351562088,
					["from"] = "Vergottlicht",
					["msg"] = "no power issues ;)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352339264,
					["from"] = "Vergottlicht",
					["msg"] = "are you back already?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352339282,
					["from"] = "Cathmor",
					["msg"] = "yes, but only on a laptop atm",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352339299,
					["from"] = "Vergottlicht",
					["msg"] = "...",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352339305,
					["from"] = "Vergottlicht",
					["msg"] = "i just tanked an instance",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1352339309,
					["from"] = "Vergottlicht",
					["msg"] = "i was top dps",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352339314,
					["from"] = "Vergottlicht",
					["msg"] = "here are what my shoulders are",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1352339316,
					["from"] = "Vergottlicht",
					["msg"] = " |Hitem:66907:4196:0:0:0:0:0:1763815424:85:145:0|h[Captain Hadan's Pauldrons]|h",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1352339327,
					["from"] = "Cathmor",
					["msg"] = "shit, i wouldve tagged a long and let u do all the work",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1352339332,
					["from"] = "Cathmor",
					["msg"] = ":P",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1352339377,
					["from"] = "Vergottlicht",
					["msg"] = "i tried to invite you for free 300k xp",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1352339388,
					["from"] = "Cathmor",
					["msg"] = "daughter is using my PC for HW atm   as soon as she's off I'll be able to play for a bit",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1352339392,
					["from"] = "Vergottlicht",
					["msg"] = "wtf",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1352339398,
					["from"] = "Cathmor",
					["msg"] = "yah",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1352339402,
					["from"] = "Vergottlicht",
					["msg"] = "word doesn't require a desktop",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1352339403,
					["from"] = "Vergottlicht",
					["msg"] = "games do",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1352339425,
					["from"] = "Cathmor",
					["msg"] = "on top of the fact that I bought her a laptop",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1352339441,
					["from"] = "Vergottlicht",
					["msg"] = "well this is all ur fault at this point",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1352339445,
					["from"] = "Vergottlicht",
					["msg"] = "nothing nice i can say :)",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1352339471,
					["from"] = "Cathmor",
					["msg"] = "i know i know",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1352343729,
					["from"] = "Vergottlicht",
					["msg"] = "are you doing instances?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1352778042,
					["from"] = "Cathmor",
					["msg"] = "do u want the Mace?",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1352778047,
					["from"] = "Vergottlicht",
					["msg"] = "no i'm not ret",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1352778054,
					["from"] = "Cathmor",
					["msg"] = "im going to sell it",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1352778055,
					["from"] = "Vergottlicht",
					["msg"] = "holy/prot",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1352778058,
					["from"] = "Cathmor",
					["msg"] = " to a vendor",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1352778061,
					["from"] = "Vergottlicht",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1352778063,
					["from"] = "Vergottlicht",
					["msg"] = "that's what you do",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1352778067,
					["from"] = "Cathmor",
					["msg"] = "ok then",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [39]
				["info"] = {
				},
			},
			["Bankofrock"] = {
				{
					["type"] = 1,
					["time"] = 1353798804,
					["from"] = "Vergottlicht",
					["msg"] = "brt",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353798818,
					["from"] = "Bankofrock",
					["msg"] = "no worries trying to get it all out of the bank into bags",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353798827,
					["from"] = "Vergottlicht",
					["msg"] = "download Dumpster",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353798835,
					["from"] = "Vergottlicht",
					["msg"] = "after you're done ;)",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353798840,
					["from"] = "Bankofrock",
					["msg"] = "oh cool is that an addon?",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1353798859,
					["from"] = "Vergottlicht",
					["msg"] = "yea then you just type /dout snow and it'll dump everything into your bags that matches \"snow\"",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1353798873,
					["from"] = "Bankofrock",
					["msg"] = "oh nice yeah I need that",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1353798896,
					["from"] = "Vergottlicht",
					["msg"] = "same thing with the trade window",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1353798899,
					["from"] = "Vergottlicht",
					["msg"] = "so no clicking",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1353798947,
					["from"] = "Bankofrock",
					["msg"] = "2 seconds",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1353798953,
					["from"] = "Vergottlicht",
					["msg"] = "np",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1353799125,
					["from"] = "Bankofrock",
					["msg"] = "partial",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1353799132,
					["from"] = "Vergottlicht",
					["msg"] = "w/e it's 25g",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1353799135,
					["from"] = "Bankofrock",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1353799139,
					["from"] = "Vergottlicht",
					["msg"] = "thanks!",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1353799144,
					["from"] = "Bankofrock",
					["msg"] = "thanks man. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1353799147,
					["from"] = "Vergottlicht",
					["msg"] = "anytime",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1353799154,
					["from"] = "Bankofrock",
					["msg"] = "if you need any foolscap or green tea let me know. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1353799163,
					["from"] = "Bankofrock",
					["msg"] = "i have even more foolscap than snowlily :/",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1353799167,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1353799174,
					["from"] = "Vergottlicht",
					["msg"] = "lemme see if i have any",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1353799225,
					["from"] = "Vergottlicht",
					["msg"] = "i could take a couple trades of it, how much for that?",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1353799239,
					["from"] = "Bankofrock",
					["msg"] = "I'll do 50 its about 65 on the AH right now",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1353799254,
					["from"] = "Vergottlicht",
					["msg"] = "sure",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1353799279,
					["from"] = "Bankofrock",
					["msg"] = "tell me when haha",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1353799283,
					["from"] = "Vergottlicht",
					["msg"] = "will do sir",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1353799316,
					["from"] = "Bankofrock",
					["msg"] = "more?",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1353799319,
					["from"] = "Vergottlicht",
					["msg"] = "yepper",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1353799321,
					["from"] = "Bankofrock",
					["msg"] = "kk",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1353799329,
					["from"] = "Vergottlicht",
					["msg"] = "think i got 3 more trades left of room",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1353799342,
					["from"] = "Vergottlicht",
					["msg"] = "need to get my stupid bank alt out of the worgen area",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1353799357,
					["from"] = "Bankofrock",
					["msg"] = "haha",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1353799370,
					["from"] = "Vergottlicht",
					["msg"] = "last one for me sir",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1353799378,
					["from"] = "Vergottlicht",
					["msg"] = "ty much",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1353799385,
					["from"] = "Bankofrock",
					["msg"] = "thank you! now I have some space!",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1353799392,
					["from"] = "Vergottlicht",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1353799396,
					["from"] = "Vergottlicht",
					["msg"] = "anytime ;)",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1353799427,
					["from"] = "Bankofrock",
					["msg"] = "just shoot me an email with any ore, bars, or herbs you need I'm always overflowing. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1353799814,
					["from"] = "Vergottlicht",
					["msg"] = "sorry had to grab food out of the oven",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1353799818,
					["from"] = "Vergottlicht",
					["msg"] = "sounds good i'll add you to friends",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1353799827,
					["from"] = "Bankofrock",
					["msg"] = "hey no worries. ;) have a nice day. ",
					["inbound"] = true,
					["convo"] = "Bankofrock",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1353799833,
					["from"] = "Vergottlicht",
					["msg"] = "you too sir thanks",
					["inbound"] = false,
					["convo"] = "Bankofrock",
				}, -- [42]
				["info"] = {
				},
			},
			["Airfive"] = {
				{
					["type"] = 1,
					["time"] = 1355184315,
					["from"] = "Airfive",
					["msg"] = "dungeon",
					["inbound"] = true,
					["convo"] = "Airfive",
				}, -- [1]
				["info"] = {
				},
			},
		},
		["Zaubertot"] = {
			["Wàyfaerer"] = {
				{
					["type"] = 1,
					["time"] = 1350177724,
					["from"] = "Wàyfaerer",
					["msg"] = "B!",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350178020,
					["from"] = "Wàyfaerer",
					["msg"] = "STOP AFK'n",
					["inbound"] = true,
					["convo"] = "Wàyfaerer",
				}, -- [2]
				["info"] = {
				},
			},
		},
		["Beichte"] = {
			["Oberon"] = {
				{
					["type"] = 1,
					["time"] = 1350842091,
					["from"] = "Oberon",
					["msg"] = " |Hitem:87485:0:0:0:0:0:0:1136757312:86:0:0|h[Robes of Forgone Hope]|h",
					["inbound"] = true,
					["convo"] = "Oberon",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355026279,
					["from"] = "Oberon",
					["msg"] = " |Hitem:92864:0:0:0:0:0:-129:1465189478:90:0:0|h[Cordwoven Sandals of the Wildfire]|h",
					["inbound"] = true,
					["convo"] = "Oberon",
				}, -- [2]
				["info"] = {
				},
			},
			["Zaldek"] = {
				{
					["type"] = 1,
					["time"] = 1352620221,
					["from"] = "Beichte",
					["msg"] = "have you gotten anythin kewl?",
					["inbound"] = false,
					["convo"] = "Zaldek",
				}, -- [1]
				["info"] = {
				},
			},
			["Pachujila"] = {
				{
					["type"] = 1,
					["time"] = 1353808159,
					["from"] = "Beichte",
					["msg"] = "that's better",
					["inbound"] = false,
					["convo"] = "Pachujila",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353808165,
					["from"] = "Pachujila",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Pachujila",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353808175,
					["from"] = "Pachujila",
					["msg"] = "dont get too excited, its just a 10 day trial",
					["inbound"] = true,
					["convo"] = "Pachujila",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1353808192,
					["from"] = "Beichte",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Pachujila",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1353808204,
					["from"] = "Beichte",
					["msg"] = "fuckin tease",
					["inbound"] = false,
					["convo"] = "Pachujila",
				}, -- [5]
				["info"] = {
				},
			},
			["Mormadin"] = {
				{
					["type"] = 1,
					["time"] = 1350842174,
					["from"] = "Beichte",
					["msg"] = "how much do you have",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1350842182,
					["from"] = "Mormadin",
					["msg"] = "100 stacks of each",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1350842207,
					["from"] = "Beichte",
					["msg"] = "how much for it all",
					["inbound"] = false,
					["convo"] = "Mormadin",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1350842220,
					["from"] = "Mormadin",
					["msg"] = "19.5k",
					["inbound"] = true,
					["convo"] = "Mormadin",
				}, -- [4]
				["info"] = {
				},
			},
			["Contrivance"] = {
				{
					["type"] = 1,
					["time"] = 1352336018,
					["from"] = "Contrivance",
					["msg"] = "I actually laughed so hard",
					["inbound"] = true,
					["convo"] = "Contrivance",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352336025,
					["from"] = "Contrivance",
					["msg"] = "I come back from an arena and see that haha",
					["inbound"] = true,
					["convo"] = "Contrivance",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352336041,
					["from"] = "Beichte",
					["msg"] = ";)",
					["inbound"] = false,
					["convo"] = "Contrivance",
				}, -- [3]
				["info"] = {
				},
			},
			["Polycarp"] = {
				{
					["type"] = 1,
					["time"] = 1353137317,
					["from"] = "Beichte",
					["msg"] = "come kill a rare spawn before you pass out",
					["inbound"] = false,
					["convo"] = "Polycarp",
				}, -- [1]
				["info"] = {
				},
			},
			["Greiser"] = {
				{
					["type"] = 1,
					["time"] = 1352620228,
					["from"] = "Beichte",
					["msg"] = "what's goin on qt",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1352620236,
					["from"] = "Greiser",
					["msg"] = "arena cap",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1352620239,
					["from"] = "Beichte",
					["msg"] = "ew",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1352620240,
					["from"] = "Greiser",
					["msg"] = "painful..",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1352620247,
					["from"] = "Beichte",
					["msg"] = "what are you doing",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1352620251,
					["from"] = "Beichte",
					["msg"] = "2v2?",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1352620255,
					["from"] = "Greiser",
					["msg"] = "yah",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352620259,
					["from"] = "Beichte",
					["msg"] = "cute",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352620261,
					["from"] = "Greiser",
					["msg"] = "every game holy pally and warrior",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352620269,
					["from"] = "Greiser",
					["msg"] = "no its making me mad ahaha",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352620272,
					["from"] = "Beichte",
					["msg"] = "what else are pallies good for",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352620278,
					["from"] = "Greiser",
					["msg"] = "ret!",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352620279,
					["from"] = "Greiser",
					["msg"] = "gawd",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352620281,
					["from"] = "Beichte",
					["msg"] = "lolol",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352620305,
					["from"] = "Beichte",
					["msg"] = "yea there was a sexy one saving me last night from 90s",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1352620312,
					["from"] = "Beichte",
					["msg"] = "he got my heals not gonna lie",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1352620398,
					["from"] = "Greiser",
					["msg"] = "ugh warriors are so op",
					["inbound"] = true,
					["convo"] = "Greiser",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1352620407,
					["from"] = "Beichte",
					["msg"] = "too many fucking buttons",
					["inbound"] = false,
					["convo"] = "Greiser",
				}, -- [18]
				["info"] = {
				},
			},
			["Gip"] = {
				{
					["type"] = 1,
					["time"] = 1353774066,
					["from"] = "Gip",
					["msg"] = "rare spawn",
					["inbound"] = true,
					["convo"] = "Gip",
				}, -- [1]
				["info"] = {
				},
			},
			["Cathmor"] = {
				{
					["type"] = 1,
					["time"] = 1351476397,
					["from"] = "Cathmor",
					["msg"] = "wow, im a lvl 90 rogue SO COOL how i can kill 83s",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351476419,
					["from"] = "Beichte",
					["msg"] = "go to stormpeaks",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351476430,
					["from"] = "Cathmor",
					["msg"] = "twice",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351476433,
					["from"] = "Cathmor",
					["msg"] = "fucking assholes",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351476440,
					["from"] = "Beichte",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351476468,
					["from"] = "Beichte",
					["msg"] = "spent 2 hours wiping a raid group with my guildies yesterday",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351476473,
					["from"] = "Beichte",
					["msg"] = "so you got off easy",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1352170276,
					["from"] = "Beichte",
					["msg"] = "you ready boy?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1352171120,
					["from"] = "Beichte",
					["msg"] = "what do you need a babysitter?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1352171289,
					["from"] = "Beichte",
					["msg"] = "more cleave boy",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1352172968,
					["from"] = "Beichte",
					["msg"] = "no one told me all this stuff :P",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1352173237,
					["from"] = "Beichte",
					["msg"] = "just jump",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1352173426,
					["from"] = "Beichte",
					["msg"] = "tank and spank",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1352174542,
					["from"] = "Cathmor",
					["msg"] = "Fun stuff!",
					["inbound"] = true,
					["convo"] = "Cathmor",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1352174694,
					["from"] = "Beichte",
					["msg"] = "can your son take over?",
					["inbound"] = false,
					["convo"] = "Cathmor",
				}, -- [15]
				["info"] = {
				},
			},
			["Ravito"] = {
				{
					["type"] = 1,
					["time"] = 1352090202,
					["from"] = "Ravito",
					["msg"] = "did he really",
					["inbound"] = true,
					["convo"] = "Ravito",
				}, -- [1]
				["info"] = {
				},
			},
			["Dalara"] = {
				{
					["type"] = 1,
					["time"] = 1349027989,
					["from"] = "Beichte",
					["msg"] = "hey dal can you inv my monk Prallend when you get a chance, gonna hop on him ",
					["inbound"] = false,
					["convo"] = "Dalara",
				}, -- [1]
				["info"] = {
				},
			},
		},
		["Zerkratzen"] = {
			["Lnsane"] = {
				{
					["type"] = 1,
					["time"] = 1355362008,
					["from"] = "Lnsane",
					["msg"] = "do you have good pvp gear or a 2's partner",
					["inbound"] = true,
					["convo"] = "Lnsane",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355362047,
					["from"] = "Zerkratzen",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Lnsane",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355362068,
					["from"] = "Lnsane",
					["msg"] = "already have a partner?",
					["inbound"] = true,
					["convo"] = "Lnsane",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355362081,
					["from"] = "Zerkratzen",
					["msg"] = "no i just usually play with randos",
					["inbound"] = false,
					["convo"] = "Lnsane",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355362093,
					["from"] = "Lnsane",
					["msg"] = "oh ur 85 lol didnt notice",
					["inbound"] = true,
					["convo"] = "Lnsane",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355362108,
					["from"] = "Zerkratzen",
					["msg"] = "yea that doesn't matter",
					["inbound"] = false,
					["convo"] = "Lnsane",
				}, -- [6]
				["info"] = {
				},
			},
			["Oberon"] = {
				{
					["type"] = 1,
					["time"] = 1353893792,
					["from"] = "Oberon",
					["msg"] = "so this dk wouldn't pull until he got his mage buff",
					["inbound"] = true,
					["convo"] = "Oberon",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1353893804,
					["from"] = "Zerkratzen",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Oberon",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1353893807,
					["from"] = "Zerkratzen",
					["msg"] = "he's good",
					["inbound"] = false,
					["convo"] = "Oberon",
				}, -- [3]
				["info"] = {
				},
			},
			["Dyami"] = {
				{
					["type"] = 1,
					["time"] = 1355363071,
					["from"] = "Dyami",
					["msg"] = "elixir master?",
					["inbound"] = true,
					["convo"] = "Dyami",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355363107,
					["from"] = "Zerkratzen",
					["msg"] = "transmute/potion sir ",
					["inbound"] = false,
					["convo"] = "Dyami",
				}, -- [2]
				["info"] = {
				},
			},
			["Amillionways"] = {
				{
					["type"] = 1,
					["time"] = 1355543016,
					["from"] = "Zerkratzen",
					["msg"] = "how full?",
					["inbound"] = false,
					["convo"] = "Amillionways",
				}, -- [1]
				["info"] = {
				},
			},
		},
		["Erschossen"] = {
			["Necrômâñcer"] = {
				{
					["type"] = 1,
					["time"] = 1355193973,
					["from"] = "Erschossen",
					["msg"] = "i'll buy em",
					["inbound"] = false,
					["convo"] = "Necrômâñcer",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355194031,
					["from"] = "Necrômâñcer",
					["msg"] = "130 each.",
					["inbound"] = true,
					["convo"] = "Necrômâñcer",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355194040,
					["from"] = "Erschossen",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Necrômâñcer",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355194052,
					["from"] = "Necrômâñcer",
					["msg"] = "kk",
					["inbound"] = true,
					["convo"] = "Necrômâñcer",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355194099,
					["from"] = "Erschossen",
					["msg"] = "thx",
					["inbound"] = false,
					["convo"] = "Necrômâñcer",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355194104,
					["from"] = "Necrômâñcer",
					["msg"] = "tyty anytime",
					["inbound"] = true,
					["convo"] = "Necrômâñcer",
				}, -- [6]
				["info"] = {
				},
			},
			["Tudd"] = {
				{
					["type"] = 1,
					["time"] = 1355191155,
					["from"] = "Erschossen",
					["msg"] = "i updated the site btw",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1355191170,
					["from"] = "Tudd",
					["msg"] = "Ohh, I'll have to check it out",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1355191213,
					["from"] = "Erschossen",
					["msg"] = "check tumblr i put what i did",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1355191244,
					["from"] = "Tudd",
					["msg"] = "YESSSSSS",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1355191248,
					["from"] = "Tudd",
					["msg"] = "Header = PERFEC",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1355191250,
					["from"] = "Tudd",
					["msg"] = "T",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1355191251,
					["from"] = "Erschossen",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1355191258,
					["from"] = "Erschossen",
					["msg"] = "do you want the shadow?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1355191260,
					["from"] = "Erschossen",
					["msg"] = "or just a line",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1355191265,
					["from"] = "Tudd",
					["msg"] = "The shadow is nice",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1355191267,
					["from"] = "Tudd",
					["msg"] = "I like it!!",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1355191267,
					["from"] = "Erschossen",
					["msg"] = "mk",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1355191269,
					["from"] = "Erschossen",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1355191270,
					["from"] = "Tudd",
					["msg"] = ":D",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1355191274,
					["from"] = "Erschossen",
					["msg"] = "i'll start working on the other updates then",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1355191277,
					["from"] = "Erschossen",
					["msg"] = "i updated the resume as well",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1355191282,
					["from"] = "Erschossen",
					["msg"] = "as far as i could without the desc.",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1355191292,
					["from"] = "Tudd",
					["msg"] = "Also, thanks for adding my filler text to my most recent job",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1355191298,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [19]
				{
					["type"] = 1,
					["time"] = 1355191304,
					["from"] = "Erschossen",
					["msg"] = "that way i'd know if you looked at it ;)",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [20]
				{
					["type"] = 1,
					["time"] = 1355191330,
					["from"] = "Tudd",
					["msg"] = "Did you figure out how to make the project not jumpt to the top of the page when clicked?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [21]
				{
					["type"] = 1,
					["time"] = 1355191368,
					["from"] = "Erschossen",
					["msg"] = "how do you mean",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [22]
				{
					["type"] = 1,
					["time"] = 1355191378,
					["from"] = "Erschossen",
					["msg"] = "here let me get on hangout",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [23]
				{
					["type"] = 1,
					["time"] = 1355191384,
					["from"] = "Erschossen",
					["msg"] = "i have something ineed to explain anyway",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [24]
				{
					["type"] = 1,
					["time"] = 1355192350,
					["from"] = "Tudd",
					["msg"] = "Just sent you some pics of my room that I took the other night",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [25]
				{
					["type"] = 1,
					["time"] = 1355192366,
					["from"] = "Erschossen",
					["msg"] = "reshoot with you naked kthx",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [26]
				{
					["type"] = 1,
					["time"] = 1355192375,
					["from"] = "Tudd",
					["msg"] = "hahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [27]
				{
					["type"] = 1,
					["time"] = 1355192581,
					["from"] = "Tudd",
					["msg"] = "Yep",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [28]
				{
					["type"] = 1,
					["time"] = 1355192587,
					["from"] = "Tudd",
					["msg"] = "mt",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [29]
				{
					["type"] = 1,
					["time"] = 1355192589,
					["from"] = "Erschossen",
					["msg"] = "yep",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [30]
				{
					["type"] = 1,
					["time"] = 1355194475,
					["from"] = "Erschossen",
					["msg"] = "looks pretty slick",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [31]
				{
					["type"] = 1,
					["time"] = 1355194489,
					["from"] = "Tudd",
					["msg"] = "What?",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [32]
				{
					["type"] = 1,
					["time"] = 1355194490,
					["from"] = "Erschossen",
					["msg"] = "but you really need a new pillow and new sheets, it looks like grandma or something sleeps there",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [33]
				{
					["type"] = 1,
					["time"] = 1355194494,
					["from"] = "Erschossen",
					["msg"] = "the apartment photos",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [34]
				{
					["type"] = 1,
					["time"] = 1355194509,
					["from"] = "Tudd",
					["msg"] = "Oh ahaha",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [35]
				{
					["type"] = 1,
					["time"] = 1355194520,
					["from"] = "Tudd",
					["msg"] = "And yes, I am getting new comforter and sheets. Just waiting for my mom to ship them lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [36]
				{
					["type"] = 1,
					["time"] = 1355194525,
					["from"] = "Erschossen",
					["msg"] = "lol",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [37]
				{
					["type"] = 1,
					["time"] = 1355194527,
					["from"] = "Tudd",
					["msg"] = "And new curtain",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [38]
				{
					["type"] = 1,
					["time"] = 1355194533,
					["from"] = "Erschossen",
					["msg"] = "for what",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [39]
				{
					["type"] = 1,
					["time"] = 1355194544,
					["from"] = "Erschossen",
					["msg"] = "who can fucking see in?",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [40]
				{
					["type"] = 1,
					["time"] = 1355194557,
					["from"] = "Tudd",
					["msg"] = "Well our apartment is set up weird. And the window actually faces another window in our living room",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [41]
				{
					["type"] = 1,
					["time"] = 1355194564,
					["from"] = "Erschossen",
					["msg"] = "rofl",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [42]
				{
					["type"] = 1,
					["time"] = 1355194573,
					["from"] = "Erschossen",
					["msg"] = "bet she likes that",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [43]
				{
					["type"] = 1,
					["time"] = 1355194577,
					["from"] = "Tudd",
					["msg"] = "He*",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [44]
				{
					["type"] = 1,
					["time"] = 1355194581,
					["from"] = "Erschossen",
					["msg"] = "hot",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [45]
				{
					["type"] = 1,
					["time"] = 1355194594,
					["from"] = "Erschossen",
					["msg"] = "maybe he'll take some off the rent if you take it down",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [46]
				{
					["type"] = 1,
					["time"] = 1355194656,
					["from"] = "Tudd",
					["msg"] = "lol",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [47]
				{
					["type"] = 1,
					["time"] = 1355634982,
					["from"] = "Tudd",
					["msg"] = "Why can't I fly in Ghostlands",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [48]
				{
					["type"] = 1,
					["time"] = 1355634990,
					["from"] = "Erschossen",
					["msg"] = "it's an instance or something",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [49]
				{
					["type"] = 1,
					["time"] = 1355635020,
					["from"] = "Tudd",
					["msg"] = "Fucking stupid",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [50]
				{
					["type"] = 1,
					["time"] = 1355635024,
					["from"] = "Erschossen",
					["msg"] = "yea",
					["inbound"] = false,
					["convo"] = "Tudd",
				}, -- [51]
				{
					["type"] = 1,
					["time"] = 1355637394,
					["from"] = "Tudd",
					["msg"] = "Any opposite faction achievement is fucking retarded",
					["inbound"] = true,
					["convo"] = "Tudd",
				}, -- [52]
				["info"] = {
				},
			},
		},
	},
	["Uldum"] = {
		["Geil"] = {
			["Iyaoyas"] = {
				{
					["type"] = 1,
					["time"] = 1351014331,
					["from"] = "Iyaoyas",
					["msg"] = "thanks do u know what it means",
					["inbound"] = true,
					["convo"] = "Iyaoyas",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351014363,
					["from"] = "Geil",
					["msg"] = "looks like the name of the guy from hercules",
					["inbound"] = false,
					["convo"] = "Iyaoyas",
				}, -- [2]
				["info"] = {
				},
			},
			["Urho"] = {
				{
					["type"] = 1,
					["time"] = 1351014377,
					["from"] = "Urho",
					["msg"] = "DW is back up btw",
					["inbound"] = true,
					["convo"] = "Urho",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351014381,
					["from"] = "Geil",
					["msg"] = "kewl",
					["inbound"] = false,
					["convo"] = "Urho",
				}, -- [2]
				["info"] = {
				},
			},
			["Darkfoot"] = {
				{
					["type"] = 1,
					["time"] = 1351013875,
					["from"] = "Darkfoot",
					["msg"] = "Hey there Geil! Would you like to join <OEOEOE IM A WHALE>? We are a level 25 guild with kind players and tons of perks. Join now and enjoy more experience, more honor/justice points, faster flight paths, and even faster mount speed!",
					["inbound"] = true,
					["convo"] = "Darkfoot",
				}, -- [1]
				["info"] = {
				},
			},
			["Birk"] = {
				{
					["type"] = 1,
					["time"] = 1351013910,
					["from"] = "Geil",
					["msg"] = "wtf",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [1]
				{
					["type"] = 1,
					["time"] = 1351013918,
					["from"] = "Geil",
					["msg"] = "you have a toon on this server",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [2]
				{
					["type"] = 1,
					["time"] = 1351013921,
					["from"] = "Birk",
					["msg"] = "haha wow",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [3]
				{
					["type"] = 1,
					["time"] = 1351013943,
					["from"] = "Birk",
					["msg"] = "it's crazy",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [4]
				{
					["type"] = 1,
					["time"] = 1351013952,
					["from"] = "Geil",
					["msg"] = "must be since it's the only one up when DW is down",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [5]
				{
					["type"] = 1,
					["time"] = 1351013958,
					["from"] = "Birk",
					["msg"] = "right",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [6]
				{
					["type"] = 1,
					["time"] = 1351013969,
					["from"] = "Birk",
					["msg"] = "and we're now in the same guild on here, lol",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [7]
				{
					["type"] = 1,
					["time"] = 1351013981,
					["from"] = "Geil",
					["msg"] = "yea they must just spam invites",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [8]
				{
					["type"] = 1,
					["time"] = 1351013985,
					["from"] = "Geil",
					["msg"] = "but lvl 25 is good",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [9]
				{
					["type"] = 1,
					["time"] = 1351013999,
					["from"] = "Birk",
					["msg"] = "i think this is the server we made toons on before cata released to see the new old world content",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [10]
				{
					["type"] = 1,
					["time"] = 1351014008,
					["from"] = "Geil",
					["msg"] = "ah",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [11]
				{
					["type"] = 1,
					["time"] = 1351014024,
					["from"] = "Birk",
					["msg"] = "i think this is were i have a couple horde toons we played with ",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [12]
				{
					["type"] = 1,
					["time"] = 1351014027,
					["from"] = "Birk",
					["msg"] = "aaron?",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [13]
				{
					["type"] = 1,
					["time"] = 1351014033,
					["from"] = "Geil",
					["msg"] = "could be",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [14]
				{
					["type"] = 1,
					["time"] = 1351014036,
					["from"] = "Birk",
					["msg"] = "w/e his name was",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [15]
				{
					["type"] = 1,
					["time"] = 1351014041,
					["from"] = "Geil",
					["msg"] = "yea aaron gibson",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [16]
				{
					["type"] = 1,
					["time"] = 1351014135,
					["from"] = "Birk",
					["msg"] = "did your horde mount ever arrive?",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [17]
				{
					["type"] = 1,
					["time"] = 1351014168,
					["from"] = "Geil",
					["msg"] = "yea after like 10 mins",
					["inbound"] = false,
					["convo"] = "Birk",
				}, -- [18]
				{
					["type"] = 1,
					["time"] = 1351014176,
					["from"] = "Birk",
					["msg"] = "cool",
					["inbound"] = true,
					["convo"] = "Birk",
				}, -- [19]
				["info"] = {
				},
			},
		},
	},
}
WIM3_ChatFilters = {
}
WIM3_Alias = nil
