-- local functions
local tonumber = tonumber;
local type = type;
local pairs = pairs;
local ipairs = ipairs;
local wipe = wipe;
local table_insert = table.insert;
local table_sort = table.sort;
local table_remove = table.remove;
local string_format = string.format;
local string_gsub = string.gsub;
local string_len = strlenutf8;

-- local variables
local _;

function Gnosis:OptCreateBasicTables()
	Gnosis.tUnits = { player = "Player", target = "Target", focus = "Focus", pet = "Pet/Vehicle",
		party1 = "Party 1", party2 = "Party 2", party3 = "Party 3", party4 = "Party 4", party5 = "Party 5",
		raid1 = "Raid 1", raid2 = "Raid 2", raid3 = "Raid 3", raid4 = "Raid 4", raid5 = "Raid 5",
		arena1 = "Arena Opponent 1", arena2 = "Arena Opponent 2", arena3 = "Arena Opponent 3", arena4 = "Arena Opponent 4", arena5 = "Arena Opponent 5",
		boss1 = "Boss 1", boss2 = "Boss 2", boss3 = "Boss 3", boss4 = "Boss 4",
		boss1target = "Boss 1's Target", boss2target = "Boss 2's Target", boss3target = "Boss 3's Target", boss4target = "Boss 4's Target",
		mirror = "Mirror Bar", gcd = "GCD Indicator", sm = "Swing Melee", sr = "Swing Range", smr = "Swing Melee&Range",
		targettarget = "Target's Target", focustarget = "Focus' Target", pettarget = "Pet's Target",
		targettargettarget = "Target's Target's Target",
		arena1target = "Arena Op. 1's Target", arena2target = "Arena Op. 2's Target", arena3target = "Arena Op. 3's Target",
		arena4target = "Arena Op. 4's Target", arena5target = "Arena Op. 5's Target",
		party1target = "Party 1's Target", party2target = "Party 2's Target", party3target = "Party 3's Target",
		party4target = "Party 4's Target", party5target = "Party 5's Target",
		mouseover = "Mouseover", mouseovertarget = "Mouseover's Target",
		vehicle = "Vehicle",
	};

	Gnosis.tSpecs = { [0] = "1 & 2", [1] = "1", [2] = "2" };

	Gnosis.tBarTypes = { cb = Gnosis.L["BT_Castbar"], ti = Gnosis.L["BT_MSTimer"] };

	Gnosis.fontoutlines = { ["NONE"] = Gnosis.L["TabCapNONE"], ["OUTLINE"] = "OUTLINE", ["THICKOUTLINE"] = "THICKOUTLINE", ["MONOCHROME"] = "MONOCHROME", ["OUTLINE, MONOCHROME"] = "OUTLINE, MONOCHROME", ["THICKOUTLINE, MONOCHROME"] = "THICKOUTLINE, MONOCHROME" };

	Gnosis.tIconSide = { LEFT = Gnosis.L["TabCapLEFT"], RIGHT = Gnosis.L["TabCapRIGHT"], TOP = Gnosis.L["TabCapTOP"], BOTTOM = Gnosis.L["TabCapBOTTOM"], NONE = Gnosis.L["TabCapNONE"] };
	Gnosis.tAlignment = { NAMETIME = Gnosis.L["TabNameTime"], TIMENAME = Gnosis.L["TabTimeName"], FREE = Gnosis.L["TabFreeAlign"] };
	Gnosis.tAlignName = { LEFT = Gnosis.L["TabCapLEFT"], CENTER = Gnosis.L["TabCapCENTER"], RIGHT = Gnosis.L["TabCapRIGHT"] };
	Gnosis.tAlignTime = { LEFT = Gnosis.L["TabCapLEFT"], CENTER = Gnosis.L["TabCapCENTER"], RIGHT = Gnosis.L["TabCapRIGHT"] };
	Gnosis.tAlignLat = { LEFT = Gnosis.L["TabCapLEFT"], RIGHT = Gnosis.L["TabCapRIGHT"], ADAPT = Gnosis.L["TabAdaptToCT"] };

	Gnosis.tStrata = {
		BACKGROUND = Gnosis.L["Strata_BACK"],
		LOW = Gnosis.L["Strata_LOW"],
		MEDIUM = Gnosis.L["Strata_MEDIUM"],
		HIGH = Gnosis.L["Strata_HIGH"],
		DIALOG = Gnosis.L["Strata_DIALOG"],
	};

	Gnosis.tOrientation = {
		[1] = Gnosis.L["Horizontal"],
		[2] = Gnosis.L["Vertical"],
	};

	-- do not localize!!!
	Gnosis.tPoints = {
		[1] = "TOPLEFT",
		[2] = "TOP",
		[3] = "TOPRIGHT",
		[4] = "LEFT",
		[5] = "CENTER",
		[6] = "RIGHT",
		[7] = "BOTTOMLEFT",
		[8] = "BOTTOM",
		[9] = "BOTTOMRIGHT",
	};
	-- localized anchor points
	Gnosis.tAnchorPoints = {
		[1] = Gnosis.L["TabCapTOPLEFT"],
		[2] = Gnosis.L["TabCapTOP"],
		[3] = Gnosis.L["TabCapTOPRIGHT"],
		[4] = Gnosis.L["TabCapLEFT"],
		[5] = Gnosis.L["TabCapCENTER"],
		[6] = Gnosis.L["TabCapRIGHT"],
		[7] = Gnosis.L["TabCapBOTTOMLEFT"],
		[8] = Gnosis.L["TabCapBOTTOM"],
		[9] = Gnosis.L["TabCapBOTTOMRIGHT"],
	};

	Gnosis.optempty = {
		cmdHidden = true,
		name = Gnosis.L["AddonName"],
		type = "group",
		args = {
			disabled = {
				type = "description",
				name = Gnosis.L["OptAddonDisabled_Name"],
			},
		},
	};

	Gnosis.optdisabled = {
		cmdHidden = true,
		name = Gnosis.L["AddonName"],
		type = "group",
		args = {
			enable = {
				order = 1,
				name = Gnosis.L["OptAddonEnable_Name"],
				desc = Gnosis.L["OptAddonEnable_Desc"],
				type = "toggle",
				get = function(info) return Gnosis.s.bAddonEn; end,
				set = function(info,val)
					Gnosis.s.bAddonEn = val;
					Gnosis:En(val);
				end,
			},
		},
	};

	Gnosis.optunloaded_main = {
		cmdHidden = true,
		name = Gnosis.L["AddonName"],
		type = "group",
		args = {
			loadoptions = {
				order = 1,
				name = Gnosis.L["OptLoadOptionsButtonName"],
				desc = Gnosis.L["OptLoadOptionsButtonDesc"],
				type = "execute",
				func = function()
					Gnosis:CreateOptions();
				end,
				width = "full",
			},
		},
	};

	Gnosis.optunloaded = {
		cmdHidden = true,
		name = Gnosis.L["AddonName"],
		type = "group",
		args = {
			disabled = {
				type = "description",
				name = Gnosis.L["OptTablesUnloaded_Name"],
			},
		},
	};

	Gnosis.opt = {
		name = Gnosis.L["AddonName"],
		type = "group",
		args = {
			enable = {
				order = 1,
				name = Gnosis.L["OptAddonEnable_Name"],
				desc = Gnosis.L["OptAddonEnable_Desc"],
				type = "toggle",
				get = function(info) return Gnosis.s.bAddonEn; end,
				set = function(info,val)
					Gnosis.s.bAddonEn = val;
					Gnosis:En(val);
				end,
				width = "full",
			},
			hideblizz = {
				order = 2,
				name = Gnosis.L["OptHideBlizzCB"],
				type = "toggle",
				get = function(info) return Gnosis.s.bHideBlizz; end,
				set = function(info,val)
					Gnosis.s.bHideBlizz = val;
					Gnosis:HideBlizzardCastbar(val);
				end,
				width = "full",
			},
			hidemirror = {
				order = 3,
				name = Gnosis.L["OptHideMirrorCB"],
				type = "toggle",
				get = function(info) return Gnosis.s.bHideMirror; end,
				set = function(info,val)
					Gnosis.s.bHideMirror = val;
					Gnosis:HideBlizzardMirrorCastbar(val);
				end,
				width = "full",
			},
			hidepet = {
				order = 4,
				name = Gnosis.L["OptHidePetCB"],
				type = "toggle",
				get = function(info) return Gnosis.s.bHidePetVeh; end,
				set = function(info,val)
					Gnosis.s.bHidePetVeh = val;
					Gnosis:HideBlizzardPetCastbar(val);
				end,
				width = "full",
			},
			hideaddonmsgs = {
				order = 5,
				name = Gnosis.L["OptHideAddonMsgs"],
				type = "toggle",
				get = function(info) return Gnosis.s.bHideAddonMsgs; end,
				set = function(info,val)
					Gnosis.s.bHideAddonMsgs = val;
				end,
				width = "full",
			},
			autoloadoptions = {
				order = 6,
				name = Gnosis.L["OptEnAutoCreateOptons"],
				type = "toggle",
				get = function(info) return Gnosis.s.bAutoCreateOptions; end,
				set = function(info,val)
					Gnosis.s.bAutoCreateOptions = val;
				end,
				width = "full",
			},
			rotctext = {
				order = 7,
				name = Gnosis.L["OptTimerScanEveryN"],
				type = "range",
				min = 10, max = 1000,
				step = 1, bigStep = 1,
				get = function(info) return Gnosis.s.iTimerScanEvery; end,
				set = function(info,val) Gnosis.s.iTimerScanEvery = val; end,
				isPercent = false,
				width = "full",
			},
			locale = {
				order = 8,
				name = Gnosis.L["OptLocale"],
				type = "select",
				values = Gnosis.LSet,
				get = function(info) return Gnosis.s.strLocale; end,
				set = function(info,val)
					Gnosis.s.strLocale = val;
					Gnosis:RedoLocalization();
				end,
				style = "dropdown",
				width = "full",
			},
			fsframe = {
				order = 9,
				name = Gnosis.L["OptFirstStartFrame"],
				type = "execute",
				func = function()
					Gnosis:CheckForFirstStart(true);
				end,
				width = "full",
			},
			ccbset = {
				order = 10,
				name = Gnosis.L["OptCreateCBSet"],
				type = "execute",
				func = function()
					Gnosis:CreateBasicCastbarSet();
				end,
				width = "full",
			},
			impbars = {
				order = 11,
				name = Gnosis.L["OptImportBar"],
				type = "execute",
				func = function()
					Gnosis:ImportBars();
				end,
				width = "full",
			},
			expbars = {
				order = 12,
				name = Gnosis.L["OptExportAllBars"],
				type = "execute",
				func = function()
					Gnosis:ExportAllBars();
				end,
				width = "full",
			},
			respd = {
				order = 13,
				name = Gnosis.L["OptResetPlayerData"],
				type = "execute",
				func = function()
					wipe(GnosisCharConfig);
					ReloadUI();
				end,
				width = "full",
			},			
		},
	};

	Gnosis.opt_ctclip = {
		name = Gnosis.L["TabCTClipTest"],
		type = "group",
		args = {},
	};

	Gnosis.opt_cbs = {
		name = Gnosis.L["TabCastbars"],
		type = "group",
		args = {},
	};

	Gnosis.opt_css = {
		name = Gnosis.L["TabChanneledSpells"],
		type = "group",
		args = {},
	};

	Gnosis.opt_configs = {
		name = Gnosis.L["TabConfig"],
		type = "group",
		args = {},
	};
end

function Gnosis:OptCreateCTpage()
	Gnosis.opt_ctclip.args = {
		ctaddon = {
			order = 1,
			name = Gnosis.L["OptCTO"],
			type = "select",
			values = {
				["Blizz"] = Gnosis.L["OptCTO_Blizz"],
				["MSBT"] = Gnosis.L["OptCTO_MSBT"],
				["SCT"] = Gnosis.L["OptCTO_SCT"],
				["Parrot"] = Gnosis.L["OptCTO_Parrot"],
			},
			get = function(info) return Gnosis.s.ct.addon; end,
			set = function(info,val) Gnosis.s.ct.addon = val; end,
			style = "dropdown",
			width = "full",
		},
		bsound = {
			order = 2,
			name = Gnosis.L["OptPSoC"],
			type = "toggle",
			get = function(info) return Gnosis.s.ct.bsound; end,
			set = function(info,val) Gnosis.s.ct.bsound = val; end,
		},
		bmusic = {
			order = 3,
			name = Gnosis.L["OptPMoC"],
			type = "toggle",
			get = function(info) return Gnosis.s.ct.bmusic; end,
			set = function(info,val) Gnosis.s.ct.bmusic = val; end,
		},
		sound = {
			order = 4,
			name = Gnosis.L["OptSnd"],
			type = "select",
			values = Gnosis.BlizzSounds,
			get = function(info) return Gnosis.s.ct.sound; end,
			set = function(info,val) Gnosis.s.ct.sound = val; end,
			style = "dropdown",
		},
		music = {
			order = 5,
			name = Gnosis.L["OptMusic"],
			type = "select",
			dialogControl = "LSM30_Sound",
			values = AceGUIWidgetLSMlists.sound,
			get = function(info) return Gnosis.s.ct.music; end,
			set = function(info,val) Gnosis.s.ct.music = val; end,
			style = "dropdown",
		},
		playsound = {
			order = 6,
			name = Gnosis.L["OptPlaySnd"],
			type = "execute",
			func = function() if(Gnosis.s.ct.sound) then
				 PlaySound(Gnosis.s.ct.sound); end
			end,
		},
		playmusic = {
			order = 7,
			name = Gnosis.L["OptPlayMusic"],
			type = "execute",
			func = function() if(Gnosis.s.ct.music) then
				PlaySoundFile(self.lsm:Fetch("sound", Gnosis.s.ct.music)); end
			end,
		},
		wfcl = {
			order = 9,
			name = Gnosis.L["OptWfCL_Name"],
			desc = Gnosis.L["OptWfCL_Desc"],
			type = "range",
			min = 0, max = 1500,
			step = 10, bigStep = 10,
			get = function(info) return Gnosis.s.wfcl; end,
			set = function(info,val) Gnosis.s.wfcl = val; end,
			isPercent = false,
		},
		ctt = {
			order = 10,
			name = Gnosis.L["OptClipWarn_Name"],
			desc = Gnosis.L["OptClipWarn_Desc"],
			type = "range",
			min = 0, max = 500,
			step = 10, bigStep = 10,
			get = function(info) return Gnosis.s.ctt; end,
			set = function(info,val) Gnosis.s.ctt = val; end,
			isPercent = false,
		},
	};
end

function Gnosis:OptCreateNewCastbar(passedname, passedunit)
	local name = passedname and passedname or self.s.nameNewBar;

	if(name == "") then
		self:Print(self.L["OptCreatenewbarInvalidName"]);
	elseif(self.castbars[name] ~= nil) then
		self:Print(self.L["OptCreatenewbarExists"]);
	else
		self.s.cbconf[name] = self:CreateDefaultBarTable(passedunit and passedunit or "player");
		self.castbars[name] = self:CreateBarFrame(name, nil, 0, 1.0);
		self:SetBarParams(name);

		self:CreateCastbarsOpt();
		self:CreateCBTables();
	end
end

function Gnosis:OptCreateNewAndCopyCastbar(key)
	local name = self.s.nameNewBar;

	if(name == "") then
		self:Print(self.L["OptCopytonewbarInvalidName"]);
	elseif(self.castbars[name] ~= nil) then
		self:Print(self.L["OptCopytonewbarExists"]);
	else
		self.s.cbconf[name] = self:deepcopy(self.s.cbconf[key]);
		self.castbars[name] = self:CreateBarFrame(name, nil, 0, 1.0);
		self:SetBarParams(name);

		self:CreateCastbarsOpt();
		self:CreateCBTables();
	end
end

function Gnosis:OptCreateNewChanneledSpell()
	local id = tonumber(self.s.nameNewSpell);

	if(id == nil) then
		self:AddChanneledSpellByName(self.s.nameNewSpell, 1, 1, false, false);
	else
		self:AddChanneledSpellById(id, 1, 1, false, false);
	end

	self:CreateChannelSpellsOpt();
end

function Gnosis:CreateChannelSpellsOpt()
	local iCount = 4;
	local tCSs = {};

	tCSs.newbarbutton = {
		order = 1,
		name = Gnosis.L["OptCreateNewSpell"],
		type = "execute",
		func = function() Gnosis:OptCreateNewChanneledSpell(); end,
	};

	tCSs.newbarname = {
		order = 2,
		name = Gnosis.L["OptSpellNameOrId"],
		type = "input",
		get = function(info) return Gnosis.s.nameNewSpell; end,
		set = function(info,val) Gnosis.s.nameNewSpell = val; end,
	};

	-- created sorted table
	local tSorted = {};
	for key, value in pairs(self.s.channeledspells) do
		table_insert(tSorted, key);
	end
	table_sort(tSorted);

	for keyindex, key in ipairs(tSorted) do
		iCount = iCount + 1;
		tCSs[key] = {
			order = iCount,
			name = key,
			type = "group",
			width = "half",
			args = {
				ben = {
					order = self:GetNextTableIndex(1),
					name = Gnosis.L["OptEn"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].ben; end,
					set = function(info,val) Gnosis.s.channeledspells[key].ben = val; end,
				},
				ticks = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptTotTicks"],
					type = "range",
					min = 1, max = 15,
					step = 1, bigStep = 1,
					get = function(info) return Gnosis.s.channeledspells[key].ticks; end,
					set = function(info,val) Gnosis.s.channeledspells[key].ticks = val; end,
					isPercent = false,
				},
				bars = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptTicksToShow"],
					type = "range",
					min = 1, max = 15,
					step = 1, bigStep = 1,
					get = function(info) return Gnosis.s.channeledspells[key].bars; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bars = val; end,
					isPercent = false,
				},
				baddticks = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptHasteAddsTicks"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].baddticks; end,
					set = function(info,val) Gnosis.s.channeledspells[key].baddticks = val; end,
				},
				binit = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptFirstTickInst"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].binit; end,
					set = function(info,val) Gnosis.s.channeledspells[key].binit = val; end,
				},
				baoe = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptSpellIsAoE"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].baoe; end,
					set = function(info,val) Gnosis.s.channeledspells[key].baoe = val; end,
				},
				bhidenp = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptHideNonPlayerTicks"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bhidenonplayer; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bhidenonplayer = val; end,
				},
				bclip = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptEnClipTest"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bcliptest; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bcliptest = val; end,
				},
				bticksound = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptPlayTickSound_N"],
					desc = Gnosis.L["OptPlayTickSound_D"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bticksound; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bticksound = val; end,
				},
				bcombattext = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCombTicks"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bcombattext; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bcombattext = val; end,
				},
				ctoutput = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptOutputString"],
					desc = Gnosis.L["OptOutputStringDesc"],
					type = "input",
					get = function(info) return  Gnosis.s.channeledspells[key].ctstring; end,
					set = function(info,val) Gnosis.s.channeledspells[key].ctstring = val; end,
				},
				bicon = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptShowSpellIcon"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bicon; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bicon = val; end,
				},
				bsticky = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptStickyClips"],
					type = "toggle",
					get = function(info) return Gnosis.s.channeledspells[key].bsticky; end,
					set = function(info,val) Gnosis.s.channeledspells[key].bsticky = val; end,
				},
				fontsizeclip = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCSFSClip"],
					type = "range",
					min = 0, max = 34,
					step = 1, bigStep = 1,
					get = function(info) return Gnosis.s.channeledspells[key].fontsizeclip; end,
					set = function(info,val) Gnosis.s.channeledspells[key].fontsizeclip = val; end,
					isPercent = false,
				},
				fontsizenclip = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCSFSNonClip"],
					type = "range",
					min = 0, max = 34,
					step = 1, bigStep = 1,
					get = function(info) return Gnosis.s.channeledspells[key].fontsizenclip; end,
					set = function(info,val) Gnosis.s.channeledspells[key].fontsizenclip = val; end,
					isPercent = false,
				},
				remspell = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCSRemove"],
					type = "execute",
					func = function() Gnosis:RemoveChanneledSpell(key); end,
				},
			},
		};
	end

	Gnosis.opt_css.args = tCSs;
end

local iCurTableIndex;
function Gnosis:GetNextTableIndex(resetto)
	iCurTableIndex = resetto or (iCurTableIndex + 1);
	return iCurTableIndex;
end

local iCurTableIndexInner;
function Gnosis:GetNextTableIndexInner(resetto)
	iCurTableIndexInner = resetto or (iCurTableIndexInner + 1);
	return iCurTableIndexInner;
end

function Gnosis:CreateCastbarsOpt()
	local iCount = 4;
	local tCBs = {};

	tCBs.newbarbutton = {
		order = 1,
		name = Gnosis.L["OptCBNewCB_N"],
		desc = Gnosis.L["OptCBNewCB_D"],
		type = "execute",
		func = function() Gnosis:OptCreateNewCastbar(); end,
	};

	tCBs.newbarname = {
		order = 2,
		name = "",
		desc = Gnosis.L["OptCBNewCBName_D"],
		type = "input",
		get = function(info) return Gnosis.s.nameNewBar; end,
		set = function(info,val) Gnosis.s.nameNewBar = val; end,
	};

	-- created sorted table
	local tSorted = {};
	for key, value in pairs(self.castbars) do
		table_insert(tSorted, key);
	end
	table_sort(tSorted);

	for keyindex, key in ipairs(tSorted) do
		iCurCnt = 0;
		iCount = iCount + 1;
		tCBs[key] = {
			order = iCount,
			name = key,
			type = "group",
			width = "half",
			args = {
				enable = {
					order = self:GetNextTableIndex(1),
					name = Gnosis.L["OptCBEnCB"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bEn; end,
					set = function(info,val)
						Gnosis.s.cbconf[key].bEn = val;
						Gnosis:SetBarParams(key);
						Gnosis:CreateCBTables();
					end,
					width = "full",
				},
				movable = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBUnl_N"],
					desc = Gnosis.L["OptCBUnl_D"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bUnlocked; end,
					set = function(info,val) Gnosis.s.cbconf[key].bUnlocked = val; Gnosis:SetBarParams(key); end,
					width = "full",
				},
				showwnc = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBSWNC"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bShowWNC; end,
					set = function(info,val) Gnosis.s.cbconf[key].bShowWNC = val; Gnosis:SetBarParams(key); end,
					width = "full",
				},
				bartype = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBBarType"],
					type = "select",
					values = Gnosis.tBarTypes,
					get = function(info) return Gnosis.s.cbconf[key].bartype; end,
					set = function(info,val)
							Gnosis.s.cbconf[key].bartype = val;
							Gnosis:SetBarParams(key);
							Gnosis:CreateCBTables();
						end,
					style = "dropdown",
					width = "full",
				},
				seltype = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBUnit"],
					type = "select",
					values = Gnosis.tUnits,
					get = function(info) return Gnosis.s.cbconf[key].unit; end,
					set = function(info,val)
							Gnosis.s.cbconf[key].unit = val;
							Gnosis:SetBarParams(key);
							Gnosis:CreateCBTables();
						end,
					style = "dropdown",
					width = "full",
				},
				specact = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBActiveSpec"],
					type = "select",
					values = Gnosis.tSpecs,
					get = function(info) return Gnosis.s.cbconf[key].spec; end,
					set = function(info,val)
							Gnosis.s.cbconf[key].spec = val;
							Gnosis:SetBarParams(key);
							Gnosis:CreateCBTables();
						end,
					style = "dropdown",
					width = "full",
				},
				orientation = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBOrient"],
					type = "select",
					values = Gnosis.tOrientation,
					get = function(info) return Gnosis.s.cbconf[key].orient; end,
					set = function(info,val) Gnosis.s.cbconf[key].orient = val; Gnosis:SetBarParams(key); end,
					style = "dropdown",
					width = "full",
				},
				bartex = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBTexture"],
					type = "select",
					dialogControl = "LSM30_Statusbar",
					values = AceGUIWidgetLSMlists.statusbar,
					get = function(info) return Gnosis.s.cbconf[key].bartexture; end,
					set = function(info,val) Gnosis.s.cbconf[key].bartexture = val; Gnosis:SetBarParams(key); end,
					style = "dropdown",
					width = "full",
				},
				bordertex = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBBorderTex_N"],
					desc = Gnosis.L["OptCBBorderTex_D"],
					type = "select",
					dialogControl = "LSM30_Border",
					values = AceGUIWidgetLSMlists.border,
					get = function(info) return Gnosis.s.cbconf[key].bordertexture; end,
					set = function(info,val) Gnosis.s.cbconf[key].bordertexture = val; Gnosis:SetBarParams(key); end,
					style = "dropdown",
					width = "full",
				},
				framestrata = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBFrameStrata"],
					type = "select",
					values = Gnosis.tStrata,
					get = function(info) return Gnosis.s.cbconf[key].strata; end,
					set = function(info,val) Gnosis.s.cbconf[key].strata = val; Gnosis:SetBarParams(key); end,
					style = "dropdown",
					width = "full",
				},
				iconside = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBShowIcon"],
					type = "select",
					values = Gnosis.tIconSide,
					get = function(info) return Gnosis.s.cbconf[key].iconside; end,
					set = function(info,val) Gnosis.s.cbconf[key].iconside = val; Gnosis:SetBarParams(key); end,
					style = "dropdown",
					width = "full",
				},
				invbar = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBInvBarDir"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bInvDir; end,
					set = function(info,val) Gnosis.s.cbconf[key].bInvDir = val; Gnosis:SetBarParams(key); end,
				},
				chanasnormal = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBChannelsAsNormal"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bChanAsNorm; end,
					set = function(info,val) Gnosis.s.cbconf[key].bChanAsNorm = val; end,
				},
				showcbs = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBShowSpark"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bShowCBS; end,
					set = function(info,val)
						Gnosis.s.cbconf[key].bShowCBS = val;
						Gnosis:SetBarParams(key);
						Gnosis:CreateCBTables();
					end,
				},
				showlatbox = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBShowLatBox"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bShowLat; end,
					set = function(info,val) Gnosis.s.cbconf[key].bShowLat = val; Gnosis:SetBarParams(key); end,
				},
				showticks = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBShowChanTicks"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bShowTicks; end,
					set = function(info,val) Gnosis.s.cbconf[key].bShowTicks = val; Gnosis:SetBarParams(key); end,
				},
				extendchan = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBExtendChannels_N"],
					desc = Gnosis.L["OptCBExtendChannels_D"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bExtChannels; end,
					set = function(info,val) Gnosis.s.cbconf[key].bExtChannels = val; end,
				},
				txtgrp = {
					name = Gnosis.L["OptCBTabText"],
					type = "group",
					order = self:GetNextTableIndex(),
					args = {
						castnamegrp = {
							name = Gnosis.L["OptCHCastnameGrp"],
							type = "group",
							inline = true,
							order = self:GetNextTableIndexInner(1),
							args = {
								castnamestring = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptNameFormatStringName"],
									desc = Gnosis.L["OptNameFormatStringDesc"],
									type = "input",
									get = function(info) return Gnosis.s.cbconf[key].strNameFormat; end,
									set = function(info,val)
										Gnosis.s.cbconf[key].strNameFormat = val;
										Gnosis:SetBarParams(key);
									end,
									width = "full",
								},
								alignment = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBTextAlignment"],
									type = "select",
									values = Gnosis.tAlignment,
									get = function(info) return Gnosis.s.cbconf[key].alignment; end,
									set = function(info,val) Gnosis.s.cbconf[key].alignment = val; Gnosis:SetBarParams(key); end,
									style = "dropdown",
								},
								alignname = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBAlignName"],
									type = "select",
									values = Gnosis.tAlignName,
									get = function(info) return Gnosis.s.cbconf[key].alignname; end,
									set = function(info,val) Gnosis.s.cbconf[key].alignname = val; Gnosis:SetBarParams(key); end,
									style = "dropdown",
								},
								namecoord_x_y = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBAdjNamePos"],
									desc = Gnosis.L["OptBarXYcoordDesc"],
									type = "input",
									get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].coord.castname.x, Gnosis.s.cbconf[key].coord.castname.y); end,
									set = function(info,val) Gnosis.s.cbconf[key].coord.castname.x, Gnosis.s.cbconf[key].coord.castname.y = Gnosis:GetCoordinatesFromString(val); Gnosis:SetBarParams(key); end,
								},
								rotctext = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBRotNameN"],
									desc = Gnosis.L["OptCBRotNameD"],
									type = "range",
									min = -180, max = 180,
									step = 1, bigStep = 1,
									get = function(info) return Gnosis.s.cbconf[key].rotatectext; end,
									set = function(info,val) Gnosis.s.cbconf[key].rotatectext = val; Gnosis:SetBarParams(key); end,
									isPercent = false,
								},
							},
						},
						casttimegrp = {
							name = Gnosis.L["OptCHCasttimeGrp"],
							order = self:GetNextTableIndexInner(),
							inline = true,
							type = "group",
							args = {
								casttimestring = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptTimeFormatStringName"],
									desc = Gnosis.L["OptTimeFormatStringDesc"],
									type = "input",
									get = function(info) return Gnosis.s.cbconf[key].strTimeFormat; end,
									set = function(info,val)
										Gnosis.s.cbconf[key].strTimeFormat = val;
										Gnosis:SetBarParams(key);
									end,
									width = "full",
								},
								aligntime = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBAlignTime"],
									type = "select",
									values = Gnosis.tAlignTime,
									get = function(info) return Gnosis.s.cbconf[key].aligntime; end,
									set = function(info,val) Gnosis.s.cbconf[key].aligntime = val; Gnosis:SetBarParams(key); end,
									style = "dropdown",
								},
								timecoord_x_y = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBAlignTimeCoord"],
									desc = Gnosis.L["OptBarXYcoordDesc"],
									type = "input",
									get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].coord.casttime.x, Gnosis.s.cbconf[key].coord.casttime.y); end,
									set = function(info,val) Gnosis.s.cbconf[key].coord.casttime.x, Gnosis.s.cbconf[key].coord.casttime.y = Gnosis:GetCoordinatesFromString(val); Gnosis:SetBarParams(key); end,
								},
								rotrtext = {
									order = self:GetNextTableIndexInner(),
									name = Gnosis.L["OptCBRotTimeN"],
									desc = Gnosis.L["OptCBRotNameD"],
									type = "range",
									min = -180, max = 180,
									step = 1, bigStep = 1,
									get = function(info) return Gnosis.s.cbconf[key].rotatertext; end,
									set = function(info,val) Gnosis.s.cbconf[key].rotatertext = val; Gnosis:SetBarParams(key); end,
									isPercent = false,
								},
							},
						},
						mergetradeskill = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptMergetradeskillName"],
							desc = Gnosis.L["OptMergetradeskillDesc"],
							type = "toggle",
							get = function(info) return Gnosis.s.cbconf[key].bMergeTrade; end,
							set = function(info,val) Gnosis.s.cbconf[key].bMergeTrade = val; Gnosis:SetBarParams(key); end,
						},
						showplayerlatency  = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptShowPlayerLatency"],
							type = "toggle",
							get = function(info) return Gnosis.s.cbconf[key].bShowPlayerLatency; end,
							set = function(info,val) Gnosis.s.cbconf[key].bShowPlayerLatency = val; Gnosis:SetBarParams(key); end,
						},
						alignlattext = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBForceLatAlign"],
							type = "select",
							values = Gnosis.tAlignLat,
							get = function(info) return Gnosis.s.cbconf[key].alignlat; end,
							set = function(info,val) Gnosis.s.cbconf[key].alignlat = val; Gnosis:SetBarParams(key); end,
							style = "dropdown",
						},
						latcoord_x_y = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBAdjLatTextCoord"],
							desc = Gnosis.L["OptBarXYcoordDesc"],
							type = "input",
							get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].coord.latency.x, Gnosis.s.cbconf[key].coord.latency.y); end,
							set = function(info,val) Gnosis.s.cbconf[key].coord.latency.x, Gnosis.s.cbconf[key].coord.latency.y = Gnosis:GetCoordinatesFromString(val); Gnosis:SetBarParams(key); end,
						},
						rotlattext = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBRotLatencyN"],
							type = "range",
							min = -180, max = 180,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].rotatelattext; end,
							set = function(info,val) Gnosis.s.cbconf[key].rotatelattext = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
					},
				},
				fillclearbar = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBFillAtEnd"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bFillup; end,
					set = function(info,val) Gnosis.s.cbconf[key].bFillup = val; end,
				},
				showshield = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBShowShield"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bShowShield; end,
					set = function(info,val) Gnosis.s.cbconf[key].bShowShield = val; end,
				},
				sizegrp = {
					type = "group",
					name = Gnosis.L["OptCBSizeGrp"],
					order = self:GetNextTableIndex(),
					inline = true,
					args = {
						barwidth = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptWidth"],
							type = "range",
							min = 1, max = 2000,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].width; end,
							set = function(info,val) Gnosis.s.cbconf[key].width = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						barheight = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptHeight"],
							type = "range",
							min = 1, max = 2000,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].height; end,
							set = function(info,val) Gnosis.s.cbconf[key].height = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						barscale = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBScaleBar"],
							type = "range",
							min = 0.1, max = 5,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].scale; end,
							set = function(info,val) Gnosis.s.cbconf[key].scale = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						iconcale = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBScaleIcon"],
							type = "range",
							min = 0.1, max = 5,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].scaleicon; end,
							set = function(info,val) Gnosis.s.cbconf[key].scaleicon = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						roticon = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBRotIcon"],
							type = "range",
							min = -180, max = 180,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].rotateicon; end,
							set = function(info,val) Gnosis.s.cbconf[key].rotateicon = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						bordersize = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBBorderSize"],
							type = "range",
							min = 0, max = 10,
							step = 0.1, bigStep = 0.1,
							get = function(info) return Gnosis.s.cbconf[key].border; end,
							set = function(info,val) Gnosis.s.cbconf[key].border = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						bordersizeicon = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBIconBorderSize"],
							type = "range",
							min = 0, max = 10,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].bordericon; end,
							set = function(info,val) Gnosis.s.cbconf[key].bordericon = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						sparkheight = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBSparkHeight"],
							type = "range",
							min = 0, max = 5,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].fSparkHeightMulti; end,
							set = function(info,val) Gnosis.s.cbconf[key].fSparkHeightMulti = val; Gnosis:SetBarParams(key); end,
							isPercent = true,
						},
						sparkwidth = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBSparkWidth"],
							type = "range",
							min = 0, max = 5,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].fSparkWidthMulti; end,
							set = function(info,val) Gnosis.s.cbconf[key].fSparkWidthMulti = val; Gnosis:SetBarParams(key); end,
							isPercent = true,
						},
						latbarsize = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBMaxLatBox"],
							type = "range",
							min = 0.01, max = 0.33,
							step = 0.01, bigStep = 0.01,
							get = function(info) return Gnosis.s.cbconf[key].latbarsize; end,
							set = function(info,val) Gnosis.s.cbconf[key].latbarsize = val; end,
							isPercent = true,
						},
						latbarfixed = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBFixLatBox"],
							type = "range",
							min = 0.01, max = 0.1,
							step = 0.01, bigStep = 0.01,
							get = function(info) return Gnosis.s.cbconf[key].latbarfixed; end,
							set = function(info,val) Gnosis.s.cbconf[key].latbarfixed = val; end,
							isPercent = true,
						},
						baralpha = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBAlpha"],
							type = "range",
							min = 0.1, max = 1,
							step = 0.05, bigStep = 0.05,
							get = function(info) return Gnosis.s.cbconf[key].alpha; end,
							set = function(info,val) Gnosis.s.cbconf[key].alpha = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
						fadeout = {
							order = self:GetNextTableIndex(),
							name = Gnosis.L["OptCBFadeout"],
							type = "range",
							min = 0, max = 5,
							step = 0.1, bigStep = 0.1,
							get = function(info) return Gnosis.s.cbconf[key].fadeout; end,
							set = function(info,val) Gnosis.s.cbconf[key].fadeout = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
						},
					},
				},
				colgrp = {
					name = Gnosis.L["OptCBTabColors"],
					type = "group",
					order = self:GetNextTableIndex(),
					args = {
						colBarGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(1), Gnosis.L["OptCBCBColor"], "colBar"),
						colBarNIGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBNIColor"], "colBarNI"),
						colInterruptedGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBColInt"], "colInterrupted"),
						colFailedGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBColFail"], "colFailed"),
						colBarBgGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBBgCol"], "colBarBg"),
						colBorderGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBBorderCol"], "colBorder"),
						colBorderNIGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBBorderColInt"], "colBorderNI"),
						colLagBarGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBLatBoxCol"], "colLagBar"),
						colSparkGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBSparkColor"], "colSpark"),
						colTextGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBTextColName"], "colText"),
						colTextTimeGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBTextColTime"], "colTextTime"),
						colTextLagGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBTextColLat"], "colTextLag"),
						bfinished = Gnosis:OptSimpleToggle(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBEnCastSucName"], Gnosis.L["OptCBEnCastSucDesc"], "bColSuc"),
						colSuccessGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBSucColor"], "colSuccess"),
						buseshadow = Gnosis:OptToggle_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBEnShCol"], "", "bEnShadowCol"),
						colShadowGrp = Gnosis:OptColorGroup_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptCBCBShColor"], "colShadow"),
					},
				},
				fontgrp = {
					name = Gnosis.L["OptCBFont"],
					type = "group",
					order = self:GetNextTableIndex(),
					args = {
						font = {
							order = self:GetNextTableIndexInner(1),
							name = Gnosis.L["OptCBFont"],
							type = "select",
							dialogControl = "LSM30_Font",
							values = AceGUIWidgetLSMlists.font,
							get = function(info) return Gnosis.s.cbconf[key].font; end,
							set = function(info,val) Gnosis.s.cbconf[key].font = val; Gnosis:SetBarParams(key); end,
							style = "dropdown",
							width = "full",
						},
						fontoutline = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBFontOutline"],
							type = "select",
							values = Gnosis.fontoutlines,
							get = function(info) return Gnosis.s.cbconf[key].fontoutline; end,
							set = function(info,val) Gnosis.s.cbconf[key].fontoutline = val; Gnosis:SetBarParams(key); end,
							style = "dropdown",
							width = "full",
						},
						fontsize = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBFontSizeName"],
							type = "range",
							min = 0, max = 26,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].fontsize; end,
							set = function(info,val) Gnosis.s.cbconf[key].fontsize = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
							width = "full",
						},
						fontsizetime = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBFontSizeTime"],
							type = "range",
							min = 0, max = 26,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].fontsize_timer; end,
							set = function(info,val) Gnosis.s.cbconf[key].fontsize_timer = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
							width = "full",
						},
						fontsizelat = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBFontSizeLat"],
							type = "range",
							min = 0, max = 26,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].fontsize_lat; end,
							set = function(info,val) Gnosis.s.cbconf[key].fontsize_lat = val; Gnosis:SetBarParams(key); end,
							isPercent = false,
							width = "full",
						},
						resizelong = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptFontResizeLongName"],
							type = "toggle",
							get = function(info) return Gnosis.s.cbconf[key].bResizeLongName; end,
							set = function(info,val) Gnosis.s.cbconf[key].bResizeLongName = val; Gnosis:SetBarParams(key); end,
							width = "full",
						},
						strgap = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptStrGapName"],
							desc = Gnosis.L["OptStrGapDesc"],
							type = "range",
							min = 0, max = 100,
							step = 1, bigStep = 1,
							get = function(info) return Gnosis.s.cbconf[key].strGap; end,
							set = function(info,val) Gnosis.s.cbconf[key].strGap = val; end,
							isPercent = false,
							width = "full",
						},
						bshdoffset = Gnosis:OptToggle_Entry(key, self:GetNextTableIndexInner(), Gnosis.L["OptFontEnShOffset"], "", "bEnShadowOffset"),
						shadowcoord_x_y = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptFontShOffsetXYName"],
							desc = Gnosis.L["OptFontShOffsetXYDesc"],
							type = "input",
							get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].coord.shadow.x, Gnosis.s.cbconf[key].coord.shadow.y); end,
							set = function(info,val) Gnosis.s.cbconf[key].coord.shadow.x, Gnosis.s.cbconf[key].coord.shadow.y = Gnosis:GetCoordinatesFromString(val); Gnosis:SetBarParams(key); end,
							width = "full",
						},
					},
				},
				hidegrp = {
					name = Gnosis.L["OptCBTabHide"],
					type = "group",
					order = self:GetNextTableIndex(),
					args = {
						relationsel = {
							order = self:GetNextTableIndexInner(1),
							name = Gnosis.L["OptCBRelSel"],
							type = "select",
							values = {
								[1] = Gnosis.L["OptCBRelSelAll"],
								[2] = Gnosis.L["OptCBRelSelEnemy"],
								[3] = Gnosis.L["OptCBRelSelFriendly"],
							},
							get = function(info) return Gnosis.s.cbconf[key].relationsel; end,
							set = function(info,val) Gnosis.s.cbconf[key].relationsel = val; end,
							style = "dropdown",
							width = "full",
						},
						incombatsel = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBCombSel"],
							type = "select",
							values = {
								[1] = Gnosis.L["OptCBCombatSelAlways"],
								[2] = Gnosis.L["OptCBCombatSelInC"],
								[3] = Gnosis.L["OptCBCombatSelOoC"],
							},
							get = function(info) return Gnosis.s.cbconf[key].incombatsel; end,
							set = function(info,val) Gnosis.s.cbconf[key].incombatsel = val; Gnosis:SetBarParams(key); end,
							style = "dropdown",
							width = "full",
						},
						groupsel = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBCombSel"],
							type = "select",
							values = {
								[1] = Gnosis.L["OptCBGroupSelAlways"],
								[2] = Gnosis.L["OptCBGroupSelSolo"],
								[3] = Gnosis.L["OptCBGroupSelPartyNotRaid"],
								[4] = Gnosis.L["OptCBGroupSelRaid"],
							},
							get = function(info) return Gnosis.s.cbconf[key].ingroupsel; end,
							set = function(info,val) Gnosis.s.cbconf[key].ingroupsel = val; Gnosis:SetBarParams(key); end,
							style = "dropdown",
							width = "full",
						},
						bnwtypesel = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBEnList"],
							type = "select",
							values = {
								[1] = Gnosis.L["OptCBListNeither"],
								[2] = Gnosis.L["OptCBListBlack"],
								[3] = Gnosis.L["OptCBListWhite"],
							},
							get = function(info) return Gnosis.s.cbconf[key].bnwtypesel; end,
							set = function(info,val) Gnosis.s.cbconf[key].bnwtypesel = val; end,
							style = "dropdown",
							width = "full",
						},
						bnwlistmulti = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBBWListedSpells"],
							desc = Gnosis.L["OptCBNewListElem_D"],
							type = "input",
							multiline = 10,
							get = function(info)
								return Gnosis:MultilineFromTable(Gnosis.s.cbconf[key].bnwlist);
							end,
							set = function(info,val)
								Gnosis:MultilineToTable(val, Gnosis.s.cbconf[key].bnwlist);
								Gnosis:CreateCastbarsOpt();
								Gnosis:CreateCBTables();
								Gnosis:SetBarParams(key);
							end,
							width = "full",
						},
					},
				},
				anchorgrp = {
					name = Gnosis.L["OptCBAnc"],
					type = "group",
					order = self:GetNextTableIndex(),
					args = {
						anchortype = {
							order = self:GetNextTableIndexInner(1),
							name = Gnosis.L["OptCBAncType"],
							type = "select",
							values = {
								[1] = Gnosis.L["OptCBAncNoAnc"],
								[2] = Gnosis.L["OptCBAncToFrame"],
								[3] = Gnosis.L["OptCBAncToCursor"],
							},
							get = function(info) return Gnosis.s.cbconf[key].anchortype; end,
							set = function(info,val)
								Gnosis.s.cbconf[key].anchortype = val;
								Gnosis:AnchorBar(key);
							end,
							style = "dropdown",
							width = "full",
						},
						anchorframe = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBAncFrameName"],
							type = "input",
							get = function(info) return Gnosis.s.cbconf[key].anchorframe; end,
							set = function(info,val)
								Gnosis.s.cbconf[key].anchorframe = val;
								Gnosis:AnchorBar(key);
							end,
							width = "full",
						},
						anchorfrom = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBAncBarAncPnt"],
							type = "select",
							values = Gnosis.tAnchorPoints,
							get = function(info) return Gnosis.s.cbconf[key].anchorfrom; end,
							set = function(info,val)
								Gnosis.s.cbconf[key].anchorfrom = val;
								Gnosis:AnchorBar(key);
							end,
							style = "dropdown",
							width = "full",
						},
						anchorto = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBAncFrameAncPnt"],
							type = "select",
							values = Gnosis.tAnchorPoints,
							get = function(info) return Gnosis.s.cbconf[key].anchorto; end,
							set = function(info,val)
								Gnosis.s.cbconf[key].anchorto = val;
								Gnosis:AnchorBar(key);
							end,
							style = "dropdown",
							width = "full",
						},
						offset_x_y = {
							order = self:GetNextTableIndexInner(),
							name = Gnosis.L["OptCBAncOffset"],
							type = "input",
							get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].anchor_x, Gnosis.s.cbconf[key].anchor_y); end,
							set = function(info,val) Gnosis.s.cbconf[key].anchor_x, Gnosis.s.cbconf[key].anchor_y = Gnosis:GetCoordinatesFromString(val); Gnosis:AnchorBar(key); end,
							width = "full",
						},
					},
				},
				iconcoord_x_y = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBAdjIcon"],
					desc = Gnosis.L["OptBarXYcoordDesc"],
					type = "input",
					get = function(info) return string_format("%.2f, %.2f", Gnosis.s.cbconf[key].coord.casticon.x, Gnosis.s.cbconf[key].coord.casticon.y); end,
					set = function(info,val) Gnosis.s.cbconf[key].coord.casticon.x, Gnosis.s.cbconf[key].coord.casticon.y = Gnosis:GetCoordinatesFromString(val); Gnosis:SetBarParams(key); end,
				},
				unlockicon = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBUnlockIcon_N"],
					desc = Gnosis.L["OptCBUnlockIcon_D"],
					type = "toggle",
					get = function(info) return Gnosis.s.cbconf[key].bIconUnlocked; end,
					set = function(info,val) Gnosis.s.cbconf[key].bIconUnlocked = val; Gnosis:SetBarParams(key); end,
				},
				coord_x_y = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptBarXYcoordName"],
					desc = Gnosis.L["OptBarXYcoordDesc"],
					type = "input",
					get = function(info) return Gnosis:ScreenPercentageToString(Gnosis.s.cbconf[key].anchor.px, Gnosis.s.cbconf[key].anchor.py); end,
					set = function(info,val) Gnosis.s.cbconf[key].anchor.px, Gnosis.s.cbconf[key].anchor.py =  Gnosis:StringToScreenPercentage(val); Gnosis:AnchorBar(key); end,
					width = "full",
				},
				butcenterbar = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBCenterCB"],
					type = "execute",
					func = function() Gnosis:CenterCastbar(key); end,
					width = "full",
				},
				exportcb = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBExportBar"],
					type = "execute",
					func = function() Gnosis:ExportBar(key); end,
					width = "full",
				},
				copycb = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBCopyCB_N"],
					desc = Gnosis.L["OptCBCopyCB_D"],
					type = "execute",
					func = function() Gnosis:OptCreateNewAndCopyCastbar(key); end,
					width = "full",
				},
				removecb = {
					order = self:GetNextTableIndex(),
					name = Gnosis.L["OptCBRemCB"],
					type = "execute",
					func = function() Gnosis:RemoveCastbar(key); end,
					width = "full",
				},
			},
		};
	end

	Gnosis.opt_cbs.args = tCBs;
end

function Gnosis:LoadConfig(name, bMainTab, bCastbars, bChanneledSpells, bClipTest)
	local bStatus = true;

	if(GnosisConfigs and GnosisConfigs[name]) then
		if(bMainTab and GnosisConfigs[name].maintab) then
			local c = GnosisConfigs[name].maintab;
			Gnosis.s.bAddonEn = c.bAddonEn;			-- already enabled
			Gnosis.s.bHideAddonMsgs = c.bHideAddonMsgs;
			Gnosis.s.bAutoCreateOptions = c.bAutoCreateOptions and c.bAutoCreateOptions or Gnosis.tDefaults.bAutoCreateOptions;
			Gnosis.s.iTimerScanEvery = c.iTimerScanEvery and c.iTimerScanEvery or Gnosis.tDefaults.iTimerScanEvery;

			local strLocale = c.strLocale and c.strLocale or nil;
			if(strLocale and Gnosis.s.strLocale ~= strLocale) then
				Gnosis.s.strLocale = strLocale;
				Gnosis:RedoLocalization();
			end

			Gnosis:HideBlizzardCastbarIfStatusChange(c.bHideBlizz);
			Gnosis:HideBlizzardMirrorCastbarIfStatusChange(c.bHideMirror);
			Gnosis:HideBlizzardPetCastbarIfStatusChange(c.bHidePetVeh);
		elseif(bMainTab) then
			bStatus = false;
		end

		if(bCastbars and GnosisConfigs[name].cbconf) then
			Gnosis:RemoveAllCastbars();
			Gnosis.s.cbconf = Gnosis:deepcopy(GnosisConfigs[name].cbconf);
			Gnosis:RecreateAllBars();
			Gnosis:CreateCastbarsOpt();
		elseif(bCastbars) then
			bStatus = false;
		end

		if(bChanneledSpells and GnosisConfigs[name].channeledspells) then
			Gnosis.s.channeledspells = Gnosis:deepcopy(GnosisConfigs[name].channeledspells);
			Gnosis:SetupChanneledSpellsTable();		-- might update spell info
			Gnosis:CreateChannelSpellsOpt();
		elseif(bChanneledSpells) then
			bStatus = false;
		end

		if(bClipTest and GnosisConfigs[name].ct) then
			Gnosis.s.ct = Gnosis:deepcopy(GnosisConfigs[name].ct);
			Gnosis.s.wfcl = GnosisConfigs[name].ct.wfcl;
			Gnosis.s.ctt = GnosisConfigs[name].ct.ctt;
			Gnosis:OptCreateCTpage();
		elseif(bClipTest) then
			bStatus = false;
		end
	else
		bStatus = false;
	end

	return bStatus;
end

function Gnosis:OptCreateConfigurations()
	Gnosis.opt_configs.args = {
		saveconf = {
			order = self:GetNextTableIndex(1),
			name = Gnosis.L["OptConfSave"],
			type = "execute",
			func = function() Gnosis:OptSaveNewConfig(); end,
		},
		confname = {
			order = self:GetNextTableIndex(),
			name = Gnosis.L["OptConfName"],
			type = "input",
			get = function(info) return Gnosis.s.configs.name; end,
			set = function(info,val) Gnosis.s.configs.name = val; end,
		},
		bsmt = {
			order = self:GetNextTableIndex(),
			name = Gnosis.L["OptConfStoreMain"],
			type = "toggle",
			get = function(info) return Gnosis.s.configs.bsavedefaultopt and Gnosis.s.configs.bsavedefaultopt or false; end,
			set = function(info,val) Gnosis.s.configs.bsavedefaultopt = val; end,
		},
		bscb = {
			order = self:GetNextTableIndex(),
			name = Gnosis.L["OptConfStoreCBs"],
			type = "toggle",
			get = function(info) return Gnosis.s.configs.bsavecastbars; end,
			set = function(info,val) Gnosis.s.configs.bsavecastbars = val; end,
		},
		bssp = {
			order = self:GetNextTableIndex(),
			name = Gnosis.L["OptConfStoreChan"],
			type = "toggle",
			get = function(info) return Gnosis.s.configs.bsavespell; end,
			set = function(info,val) Gnosis.s.configs.bsavespell = val; end,
		},
		bsct = {
			order = self:GetNextTableIndex(),
			name = Gnosis.L["OptConfStoreCT"],
			type = "toggle",
			get = function(info) return Gnosis.s.configs.bsavectct and Gnosis.s.configs.bsavectct or false; end,
			set = function(info,val) Gnosis.s.configs.bsavectct = val; end,
		},
	};

	-- created sorted table
	local key, value;
	local tSorted = {};
	for key, value in pairs(GnosisConfigs) do
		table_insert(tSorted, key);
	end
	table_sort(tSorted);

	for keyindex, key in ipairs(tSorted) do
		Gnosis.opt_configs.args[key] = {
			order = self:GetNextTableIndex(),
			name = key,
			type = "group",
			width = "half",
			args = {
			},
		};

		if(GnosisConfigs[key].maintab) then
			Gnosis.opt_configs.args[key].args.maintab = {
				order = self:GetNextTableIndexInner(1),
				name = Gnosis.L["OptConfLoadMain"],
				type = "execute",
				func = function()
					Gnosis:LoadConfig(key, true, false, false, false);
				end,
			};
		end

		if(GnosisConfigs[key].cbconf) then
			Gnosis.opt_configs.args[key].args.cbconf = {
				order = self:GetNextTableIndexInner(),
				name = Gnosis.L["OptConfLoadCBs"],
				type = "execute",
				func = function()
					Gnosis:LoadConfig(key, false, true, false, false);
				end,
			};
		end

		if(GnosisConfigs[key].channeledspells) then
			Gnosis.opt_configs.args[key].args.channeledspells = {
				order = self:GetNextTableIndexInner(),
				name = Gnosis.L["OptConfLoadChan"],
				type = "execute",
				func = function()
					Gnosis:LoadConfig(key, false, false, true, false);
				end,
			};
		end

		if(GnosisConfigs[key].ct) then
			Gnosis.opt_configs.args[key].args.ct = {
				order = self:GetNextTableIndexInner(),
				name = Gnosis.L["OptConfLoadCT"],
				type = "execute",
				func = function()
					Gnosis:LoadConfig(key, false, false, false, true);
				end,
			};
		end

		Gnosis.opt_configs.args[key].args.updconfig = {
			order = self:GetNextTableIndexInner(),
			name = Gnosis.L["OptConfUpdConf"],
			type = "execute",
			func = function()
				StaticPopupDialogs["GNOSIS_UPDCFG"] = {
					text = string_format(Gnosis.L["OptConfUpdConfMBText"], key),
					button1 = Gnosis.L["Yes"],
					button2 = Gnosis.L["No"],
					OnAccept = function()
						local _def, _cb, _cs, _ct = GnosisConfigs[key].maintab and true or nil,
							GnosisConfigs[key].cbconf and true or nil,
							GnosisConfigs[key].channeledspells and true or nil,
							GnosisConfigs[key].ct and true or nil;
						GnosisConfigs[key] = nil;
						Gnosis:OptSaveNewConfig(key, _def, _cb, _cs, _ct);
						Gnosis:OptCreateConfigurations();
						InterfaceOptionsFrame_OpenToCategory(Gnosis.optCfgs);
					end,
					timeout = 0,
					whileDead = true,
					hideOnEscape = true,
					showAlert = true,
				};
				StaticPopup_Show("GNOSIS_UPDCFG");
			end,
		};

		Gnosis.opt_configs.args[key].args.delconfig = {
			order = self:GetNextTableIndexInner(),
			name = Gnosis.L["OptConfDelConf"],
			type = "execute",
			func = function()
				StaticPopupDialogs["GNOSIS_DELCFG"] = {
					text = string_format(Gnosis.L["OptConfDelConfMBText"], key),
					button1 = Gnosis.L["Yes"],
					button2 = Gnosis.L["No"],
					OnAccept = function()
						GnosisConfigs[key] = nil;
						Gnosis:OptCreateConfigurations();
						InterfaceOptionsFrame_OpenToCategory(Gnosis.optCfgs);
					end,
					timeout = 0,
					whileDead = true,
					hideOnEscape = true,
					showAlert = true,
				};
				StaticPopup_Show("GNOSIS_DELCFG");
			end,
		};
	end
end

function Gnosis:OptSaveNewConfig(_name, _def, _cb, _cs, _ct)
	local name, bdef, bcb, bcs, bct = self.s.configs.name, self.s.configs.bsavedefaultopt,
		self.s.configs.bsavecastbars, self.s.configs.bsavespell, self.s.configs.bsavectct;
	if(_name) then
		name, bdef, bcb, bcs, bct = _name, _def, _cb, _cs, _ct;
	end

	if(name ~= "") then
		if(GnosisConfigs[name]) then
			self:Print(self.L["OptSaveconfigExists"]);
		else
			GnosisConfigs[name] = {};

			if(bdef) then
				GnosisConfigs[name].maintab = {};
				GnosisConfigs[name].maintab.bAddonEn = self.s.bAddonEn;
				GnosisConfigs[name].maintab.bHideBlizz = self.s.bHideBlizz;
				GnosisConfigs[name].maintab.bHidePetVeh = self.s.bHidePetVeh;
				GnosisConfigs[name].maintab.bHideMirror = self.s.bHideMirror;
				GnosisConfigs[name].maintab.bHideAddonMsgs = self.s.bHideAddonMsgs;
				GnosisConfigs[name].maintab.bAutoCreateOptions = self.s.bAutoCreateOptions;
				GnosisConfigs[name].maintab.strLocale = self.s.strLocale;
				GnosisConfigs[name].maintab.iTimerScanEvery = self.s.iTimerScanEvery;
			end

			if(bcb) then
				GnosisConfigs[name].cbconf = Gnosis:deepcopy(self.s.cbconf);
			end

			if(bcs) then
				GnosisConfigs[name].channeledspells = Gnosis:deepcopy(self.s.channeledspells);
			end

			if(bct) then
				GnosisConfigs[name].ct = Gnosis:deepcopy(self.s.ct);
				GnosisConfigs[name].ct.wfcl = Gnosis.s.wfcl;
				GnosisConfigs[name].ct.ctt = Gnosis.s.ctt;
			end

			self:OptCreateConfigurations();
		end
	else
		self:Print(self.L["OptSaveconfigInvalidName"]);
	end
end

-- import/export castbar functions
local script_string;
function Gnosis:AddSingleEntry(entry)
	local str;
	if(type(entry) == "string") then
		str = string_gsub(entry, "\"", "\\\"");
		str = "\"" .. str .. "\"";
	elseif(type(entry) == "number") then
		str = entry;
	elseif(type(entry) == "boolean") then
		str = entry and "true" or "false";
	else
		str = "nil";
	end

	return str;
end

function Gnosis:RecursiveAddScript(value)
	if(type(value) == "table") then
		script_string = script_string .."{";
		for k, v in pairs(value) do
			script_string = script_string .. "[" .. self:AddSingleEntry(k) .. "]=";
			self:RecursiveAddScript(v);
			script_string = script_string ..",";
		end
		script_string = script_string .."}";
	else
		script_string = script_string .. self:AddSingleEntry(value) .. "";
	end
end

function Gnosis:CreateBarValueScript(key, tab)
	if(key) then
		script_string = key .. "=";
		self:RecursiveAddScript(tab);
		script_string = script_string .. ";";

		return script_string;
	end

	return nil;
end

function Gnosis:ExportAllBars()
	if(self.s and self.s.cbconf) then
		local output = "";
		
		-- created sorted table
		local tSorted = {};
		for key, value in pairs(self.castbars) do
			table_insert(tSorted, key);
		end
		table_sort(tSorted);
	
		for i, cbname in ipairs(tSorted) do
			if(self.s.cbconf[cbname]) then
				local key_name = string_gsub(cbname, "\"", "\\\"");
				local str = Gnosis:CreateBarValueScript("Gnosis.s.cbconf[\"" .. key_name .. "\"]", Gnosis.s.cbconf[cbname]);

				if(str) then
					local dispstr = "Gnosis:ImportBarInit(\"" .. key_name .. "\"); " .. str .. " Gnosis:ImportBarFinalize(\"" .. key_name .. "\");"
					
					output = output .. "--[[ Exported bar: " .. cbname .. " ]]\n" .. dispstr .. "\n\n";				
				end
			end
		end
		
		StaticPopupDialogs["GNOSIS_EXPORTCB"] = {
			text = string_format(Gnosis.L["CpyScriptFromEditBox"], "*");
			button1 = "Close",
			OnAccept = function() end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
			OnShow = function(this)
				this.editBox:SetText(output);
			end,
			hasEditBox = true
		};
		StaticPopup_Show("GNOSIS_EXPORTCB");
	end
end

function Gnosis:ExportBar(key)
	if(key) then
		local key_name = string_gsub(key, "\"", "\\\"");
		local str = Gnosis:CreateBarValueScript("Gnosis.s.cbconf[\"" .. key_name .. "\"]", Gnosis.s.cbconf[key]);

		if(str) then
			local dispstr = "Gnosis:ImportBarInit(\"" .. key_name .. "\"); " .. str .. " Gnosis:ImportBarFinalize(\"" .. key_name .. "\");"
			StaticPopupDialogs["GNOSIS_EXPORTCB"] = {
				text = string_format(Gnosis.L["CpyScriptFromEditBox"], key);
				button1 = "Close",
				OnAccept = function() end,
				timeout = 0,
				whileDead = true,
				hideOnEscape = true,
				OnShow = function(this)
					this.editBox:SetText(dispstr);
				end,
				hasEditBox = true
			};
			StaticPopup_Show("GNOSIS_EXPORTCB");
		end
	end
end

function Gnosis:ImportBarInit(key)
	self:OptCreateNewCastbar(key);
end

function Gnosis:ImportBarFinalize(key)
	self:SetBarParams(key);
	self:CreateCastbarsOpt();
	self:CreateCBTables();
end

function Gnosis:ImportBars()
	StaticPopupDialogs["GNOSIS_IMPORTCB"] = {
		text = string_format(Gnosis.L["PasteScript"], key);
		button1 = Gnosis.L["Import"],
		button2 = Gnosis.L["NoImport"],
		OnAccept = function(this)
			local str = this.editBox:GetText();
			if(str and string_len(str) > 0) then
				RunScript(str);
				ReloadUI();
			end
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		hasEditBox = true
	};
	StaticPopup_Show("GNOSIS_IMPORTCB");
end
