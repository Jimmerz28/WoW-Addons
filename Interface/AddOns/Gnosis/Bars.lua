-- local functions
local UnitCastingInfo = UnitCastingInfo;
local UnitChannelInfo = UnitChannelInfo;
local UnitAttackSpeed = UnitAttackSpeed;
local UnitRangedDamage = UnitRangedDamage;
local UnitName = UnitName;
local UnitClass = UnitClass;
local UnitIsEnemy = UnitIsEnemy;
local UnitIsPlayer = UnitIsPlayer;
local GetSpellInfo = GetSpellInfo;
local IsInRaid = IsInRaid;
local GetNumSubgroupMembers = GetNumSubgroupMembers;
local tonumber = tonumber;
local pairs = pairs;
local ipairs = ipairs;
local type = type;
local min = min;
local max = max;
local floor = floor;
local abs = abs;
local unpack = unpack;
local wipe = wipe;
local string_format = string.format;
local string_sub = string.sub;
local string_gsub = string.gsub;
local string_len = strlenutf8;
local string_match = string.match;
local string_gmatch = string.gmatch;
local string_gsub = string.gsub;
local string_find = string.find;
local table_insert = table.insert;
local table_remove = table.remove;
local table_concat = table.concat;
local select = select;

-- local variables
local _;

function Gnosis:UpgradeTable(dst, src)
	for key, value in pairs(src) do
		if(dst[key] == nil) then
			dst[key] = value;
		elseif(type(value) == "table") then
			self:UpgradeTable(dst[key], value);
		end
	end
end

function Gnosis:CheckStoredCastbarOptions()
	local iUpgrade150 = 0;
	local iUpgrade195 = 0;
	local iUpgrade210 = 0;
	local iUpgrade254 = 0;
	local strUpgrade150 = "upgrading bars to v1.50 options:\n  ";
	local strUpgrade195 = "upgrading bars to v1.95 options:\n  ";
	local strUpgrade210 = "upgrading bars to v2.10 options:\n  ";
	local strUpgrade254 = "upgrading bars to v2.54 options:\n  ";

	for cbname, cbopt in pairs(self.s.cbconf) do
		-- upgrade castbar if needed (v1.50)
		if(not cbopt.cboptver and cbopt.width and cbopt.height and cbopt.anchor) then
			iUpgrade150 = iUpgrade150 + 1;
			strUpgrade150 = strUpgrade150 .. cbname .. "  ";

			cbopt.cboptver = 1.50;
			cbopt.width = cbopt.width - cbopt.height;
			if(cbopt.anchor and cbopt.anchor.s) then
				cbopt.anchor.x = cbopt.anchor.x + cbopt.height / 2 * cbopt.anchor.s;
			end
		end

		-- upgrade to v1.95 (new coordinates)
		if(cbopt.cboptver < 1.95) then
			iUpgrade195 = iUpgrade195 + 1;
			strUpgrade195 = strUpgrade195 .. cbname .. "  ";

			cbopt.cboptver = 1.95;
			local xm, ym = GetScreenWidth(), GetScreenHeight();

			if(cbopt.anchor and cbopt.anchor.s) then
				local x, y, s = cbopt.anchor.x, cbopt.anchor.y, cbopt.anchor.s;
				cbopt.anchor = {
					["px"] = x * cbopt.scale / (s*xm),
					["py"] = y * cbopt.scale / (s*ym),
				};
			else
				cbopt.anchor = nil;
			end
		end

		--upgrade to v2.10 (upgrade for text rotations)
		if(cbopt.cboptver < 2.10) then
			iUpgrade210 = iUpgrade210 + 1;
			strUpgrade210 = strUpgrade210 .. cbname .. "  ";

			cbopt.cboptver = 2.10;
			cbopt.fontsize = cbopt.fontsize and (cbopt.fontsize > 26 and 26 or cbopt.fontsize) or nil;
			cbopt.fontsize_timer = cbopt.fontsize_timer and floor(cbopt.fontsize_timer*0.65) or nil;
			cbopt.fontsize_lat = cbopt.fontsize_lat and floor(cbopt.fontsize_lat*0.65) or nil;

			if(cbopt.coord and cbopt.coord["latency"] and cbopt.coord["latency"].x) then
				cbopt.coord["latency"].x = -cbopt.coord["latency"].x;
			end
		end

		-- upgrade to v2.54 (upgrade forces usage of name and time format strings)
		if(cbopt.cboptver < 2.54) then
			iUpgrade254 = iUpgrade254 + 1;
			strUpgrade254 = strUpgrade254 .. cbname .. "  ";

			if(not cbopt.bUseNameFormat) then
				if(cbopt.bShowCastname and cbopt.bShowCastrank) then
					cbopt.strNameFormat = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>";
				elseif(cbopt.bShowCastname) then
					cbopt.strNameFormat = "name";
				elseif(cbopt.bShowCastrank) then
					cbopt.strNameFormat = "misc";
				else
					cbopt.strNameFormat = "";
				end
			end

			cbopt.bUseNameFormat = nil;
			cbopt.bShowCastname = nil;
			cbopt.bShowCastrank = nil;

			if(not cbopt.bUseTimeFormat) then
				local m = cbopt.bShowAsMinutes and "m" or "";
				cbopt.strTimeFormat = cbopt.bHidePushbackTime and "" or "col<1,0,0>p<2s>col<pre> ";
				if(cbopt.bHideCasttime and cbopt.bHideCasttimeTotal) then
					cbopt.strTimeFormat = cbopt.strTimeFormat;
				elseif(cbopt.bHideCasttimeTotal) then
					cbopt.strTimeFormat = cbopt.strTimeFormat .. "r<1" .. m .. ">";
				elseif(cbopt.bHideCasttime) then
					cbopt.strTimeFormat = cbopt.strTimeFormat .. "t<2" .. m .. ">";
				else
					cbopt.strTimeFormat = cbopt.strTimeFormat .. "r<1" .. m .. "> / t<2" .. m .. ">";
				end
			end

			cbopt.bUseTimeFormat = nil;
			cbopt.bHidePushbackTime = nil;
			cbopt.bHideCasttime = nil;
			cbopt.bHideCasttimeTotal = nil;
			cbopt.bShowAsMinutes = nil;

			cbopt.cboptver = 2.54;
		end

		-- add colBarNI if missing
		cbopt.colBarNI = cbopt.colBarNI or cbopt.colBar;

		-- add missing option values
		self:UpgradeTable(cbopt, self.tCastbarDefaults);

		if(cbopt.unit == "gcd_reverse") then
			-- remove gcd_reverse unit (-> to gcd with inversed bar direction)
			cbopt.unit = "gcd";
			cbopt.bInvDir = not cbopt.bInvDir;
		end

		-- new unit names for swing timers
		if(cbopt.unit == "mel") then
			cbopt.unit = "sm";
		elseif(cbopt.unit == "rng") then
			cbopt.unit = "sr";
		elseif(cbopt.unit == "melrng") then
			cbopt.unit = "smr";
	end
		end

	if(iUpgrade150 > 0) then
		strUpgrade150 = strUpgrade150 .. "\n  ..." .. iUpgrade150 .. " bars upgraded\n  ...please check those bars' options";
		self:Print(strUpgrade150);
	end

	if(iUpgrade195 > 0) then
		strUpgrade195 = strUpgrade195 .. "\n  ..." .. iUpgrade195 .. " bars upgraded\n  ...please check those bars' options";
		self:Print(strUpgrade195);
	end

	if(iUpgrade210 > 0) then
		strUpgrade210 = strUpgrade210 .. "\n  ..." .. iUpgrade210 .. " bars upgraded\n  ...please check those bars' options";
		self:Print(strUpgrade210);
	end

	if(iUpgrade254 > 0) then
		strUpgrade254 = strUpgrade254 .. "\n  ..." .. iUpgrade254 .. " bars upgraded\n  ...please check those bars' options";
		self:Print(strUpgrade254);
	end

	self:CreateCBTables();
end

function Gnosis:CreateCBTables()
	-- table for units to scan (no events)
	self:SetupScanUnits();

	-- create fast lookup table
	self:CreateFastLookupCastbars();

	-- create single timer table
	self:CreateSingleTimerTable();
end

function Gnosis:ClearCBTables()
	self.bScan = false;
	wipe(self.scan);
	wipe(self.cb_fl);
	wipe(self.ti_fl);
end

function Gnosis:SetupScanUnits()
	self.bScan = false;
	wipe(self.scan);

	for cbname, cbopt in pairs(self.s.cbconf) do
		if(cbopt.bEn and (cbopt.spec == 0 or cbopt.spec == self.iCurSpec) and cbopt.bartype == "cb") then
			local u = string_match(cbopt.unit, "(.+)target") or string_match(cbopt.unit, "(mouseover)");

			if(u) then
				self.scan[cbopt.unit] = {};
				self.bScan = true;
			end
		end
	end
end

function Gnosis:ScanUnit(unit, nfo)
	local name, rank, displayName, texture, startTime, endTime, isTradeSkill, id, notInterruptible;

	name, rank, displayName, texture, startTime, endTime, isTradeSkill, id, notInterruptible = UnitCastingInfo(unit);
	if(name) then
		-- casting
		if(nfo.name and nfo.name == name and nfo.startTime == startTime) then
			-- not interruptible?
			if(nfo.notInt ~= notInterruptible) then
				nfo.notInt = notInterruptible;
				if(notInterruptible) then
					self:UNIT_SPELLCAST_NOT_INTERRUPTIBLE("UNIT_SPELLCAST_NOT_INTERRUPTIBLE", unit);
				else
					self:UNIT_SPELLCAST_INTERRUPTIBLE("UNIT_SPELLCAST_INTERRUPTIBLE", unit);
				end
			end
		elseif(nfo.name and nfo.name == name and nfo.startTime < startTime and startTime < nfo.endTime) then
			nfo.startTime = startTime;
			nfo.endTime = endTime;
			self:UNIT_SPELLCAST_DELAYED("UNIT_SPELLCAST_DELAYED", unit);
		else
			if(nfo.isChannel) then
				self:UNIT_SPELLCAST_CHANNEL_STOP("UNIT_SPELLCAST_CHANNEL_STOP", unit, name);
			else
				self:UNIT_SPELLCAST_STOP("UNIT_SPELLCAST_STOP", unit, name);
			end

			nfo.name = name;
			nfo.isChannel = false;
			nfo.startTime = startTime;
			nfo.endTime = endTime;
			nfo.notInt = notInterruptible;

			self:UNIT_SPELLCAST_START("UNIT_SPELLCAST_START", unit, name, rank);
		end

		return;
	end

	name, rank, displayName, texture, startTime, endTime, isTradeSkill, notInterruptible = UnitChannelInfo(unit);
	if(name) then
		-- channeling
		if(nfo.name and nfo.name == name and nfo.endTime == endTime) then
			-- not interruptible?
			if(nfo.notInt ~= notInterruptible) then
				nfo.notInt = notInterruptible;
				if(notInterruptible) then
					self:UNIT_SPELLCAST_NOT_INTERRUPTIBLE("UNIT_SPELLCAST_NOT_INTERRUPTIBLE", unit);
				else
					self:UNIT_SPELLCAST_INTERRUPTIBLE("UNIT_SPELLCAST_INTERRUPTIBLE", unit);
				end
			end
		elseif(nfo.name and nfo.name == name and startTime < nfo.startTime and endTime < nfo.endTime) then
			nfo.startTime = startTime;
			nfo.endTime = endTime;
			self:UNIT_SPELLCAST_CHANNEL_UPDATE("UNIT_SPELLCAST_CHANNEL_UPDATE", unit);
		else
			if(nfo.isChannel) then
				self:UNIT_SPELLCAST_CHANNEL_STOP("UNIT_SPELLCAST_CHANNEL_STOP", unit, name);
			else
				self:UNIT_SPELLCAST_STOP("UNIT_SPELLCAST_STOP", unit, name);
			end

			nfo.name = name;
			nfo.isChannel = true;
			nfo.startTime = startTime;
			nfo.endTime = endTime;
			nfo.notInt = notInterruptible;

			self:UNIT_SPELLCAST_CHANNEL_START("UNIT_SPELLCAST_CHANNEL_START", unit, name);
		end

		return;
	end

	if(nfo.name) then
		-- stop, no interrupt or failed detection
		if(nfo.isChannel) then
			self:UNIT_SPELLCAST_CHANNEL_STOP("UNIT_SPELLCAST_CHANNEL_STOP", unit, name);
		else
			self:UNIT_SPELLCAST_STOP("UNIT_SPELLCAST_STOP", unit, name);
		end

		nfo.name = nil;
	end
end

function Gnosis:InitialCreateCastbars()
	for key, value in pairs(self.s.cbconf) do
		self.castbars[key] = self:CreateBarFrame(key, nil, 0, 1.0);
		self:SetBarParams(key);
	end
	self:CreateCBTables();
end

function Gnosis:CreateFastLookupCastbars()
	wipe(self.cb_fl);

	for key, value in pairs(self.castbars) do
		local conf = Gnosis.s.cbconf[key];

		if(conf.bEn and (conf.spec == 0 or conf.spec == self.iCurSpec) and conf.bartype == "cb") then
			if(not self.cb_fl[conf.unit]) then
				self.cb_fl[conf.unit] = {};
			end

			table_insert(self.cb_fl[conf.unit], value);
		end
	end
end

local iFindCB;
local tFindCB;
function Gnosis:FindCB(unit)
	tFindCB = self.cb_fl[unit];

	iFindCB = 1;
	if(tFindCB) then
		return tFindCB[iFindCB];
	end

	return nil;
end

function Gnosis:FindCBNext(unit)
	iFindCB = iFindCB + 1;
	return tFindCB[iFindCB];
end

function Gnosis:FindGCDBars(spell, rank, fCurTime)
	local cb = self:FindCB("gcd");
	while(cb) do
		self:SetupGCDbar(cb, spell, rank, fCurTime, false);
		cb = self:FindCBNext("gcd");
	end
end

function Gnosis:FindSwingTimers(unit, spell, icon, fCurTime, bType)
	local cb = self:FindCB(unit);
	while(cb) do
		self:SetupSwingBar(cb, spell, icon, fCurTime, bType);
		cb = self:FindCBNext(unit);
	end
end

function Gnosis:FindSwingTimersParry(unit, fCurTime)
	local cb = self:FindCB(unit);
	while(cb) do
		self:SetupSwingBarForParry(cb, fCurTime)
		cb = self:FindCBNext(unit);
	end
end

function Gnosis:UnitRelationSelect(relation, unit)
	if(relation == 3 and UnitIsEnemy("player", unit)) then
		return false;
	elseif(relation == 2 and not UnitIsEnemy("player", unit)) then
		return false;
	end

	return true;
end

function Gnosis:FontString(bar, height)
	local fs = bar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmallOutline");
	fs:SetFont(GameFontNormal:GetFont(), height);
	return fs;
end

function Gnosis:SetBorderColor(bar, colBorder, colBarBg, bHideIconBorder)
	bar.btop:SetTexture(unpack(colBorder));
	bar.bbottom:SetTexture(unpack(colBorder));
	bar.bleft:SetTexture(unpack(colBorder));
	bar.bright:SetTexture(unpack(colBorder));
	bar.bbg:SetTexture(unpack(colBarBg));
	bar.bdframe:SetBackdropBorderColor(unpack(colBorder));
	if(bHideIconBorder) then
		bar.bicon:SetTexture(0, 0, 0, 0);
	else
		bar.bicon:SetTexture(unpack(colBorder));
	end
end

function Gnosis:SetBarBorder(bar, bsize)
	bar.btop:ClearAllPoints();
	bar.btop:SetPoint("TOPLEFT", bar, "TOPLEFT", -bsize, bsize);
	bar.btop:SetPoint("BOTTOMRIGHT", bar, "TOPRIGHT", bsize, 0);
	bar.bbottom:ClearAllPoints();
	bar.bbottom:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", -bsize, 0);
	bar.bbottom:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", bsize, -bsize);
	bar.bleft:ClearAllPoints();
	bar.bleft:SetPoint("TOPLEFT", bar, "TOPLEFT", -bsize, 0);
	bar.bleft:SetPoint("BOTTOMRIGHT", bar, "BOTTOMLEFT", 0, 0);
	bar.bright:ClearAllPoints();
	bar.bright:SetPoint("TOPLEFT", bar, "TOPRIGHT", 0, 0);
	bar.bright:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", bsize, 0);
end

function Gnosis:SetBarParams(name, cfgtab, bartab)
	local bar = bartab and self[bartab][name] or self.castbars[name];
	local tParams = cfgtab and self.s[cfgtab][name] or self.s.cbconf[name];
	bar.conf = tParams;

	-- clean up bar if multi-spell timer
	if(tParams.bartype == "ti") then
		self:CleanupCastbar(bar);
	end

	-- setup bar parameters
	bar:SetWidth(tParams.width);
	bar:SetHeight(tParams.height);

	-- status bar
	bar.barwidth = tParams.width;
	bar.barheight = tParams.height;
	bar.bar:SetHeight(tParams.height);
	bar.bar:SetWidth(tParams.width);

	-- bar texture
	bar.bar:SetStatusBarTexture(self.lsm:Fetch("statusbar", tParams.bartexture), "BORDER");
	bar.bar:SetStatusBarColor(unpack(tParams.colBar));

	-- statusbar orienation
	if(tParams.orient == 2) then
		bar.bar:SetOrientation("VERTICAL", tParams.bInvDir);
	else
		bar.bar:SetOrientation("HORIZONTAL", tParams.bInvDir);
	end

	bar.bar:ClearAllPoints();
	bar.bar:SetAllPoints(bar);

	-- bar border
	local bsize, bnsize = tParams.border, -tParams.border;
	local bisize, binsize = tParams.bIconUnlocked and tParams.bordericon or bsize, tParams.bIconUnlocked and -tParams.bordericon or bnsize;
	self:SetBarBorder(bar, bsize);

	-- bar background
	bar.bbg:ClearAllPoints();
	bar.bbg:SetAllPoints(bar);

	-- icon
	bar.icon:ClearAllPoints();
	bar.bicon:ClearAllPoints();
	bar.bicon:ClearAllPoints();
	bar.icon:SetTexture(tParams.bUnlocked and self.toyIcon or nil);
	if(tParams.iconside ~= "NONE") then
		local iconside_ =
			(tParams.iconside == "LEFT" and "RIGHT") or
			(tParams.iconside == "RIGHT" and "LEFT") or
			(tParams.iconside == "TOP" and "BOTTOM") or
			(tParams.iconside == "BOTTOM" and "TOP");

		local bileft, biright, bitop, bibottom =
				tParams.iconside == "RIGHT" and 0.0 or 1.0,
				tParams.iconside == "LEFT" and 0.0 or 1.0,
				tParams.iconside == "BOTTOM" and 0.0 or 1.0,
				tParams.iconside == "TOP" and 0.0 or 1.0;

		if(not tParams.bIconUnlocked) then
			-- locked to barframe
			local iconsize_ = abs(bileft - biright) * tParams.height + abs(bitop - bibottom) * tParams.width;

			bar.icon:SetPoint(iconside_, bar, tParams.iconside, (biright - bileft) * bisize, (bitop - bibottom) * bisize);
			bar.icon:SetWidth(iconsize_);
			bar.icon:SetHeight(iconsize_);
			bar.sicon:SetWidth(1.85 * iconsize_);
			bar.sicon:SetHeight(3.275 * iconsize_);
			bar.bicon:SetPoint("TOPLEFT", bar.icon, "TOPLEFT", -bileft * bisize, bitop * bisize);
			bar.bicon:SetPoint("BOTTOMRIGHT", bar.icon, "BOTTOMRIGHT", biright * bisize, -bibottom * bisize);
		else
			-- unlocked
			local x_, y_ =
				tParams.bIconUnlocked and tParams.coord.casticon.x or 0,
				tParams.bIconUnlocked and tParams.coord.casticon.y or 0;
			local scale_ = tParams.scaleicon;
			local iconsize_ = min(tParams.height, tParams.width) * scale_;

			bar.icon:SetPoint(iconside_, bar, tParams.iconside, ((biright - bileft) * bisize + x_) * scale_, ((bitop - bibottom) * bisize + y_) * scale_);
			bar.icon:SetWidth(iconsize_);
			bar.icon:SetHeight(iconsize_);
			bar.sicon:SetWidth(1.85 * iconsize_);
			bar.sicon:SetHeight(3.275 * iconsize_);
			bar.bicon:SetPoint("TOPLEFT", bar.icon, "TOPLEFT", -bisize * scale_, bisize * scale_);
			bar.bicon:SetPoint("BOTTOMRIGHT", bar.icon, "BOTTOMRIGHT", bisize * scale_, -bisize * scale_);
		end

		bar.icon:Show();
		bar.bicon:Show();
	else
		bar.icon:Hide();
		bar.bicon:Hide();
	end

	-- icon rotate
	self:Rotate(bar.iag, bar.ian, tParams.bIconUnlocked and tParams.rotateicon or 0);
	self:Rotate(bar.biag, bar.bian, tParams.bIconUnlocked and tParams.rotateicon or 0);
	self:Rotate(bar.siag, bar.sian, tParams.bIconUnlocked and tParams.rotateicon or 0);

	-- text rotate
	self:Rotate(bar.ctag, bar.ctan, tParams.rotatectext);
	self:Rotate(bar.rtag, bar.rtan, tParams.rotatertext);
	self:Rotate(bar.bltag, bar.bltan, tParams.rotatelattext);
	self:Rotate(bar.brtag, bar.brtan, tParams.rotatelattext);

	local curFont = GameFontNormal:GetFont();
	if(tParams.font) then
		curFont = self.lsm:Fetch("font", tParams.font);
	end
	local fo = nil;
	if(tParams.fontoutline and self.fontoutlines[tParams.fontoutline] and self.fontoutlines[tParams.fontoutline] ~= "NONE") then
		fo = self.fontoutlines[tParams.fontoutline];
	end
	local fssizeparam = tParams.orient == 2 and tParams.width or tParams.height;
	local fs = fssizeparam <= 40 and fssizeparam or 40;
	if(tParams.fontsize and tParams.fontsize > 0) then
		bar.ctext:SetFont(curFont, tParams.fontsize, fo);
		bar.defFS = tParams.fontsize;
	else
		bar.ctext:SetFont(curFont, max(fs*0.65,1), fo);
		bar.defFS = fs * 0.65;
	end

	bar.defFont = curFont;
	bar.defFO = fo;

	fs = fssizeparam <= 40 and fssizeparam or 40;
	-- timer
	if(tParams.fontsize_timer and tParams.fontsize_timer > 0) then
		bar.rtext:SetFont(curFont, tParams.fontsize_timer, fo);
	else
		bar.rtext:SetFont(curFont, max(fs*0.55,1), fo);
	end
	-- latency
	if(tParams.fontsize_lat and tParams.fontsize_lat > 0) then
		bar.brtext:SetFont(curFont, tParams.fontsize_lat, fo);
		bar.bltext:SetFont(curFont, tParams.fontsize_lat, fo);
	else
		bar.brtext:SetFont(curFont, max(fs/2*0.85,1), fo);
		bar.bltext:SetFont(curFont, max(fs/2*0.85,1), fo);
	end

	for i = 1, 15 do
		if(tParams.orient == 2) then
			bar.lb[i]:SetWidth(tParams.width);
		else
			bar.lb[i]:SetHeight(tParams.height);
		end
		bar.lb[i]:SetTexture(unpack(tParams.colLagBar));
	end

	-- castbar spark
	if(tParams.orient == 2) then
		bar.cbs:SetWidth(tParams.fSparkHeightMulti * tParams.width * 0.3);	-- 0.3
		bar.cbs:SetHeight(tParams.fSparkWidthMulti * tParams.width *  1.6);	-- 1.6
		self:Rotate(bar.cbsag, bar.cbsan, 90);
	else
		bar.cbs:SetWidth(tParams.fSparkWidthMulti * tParams.height * 0.4);
		bar.cbs:SetHeight(tParams.fSparkHeightMulti * tParams.height * 1.5);
		self:Rotate(bar.cbsag, bar.cbsan, 0);
	end

	bar.cbs:SetVertexColor(unpack(tParams.colSpark));
	bar:SetScale(tParams.scale);

	if(not tParams.bShowCBS) then
		bar.cbs:Hide();
	end

	-- border texture
	bar.bdframe:Hide();
	bar.backdrop.edgeFile = self.lsm:Fetch("border", tParams.bordertexture);
	if(bar.backdrop.edgeFile) then
		bar.bdframe:ClearAllPoints();
		bar.bdframe:SetPoint("TOPLEFT", bar, -4, 4);
		bar.bdframe:SetPoint("BOTTOMRIGHT", bar, 4, -4);
		bar.bdframe:SetBackdrop(bar.backdrop);
		bar.bdframe:Show();
		bar.bdframe:SetFrameLevel(10);
	end

	-- set border color
	self:SetBorderColor(bar, tParams.colBorder, tParams.colBarBg, not tParams.bUnlocked and tParams.bShowWNC);

	-- text colors
	bar.ctext:SetTextColor(unpack(tParams.colText));
	bar.rtext:SetTextColor(unpack(tParams.colTextTime and tParams.colTextTime or tParams.colText));
	bar.brtext:SetTextColor(unpack(tParams.colTextLag and tParams.colTextLag or tParams.colText));
	bar.bltext:SetTextColor(unpack(tParams.colTextLag and tParams.colTextLag or tParams.colText));

	-- text shadow
	if(tParams.bEnShadowOffset) then
		bar.ctext:SetShadowOffset(tParams.coord.shadow.x, tParams.coord.shadow.y);
		bar.rtext:SetShadowOffset(tParams.coord.shadow.x, tParams.coord.shadow.y);
		bar.brtext:SetShadowOffset(tParams.coord.shadow.x, tParams.coord.shadow.y);
		bar.bltext:SetShadowOffset(tParams.coord.shadow.x, tParams.coord.shadow.y);
	end

	if(tParams.bEnShadowCol) then
		bar.ctext:SetShadowColor(unpack(tParams.colShadow));
		bar.rtext:SetShadowColor(unpack(tParams.colShadow));
		bar.brtext:SetShadowColor(unpack(tParams.colShadow));
		bar.bltext:SetShadowColor(unpack(tParams.colShadow));
	end

	-- anchor bar
	self:AnchorBar(name);

	-- bar alpha
	bar:SetAlpha(tParams.alpha);

	-- setup by bar type
	bar.ctext:ClearAllPoints();
	bar.rtext:ClearAllPoints();

	-- alignments
	tParams.forcefreealign = (tParams.rotatectext ~= 0 or tParams.rotatertext ~= 0);
	if(tParams.alignment == "FREE" or tParams.forcefree) then
		bar.rtext:SetPoint(tParams.aligntime, bar, tParams.coord["casttime"].x, tParams.coord["casttime"].y);
		bar.ctext:SetPoint(tParams.alignname, bar, tParams.coord["castname"].x, tParams.coord["castname"].y);
	elseif(tParams.alignment == "TIMENAME") then
		bar.rtext:SetPoint("LEFT", bar, "LEFT", tParams.coord["casttime"].x, tParams.coord["casttime"].y);
		bar.ctext:SetPoint("RIGHT", bar, "RIGHT", tParams.coord["castname"].x, tParams.coord["castname"].y);
		if(tParams.alignname == "LEFT" or tParams.alignname == "CENTER") then
			bar.ctext:SetPoint("LEFT", bar.rtext, "RIGHT", 0, 0);
		else
			bar.rtext:SetPoint("RIGHT", bar.ctext, "LEFT", 0, 0);
		end
	else
		bar.rtext:SetPoint("RIGHT", bar, "RIGHT", tParams.coord["casttime"].x, tParams.coord["casttime"].y);
		bar.ctext:SetPoint("LEFT", bar, "LEFT", tParams.coord["castname"].x, tParams.coord["castname"].y);
		if(tParams.alignname == "RIGHT" or tParams.alignname == "CENTER") then
			bar.ctext:SetPoint("RIGHT", bar.rtext, "LEFT", 0, 0);
		else
			bar.rtext:SetPoint("LEFT", bar.ctext, "RIGHT", 0, 0);
		end
	end

	bar.ctext:SetJustifyH(tParams.alignname);
	bar.rtext:SetJustifyH(tParams.aligntime);

	-- default center text
	bar.ctext:SetText(tParams.bUnlocked and bar.name or "");

	-- latency text blocks
	bar.brtext:SetPoint("BOTTOMRIGHT", bar, tParams.coord["latency"].x, tParams.coord["latency"].y);
	bar.bltext:SetPoint("BOTTOMLEFT", bar, -tParams.coord["latency"].x, tParams.coord["latency"].y);

	if(tParams.strata) then
		bar:SetFrameStrata(tParams.strata);
	end

	if(not tParams.bEn or (self.iCurSpec and tParams.spec > 0 and tParams.spec ~= self.iCurSpec)) then
		self:CleanupCastbar(bar);
		bar:Hide();		-- bar disabled
	else
		if(tParams.bUnlocked) then
			self:MakeBarMovable(name, true);
			bar:Show();
		elseif(tParams.bShowWNC) then
			self:MakeBarMovable(name, false);
			bar:Show();
		elseif(not bar.bIsActive) then
			self:MakeBarMovable(name, false);
			bar:Hide();
		end
	end

	-- default format strings
	bar.nfs = tParams.strNameFormat;
	bar.tfs = tParams.strTimeFormat;
	self:GenerateTimeTable(bar, true);

	-- castbar? if not set bnIsCB to true
	if(tParams.unit == "gcd" or tParams.unit == "sm" or tParams.unit == "sr"
		or tParams.unit == "smr") then
		bar.bnIsCB = true;
	else
		bar.bnIsCB = nil;
	end
end

function Gnosis:RAG(tex)
	local ag = tex:CreateAnimationGroup();
	local an = ag:CreateAnimation("Rotation");

	return ag, an;
end

function Gnosis:RotateOnUpdate()
	self:Pause();
end

function Gnosis:Rotate(ag, an, degrees, pt)
	an:Stop();

	if(degrees ~= 0) then
		ag:Play();
		an:SetOrigin(pt and pt or "CENTER", 0, 0);
		an:SetDegrees(degrees);
		an:SetDuration(0);
		an:SetEndDelay(100);
		an:SetScript("OnUpdate", Gnosis.RotateOnUpdate);
		an:Play();
	else
		ag:Stop();
		an:Stop();
	end
end

function Gnosis:CreateBarFrame(name, iconpath, minval, maxval)
	local f;
	if(self.unusedcastbars and #self.unusedcastbars > 0) then
		-- reuse existing frame
		f = self.unusedcastbars[#self.unusedcastbars];
		table_remove(self.unusedcastbars, #self.unusedcastbars);
	else
		-- create new frame
		f = CreateFrame("Frame", name, UIParent);
		-- border textures
		f.btop, f.bbottom, f.bleft, f.bright, f.bbg = f:CreateTexture(nil, "BACKGROUND"), f:CreateTexture(nil, "BACKGROUND"),
			f:CreateTexture(nil, "BACKGROUND"), f:CreateTexture(nil, "BACKGROUND"), f:CreateTexture(nil, "BACKGROUND");
		-- status bar
		f.bar = self:CreateStatusBar(f);
		-- icon border
		f.bicon = f.bar:CreateTexture(nil, "ARTWORK");
		-- icon
		f.icon = f.bar:CreateTexture(nil, "OVERLAY");
		-- shield icon
		f.sicon = f.bar:CreateTexture(nil, "OVERLAY");
		-- font strings
		f.ctext = self:FontString(f.bar, 20);
		f.rtext = self:FontString(f.bar, 20);
		f.brtext = self:FontString(f.bar, 10);
		f.bltext = self:FontString(f.bar, 10);
		-- latency bar
		f.lb = {};
		for i = 1, 15 do		-- might be a bit extreme (hellfire ticks 15x)
			f.lb[i] = f.bar:CreateTexture(nil, "ARTWORK");
		end
		-- castbar spark
		f.cbs = f.bar:CreateTexture(nil, "OVERLAY");
		f.cbs:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark");
		f.cbs:SetBlendMode("ADD");
		-- animations for rotations
		f.iag, f.ian = self:RAG(f.icon);
		f.biag, f.bian = self:RAG(f.bicon);
		f.siag, f.sian = self:RAG(f.sicon);
		f.cbsag, f.cbsan = self:RAG(f.cbs);

		-- text rotations
		f.ctag, f.ctan = self:RAG(f.ctext);
		f.rtag, f.rtan = self:RAG(f.rtext);
		f.brtag, f.brtan = self:RAG(f.brtext);
		f.bltag, f.bltan = self:RAG(f.bltext);

		-- tables
		f.ticks = {};

		-- border texture
		f.bdframe = CreateFrame("Frame", nil, f);
		f.backdrop = { bgFile = "", edgeFile = nil,
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 6, right = -6, top = -6, bottom = 6 }
		};
	end

	-- setup frame
	-- bar frame
	f:SetFrameStrata("MEDIUM");	-- default, correct value will be set when calling Gnosis:SetBarParams()
	f.name = name;
	f:Hide();

	-- status bar
	f.bar:SetMinMaxValues(minval, maxval);
	f.bar:SetValue(0.0);

	-- icon
	f.icon:SetTexCoord(0.09, 0.91, 0.09, 0.91);
	f.icon:SetTexture(iconpath);
	f.icon:Show();

	-- shield icon
	f.sicon:SetTexture("Interface\\CastingBar\\UI-CastingBar-Small-Shield");
	f.sicon:SetTexCoord(0.00, 0.145, 0, 1.00);
	f.sicon:SetPoint("CENTER", f.icon, "CENTER", -2, -1);
	f.sicon:Hide();

	-- display castbar name
	f.ctext:SetText(name);

	-- latency bar
	for i = 1, 15 do		-- might be a bit extreme (hellfire ticks 15x)
		f.lb[i]:SetPoint("LEFT", (i-1)*0.2, 0);
		f.lb[i]:Hide();
	end

	-- castbar spark
	f.cbs:Hide();

	return f;
end

function Gnosis:CreateDefaultBarTable(unit)
	local tBar = self:deepcopy(self.tCastbarDefaults);
	tBar["unit"] = unit;

	return tBar;
end

function Gnosis:UIScaleUpdate()
	self:AnchorAllBars();

	-- update coordinates of config options
	if(Gnosis.optCBs:IsShown()) then
		Gnosis.optCBs:Hide();
		Gnosis.optCBs:Show();
	end
end

function Gnosis:ReAnchorBar(cb)	-- for cursor anchoring
	local cx, cy = GetCursorPosition();
	local uis = UIParent:GetEffectiveScale();
	cb:SetPoint(cb.afrom, UIParent, "BOTTOMLEFT", (cx + cb.ax) / uis, (cy + cb.ay) / uis);
end

function Gnosis:AnchorAllBars()
	for k, v in pairs(self.castbars) do
		self:AnchorBar(k);
	end
end

function Gnosis:AnchorBar(name)
	local cb, cfg = self.castbars[name], self.s.cbconf[name];
	cb.afrom, cb.ato = self.tPoints[cfg.anchorfrom], self.tPoints[cfg.anchorto];
	cb.ax, cb.ay = cfg.anchor_x, cfg.anchor_y;

	local uis = UIParent:GetEffectiveScale();
	local cbs = cb:GetEffectiveScale();
	local mult = uis / cbs;
	local xm, ym = GetScreenWidth(), GetScreenHeight();

	if(not cfg.anchor or not(tonumber(cfg.anchor.px) and tonumber(cfg.anchor.py))) then
		cfg.anchor = {
			["px"] = 0.5,		-- CENTER
			["py"] = 0.5,		-- CENTER
		};
	end

	local px, py = cfg.anchor.px, cfg.anchor.py;
	cb.reanchor = false;
	cb:ClearAllPoints();
	if(cfg.anchortype == 3) then		-- anchor to cursor
		cb.reanchor = true;
		self:ReAnchorBar(cb);
	elseif(cfg.anchortype == 2 and _G[cfg.anchorframe]) then	-- anchor to frame
		cb:SetPoint(cb.afrom, _G[cfg.anchorframe], cb.ato, cb.ax / uis, cb.ay / uis);
	else	-- no anchor
		cb:SetPoint("CENTER", UIParent, "BOTTOMLEFT", px * xm * mult, py * ym * mult);
	end
end

function Gnosis:CenterCastbar(key)
	self.s.cbconf[key].anchor = nil;
	self:AnchorBar(key);
end

function Gnosis:RemoveAllCastbars()
	for key, value in pairs(self.castbars) do
		self:CleanupCastbar(value);
		value:Hide();
		table_insert(self.unusedcastbars, value);
	end

	wipe(self.castbars);
	wipe(self.s.cbconf);

	-- update config options
	self:CreateCastbarsOpt();

	-- new castbar lookup tables
	self:CreateCBTables();
end

function Gnosis:RemoveCastbar(key)
	self:CleanupCastbar(self.castbars[key]);
	self.castbars[key]:Hide();
	table_insert(self.unusedcastbars, self.castbars[key]);

	self.castbars[key] = nil;
	self.s.cbconf[key] = nil;

	-- update config options
	self:CreateCastbarsOpt();

	-- new castbar lookup tables
	self:CreateCBTables();
end

function Gnosis:OnDragStart()
	self:StartMoving();
end

function Gnosis:OnDragStop()
	self:StopMovingOrSizing();
	local uis = UIParent:GetEffectiveScale();
	local cbs = self:GetEffectiveScale();
	local xm, ym = GetScreenWidth(), GetScreenHeight();
	local px, py = self:GetCenter();
	px, py = px * cbs / uis / xm, py * cbs / uis / ym;

	Gnosis.s.cbconf[self.name].anchor = {
		["px"] = px,
		["py"] = py,
	};

	-- update coordinates of config options
	if(Gnosis.optCBs:IsShown()) then
		Gnosis.optCBs:Hide();
		Gnosis.optCBs:Show();
	end
end

function Gnosis:OnMouseUp(button)
	if(button == "RightButton") then
		InterfaceOptionsFrame_OpenToCategory(Gnosis.optCBs);
	end
end

function Gnosis:MakeBarMovable(name, status)
	if(status) then
		self.castbars[name]:EnableMouse(true);
		self.castbars[name]:SetMovable(true);
		self.castbars[name]:RegisterForDrag("LeftButton");
		self.castbars[name]:SetScript("OnDragStart", Gnosis.OnDragStart);
		self.castbars[name]:SetScript("OnDragStop", Gnosis.OnDragStop);
		self.castbars[name]:SetScript("OnMouseUp", Gnosis.OnMouseUp);
	else
		self.castbars[name]:EnableMouse(false);
	end
end

function Gnosis:CheckGroupLayout(cfg)
	if(cfg.ingroupsel == 1) then
		return true;
	elseif(cfg.ingroupsel == 2) then
		return(not IsInRaid() and GetNumSubgroupMembers() == 0);
	elseif(cfg.ingroupsel == 3) then
		return(not IsInRaid() and GetNumSubgroupMembers() > 0);
	elseif(cfg.ingroupsel == 4) then
		return(IsInRaid());
	end

	return true;
end

function Gnosis:SetupSwingBarForParry(cb, fCurTime)
	local barname, cfg = cb.name, cb.conf;

	if(not self.activebars[barname] or cb.hasted) then
		return;
	end

	local timeremain = cb.endTime - fCurTime;
	local timeremainperc = timeremain / cb.duration;

	-- information taken from http://elitistjerks.com/f31/t15257-melee_combat_riddle_me_parry_mechanics/
		-- accuracy of the given formulae and latency problems can screw up parry haste estimations quite badly
	if(timeremainperc >= 0.6) then
		cb.endTime = cb.endTime - cb.duration * 0.4;
		cb.duration = (cb.endTime - fCurTime) / timeremainperc;
	elseif(timeremainperc >= 0.2) then
		cb.endTime = cb.endTime - cb.duration / (1 + 2.5*timeremainperc*timeremainperc - 0.36*timeremainperc - 0.005);
		cb.duration = (cb.endTime - fCurTime) / timeremainperc;
	end
end

function Gnosis:SetupSwingBar(cb, spell, icon, fCurTime, bMeleeSwing)
	local barname, cfg = cb.name, cb.conf;

		-- valid group layout?
	if(not self:CheckGroupLayout(cfg)) then
		return;
	end

	if(self.activebars[barname] or self.fadeoutbars[barname]) then
		self:CleanupCastbar(cb);
	end

	cb.channel = false;
	cb.duration = (bMeleeSwing and UnitAttackSpeed("player") or UnitRangedDamage("player")) * 1000;
	cb.endTime = fCurTime + cb.duration;
	cb.icon:SetTexture(icon);
	cb.id = nil;
	cb.hasted = false;	-- do not allow more than one parry haste per swing (even though that might be wrong)

	cb.ctext:SetText(self:CreateCastname(cb, cfg, spell, ""));
	cb.castname = "";

	local val = (cb.endTime - fCurTime) / (cb.duration);
	cb.bar:SetValue((cb.channel and (1-val) or val));
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- setup strings, including automatic resize of long strings
	self:SetupBarString(cb, cfg, fCurTime, true);

	-- castbar spark
	if(cfg.bShowCBS) then
		cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", (cb.channel and (1-val) or val) * cb.barwidth, 0);
		cb.cbs:Show();
	end

	-- pushback (also vital for clipping test)
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
	self.activebars[barname] = cb;
end

function Gnosis:SetupGCDbar(cb, spell, rank, fCurTime, right2left)
	local barname, cfg = cb.name, cb.conf;

	local start, cd = GetSpellCooldown(spell);
	if(not start or not(cd > 0 and cd <= 1.5)) then
		return;
	end

		-- valid group layout?
	if(not self:CheckGroupLayout(cfg)) then
		return;
	end

	-- blacklisted?
	if(cfg.bnwtypesel == 2 and cfg.bnwlist) then
		for key, value in pairs(cfg.bnwlist) do
			if(value == spell) then
				return;
			end
		end
	-- not whitelisted?
	elseif(cfg.bnwtypesel == 3 and cfg.bnwlist) then
		local bReturn = true;
		for key, value in pairs(cfg.bnwlist) do
			if(value == spell) then
				bReturn = false;
				break;
			end
		end

		if(bReturn) then
			return;
		end
	end

	if(self.activebars[barname] ~= nil or self.fadeoutbars[barname] ~= nil) then
		self:CleanupCastbar(cb);
	end

	local _, _, icon = GetSpellInfo(spell);
	cb.channel = right2left;
	cb.duration = cd * 1000;
	cb.endTime = start * 1000 + cd * 1000;
	cb.icon:SetTexture(icon);
	cb.id = nil;

	cb.ctext:SetText(self:CreateCastname(cb, cfg, spell, rank));
	cb.castname = "";

	local val = (cb.endTime - fCurTime) / (cb.duration);
	cb.bar:SetValue((cb.channel and (1-val) or val));
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- setup strings, including automatic resize of long strings
	self:SetupBarString(cb, cfg, fCurTime, true);

	-- castbar spark
	if(cfg.bShowCBS) then
		cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", (cb.channel and (1-val) or val) * cb.barwidth, 0);
		cb.cbs:Show();
	end

	-- pushback (also vital for clipping test)
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
	self.activebars[barname] = cb;
end

function Gnosis:SetupMirrorbar(cb, label, channel, curval, maxval, fCurTime, timer)
	local barname, cfg = cb.name, cb.conf;

	-- valid group layout?
	if(not self:CheckGroupLayout(cfg)) then
		return;
	end

	-- blacklisted?
	if(cfg.bnwtypesel == 2 and cfg.bnwlist) then
		for key, value in pairs(cfg.bnwlist) do
			if(value == label) then
				return false;
			end
		end
	-- not whitelisted?
	elseif(cfg.bnwtypesel == 3 and cfg.bnwlist) then
		local bReturn = true;
		for key, value in pairs(cfg.bnwlist) do
			if(value == label) then
				bReturn = false;
				break;
			end
		end

		if(bReturn) then
			return false;
		end
	end

	if(self.activebars[barname] ~= nil or self.fadeoutbars[barname] ~= nil) then
		self:CleanupCastbar(cb);
	end

	cb.channel = channel;
	cb.duration = maxval;
	cb.endTime = channel and fCurTime + curval or fCurTime + maxval - curval;
	cb.icon:SetTexture(self.tMirrorIcons[timer]);
	cb.id = nil;

	cb.ctext:SetText(self:CreateCastname(cb, cfg, label, ""));
	cb.castname = timer;

	cb.bar:SetValue(curval);
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- setup strings, including automatic resize of long strings
	self:SetupBarString(cb, cfg, fCurTime, true);

	-- castbar spark
	if(cfg.bShowCBS) then
		cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", (channel and curval or maxval - curval) * cb.barwidth, 0);
		cb.cbs:Show();
	end

	-- pushback (also vital for clipping test)
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
	self.activebars[barname] = cb;

	return true;
end

function Gnosis:CreateCastname(cb, cfg, name, rank)
	if(nfs ~= "") then
		return self:CreateCastnameFromString(name, rank, cb);
	else
		return "";
	end
end

function Gnosis:CreateCastnameFromString(name, rank, cb)
	-- substitute strings
	local bRank = false;
	local bOther = false;
	local iRank, strRankArabic;
	local strRankRoman = "";
	local lenname;
	local str, cfg = cb.nfs, cb.conf;
	local unit = cfg.unit;
	local uname = cb.tiUnitName and cb.tiUnitName or UnitName(unit);

	-- target information (player castbar only)
	local strTarget;
	local strTargetClass;
	if(cb.tiType and cb.tiUnit) then
		if(UnitIsPlayer(cb.tiUnit)) then
			strTargetClass = select(2, UnitClass(cb.tiUnit));
		end
	elseif(unit == "player" and self.strLastTarget) then
		strTarget = self.strLastTarget;
		strTargetClass = self.strLastTargetClass;
	end

	-- spell school colors, format is col<r,g,b[,a]> or col<spellschool>
		-- e.g. col<1.0,0.5,0.5,1.0>; col<shadow>
		-- col<pre> will be replace with "|r"
	str = self:ReplaceColorStrings(str, strTargetClass);

	strRankArabic = string_match(rank, "(%d+)");
	if(strRankArabic) then
		local i;
		iRank = tonumber(strRankArabic);

		-- create roman numeral 1..38, since 50 'L' is not supported (yet)
		while(true) do
			if(iRank > 38) then
				-- probably no rank! abort
				break;
			elseif(iRank >= 9) then
				strRankRoman = strRankRoman .. "X";
				iRank = iRank - 10;
			elseif(iRank >= 4) then
				strRankRoman = strRankRoman .. "V";
				iRank = iRank - 5;
			elseif(iRank >= 1) then
				strRankRoman = strRankRoman .. "I";
				iRank = iRank - 1;
			elseif(iRank == 0) then
				-- done
				bRank = true;
				break;
			elseif(iRank >= -4) then
				strRankRoman = "I" .. strRankRoman;
				iRank = iRank + 1;
			elseif(iRank >= -9) then
				strRankRoman = "V" .. strRankRoman;
				iRank = iRank + 5;
			end
		end
	end

	if((not bRank and rank and rank ~= "") or cb.stacks) then
		bOther = true;
	end

	lenname = string_match(str, "abbr<(%d*)>");
	str = string_gsub(str, "abbr<([^>]*)>", "abbr");

	lenname = tonumber(lenname) and tonumber(lenname) or nil;
	if(lenname) then
		local bMulti = false;

		if(string_len(name) > lenname) then
			-- string too long, abbreviate
			local abbrstr = "";
			local ncpy = name;
			local i = 0;

			while i < 10 do
				i = i + 1;	-- maximize word count to 10, also make sure while loop won't lock client up (especially with specific locales)

				local ltmp = string_match(ncpy, "([^%s%-%/%_%:%.]+)");

				if(not ltmp) then
					break;
				end

				ncpy = string_gsub(ncpy, ltmp, "");

				if(not bMulti and string_match(ncpy, "([^%s]+)")) then
					bMulti = true;
				end

				if(bMulti) then
					abbrstr = abbrstr .. (string_match(ltmp, "(%u+)") and string_match(ltmp, "(%u+)") or string_match(ltmp, "(%l?)"));
				else
					abbrstr = string_sub(ltmp, 1, lenname);
				end
			end

			str = string_gsub(str, "abbr", abbrstr);
		else
			str = string_gsub(str, "abbr", name);
		end
	end

	str = string_gsub(str, "name", name);
	if(bRank) then
		str = string_gsub(str, "arabic", strRankArabic);
		str = string_gsub(str, "roman", strRankRoman);
		str = string_gsub(str, "rank<([^>]+)>", "%1");
		str = string_gsub(str, "txr<([^>]+)>", "%1");
	else
		str = string_gsub(str, "arabic", "");
		str = string_gsub(str, "roman", "");
		str = string_gsub(str, "rank<([^>]+)>", "");
		str = string_gsub(str, "txr<([^>]+)>", "");
	end

	if(bOther) then
		str = string_gsub(str, "misc", cb.stacks and cb.stacks or rank);
		str = string_gsub(str, "txm<([^>]+)>", "%1");
	else
		str = string_gsub(str, "misc", "");
		str = string_gsub(str, "txm<([^>]+)>", "");
	end

	if(cb.bIsTrade) then
		str = string_gsub(str, "tscur", string_format("%.0f", cb.tscnt));
		str = string_gsub(str, "tstot", string_format("%.0f", cb.tstot));
		str = string_gsub(str, "txts<([^>]+)>", "%1");
	else
		str = string_gsub(str, "tscur", "");
		str = string_gsub(str, "tstot", "");
		str = string_gsub(str, "txts<([^>]+)>", "");
	end

	if(strTarget) then
		str = string_gsub(str, "tar<([^>]+)>", "%1");
		str = string_gsub(str, "tar%[([^%]]+)%]", "%1");	-- added to allow ->
		str = string_gsub(str, "target", strTarget);
	else
		str = string_gsub(str, "tar<([^>]+)>", "");
		str = string_gsub(str, "tar%[([^%]]+)%]", "");
		str = string_gsub(str, "target", "");
	end

	-- unit name
	if(uname) then
		str = string_gsub(str, "who", uname);
	else
		str = string_gsub(str, "who", "");
	end

	-- new line
	str = string_gsub(str, "\\n", "\n");

	return str;
end

local function GenerateTimeTable_GetFormat(str)
   local a, b = string.match(str, "([rtcp])<([^>]*)>");
   local iNum, bMin, bSign, bPerc = 0;
   local t = a == 'r' and 2 or (
      a == 't' and 3 or (
         a == 'c' and 4 or (
            a == 'p' and 5 or nil
  )));

   for c in string.gmatch(b, ".") do
      if(c == 'm') then
         bMin = true;
      elseif(c == 's') then
         bSign = true;
      elseif(c == 'p') then
         bPerc = true;
      elseif(tonumber(c)) then
         iNum = tonumber(c);
      end
   end

   local str_sec = "%" .. (bSign and "+" or "") .. "." .. iNum .. "f";

   return t, str_sec, bMin, bPerc;
end

function Gnosis:GenerateTimeTable(cb, bIsTime)
	if(not cb.timetable) then
		cb.timetable = {};
	end

	if(cb.timetable.tfs ~= cb.tfs or cb.timetable.bIsTime ~= bIsTime) then
		wipe(cb.timetable);

		cb.timetable.tfs = cb.tfs;
		cb.timetable.bIsTime = bIsTime;

		local str = self:ReplaceColorStrings(cb.tfs);

		while true do
			local s, e = string_find(str, "([rtcp])<([^>]*)>");
			if(s) then
				if(s > 1) then
					local item = {};
					item.type = 1;-- plain string
					item.str = string_sub(str, 1, s-1);
					table_insert(cb.timetable, item);
				end

				local item = {};
				item.type, item.str, item.bMin, item.bPerc = GenerateTimeTable_GetFormat(string_sub(str, s, e));
				item.bMin = bIsTime and item.bMin or nil;
				item.bIsTime = bIsTime;

				if(item.type) then
					table_insert(cb.timetable, item);
				end

				str = string_sub(str, e+1);
			elseif(string_len(str) > 0) then
				local item = {};
				item.type = 1;-- plain string
				item.str = str;
				table_insert(cb.timetable, item);
				break;
			else
				break;
			end
		end
	end
end

local function GenerateTimeTable_Item(t, value, value_max)
	if(t.bPerc) then
		return string_format(t.str, value * 100.0 / value_max);
	elseif(t.bIsTime) then
		if(value > 60.0 and t.bMin) then
			return string_format("%.0f:%02.0f", floor(value/60.0), floor(value) % 60.0);
		else
			return string_format(t.str, value);
		end
	else
		if(value_max >= 1000000) then
			return string_format(t.str, value / 1000000) .. "M";
		elseif(value_max >= 10000) then
			return string_format(t.str, value / 1000) .. "k";
		else
			return string_format(t.str, value);
		end
	end
end

local tGT = { "" };
function Gnosis:GenerateTime(cb, fValueRem, fValueMax, fP)
	while(#tGT > 1) do
		table_remove(tGT);
	end

	for k, v in ipairs(cb.timetable) do
		if(v.type == 1) then
			table_insert(tGT, v.str);
		elseif(v.type == 2) then
			table_insert(tGT, GenerateTimeTable_Item(v, fValueRem, fValueMax));
		elseif(v.type == 3) then
			table_insert(tGT, GenerateTimeTable_Item(v, fValueMax, fValueMax));
		elseif(v.type == 4) then
			table_insert(tGT, GenerateTimeTable_Item(v, fValueMax-fValueRem, fValueMax));
		elseif(v.type == 5 and (fP and fP ~= 0.0)) then
			table_insert(tGT, GenerateTimeTable_Item(v, fP, fValueMax));
		end
	end

	return table_concat(tGT);
end

function Gnosis:SetPowerbarValue(cb, curpower, maxpower, bShowSpark)
	local cfg = cb.conf;

	-- set statusbar value
	local val = min(curpower/maxpower, 1);
	cb.bar:SetValue(val);
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- reanchor bar?
	if(cb.reanchor) then
		self:ReAnchorBar(cb);
	end

	-- castbar spark
	if(bShowSpark) then
		if(cfg.orient == 2) then
			if(cfg.bInvDir) then
				cb.cbs:SetPoint("CENTER", cb.bar, "TOP", 0, -val * cb.barheight);
			else
				cb.cbs:SetPoint("CENTER", cb.bar, "BOTTOM", 0, val * cb.barheight);
			end
		else
			if(cfg.bInvDir) then
				cb.cbs:SetPoint("CENTER", cb.bar, "RIGHT", -val * cb.barwidth, 0);
			else
				cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", val * cb.barwidth, 0);
			end
		end
		
		cb.cbs:Show();
	else
		cb.cbs:Hide();
	end

	if(cb.tiType < 1000) then
		cb.rtext:SetText("");
	else
		cb.rtext:SetText(self:GenerateTime(cb, curpower, maxpower));
	end
end

function Gnosis:SetupPowerbar(cb, tiinfo)
	local cname, curpower, maxpower, tiunit, curtimer, icon, stacks =
		tiinfo.castname, tiinfo.endTime, tiinfo.duration,
		tiinfo.tiunit, tiinfo.curtimer, tiinfo.icon, tiinfo.stacks;
	local cfg = cb.conf;

	self:CleanupCastbar(cb, true, true);
	self:GenerateTimeTable(cb, false);

	cb.dur = nil;
	cb.duration = maxpower;
	cb.endTime = curpower;
	cb.icontex = (not curtimer.hideicon) and icon or nil;
	cb.stacks = stacks;
	cb.tiUnit = tiunit;
	cb.tiUnitName = UnitName(cb.tiUnit);
	cb.tiType = curtimer.type;
	cb.forcecleanup = true;
	cb.castname = cname and cname or "";

	cb.channel = true;
	cb.icon:SetTexture(cb.icontex);
	cb.id = nil;

	-- set current value
	self:SetPowerbarValue(cb, curpower, maxpower, not(tiinfo.valIsStatic or not curtimer.cbs));

	-- show castbar text
	cb.ctext:SetText(self:CreateCastname(cb, cfg, cb.castname, ""));

	-- setup strings, including automatic resize of long strings
	self:SetupPowerbarString(cb, cfg, fCurTime, true);

	-- castbar color
	if(curtimer.sbcolor) then
		cb.bar:SetStatusBarColor(unpack(curtimer.sbcolor));
	end

	-- border color
	self:SetBorderColor(cb, cfg.colBorder, cfg.colBarBg, curtimer.hideicon);

	-- pushback irrelevant for timer bars
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
end

function Gnosis:SetupTimerbar(cb, fCurTime, tiinfo)
	local castname, endTime, duration, icon, stacks, tiunit, curtimer, bChannel =
		tiinfo.castname, tiinfo.endTime, tiinfo.duration, tiinfo.icon,
		tiinfo.stacks, tiinfo.tiunit, tiinfo.curtimer, tiinfo.bChannel;
	local cfg = cb.conf;

	self:CleanupCastbar(cb, true, true);
	self:GenerateTimeTable(cb, true);

	-- zoom?
	local bZoom = curtimer.zoom and curtimer.zoom >= (endTime - fCurTime);
	-- staticdur?
	local bStatic = curtimer.staticdur and true;

	-- castbar values
	cb.castname = castname;
	cb.dur = (bStatic or bZoom) and duration or nil;
	cb.duration = bZoom and curtimer.zoom or (bStatic and curtimer.staticdur or duration);

	cb.endTime = endTime;
	cb.icontex = (not curtimer.hideicon) and icon or nil;
	cb.stacks = stacks;
	cb.tiUnit = tiunit;
	cb.tiUnitName = (cb.tiUnit and curtimer.type == 2) and UnitName(cb.tiUnit);
	cb.tiType = curtimer.type;

	cb.channel = bChannel;
	cb.icon:SetTexture(icon);
	cb.id = nil;

	-- show castbar text
	cb.ctext:SetText(self:CreateCastname(cb, cfg, cb.castname, ""));

	-- set statusbar value
	local rem = cb.endTime - fCurTime;
	local bForceStaticDur = rem > cb.duration;
	local val = bForceStaticDur and 1 or min(rem/cb.duration, 1);
	val = cb.channel and val or (1 - val);
	cb.bar:SetValue(val);
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- setup strings, including automatic resize of long strings
	self:SetupBarString(cb, cfg, fCurTime, true);

	-- castbar color
	if(curtimer.sbcolor) then
		cb.bar:SetStatusBarColor(unpack(curtimer.sbcolor));
	end

	-- border color
	self:SetBorderColor(cb, cfg.colBorder, cfg.colBarBg, curtimer.hideicon);

	-- castbar spark
	cb.cbs_hidden = false;
	cb.cbs_check = bStatic;
	if(curtimer.cbs and not (bForceStaticDur and cb.cbs_check)) then
		cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", val * cb.barwidth, 0);
		cb.cbs:Show();
	else
		cb.cbs_hidden = true;
		cb.cbs:Hide();
	end

	self:SetupTimerLagBox(cb, curtimer.showlag, curtimer.showcasttime, castname, curtimer.recast, true);

	-- pushback irrelevant for timer bars
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
	self.activebars[cb.name] = cb;
end

function Gnosis:SetupTimerLagBox(cb, showlag, showcasttime, castname, recast, bRecalcTick)
	local cfg = cb.conf;

	-- latency
	local lagct = (((showlag or recast) and self.lag < 3500) and self.lag or 0);
	if(showcasttime or recast) then
		local _, _, _, _, _, _, castTime = GetSpellInfo(castname);
		if(castTime) then
			lagct = lagct + castTime;
		end
	end

	if(recast) then
		local dur = cb.dur and cb.dur or cb.duration;
		if(bRecalcTick or not cb.ticktime) then
			local haste = UnitSpellHaste("player") / 100.0 + 1.0;
			--[[ implementation taken over from MFClip:
			guess original ticks, often guesses one tick too much
			which is not really bad for safer recasting,
			would need a database (including set bonus, ...) with
			initial tick counts for 100% correct value which I really
			do not want to implement into MFClip ]]
			local initTicks = floor(dur / recast + max(15000/dur,1.0) * 0.375);	-- seems to work well
			local hastedTicks = floor(initTicks * haste + 0.5);
			cb.ticktime = dur / hastedTicks;
		end

		if(cb.ticktime) then
			-- latency box
			cb.lb[1]:ClearAllPoints();
			local ctlagSize = min(lagct / cb.duration, 1.0);
			local esttickSize = min(cb.ticktime / cb.duration, 1.0 - ctlagSize);

			if(cfg.orient == 2) then
				cb.lb[1]:SetHeight(cb.barheight * esttickSize);
				if(cfg.bInvDir) then
					cb.lb[1]:SetPoint(cb.channel and "TOP" or "BOTTOM", 0, cb.barheight * (cb.channel and -1 or 1) * ctlagSize);
				else
					cb.lb[1]:SetPoint(cb.channel and "BOTTOM" or "TOP", 0, cb.barheight * (cb.channel and 1 or -1) * ctlagSize);
				end
			else
				cb.lb[1]:SetWidth(cb.barwidth * esttickSize);
				if(cfg.bInvDir) then
					cb.lb[1]:SetPoint(cb.channel and "RIGHT" or "LEFT", cb.barwidth * (cb.channel and -1 or 1) * ctlagSize, 0);
				else
					cb.lb[1]:SetPoint(cb.channel and "LEFT" or "RIGHT", cb.barwidth * (cb.channel and 1 or -1) * ctlagSize, 0);
				end
			end
			cb.lb[1]:Show();
		else
			cb.lb[1]:Hide();
		end
	elseif(lagct > 0) then
		-- latency box
		cb.lb[1]:ClearAllPoints();
		if(cfg.orient == 2) then
			cb.lb[1]:SetHeight(cb.barheight * min(lagct / cb.duration, 1.0));
			if(cfg.bInvDir) then
				cb.lb[1]:SetPoint(cb.channel and "TOP" or "BOTTOM");
			else
				cb.lb[1]:SetPoint(cb.channel and "BOTTOM" or "TOP");
			end
		else
			cb.lb[1]:SetWidth(cb.barwidth * min(lagct / cb.duration, 1.0));
			if(cfg.bInvDir) then
				cb.lb[1]:SetPoint(cb.channel and "RIGHT" or "LEFT");
			else
				cb.lb[1]:SetPoint(cb.channel and "LEFT" or "RIGHT");
			end
		end
		cb.lb[1]:Show();
	else
		cb.lb[1]:Hide();
	end
end

function Gnosis:SetupCastbar(cb, bIsChannel, fCurTime)
	local barname, cfg = cb.name, cb.conf;

	local name, rank, displayName, texture, startTime, endTime, isTradeSkill, notInterruptible, id;
	if(bIsChannel) then
		name, rank, displayName, texture, startTime, endTime, isTradeSkill, notInterruptible = UnitChannelInfo(cfg.unit);
	else
		name, rank, displayName, texture, startTime, endTime, isTradeSkill, id, notInterruptible = UnitCastingInfo(cfg.unit);
	end

	if(not name) then
		return;
	end

	-- unit relation
	if(not self:UnitRelationSelect(cfg.relationsel, cfg.unit)) then
		return;
	end

		-- valid group layout?
	if(not self:CheckGroupLayout(cfg)) then
		return;
	end

	-- blacklisted?
	if(cfg.bnwtypesel == 2 and cfg.bnwlist) then
		for key, value in pairs(cfg.bnwlist) do
			if(value == name) then
				return;
			end
		end
	-- not whitelisted?
	elseif(cfg.bnwtypesel == 3 and cfg.bnwlist) then
		local bReturn = true;
		for key, value in pairs(cfg.bnwlist) do
			if(value == name) then
				bReturn = false;
				break;
			end
		end

		if(bReturn) then
			return;
		end
	end

	-- tradeskill stuff
	local bDoResize = true;
	local bnTS = true;
	if(cfg.unit == "player" and cfg.bMergeTrade) then
		if(isTradeSkill) then
			bnTS = false;
			cb.tscnt = self.iLastTradeSkillCnt and self.iLastTradeSkillCnt or 1;
			if(cb.bIsTrade and (not self.bNewTradeSkill)) then
				-- tradeskill in progress
				cb.duration = (fCurTime - cb.starttime) * cb.tstot / (cb.tstot - cb.tscnt);
				cb.endTime = cb.duration + cb.starttime;

				bDoResize = false;
			elseif(cb.tscnt > 1 and self.bNewTradeSkill) then
				-- new tradeskill merge, don't start if repeat count less than 2
				if((self.activebars[barname] or self.fadeoutbars[barname])) then
					self:CleanupCastbar(cb);
				end

				cb.bIsTrade = true;
				cb.starttime = fCurTime;
				cb.tstot = cb.tscnt;
				cb.duration = (endTime - startTime) * cb.tscnt + self.lag * (cb.tscnt - 1);
				cb.endTime = cb.duration + cb.starttime;
			else
				cb.bIsTrade = nil;

				if((self.activebars[barname] or self.fadeoutbars[barname])) then
					self:CleanupCastbar(cb);
				end

				cb.duration = endTime - startTime;
				cb.endTime = endTime;
			end
		else
			self.bNewTradeSkill = nil;
			self.iLastTradeSkillCnt = nil;
		end
	end

	if(bnTS) then
		cb.bIsTrade = nil;

		if((self.activebars[barname] or self.fadeoutbars[barname])) then
			self:CleanupCastbar(cb, true);
		end

		cb.duration = endTime - startTime;
		cb.endTime = endTime;
	end

	-- castbar values
	cb.channel = bIsChannel;
	cb.icon:SetTexture(texture);
	cb.id = id;

	-- show castbar text
	cb.ctext:SetText(self:CreateCastname(cb, cfg, name, rank));
	cb.castname = name;

	-- set statusbar value
	local val = (cb.endTime - fCurTime) / (cb.duration);
	val = (cb.channel and (not cfg.bChanAsNorm)) and val or (1 - val);
	cb.bar:SetValue(val);
	cb:SetAlpha(cfg.alpha);
	cb:Show();

	-- setup strings, including automatic resize of long strings
	self:SetupBarString(cb, cfg, fCurTime, bDoResize);

	-- non interruptible colors
	if(notInterruptible) then
		cb.bar:SetStatusBarColor(unpack(cfg.colBarNI));
		self:SetBorderColor(cb, cfg.colBorderNI, cfg.colBarBg);
		if(cfg.bShowShield) then
			cb.sicon:Show();
		else
			cb.sicon:Hide();
		end
	else
		cb.bar:SetStatusBarColor(unpack(cfg.colBar));
		self:SetBorderColor(cb, cfg.colBorder, cfg.colBarBg);
		cb.sicon:Hide();
	end

	-- castbar spark
	if(cfg.bShowCBS) then
		cb.cbs:SetPoint("CENTER", cb.bar, "LEFT", val * cb.barwidth, 0);
		cb.cbs:Show();
	end

	-- latency & ticks
	local cs = self.s.channeledspells[cb.castname];
	if(cs and cs.ben and not(cs.bhidenonplayer and cfg.unit ~= "player")) then
		local totalticks = cs.ticks;
		local noninitticks = cs.binit and (totalticks-1) or totalticks;
		local shownticks = cs.bars > 15 and 15 or cs.bars;

		if(cfg.unit == "player" and cs.baddticks) then
			-- estimate amount of ticks due to haste
			local haste = UnitSpellHaste("player") / 100.0 + 1.0;
			noninitticks = floor(noninitticks * haste + 0.5);
			totalticks = cs.binit and (noninitticks+1) or noninitticks;
		end

		-- spell is channeled, store tick information for spell update and possible clip test
		wipe(cb.ticks);
		cb.channelticktime = (1 / noninitticks) * cb.duration;
		for i = 1, totalticks do
			cb.ticks[i] = cb.endTime - (i-1) * cb.channelticktime;
		end

		cb.totalticks = cfg.bShowTicks and totalticks or 0;
		cb.shownticks = cfg.bShowTicks and shownticks or 0;
		
		self:DrawTicks(cb, cfg);
	else
		cb.totalticks = 0;
		cb.shownticks = 0;
		cb.channelticktime = 0;
	end

	if(cfg.unit == "player" and self.lag < 10000) then
		-- latency box, player only
		-- < 10000ms should filter latency for most summoning stone timers, also hide latency when just too extreme		
		if (not(cs and cs.ben and cfg.bShowTicks) and cfg.bShowLat) then
			cb.lb[1]:ClearAllPoints();
			if(cfg.orient == 2) then
				cb.lb[1]:SetHeight(cb.barheight * min(self.lag / cb.duration, cfg.latbarsize));
				local direction = (cb.channel and (not cfg.bChanAsNorm)) and "BOTTOM" or "TOP";
				if (cfg.bInvDir) then
					direction = (direction == "BOTTOM") and "TOP" or "BOTTOM";
				end				
				cb.lb[1]:SetPoint(direction);
			else
				cb.lb[1]:SetWidth(cb.barwidth * min(self.lag / cb.duration, cfg.latbarsize));
				local direction = (cb.channel and (not cfg.bChanAsNorm)) and "LEFT" or "RIGHT";
				if (cfg.bInvDir) then
					direction = (direction == "LEFT") and "RIGHT" or "LEFT";
				end				
				cb.lb[1]:SetPoint(direction);
			end
			cb.lb[1]:Show();
		end

		-- latency text
		if (cfg.bShowPlayerLatency) then
			-- < 10000ms should filter latency for most summoning stone timers, also hide latency when just too extreme
			if(cfg.alignlat == "LEFT") then
				cb.bltext:SetText(string_format("%d", self.lag));
			elseif(cfg.alignlat == "RIGHT") then
				cb.brtext:SetText(string_format("%d", self.lag));
			else
				if (cfg.bInvDir) then
					if (cb.channel and (not cfg.bChanAsNorm)) then
						cb.brtext:SetText(string_format("%d", self.lag));
					else
						cb.bltext:SetText(string_format("%d", self.lag));
					end
				else
					if (cb.channel and (not cfg.bChanAsNorm)) then
						cb.bltext:SetText(string_format("%d", self.lag));
					else
						cb.brtext:SetText(string_format("%d", self.lag));
					end
				end
			end
		end
	end

	-- pushback (also vital for clipping test)
	cb.pushback = 0;

	-- set bar active
	cb.bActive = true;
	self.activebars[barname] = cb;
end

function Gnosis:CloseAllTradeskillBars()
	local fCurTime = GetTime() * 1000.0;

	local cb = self:FindCB("player");
	if(cb) then
		repeat
			if(cb.bIsTrade) then
				local conf = cb.conf;
				if(conf.bUnlocked or conf.bShowWNC) then
					self:CleanupCastbar(cb, fCurTime);
				else
					self:PrepareCastbarForFadeout(cb, fCurTime);
				end
			end
			cb = self:FindCBNext("player");
		until cb == nil;
	end
end

function Gnosis:UpdateCastbar(cb, startTime, endTime, spell)
	local barname, cfg = cb.name, cb.conf;

	local fSPB = endTime - cb.endTime;		-- spell pushback

	-- "positive" channel pushback (4.1)
	if(fSPB > 0 and cb.channel) then
		if(cfg.bExtChannels) then
			cb.duration = cb.duration + fSPB;
		end
		cb.endTime = endTime;

		if(cb.totalticks and cb.totalticks > 0) then
			for i = 1, cb.totalticks do
				cb.ticks[i] = cb.ticks[i] + fSPB;
			end

			if(cfg.bExtChannels) then
				if(cb.endTime - cb.ticks[cb.totalticks] > cb.channelticktime) then
					cb.totalticks = cb.totalticks + 1;
					cb.ticks[cb.totalticks] = cb.ticks[cb.totalticks-1] - cb.channelticktime;
				end
				
				self:DrawTicks(cb, cfg);
			end
		end
	-- "negative" pushback
	elseif(fSPB ~= 0) then
		cb.pushback = cb.pushback + fSPB;
		cb.endTime = endTime;

		self:DrawTicks(cb, cfg);
	end
end

function Gnosis:DrawTicks(cb, cfg)
	if (cfg.bShowTicks) then
		-- calculate new tick marker size
		local valLBperc = ((cfg.unit == "player") and max(min(self.lag / cb.duration, cfg.latbarsize), cfg.latbarfixed) or cfg.latbarfixed);
		-- never create latency box larger than half of distance between ticks
		-- vital for long channels with high number of ticks (e.g. hellfire with 15 ticks)
		valLBperc = min(valLBperc, 1 / cb.totalticks * 0.5);
				
		for i = 1, cb.totalticks do
			if (i <= cb.shownticks) then
				if (cb.ticks[i] > cb.endTime) then
					cb.lb[i]:Hide();
				else
					local p = (cb.endTime-cb.ticks[i]) / cb.duration;				
					if (cfg.bChanAsNorm) then
						-- show channel as normal cast
						cb.lb[i]:ClearAllPoints();
						if (cfg.orient == 2) then
							if(cfg.bInvDir) then
								cb.lb[i]:SetPoint("BOTTOM", 0, cb.barheight * p);
							else
								cb.lb[i]:SetPoint("TOP", 0, -cb.barheight * p);
							end
							cb.lb[i]:SetHeight(min(valLBperc, 1.0 - p) * cb.barheight);
						else
							if (cfg.bInvDir) then
								cb.lb[i]:SetPoint("LEFT", cb.barwidth * p, 0);
							else
								cb.lb[i]:SetPoint("RIGHT", -cb.barwidth * p, 0);
							end
							cb.lb[i]:SetWidth(min(valLBperc, 1.0 - p) * cb.barwidth);
						end
						cb.lb[i]:Show();
					else -- show as channel
						cb.lb[i]:ClearAllPoints();
						if (cfg.orient == 2) then
							if (cfg.bInvDir) then
								cb.lb[i]:SetPoint("TOP", 0, -cb.barheight * p);
							else
								cb.lb[i]:SetPoint("BOTTOM", 0, cb.barheight * p);
							end
							cb.lb[i]:SetHeight(min(valLBperc, 1.0 - p) * cb.barheight);
						else
							if (cfg.bInvDir) then
								cb.lb[i]:SetPoint("RIGHT", -cb.barwidth * p, 0);
							else
								cb.lb[i]:SetPoint("LEFT", cb.barwidth * p, 0);
							end
							cb.lb[i]:SetWidth(min(valLBperc, 1.0 - p) * cb.barwidth);
						end
						cb.lb[i]:Show();
					end
				end
			end
		end
	end
end

function Gnosis:PrepareCastbarForFadeout(cb, fCurTime, bForce)
	local barname, cfg = cb.name, cb.conf;

	if(self.activebars[barname] or bForce) then
		cb.bActive = false;
		self.activebars[barname] = nil;
		self.fadeoutbars[barname] = cb;
		cb.endTime = fCurTime + cfg.fadeout * 1000;
		cb.duration = cfg.fadeout * 1000;
		cb.alpha = cfg.alpha;

		if(cfg.bFillup) then
			cb.bar:SetValue(cb.channel and 0 or 1.0);
			cb.cbs:Hide();
		end

		cb.bIsTrade = nil;
	end
end

function Gnosis:CleanupCastbar(cb, bDoNotSetValue, bDoNotOverwriteNfsTfs)
	local barname, cfg = cb.name, cb.conf;

	if(not cb) then
		return;
	end

	cb.bActive = false;
	if(self.activebars[barname]) then
		self.activebars[barname] = nil;
	end
	if(self.fadeoutbars[barname]) then
		self.fadeoutbars[barname] = nil;
	end

	for i = 1, 15 do cb.lb[i]:Hide(); end
	cb.shownticks = 0;
	cb.cbs:Hide();

	if(not bDoNotSetValue) then
		cb.bar:SetValue(0);

		cb.ctext:SetText(cfg.bUnlocked and cb.name or "");
		cb.rtext:SetText("");
		cb.icon:SetTexture(cfg.bUnlocked and self.toyIcon or nil);
		cb.sicon:Hide();
	end

	-- hide latency values
	cb.bltext:SetText("");
	cb.brtext:SetText("");

	cb.bar:SetStatusBarColor(unpack(cfg.colBar));
	self:SetBorderColor(cb, cfg.colBorder, cfg.colBarBg, not cfg.bUnlocked and cfg.bShowWNC);

	cb.bIsTrade = nil;
	cb.tscnt = 0;
	cb.tstot = 0;

	cb.icontex = nil;
	cb.stacks = nil;
	cb.tiUnit = nil;
	cb.tiUnitName = nil;
	cb.tiType = nil;
	cb.dur = nil;

	-- default format strings
	if(not bDoNotOverwriteNfsTfs) then
		cb.nfs = cfg.strNameFormat;
		cb.tfs = cfg.strTimeFormat;
		self:GenerateTimeTable(cb, true);
	end
end

function Gnosis:SetupBarString(cb, cfg, fCurTime, bDoResize)
	-- adjust text size (long strings), only if "free alignment" is not selected
	if(cfg.alignment ~= "FREE" and cfg.forcefreealign ~= true and cfg.bResizeLongName and bDoResize) then
		-- set default font size
		cb.ctext:SetFont(cb.defFont, cb.defFS, cb.defFO);

		-- calculate space available for name string
		local bRenewTimeString = false;
		if(cb.duration <= 10000) then
			-- make sure name string font size is not dependant on fCurTime
			bRenewTimeString = true;
			cb.rtext:SetText(self:GenerateTime(cb,
					(cb.endTime - (cb.dur or cb.duration)) / 1000,
					(cb.dur or cb.duration) / 1000,
					cb.pushback and (cb.pushback / 1000)
				)
			);
		else
			cb.rtext:SetText(self:GenerateTime(cb,
					(cb.endTime - fCurTime) / 1000,
					(cb.dur or cb.duration) / 1000,
					cb.pushback and (cb.pushback / 1000)
				)
			);
		end

		local ctextmax = cb.barwidth - (cb.rtext:GetStringWidth() + cfg.strGap);
		local factor = 1.0;

		while ctextmax < cb.ctext:GetStringWidth() do
			local refactor = ctextmax / cb.ctext:GetStringWidth();
			if(refactor > 0.9) then
				refactor = 0.9;	-- reduce required iterations
			end
			factor = factor * refactor;
			local newFS = cb.defFS * factor;
			if(newFS < 0.2) then
				break;
			end
			cb.ctext:SetFont(cb.defFont, newFS, cb.defFO);
		end

		if(bRenewTimeString) then
			cb.rtext:SetText(self:GenerateTime(cb,
					(cb.endTime - fCurTime) / 1000,
					(cb.dur or cb.duration) / 1000,
					cb.pushback and (cb.pushback / 1000)
				)
			);
		end
	else
		cb.rtext:SetText(self:GenerateTime(cb,
				(cb.endTime - fCurTime) / 1000,
				(cb.dur or cb.duration) / 1000,
				cb.pushback and (cb.pushback / 1000)
			)
		);
	end
end

function Gnosis:SetupPowerbarString(cb, cfg, fCurTime, bDoResize)
	-- adjust text size (long strings), only if "free alignment" is not selected
	if(cfg.alignment ~= "FREE" and cfg.forcefreealign ~= true and cfg.bResizeLongName and bDoResize) then
		-- set default font size
		cb.ctext:SetFont(cb.defFont, cb.defFS, cb.defFO);

		local ctextmax = cb.barwidth - (cb.rtext:GetStringWidth() + cfg.strGap);
		local factor = 1.0;

		while ctextmax < cb.ctext:GetStringWidth() do
			local refactor = ctextmax / cb.ctext:GetStringWidth();
			if(refactor > 0.9) then
				refactor = 0.9;	-- reduce required iterations
			end
			factor = factor * refactor;
			local newFS = cb.defFS * factor;
			if(newFS < 0.2) then
				break;
			end
			cb.ctext:SetFont(cb.defFont, newFS, cb.defFO);
		end
	end
end
