-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_AuctionDB - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/tradeskillmaster_auctiondb.aspx   --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --


-- load the parent file (TSM) into a local variable and register this file as a module
local TSM = select(2, ...)
local GUI = TSM:NewModule("GUI")
local L = LibStub("AceLocale-3.0"):GetLocale("TradeSkillMaster_AuctionDB") -- loads the localization table
local GUIUtil = TSMAPI:GetGUIFunctions()

local professions = {
	Enchanting = L["Enchanting"],
	Inscription = L["Inscription"],
	Jewelcrafting = L["Jewelcrafting"],
	Alchemy = L["Alchemy"],
	Blacksmithing = L["Blacksmithing"],
	Leatherworking = L["Leatherworking"],
	Tailoring = L["Tailoring"],
	Engineering = L["Engineering"],
	Cooking = L["Cooking"],
}
	
local private = {}

function GUI:OnInitialize()
	TSMAPI:RegisterAuctionFunction("TradeSkillMaster_AuctionDB", GUI, L["Run Scan"], L["Scan the auction house with AuctionDB to update its market value and min buyout data."])
end

function GUI:Show(frame)
	private.statusBar = private.statusBar or private:CreateStatusBar(frame.content)
	private.statusBar:Show()
	GUI:UpdateStatus("", 0, 0)
	
	private.startScanContent = private.startScanContent or private:CreateStartScanContent(frame.content)
	private.startScanContent:Show()
end

function GUI:Hide()
	private.statusBar:Hide()
	private.startScanContent:Hide()
	
	TSMAPI:StopScan()
end

function GUI:UpdateStatus(text, major, minor)
	if text then
		private.statusBar:SetStatusText(text)
	end
	if major or minor then
		private.statusBar:UpdateStatus(major, minor)
	end
end

function private:CreateStatusBar(parent)
	local frame = TSMAPI.GUI:CreateStatusBar(parent, "TSMAuctionDBStatusBar")
	TSMAPI.GUI:CreateHorizontalLine(frame, -30, parent, true)
	
	return frame
end

function private:CreateStartScanContent(parent)
	local frame = CreateFrame("Frame", nil, parent)
	TSMAPI.Design:SetFrameBackdropColor(frame)
	frame:SetAllPoints(parent)
	frame:Hide()

	local function UpdateGetAllButton()
		if TSM.Scan:IsScanning() then
			frame:Disable()
		elseif not select(2, CanSendAuctionQuery()) then
			local previous = TSM.db.profile.lastGetAll or time()
			if previous > (time() - 15*60) then
				local diff = previous + 15*60 - time()
				local diffMin = math.floor(diff/60)
				local diffSec = diff - diffMin*60
				frame.getAllStatusText:SetText("|cff990000"..format(L["Ready in %s min and %s sec"], diffMin, diffSec))
			else
				frame.getAllStatusText:SetText("|cff990000"..L["Not Ready"])
			end
			frame:Enable()
			frame.startGetAllButton:Disable()
		else
			frame:Enable()
			frame.getAllStatusText:SetText("|cff009900"..L["Ready"])
			frame.startGetAllButton:Enable()
		end
	end
	
	frame:SetScript("OnShow", function(self)
			TSMAPI:CreateTimeDelay("auctionDBGetAllStatus", 0, UpdateGetAllButton, 0.2)
		end)
	
	frame:SetScript("OnHide", function(self)
			TSMAPI:CancelFrame("auctionDBGetAllStatus")
		end)
		
	frame.Enable = function(self)
		self.startGetAllButton:Enable()
		self.startFullScanButton:Enable()
		self.startProfessionScanButton:Enable()
	end

	frame.Disable = function(self)
		self.startGetAllButton:Disable()
		self.startFullScanButton:Disable()
		self.startProfessionScanButton:Disable()
	end
	
	-- 4th row (auto updater)
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetFont(TSMAPI.Design:GetContentFont(), 20)
	text:SetPoint("CENTER", frame, "TOP", 0, -45)
	text:SetHeight(20)
	text:SetJustifyH("CENTER")
	text:SetJustifyV("CENTER")
	text:SetText(TSMAPI.Design:GetInlineColor("link").."Scanning the auction house in game is no longer necessary!".."|r")
	local ag = text:CreateAnimationGroup()
	local a1 = ag:CreateAnimation("Alpha")
	a1:SetChange(-.4)
	a1:SetDuration(.5)
	ag:SetLooping("BOUNCE")
	ag:Play()
	
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetPoint("TOPLEFT", 10, -55)
	text:SetPoint("TOPRIGHT", -10, -55)
	text:SetHeight(55)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("CENTER")
	text:SetText(format("The creators of TradeSkillMaster have created a desktop application which will automatically update your TSM_AuctionDB prices using Blizzard's online APIs (and does MUCH more). Visit %s for more info and never scan the AH again!", TSMAPI.Design:GetInlineColor("link").."http://tradeskillmaster.com/tsm_app".."|r"))

	TSMAPI.GUI:CreateHorizontalLine(frame, -115, nil, true)
	
	local bar = TSMAPI.GUI:CreateVerticalLine(frame, 0, nil, true)
	bar:ClearAllPoints()
	bar:SetPoint("TOPLEFT", 415, -115)
	bar:SetHeight(195)
	
	-- first row (getall scan)
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetPoint("TOPLEFT", 10, -120)
	text:SetHeight(50)
	text:SetWidth(400)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("CENTER")
	text:SetText(L["A GetAll scan is the fastest in-game method for scanning every item on the auction house. However, it may disconnect you from the game and has a 15 minute cooldown."])
	
	local btn = TSMAPI.GUI:CreateButton(frame, 18)
	btn:SetPoint("TOPLEFT", 425, -130)
	btn:SetHeight(22)
	btn:SetWidth(205)
	btn:SetScript("OnClick", TSM.Scan.StartGetAllScan)
	btn:SetText(L["Run GetAll Scan"])
	frame.startGetAllButton = btn
	
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetPoint("TOPLEFT", 425, -155)
	text:SetHeight(16)
	text:SetWidth(205)
	text:SetJustifyH("CENTER")
	text:SetJustifyV("CENTER")
	frame.getAllStatusText = text
	
	TSMAPI.GUI:CreateHorizontalLine(frame, -180, nil, true)
	
	
	-- second row (full scan)
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetPoint("TOPLEFT", 10, -185)
	text:SetHeight(50)
	text:SetWidth(400)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("CENTER")
	text:SetText(L["A full auction house scan will scan every item on the auction house but is far slower than a GetAll scan. Expect this scan to take several minutes or longer."])
	
	local btn = TSMAPI.GUI:CreateButton(frame, 18)
	btn:SetPoint("TOPLEFT", 425, -205)
	btn:SetHeight(22)
	btn:SetWidth(205)
	btn:SetScript("OnClick", TSM.Scan.StartFullScan)
	btn:SetText(L["Run Full Scan"])
	frame.startFullScanButton = btn
	
	TSMAPI.GUI:CreateHorizontalLine(frame, -245, nil, true)
	
	
	-- third row (profession scan)
	local text = TSMAPI.GUI:CreateLabel(frame)
	text:SetPoint("TOPLEFT", 10, -250)
	text:SetHeight(50)
	text:SetWidth(170)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("CENTER")
	text:SetText(L["A profession scan will scan items required/made by a certain profession."])
	
	local bar = TSMAPI.GUI:CreateVerticalLine(frame, 0, nil, true)
	bar:ClearAllPoints()
	bar:SetPoint("TOPLEFT", 185, -245)
	bar:SetHeight(65)

	local dd = GUIUtil:CreateDropdown(frame, L["Professions:"], 200, professions, {"TOPLEFT", 200, -257}, L["Select professions to include in the profession scan."])	dd:SetMultiselect(true)
	for key in pairs(professions) do
		dd:SetItemValue(key, TSM.db.profile.scanSelections[key])
	end
	dd:SetCallback("OnValueChanged", function(_,_,key,value) TSM.db.profile.scanSelections[key] = value end)
	
	local btn = TSMAPI.GUI:CreateButton(frame, 18)
	btn:SetPoint("TOPLEFT", 425, -270)
	btn:SetHeight(22)
	btn:SetWidth(205)
	btn:SetScript("OnClick", TSM.Scan.StartProfessionScan)
	btn:SetText(L["Run Profession Scan"])
	frame.startProfessionScanButton = btn
	
	TSMAPI.GUI:CreateHorizontalLine(frame, -310, nil, true)
	
	return frame
end