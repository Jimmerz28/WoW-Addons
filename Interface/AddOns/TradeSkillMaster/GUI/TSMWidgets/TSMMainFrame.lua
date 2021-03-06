-- Much of this code is copied from .../AceGUI-3.0/widgets/AceGUIContainer-Frame.lua
-- This Frame container is modified to fit TSM's theme / needs
local TSM = select(2, ...)
local Type, Version = "TSMMainFrame", 2
local AceGUI = LibStub("AceGUI-3.0")
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

local ICON_TEXT_COLOR = {165/255, 168/255, 188/255, .7}


--[[-----------------------------------------------------------------------------
Scripts
-------------------------------------------------------------------------------]]
local function Frame_OnClose(frame)
	frame.obj:Fire("OnClose")
end

local function CloseButton_OnClick(frame)
	PlaySound("gsTitleOptionExit")
	frame.obj:Hide()
end

local function Frame_OnMouseDown(frame)
	frame.toMove:StartMoving()
	AceGUI:ClearFocus()
end

local function Frame_OnMouseUp(frame)
	frame.toMove:StopMovingOrSizing()
	AceGUI:ClearFocus()
end

local function Sizer_OnMouseUp(mover)
	local frame = mover:GetParent()
	frame:StopMovingOrSizing()
	local self = frame.obj
	local status = self.status or self.localstatus
	status.width = frame:GetWidth()
	status.height = frame:GetHeight()
	status.top = frame:GetTop()
	status.left = frame:GetLeft()
end

local function Sizer_OnMouseDown(frame)
	frame:GetParent():StartSizing("BOTTOMRIGHT")
	AceGUI:ClearFocus()
end

local function Icon_OnEnter(btn)
	btn.dark:Hide()
	GameTooltip:SetOwner(btn, btn:GetParent().tooltipAnchor)
	GameTooltip:SetText(btn.title)
	GameTooltip:Show()
end

local function Icon_OnLeave(btn)
	if btn.obj.selected ~= btn then
		btn.dark:Show()
	end
	GameTooltip:Hide()
end


--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local methods = {
	["OnAcquire"] = function(self)
		self.frame:SetParent(UIParent)
		self.frame:SetFrameStrata("FULLSCREEN")
		self:SetTitle()
		self:ApplyStatus()
		self:Show()
	end,

	["OnRelease"] = function(self)
		self.status = nil
		wipe(self.localstatus)
	end,
	
	["LayoutIcons"] = function(self)
		for _, container in ipairs({self.bottomIcons, self.topLeftIcons, self.topRightIcons}) do
			if type(container.icons) == "table" and container.icons[1] then
				local numIcons = #container.icons
				local iconSize = container.icons[1]:GetHeight()
				local spacing = (container:GetWidth() - numIcons * iconSize) / (numIcons + 1)
				for i, icon in ipairs(container.icons) do
					icon:SetPoint("TOPLEFT", spacing+(i-1)*(iconSize+spacing), 0)
				end
			end
		end
	end,

	["OnWidthSet"] = function(self, width)
		self.content.width = self.content:GetWidth()
		
		self.bottomIcons:ClearAllPoints()
		self.bottomIcons:SetPoint("BOTTOMLEFT", 130, -32)
		self.bottomIcons:SetPoint("BOTTOMRIGHT", -130, -32)
		self.bottomIcons:SetHeight(57)
		
		self.topLeftIcons:ClearAllPoints()
		self.topLeftIcons:SetPoint("TOPLEFT", 7, 20)
		self.topLeftIcons:SetPoint("TOPRIGHT", self.frame, "TOP", -125, 20)
		self.topLeftIcons:SetHeight(51)
		
		self.topRightIcons:ClearAllPoints()
		self.topRightIcons:SetPoint("TOPRIGHT", -7, 20)
		self.topRightIcons:SetPoint("TOPLEFT", self.frame, "TOP", 125, 20)
		self.topRightIcons:SetHeight(51)
		
		self:LayoutIcons()
	end,

	["OnHeightSet"] = function(self, height)
		self.content.height = self.content:GetHeight()
	end,

	["SetTitle"] = function(self, title)
		self.titletext:SetText(title)
	end,
	
	["SetIconText"] = function(self, title)
		self.icontext:SetText(title)
	end,
	
	["SetIconLabels"] = function(self, topLeft, topRight, bottom)
		self.topLeftIcons.label = topLeft
		self.topRightIcons.label = topRight
		self.bottomIcons.label = bottom
	end,

	["Hide"] = function(self)
		self.frame:Hide()
	end,

	["Show"] = function(self)
		self.frame:Show()
	end,
	
	["UpdateSelected"] = function(self)
		for _, container in ipairs({self.bottomIcons, self.topLeftIcons, self.topRightIcons}) do
			if type(container.icons) == "table" then
				for _, icon in ipairs(container.icons) do
					icon.dark:Show()
				end
			end
		end
		self.selected.dark:Hide()
	end,
	
	["AddIcon"] = function(self, info)
		local container = self[info.where.."Icons"]
		assert(container, "Invalid icon container.")
		
		local size
		if info.where == "bottom" then
			size = 57
		else
			size = 51
		end
		
		local btn = CreateFrame("Button", nil, container)
		btn:SetBackdrop({edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=2})
		btn:SetBackdropBorderColor(0, 0, 0, 0.5)
		btn:SetHeight(size)
		btn:SetWidth(size)
		btn.title = info.name
		btn.info = info
		btn.obj = self
		info.frame = btn
		
		local image = btn:CreateTexture(nil, "BACKGROUND")
		image:SetWidth(size)
		image:SetHeight(size)
		image:SetPoint("TOP")
		image:SetTexture(info.texture)
		image:SetTexCoord(0.08, 0.922, 0.09, 0.918)
		image:SetVertexColor(1, 1, 1)
		btn.image = image
		
		local dark = btn:CreateTexture(nil, "OVERLAY")
		dark:SetAllPoints(image)
		dark:SetTexture(0, 0, 0, .3)
		dark:SetBlendMode("BLEND")
		btn.dark = dark
		btn:SetScript("OnEnter", Icon_OnEnter)
		btn:SetScript("OnLeave", Icon_OnLeave)
		btn:SetScript("OnClick", function(btn)
				if #self.children > 0 then
					self:ReleaseChildren()
				end
				self:SetTitle(btn.title)
				btn.info.loadGUI(self)
				self.selected = btn
				self:UpdateSelected()
			end)
		
		local highlight = btn:CreateTexture(nil, "HIGHLIGHT")
		highlight:SetAllPoints(image)
		highlight:SetTexture(1, 1, 1, .2)
		highlight:SetBlendMode("ADD")
		btn.highlight = highlight
		
		container.icons = container.icons or {}
		tinsert(container.icons, btn)
		
		self:LayoutIcons()
		
		if not container.textLabel then
			local label = container:CreateFontString()
			label:SetHeight(12)
			label:SetJustifyH("CENTER")
			label:SetJustifyV("CENTER")
			label:SetFont(TSMAPI.Design:GetContentFont("small"))
			TSMAPI.Design:SetIconRegionColor(label)
			label:SetText(container.label)
			
			if info.where == "bottom" then
				label:SetPoint("TOP", 0, 15)
				container.tooltipAnchor = "ANCHOR_BOTTOM"
			else
				label:SetPoint("TOP", 0, -53)
				container.tooltipAnchor = "ANCHOR_TOP"
			end
			container.textLabel = label
			
			-- make the lines that extend the width of the container out from the label
			local leftHLine = container:CreateTexture()
			leftHLine:SetPoint("TOPRIGHT", label, "TOPLEFT", -2, -6)
			leftHLine:SetHeight(1)
			TSMAPI.Design:SetIconRegionColor(leftHLine)
			local rightHLine = container:CreateTexture()
			rightHLine:SetPoint("TOPLEFT", label, "TOPRIGHT", 2, -6)
			rightHLine:SetHeight(1)
			TSMAPI.Design:SetIconRegionColor(rightHLine)
			
			if info.where == "bottom" then
				leftHLine:SetPoint("TOPLEFT", 0, 9)
				rightHLine:SetPoint("TOPRIGHT", 0, 9)
			else
				leftHLine:SetPoint("TOPLEFT", 0, -59)
				rightHLine:SetPoint("TOPRIGHT", 0, -59)
			end
		end
	end,

	-- called to set an external table to store status in
	["SetStatusTable"] = function(self, status)
		assert(type(status) == "table")
		self.status = status
		self:ApplyStatus()
	end,

	["ApplyStatus"] = function(self)
		local status = self.status or self.localstatus
		local frame = self.frame
		self:SetWidth(status.width or self.frame:GetWidth())
		self:SetHeight(status.height or self.frame:GetHeight())
		frame:ClearAllPoints()
		if status.top and status.left then
			frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
			frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
		else
			frame:SetPoint("CENTER")
		end
	end,
}


--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local function Constructor()
	local frameName = Type..AceGUI:GetNextWidgetNum(Type)

	local frame = CreateFrame("Frame", frameName, UIParent)
	frame:Hide()
	frame:EnableMouse(true)
	frame:SetMovable(true)
	frame:SetResizable(true)
	frame:SetFrameStrata("FULLSCREEN")
	frame:SetFrameLevel(2)
	TSMAPI.Design:SetFrameBackdropColor(frame)
	frame:SetMinResize(600, 400)
	frame:SetToplevel(true)
	frame:SetScript("OnHide", Frame_OnClose)
	frame:SetScript("OnMouseDown", Frame_OnMouseDown)
	frame:SetScript("OnMouseUp", Frame_OnMouseUp)
	frame.toMove = frame
	tinsert(UISpecialFrames, frameName)
	
	local closebutton = CreateFrame("Button", nil, frame)
	TSMAPI.Design:SetContentColor(closebutton)
	local highlight = closebutton:CreateTexture(nil, "HIGHLIGHT")
	highlight:SetAllPoints()
	highlight:SetTexture(1, 1, 1, .2)
	highlight:SetBlendMode("BLEND")
	closebutton.highlight = highlight
	closebutton:SetPoint("BOTTOMRIGHT", -29, -14)
	closebutton:SetHeight(29)
	closebutton:SetWidth(86)
	closebutton:SetScript("OnClick", CloseButton_OnClick)
	closebutton:Show()
	local label = closebutton:CreateFontString()
	label:SetPoint("TOP")
	label:SetJustifyH("CENTER")
	label:SetJustifyV("CENTER")
	label:SetHeight(28)
	label:SetFont(TSMAPI.Design:GetContentFont(), 28)
	TSMAPI.Design:SetWidgetTextColor(label)
	label:SetText(CLOSE)
	closebutton:SetFontString(label)
	
	local iconBtn = CreateFrame("Button", nil, frame)
	iconBtn:SetWidth(286)
	iconBtn:SetHeight(286)
	iconBtn:SetPoint("TOP", 0, 174)
	iconBtn:SetScript("OnMouseDown", Frame_OnMouseDown)
	iconBtn:SetScript("OnMouseUp", Frame_OnMouseUp)
	iconBtn.toMove = frame
	local icon = iconBtn:CreateTexture()
	icon:SetAllPoints()
	icon:SetTexture("Interface\\Addons\\TradeSkillMaster\\Media\\TSM_Icon_Pocket")
	frame.icon = icon

	local sizer = CreateFrame("Frame", nil, frame)
	sizer:SetPoint("BOTTOMRIGHT", -2, 2)
	sizer:SetWidth(20)
	sizer:SetHeight(20)
	sizer:EnableMouse()
	sizer:SetScript("OnMouseDown",Sizer_OnMouseDown)
	sizer:SetScript("OnMouseUp", Sizer_OnMouseUp)
	local image = sizer:CreateTexture(nil, "BACKGROUND")
	image:SetAllPoints()
	image:SetTexture("Interface\\Addons\\TradeSkillMaster\\Media\\Sizer")
	
	local content = CreateFrame("Frame", nil, frame)
	content:SetPoint("TOPLEFT", 11, -62)
	content:SetPoint("BOTTOMRIGHT", -11, 40)
	
	local titletext = frame:CreateFontString()
	titletext:SetPoint("TOP", 0, -32)
	titletext:SetHeight(22)
	titletext:SetJustifyH("CENTER")
	titletext:SetJustifyV("CENTER")
	titletext:SetFont(TSMAPI.Design:GetContentFont(), 22)
	TSMAPI.Design:SetTitleTextColor(titletext)
	
	local icontext = iconBtn:CreateFontString(nil, "OVERLAY")
	icontext:SetPoint("TOP", frame, "TOP", 0, 14)
	icontext:SetHeight(29)
	icontext:SetJustifyH("CENTER")
	icontext:SetJustifyV("CENTER")
	icontext:SetFont(TSMAPI.Design:GetContentFont(), 27)
	icontext:SetTextColor(unpack(ICON_TEXT_COLOR))
	
	-- local helpPlate = {
		-- FramePos = {x=0, y=0},
		-- FrameSize = {width=645, height=446},
		-- [1] = {ButtonPos={x=135, y=25}, HighLightBox={x=6, y=25, width=280, height=75}, ToolTipDir="UP", ToolTipText="Text will go here."},
		-- [2] = {ButtonPos={x=15, y=-206}, HighLightBox={x=8, y=-115, width=627, height=298}, ToolTipDir="RIGHT", ToolTipText="Text will go here."},
		-- [3] = {ButtonPos={x=355, y=-409}, HighLightBox={x=268, y=-418, width=109, height=26}, ToolTipDir="RIGHT", ToolTipText="Text will go here."},
	-- }
	
	-- local mainHelpButton = CreateFrame("Button", "TSM_MainHelpButton", frame, "MainHelpPlateButton")
	-- mainHelpButton:SetPoint("BOTTOMLEFT", 0, -12)
	-- mainHelpButton:SetScript("OnClick", function()
			-- if HelpPlate_IsShowing(helpPlate) then
				-- HelpPlate_Hide(true)
			-- else
				-- HelpPlate_Show(helpPlate, frame, mainHelpButton, true)
			-- end
		-- end)

	local widget = {
		type = Type,
		localstatus = {},
		frame = frame,
		-- container for children
		content = content,
		-- changable labels
		titletext = titletext,
		icontext = icontext,
		-- containers for the icons - size/pos set by OnWidthSet
		bottomIcons = CreateFrame("Frame", nil, frame),
		topLeftIcons = CreateFrame("Frame", nil, frame),
		topRightIcons = CreateFrame("Frame", nil, frame),
	}
	for method, func in pairs(methods) do
		widget[method] = func
	end
	closebutton.obj = widget

	return AceGUI:RegisterAsContainer(widget)
end

AceGUI:RegisterWidgetType(Type, Constructor, Version)