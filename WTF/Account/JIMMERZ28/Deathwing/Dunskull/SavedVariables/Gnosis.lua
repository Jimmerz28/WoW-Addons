
GnosisChar = nil
GnosisCharConfig = {
	["optver"] = 3.25,
	["bHideBlizz"] = true,
	["tiscan"] = 200,
	["ctt"] = 300,
	["configs"] = {
		["name"] = "",
		["bsavectct"] = true,
		["bsavespell"] = true,
		["bsavedefaultopt"] = true,
		["bsavecastbars"] = true,
	},
	["ct"] = {
		["bsound"] = true,
		["bmusic"] = false,
		["addon"] = "Blizz",
		["wfcl"] = 1000,
		["sound"] = "MONEYFRAMEOPEN",
		["ctt"] = 300,
	},
	["bAutoCreateOptions"] = true,
	["bHideMirror"] = true,
	["bHidePetVeh"] = true,
	["iTimerScanEvery"] = 200,
	["bHideAddonMsgs"] = false,
	["nameNewBar"] = "",
	["channeledspells"] = {
		["Tranquility"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 4,
			["ctstring"] = "col<0,1,0>(spellname) [tickscrits] +eh <oh> col<pre>dps HPShittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 3,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Blizzard"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 8,
			["ctstring"] = "col<frost>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Malefic Grasp"] = {
			["bticksound"] = false,
			["bcombattext"] = false,
			["baoe"] = false,
			["bars"] = 5,
			["bicon"] = true,
			["ticks"] = 4,
			["fontsizeclip"] = 0,
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 1,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["fontsizenclip"] = 0,
		},
		["Health Funnel"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 4,
			["bicon"] = true,
			["ticks"] = 3,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Mind Sear"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 6,
			["bicon"] = true,
			["ticks"] = 5,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Spinning Crane Kick"] = {
			["bticksound"] = false,
			["bcombattext"] = false,
			["baoe"] = true,
			["bars"] = 4,
			["bicon"] = true,
			["ticks"] = 3,
			["fontsizeclip"] = 0,
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 1,
			["ctstring"] = "dmg col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["fontsizenclip"] = 0,
		},
		["Arcane Missiles"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 6,
			["bicon"] = true,
			["ticks"] = 5,
			["ctstring"] = "col<arcane>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Hymn of Hope"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 4,
			["ctstring"] = "col<holy>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = true,
			["baddticks"] = true,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Drain Life"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 4,
			["bicon"] = true,
			["ticks"] = 3,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Mind Flay"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 4,
			["bicon"] = true,
			["ticks"] = 3,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Penance"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 2,
			["bicon"] = true,
			["ticks"] = 3,
			["ctstring"] = "col<0,1,0>(spellname - col<1,1,1>col<class>targetcol<cpre>col<pre>col<0,1,0>) [tickscrits] +eh <oh> col<pre>dps HPShittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = true,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 1,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Divine Hymn"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 4,
			["ctstring"] = "col<0,1,0>(spellname) [tickscrits] +eh <oh> col<pre>dps HPShittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = true,
			["baddticks"] = true,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 3,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Drain Soul"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 5,
			["ctstring"] = "col<shadow>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = true,
			["baddticks"] = true,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Hellfire"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 15,
			["ctstring"] = "col<fire>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 1,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Evocation"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = false,
			["bars"] = 3,
			["bicon"] = true,
			["ticks"] = 4,
			["ctstring"] = "col<arcane>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = true,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Hurricane"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 10,
			["ctstring"] = "col<nature>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
		["Rain of Fire"] = {
			["bcombattext"] = false,
			["bticksound"] = false,
			["baoe"] = true,
			["bars"] = 15,
			["bicon"] = true,
			["ticks"] = 4,
			["ctstring"] = "col<fire>dmg col<pre>col<1,1,0>(spellname) [tickscrits]col<pre>clipped dps DPScliptext<(Clipped) >hittext< Hits>crittext< Crits>ticktext< Ticks>",
			["bhidenonplayer"] = false,
			["baddticks"] = false,
			["binit"] = false,
			["ben"] = true,
			["bcliptest"] = false,
			["bsticky"] = true,
			["iupdate"] = 2,
			["fontsizeclip"] = 0,
			["fontsizenclip"] = 0,
		},
	},
	["strLocale"] = "default",
	["wfcl"] = 1000,
	["cbconf"] = {
		["Player"] = {
			["fSparkHeightMulti"] = 1,
			["rotatertext"] = 0,
			["bShowShield"] = true,
			["bMergeTrade"] = true,
			["fadeout"] = 0.3,
			["bShowPlayerLatency"] = true,
			["bShowCBS"] = true,
			["incombatsel"] = 1,
			["alignname"] = "LEFT",
			["bnwtypesel"] = 1,
			["colBarNI"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["font"] = "",
			["colFailed"] = {
				0.7, -- [1]
				0.3, -- [2]
				0.2, -- [3]
				0.75, -- [4]
			},
			["colTextLag"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchortype"] = 1,
			["bShowTicks"] = true,
			["rotatectext"] = 0,
			["strNameFormat"] = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",
			["colShadow"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7, -- [4]
			},
			["anchor_y"] = 0,
			["rotatelattext"] = 0,
			["unit"] = "player",
			["aligntime"] = "RIGHT",
			["fontsize"] = 0,
			["colInterrupted"] = {
				0.85, -- [1]
				0.85, -- [2]
				0.65, -- [3]
				0.75, -- [4]
			},
			["bnwlistnew"] = "",
			["anchorto"] = 5,
			["bartexture"] = "Waterline",
			["fontsize_timer"] = 0,
			["bIconUnlocked"] = true,
			["alpha"] = 1,
			["fSparkWidthMulti"] = 1,
			["bShowAsMinutes"] = true,
			["colBar"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["latbarsize"] = 0.15,
			["bShowLat"] = true,
			["anchor"] = {
				["px"] = 0.4947916195650282,
				["py"] = 0.2701891947174931,
			},
			["bEnShadowCol"] = false,
			["colLagBar"] = {
				0.35, -- [1]
				0.65, -- [2]
				0.9, -- [3]
				0.65, -- [4]
			},
			["anchorframe"] = "",
			["bEnShadowOffset"] = false,
			["colSpark"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spec"] = 0,
			["coord"] = {
				["casttime"] = {
					["y"] = 0,
					["x"] = -2,
				},
				["shadow"] = {
					["y"] = -3,
					["x"] = 3,
				},
				["latency"] = {
					["y"] = 1,
					["x"] = -1,
				},
				["casticon"] = {
					["y"] = 0,
					["x"] = 0,
				},
				["castname"] = {
					["y"] = 0,
					["x"] = 2,
				},
			},
			["cboptver"] = 3.25,
			["colBorderNI"] = {
				1, -- [1]
				0.8, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bColSuc"] = false,
			["height"] = 26,
			["fontsize_lat"] = 0,
			["colBorder"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bordericon"] = 1,
			["scale"] = 1,
			["strata"] = "MEDIUM",
			["bEn"] = true,
			["orient"] = 1,
			["colTextTime"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["bInvDir"] = false,
			["border"] = 1,
			["colSuccess"] = {
				0.35, -- [1]
				0.6, -- [2]
				0.15, -- [3]
				0.7, -- [4]
			},
			["rotateicon"] = -34,
			["width"] = 306,
			["bartype"] = "cb",
			["iconside"] = "LEFT",
			["strTimeFormat"] = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",
			["bExtChannels"] = true,
			["bResizeLongName"] = true,
			["alignlat"] = "ADAPT",
			["ingroupsel"] = 1,
			["bUnlocked"] = false,
			["relationsel"] = 1,
			["bShowWNC"] = false,
			["fontoutline"] = "OUTLINE",
			["anchor_x"] = 0,
			["strGap"] = 15,
			["forcefreealign"] = false,
			["latbarfixed"] = 0.02,
			["colBarBg"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.35, -- [3]
				0.4, -- [4]
			},
			["alignment"] = "NAMETIME",
			["bFillup"] = false,
			["anchorfrom"] = 5,
			["scaleicon"] = 1.3,
			["bnwlist"] = {
			},
			["colText"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["PetVehicle"] = {
			["fSparkHeightMulti"] = 1,
			["rotatertext"] = 0,
			["bShowShield"] = true,
			["bMergeTrade"] = true,
			["fadeout"] = 0.3,
			["bShowPlayerLatency"] = true,
			["bShowCBS"] = true,
			["incombatsel"] = 1,
			["alignname"] = "LEFT",
			["bnwtypesel"] = 1,
			["colBarNI"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["font"] = "",
			["colFailed"] = {
				0.7, -- [1]
				0.3, -- [2]
				0.2, -- [3]
				0.75, -- [4]
			},
			["colTextLag"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchortype"] = 1,
			["bShowTicks"] = true,
			["rotatectext"] = 0,
			["strNameFormat"] = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",
			["colShadow"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7, -- [4]
			},
			["anchor_y"] = 0,
			["rotatelattext"] = 0,
			["unit"] = "pet",
			["aligntime"] = "RIGHT",
			["fontsize"] = 0,
			["colInterrupted"] = {
				0.85, -- [1]
				0.85, -- [2]
				0.65, -- [3]
				0.75, -- [4]
			},
			["bnwlistnew"] = "",
			["anchorto"] = 5,
			["bartexture"] = "Waterline",
			["fontsize_timer"] = 0,
			["bIconUnlocked"] = false,
			["alpha"] = 1,
			["fSparkWidthMulti"] = 1,
			["bShowAsMinutes"] = true,
			["colBar"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["latbarsize"] = 0.15,
			["bShowLat"] = true,
			["anchor"] = {
				["px"] = 0.5,
				["py"] = 0.4594403252591081,
			},
			["bEnShadowCol"] = false,
			["colLagBar"] = {
				0.35, -- [1]
				0.65, -- [2]
				0.9, -- [3]
				0.65, -- [4]
			},
			["anchorframe"] = "",
			["bEnShadowOffset"] = false,
			["colSpark"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spec"] = 0,
			["coord"] = {
				["casttime"] = {
					["y"] = 0,
					["x"] = -2,
				},
				["shadow"] = {
					["y"] = -3,
					["x"] = 3,
				},
				["latency"] = {
					["y"] = 1,
					["x"] = -1,
				},
				["casticon"] = {
					["y"] = 0,
					["x"] = 0,
				},
				["castname"] = {
					["y"] = 0,
					["x"] = 2,
				},
			},
			["cboptver"] = 3.25,
			["colBorderNI"] = {
				1, -- [1]
				0.8, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bColSuc"] = false,
			["height"] = 20,
			["fontsize_lat"] = 0,
			["colBorder"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bordericon"] = 1,
			["scale"] = 1,
			["strata"] = "MEDIUM",
			["bEn"] = false,
			["orient"] = 1,
			["colTextTime"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["bInvDir"] = false,
			["border"] = 1,
			["colSuccess"] = {
				0.35, -- [1]
				0.6, -- [2]
				0.15, -- [3]
				0.7, -- [4]
			},
			["rotateicon"] = 0,
			["width"] = 250,
			["bartype"] = "cb",
			["iconside"] = "LEFT",
			["strTimeFormat"] = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",
			["bExtChannels"] = true,
			["bResizeLongName"] = true,
			["alignlat"] = "ADAPT",
			["ingroupsel"] = 1,
			["bUnlocked"] = true,
			["relationsel"] = 1,
			["bShowWNC"] = false,
			["fontoutline"] = "OUTLINE",
			["anchor_x"] = 0,
			["strGap"] = 15,
			["forcefreealign"] = false,
			["latbarfixed"] = 0.02,
			["colBarBg"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.35, -- [3]
				0.4, -- [4]
			},
			["alignment"] = "NAMETIME",
			["bFillup"] = false,
			["anchorfrom"] = 5,
			["scaleicon"] = 1,
			["bnwlist"] = {
			},
			["colText"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Focus"] = {
			["fSparkHeightMulti"] = 1,
			["rotatertext"] = 0,
			["bShowShield"] = true,
			["bMergeTrade"] = true,
			["fadeout"] = 0.3,
			["bShowPlayerLatency"] = true,
			["bShowCBS"] = true,
			["incombatsel"] = 1,
			["alignname"] = "LEFT",
			["bnwtypesel"] = 1,
			["colBarNI"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["font"] = "",
			["colFailed"] = {
				0.7, -- [1]
				0.3, -- [2]
				0.2, -- [3]
				0.75, -- [4]
			},
			["colTextLag"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchortype"] = 1,
			["bShowTicks"] = true,
			["rotatectext"] = 0,
			["strNameFormat"] = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",
			["colShadow"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7, -- [4]
			},
			["anchor_y"] = 0,
			["rotatelattext"] = 0,
			["unit"] = "focus",
			["aligntime"] = "RIGHT",
			["fontsize"] = 0,
			["colInterrupted"] = {
				0.85, -- [1]
				0.85, -- [2]
				0.65, -- [3]
				0.75, -- [4]
			},
			["bnwlistnew"] = "",
			["anchorto"] = 5,
			["bartexture"] = "Waterline",
			["fontsize_timer"] = 0,
			["bIconUnlocked"] = false,
			["alpha"] = 1,
			["fSparkWidthMulti"] = 1,
			["bShowAsMinutes"] = true,
			["colBar"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["latbarsize"] = 0.15,
			["bShowLat"] = true,
			["anchor"] = {
				["px"] = 0.4520833559737847,
				["py"] = 0.3462962897912956,
			},
			["bEnShadowCol"] = false,
			["colLagBar"] = {
				0.35, -- [1]
				0.65, -- [2]
				0.9, -- [3]
				0.65, -- [4]
			},
			["anchorframe"] = "",
			["bEnShadowOffset"] = false,
			["colSpark"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spec"] = 0,
			["coord"] = {
				["casttime"] = {
					["y"] = 0,
					["x"] = -2,
				},
				["shadow"] = {
					["y"] = -3,
					["x"] = 3,
				},
				["latency"] = {
					["y"] = 1,
					["x"] = -1,
				},
				["casticon"] = {
					["y"] = 0,
					["x"] = 0,
				},
				["castname"] = {
					["y"] = 0,
					["x"] = 2,
				},
			},
			["cboptver"] = 3.25,
			["colBorderNI"] = {
				1, -- [1]
				0.8, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bColSuc"] = false,
			["height"] = 20,
			["fontsize_lat"] = 0,
			["colBorder"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bordericon"] = 1,
			["scale"] = 1,
			["strata"] = "MEDIUM",
			["bEn"] = true,
			["orient"] = 2,
			["colTextTime"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["bInvDir"] = false,
			["border"] = 1,
			["colSuccess"] = {
				0.35, -- [1]
				0.6, -- [2]
				0.15, -- [3]
				0.7, -- [4]
			},
			["rotateicon"] = 0,
			["width"] = 250,
			["bartype"] = "cb",
			["iconside"] = "LEFT",
			["strTimeFormat"] = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",
			["bExtChannels"] = true,
			["bResizeLongName"] = true,
			["alignlat"] = "ADAPT",
			["ingroupsel"] = 1,
			["bUnlocked"] = false,
			["relationsel"] = 1,
			["bShowWNC"] = false,
			["fontoutline"] = "OUTLINE",
			["anchor_x"] = 0,
			["strGap"] = 15,
			["forcefreealign"] = false,
			["latbarfixed"] = 0.02,
			["colBarBg"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.35, -- [3]
				0.4, -- [4]
			},
			["alignment"] = "NAMETIME",
			["bFillup"] = false,
			["anchorfrom"] = 5,
			["scaleicon"] = 1,
			["bnwlist"] = {
			},
			["colText"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Target"] = {
			["fSparkHeightMulti"] = 1,
			["rotatertext"] = 0,
			["bShowShield"] = true,
			["bMergeTrade"] = true,
			["fadeout"] = 0.3,
			["bShowPlayerLatency"] = true,
			["bShowCBS"] = true,
			["incombatsel"] = 1,
			["alignname"] = "LEFT",
			["bnwtypesel"] = 1,
			["colBarNI"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["font"] = "",
			["colFailed"] = {
				0.7, -- [1]
				0.3, -- [2]
				0.2, -- [3]
				0.75, -- [4]
			},
			["colTextLag"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchortype"] = 1,
			["bShowTicks"] = true,
			["rotatectext"] = 0,
			["strNameFormat"] = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",
			["colShadow"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7, -- [4]
			},
			["anchor_y"] = 0,
			["rotatelattext"] = 0,
			["unit"] = "target",
			["aligntime"] = "RIGHT",
			["fontsize"] = 0,
			["colInterrupted"] = {
				0.85, -- [1]
				0.85, -- [2]
				0.65, -- [3]
				0.75, -- [4]
			},
			["bnwlistnew"] = "",
			["anchorto"] = 5,
			["bartexture"] = "Waterline",
			["fontsize_timer"] = 0,
			["bIconUnlocked"] = false,
			["alpha"] = 1,
			["fSparkWidthMulti"] = 1,
			["bShowAsMinutes"] = true,
			["colBar"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["latbarsize"] = 0.15,
			["bShowLat"] = true,
			["anchor"] = {
				["px"] = 0.5494791581567068,
				["py"] = 0.3091687018937373,
			},
			["bEnShadowCol"] = false,
			["colLagBar"] = {
				0.35, -- [1]
				0.65, -- [2]
				0.9, -- [3]
				0.65, -- [4]
			},
			["anchorframe"] = "",
			["bEnShadowOffset"] = false,
			["colSpark"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spec"] = 0,
			["coord"] = {
				["casttime"] = {
					["y"] = 0,
					["x"] = -2,
				},
				["shadow"] = {
					["y"] = -3,
					["x"] = 3,
				},
				["latency"] = {
					["y"] = 1,
					["x"] = -1,
				},
				["casticon"] = {
					["y"] = 0,
					["x"] = 0,
				},
				["castname"] = {
					["y"] = 0,
					["x"] = 2,
				},
			},
			["cboptver"] = 3.25,
			["colBorderNI"] = {
				1, -- [1]
				0.8, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bColSuc"] = false,
			["height"] = 26,
			["fontsize_lat"] = 0,
			["colBorder"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bordericon"] = 1,
			["scale"] = 1,
			["strata"] = "MEDIUM",
			["bEn"] = false,
			["orient"] = 1,
			["colTextTime"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["bInvDir"] = false,
			["border"] = 1,
			["colSuccess"] = {
				0.35, -- [1]
				0.6, -- [2]
				0.15, -- [3]
				0.7, -- [4]
			},
			["rotateicon"] = 0,
			["width"] = 250,
			["bartype"] = "cb",
			["iconside"] = "RIGHT",
			["strTimeFormat"] = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",
			["bExtChannels"] = true,
			["bResizeLongName"] = true,
			["alignlat"] = "ADAPT",
			["ingroupsel"] = 1,
			["bUnlocked"] = true,
			["relationsel"] = 1,
			["bShowWNC"] = false,
			["fontoutline"] = "OUTLINE",
			["anchor_x"] = 0,
			["strGap"] = 15,
			["forcefreealign"] = false,
			["latbarfixed"] = 0.02,
			["colBarBg"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.35, -- [3]
				0.4, -- [4]
			},
			["alignment"] = "NAMETIME",
			["bFillup"] = false,
			["anchorfrom"] = 5,
			["scaleicon"] = 1,
			["bnwlist"] = {
			},
			["colText"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mirror"] = {
			["fSparkHeightMulti"] = 1,
			["rotatertext"] = 0,
			["bShowShield"] = true,
			["bMergeTrade"] = true,
			["fadeout"] = 0.3,
			["bShowPlayerLatency"] = true,
			["bShowCBS"] = true,
			["incombatsel"] = 1,
			["alignname"] = "LEFT",
			["bnwtypesel"] = 1,
			["colBarNI"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["font"] = "",
			["colFailed"] = {
				0.7, -- [1]
				0.3, -- [2]
				0.2, -- [3]
				0.75, -- [4]
			},
			["colTextLag"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchortype"] = 1,
			["bShowTicks"] = true,
			["rotatectext"] = 0,
			["strNameFormat"] = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",
			["colShadow"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7, -- [4]
			},
			["anchor_y"] = 0,
			["rotatelattext"] = 0,
			["unit"] = "mirror",
			["aligntime"] = "RIGHT",
			["fontsize"] = 0,
			["colInterrupted"] = {
				0.85, -- [1]
				0.85, -- [2]
				0.65, -- [3]
				0.75, -- [4]
			},
			["bnwlistnew"] = "",
			["anchorto"] = 5,
			["bartexture"] = "Waterline",
			["fontsize_timer"] = 0,
			["bIconUnlocked"] = false,
			["alpha"] = 1,
			["fSparkWidthMulti"] = 1,
			["bShowAsMinutes"] = true,
			["colBar"] = {
				0.2, -- [1]
				0.3, -- [2]
				0.5, -- [3]
				0.7, -- [4]
			},
			["latbarsize"] = 0.15,
			["bShowLat"] = true,
			["anchor"] = {
				["px"] = 0.5,
				["py"] = 0.5811193494817838,
			},
			["bEnShadowCol"] = false,
			["colLagBar"] = {
				0.35, -- [1]
				0.65, -- [2]
				0.9, -- [3]
				0.65, -- [4]
			},
			["anchorframe"] = "",
			["bEnShadowOffset"] = false,
			["colSpark"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spec"] = 0,
			["coord"] = {
				["casttime"] = {
					["y"] = 0,
					["x"] = -2,
				},
				["shadow"] = {
					["y"] = -3,
					["x"] = 3,
				},
				["latency"] = {
					["y"] = 1,
					["x"] = -1,
				},
				["casticon"] = {
					["y"] = 0,
					["x"] = 0,
				},
				["castname"] = {
					["y"] = 0,
					["x"] = 2,
				},
			},
			["cboptver"] = 3.25,
			["colBorderNI"] = {
				1, -- [1]
				0.8, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bColSuc"] = false,
			["height"] = 20,
			["fontsize_lat"] = 0,
			["colBorder"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["bordericon"] = 1,
			["scale"] = 1,
			["strata"] = "MEDIUM",
			["bEn"] = true,
			["orient"] = 1,
			["colTextTime"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["bInvDir"] = false,
			["border"] = 1,
			["colSuccess"] = {
				0.35, -- [1]
				0.6, -- [2]
				0.15, -- [3]
				0.7, -- [4]
			},
			["rotateicon"] = 0,
			["width"] = 250,
			["bartype"] = "cb",
			["iconside"] = "LEFT",
			["strTimeFormat"] = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",
			["bExtChannels"] = true,
			["bResizeLongName"] = true,
			["alignlat"] = "ADAPT",
			["ingroupsel"] = 1,
			["bUnlocked"] = false,
			["relationsel"] = 1,
			["bShowWNC"] = false,
			["fontoutline"] = "OUTLINE",
			["anchor_x"] = 0,
			["strGap"] = 15,
			["forcefreealign"] = false,
			["latbarfixed"] = 0.02,
			["colBarBg"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.35, -- [3]
				0.4, -- [4]
			},
			["alignment"] = "NAMETIME",
			["bFillup"] = false,
			["anchorfrom"] = 5,
			["scaleicon"] = 1,
			["bnwlist"] = {
			},
			["colText"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["bAddonEn"] = true,
}
