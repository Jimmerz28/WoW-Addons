﻿
local chatfadehide	                = false
local chatbackgroundhide			= true
local flashtabfade                		        = true
local uinoticetrue			= false
local csounds                   	        = true
local altclickinvite            	                = false
local eboxbottom                	= false
local fontoutline                   	        = false
local hidechannelnames                                  = true
local hideotherchannelnames             = true
local hideboxbground                            = true
local hideurl                                           = true
local hidechatcopy                      = true
local bottombuttonhide                          = false
local friendshide                                       = false
local removechannelspam                         = true

--[[-----------------------------------------------------------------------------

Setting descriptions:

To disable an option set it to false or true.

Chat fade hide.
    Set to false, to not Fade out the chat frames completely instead
	of partially.

Chat background hide.
    Set to false, to not Remove chat background which shows on hovering.

Flash tab fade.
	Set to false to fade tab flashing.

Ui notice true.
	Error notification frame, Set to false to turn off.
        (WTS,WTB,LF,LFG,LFM.You have been outbid,group has been disbanded,instance will reset)

Csounds.
	Chat Sounds, Set to false to turn off.

Alt click invite.
	Alt click invite to party, Set to false to turn off.
        (hold alt and left click to invite from the chat)

Eboxbottom.
	Set to true to have the editbox show at the bottom.

Font outline.
	Set to true to have the Chat text bold.

Hide channel names.
        Set to false to hide the channelnames.

Hide other channel names.
        Set to false to hide the channelnames this may fix for other language "let me know".

Hide box bground.
        Set to false to show the editbox background. "A white border will be there still working on this".

Hide scroll flash.
       Set to false to hide the chat flash icon.

Hide url.
       Set to false to hide url copy.


Hide chat copy.
       Set to false to hide the chat copy.

Bottom button hide.
       Set to true to hide the bottom button Arrow.

Friends hide.
       Set to true to hide the friends icon.

Remove Channel Spam.
       Mutes General and LocalDefense channels while inside instances.

-------------------------------------------------------------------------------]]

--[[-----------------------------------------------------------------------------
Full Screen Toogle.
Justify --"LEFT","RIGHT", or "CENTER" ChatFrames 1 - 10 --(combatlog) 2,RIGHT.
Real ID Frame.
-------------------------------------------------------------------------------]]
BINDING_HEADER_FULLSCREENTOOGLE = "FullScreenToogle";

ChatFrame2:SetJustifyH("RIGHT")

--Clamp the toast frame to screen to prevent it cutting out
BNToastFrame:SetClampedToScreen(true)

--[[-----------------------------------------------------------------------------
Chat background hide.
-------------------------------------------------------------------------------]]
if chatbackgroundhide then
for i=1,10 do
	_G['ChatFrame'..i]:SetFading(false)
   end
end

--[[-----------------------------------------------------------------------------
Disable tab flashing.
-------------------------------------------------------------------------------]]
if flashtabfade then
  FCF_FlashTab = function() end
  FCFTab_UpdateAlpha = function() end
end

--[[-----------------------------------------------------------------------------
Sticky Channels, 0 off, 1 on.
-------------------------------------------------------------------------------]]
ChatTypeInfo.EMOTE.sticky = 1
ChatTypeInfo.YELL.sticky = 1
ChatTypeInfo.RAID_WARNING.sticky = 1

--If you want to unsticky whispers or BNet whispers, remove the "--" on the following lines
--ChatTypeInfo.WHISPER.sticky = 0
--ChatTypeInfo.BN_WHISPER.sticky = 0

--[[-----------------------------------------------------------------------------
Chat fade hide.
-------------------------------------------------------------------------------]]
if chatfadehide then
	CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0
	CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0
	CHAT_FRAME_BUTTON_FRAME_MIN_ALPHA = 0
	for i=1, 10 do
		local tab = _G[format("%s%d%s", "ChatFrame", i, "Tab")]
		tab:SetAlpha(0)
		tab.noMouseAlpha = 0
	end
end

--[[-----------------------------------------------------------------------------
Font outline.
-------------------------------------------------------------------------------]]
if fontoutline then 
	for i = 1, 10 do
		local cF = _G[format("%s%d", "ChatFrame", i)]
		local font, size = cF:GetFont()
		cF:SetFont(font, size, "OUTLINE")
	end
end

--[[-----------------------------------------------------------------------------
Scrolldown.
-------------------------------------------------------------------------------]]
FloatingChatFrame_OnMouseScroll = function(self, dir)
  if(dir > 0) then
    if(IsShiftKeyDown()) then self:ScrollToTop()
    else
      self:ScrollUp() end
  else
    if(IsShiftKeyDown()) then self:ScrollToBottom()
    else
      self:ScrollDown() end
  end
end

--[[-----------------------------------------------------------------------------
Timestamp.
-------------------------------------------------------------------------------]]
	ChatFrame2ButtonFrameBottomButton:RegisterEvent("PLAYER_LOGIN")
	ChatFrame2ButtonFrameBottomButton:SetScript("OnEvent", function(f)
		TIMESTAMP_FORMAT_HHMM = "|r|cff777777[%I:%M]|r "
		TIMESTAMP_FORMAT_HHMM_24HR = "|r|cff777777[%H:%M]|r "
		TIMESTAMP_FORMAT_HHMM_AMPM = "|r|cff777777[%I:%M %p]|r "

		TIMESTAMP_FORMAT_HHMMSS = "|r|cff777777[%I:%M:%S]|r "
		TIMESTAMP_FORMAT_HHMMSS_24HR = "|r|cff777777[%H:%M:%S]|r "
		TIMESTAMP_FORMAT_HHMMSS_AMPM = "|r|cff777777[%I:%M:%S %p]|r "

		f:UnregisterEvent("PLAYER_LOGIN")
		f:SetScript("OnEvent", nil)
	end)

--[[-----------------------------------------------------------------------------
Remove Channel Spam.
-------------------------------------------------------------------------------]]
if removechannelspam then
local rcs = CreateFrame("frame")
rcs:RegisterEvent("PLAYER_ENTERING_WORLD")
rcs:SetScript("OnEvent", function()
	if IsInInstance() then
		ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, "General")
		ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, "LocalDefense")
	else
		ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, "General")
		ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, "LocalDefense")
	end
    end)
end

--[[-----------------------------------------------------------------------------
UI notice.
-------------------------------------------------------------------------------]]
if uinoticetrue then
	local notify = {
		["[Ll][Ff][Gg]"] = "|cff00ff00LFG",
		["[Ll][Ff][Mm]"] = "|cff00ff00LFM",
		["[Ww][Tt][Bb]"] = "|cff0000ffWTB",
		["[Ww][Tt][Ss]"] = "|cffff0000WTS",
		["^A buyer has been found for your auction of "] = false,
		["^This instance will reset in "] = false,
		["^You have been outbid on "] = false,
		["^Your group has been disbanded.$"] = false,
	}
	local framea = CreateFrame('Frame')
	framea:SetScript('OnEvent', function(self, event, message, sender)
		for pattern, tag in pairs(notify) do
			if message:find(pattern) then
				if tag then
					UIErrorsFrame:AddMessage(tag .. ": |cffcccccc" .. sender .. ": |cffffff00" .. message, 1.0, 1.0, 0.0, 1.0, UIERRORS_HOLD_TIME)
				else
					UIErrorsFrame:AddMessage("|cffffff00" .. message, 1.0, 1.0, 0.0, 1.0, UIERRORS_HOLD_TIME)
				end
				PlaySound('MapPing')
				break
			end
		end
	end)
	framea:RegisterEvent('CHAT_MSG_CHANNEL')
end

--[[-----------------------------------------------------------------------------
Misc functions (Frame size/move,Arrow keys,editbox to the top).
-------------------------------------------------------------------------------]] 
if hideboxbground then
        for i = 1, NUM_CHAT_WINDOWS do
        local editBoxleft = _G[format("%s%d%s", "ChatFrame", i, "EditBoxLeft")]
        local editBoxright = _G[format("%s%d%s", "ChatFrame", i, "EditBoxRight")]
        local editBoxmid = _G[format("%s%d%s", "ChatFrame", i, "EditBoxMid")]
			editBoxleft:SetAlpha(0)
			editBoxright:SetAlpha(0)
			editBoxmid:SetAlpha(0)
end
        end

	--Classic mode hides the editbox when not in use, IM mode fades it out
	--since we move the editbox above the chat tabs, we don't want it always showing
	SetCVar("chatStyle", "classic")
	for i = 1, 10 do
		local eb =  _G[format("%s%d%s", "ChatFrame", i, "EditBox")]
		local cfs = _G[format("%s%d", "ChatFrame", i)]
	        --Allow resizing chatframes to whatever size you wish!
		cfs:SetMinResize(100,10)
		cfs:SetMaxResize(0,0)
	        --Allow the chat frame to move to the end of the screen
                cfs:SetClampRectInsets(0,0,0,0)
		eb:SetAltArrowKeyMode(false)
if eboxbottom then
		eb:ClearAllPoints()
		eb:SetPoint("TOPLEFT",  cfs, "BOTTOMLEFT",  -5, 0)
		eb:SetPoint("TOPRIGHT", cfs, "BOTTOMRIGHT", 5, 0)
		eb:Hide() --call this incase we're just changing to classic mode for the first time
else
		eb:ClearAllPoints()
		eb:SetPoint("BOTTOMLEFT",  cfs, "TOPLEFT",  -5, 0)
		eb:SetPoint("BOTTOMRIGHT", cfs, "TOPRIGHT", 5, 0)
		eb:Hide() --call this incase we're just changing to classic mode for the first time
	end
end

--[[-----------------------------------------------------------------------------
Buttons.
-------------------------------------------------------------------------------]] 
local function Hide(f)
	f:SetScript('OnShow', f.Hide)
	f:Hide()
end

if bottombuttonhide then
	local hideFunc = function(frame) frame:Hide() end
	for i = 1, 10 do
		local ab = _G[format("%s%d%s", "ChatFrame", i, "ButtonFrame")]
		ab:SetScript("OnShow", hideFunc)
		ab:Hide()
	end
else
local function UpdateBottomButton(frame)
	local buttona = frame.buttonFrame.bottomButton
	if frame:AtBottom() then
		buttona:Hide()
	else
		buttona:Show()
	end
end

local function OnClick(buttonb)
	local frame = buttonb:GetParent()
	frame:ScrollToBottom()
	UpdateBottomButton(frame)
end

hooksecurefunc('FloatingChatFrame_OnMouseScroll', UpdateBottomButton)
for i= 1, NUM_CHAT_WINDOWS do
	local frame = _G['ChatFrame'..i]
	frame:HookScript('OnShow', UpdateBottomButton)
	
	local buttonc = frame.buttonFrame
	local bottom = buttonc.bottomButton
	bottom:SetPoint('BOTTOMRIGHT', frame, 'BOTTOMRIGHT')
	bottom:SetScript('OnClick', OnClick)
	bottom:SetParent(frame)
	bottom:SetAlpha(.6)
	
	UpdateBottomButton(frame)
	Hide(buttonc)
end
end

if friendshide then
	local hideFunc = function(frame) frame:Hide() end

	ChatFrameMenuButton:SetScript("OnShow", hideFunc) 
	ChatFrameMenuButton:Hide() 
	FriendsMicroButton:SetScript("OnShow", hideFunc) 
	FriendsMicroButton:Hide() 
else
FriendsMicroButton:SetAlpha(.6)
FriendsMicroButton:ClearAllPoints()
FriendsMicroButton:SetPoint('TOPRIGHT', ChatFrame1)
FriendsMicroButton:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
FriendsMicroButton:SetScript('OnClick', function(self, button)
	if button == 'RightButton' then
		PlaySound('igChatEmoteButton')
		ChatFrame_OpenMenu()
	else
		ToggleFriendsFrame(1)
	end
end)

ChatMenu:SetPoint('BOTTOMLEFT', FriendsMicroButton, 'TOPRIGHT')
Hide(ChatFrameMenuButton)
end

--[[-----------------------------------------------------------------------------
Channels.
-------------------------------------------------------------------------------]] 
if hideotherchannelnames then
CHAT_SAY_GET = "[S] %s: "
CHAT_YELL_GET = "[Y] %s: "
CHAT_WHISPER_GET = "[F] %s: "
CHAT_WHISPER_INFORM_GET = "[T] %s: "

CHAT_FLAG_AFK = "[AFK] "
CHAT_FLAG_DND = "[DND] "
CHAT_FLAG_GM = "[GM] "
end

if hidechannelnames then
local gsub = gsub
local time = _G.time
local newAddMsg = {}

	local rplc = {
		"[GEN]", --General
		"[TR]", --Trade
		"[WD]", --WorldDefense
		"[LD]", --LocalDefense
		"[LFG]", --LookingForGroup
		"[GR]", --GuildRecruitment
		"[BG]", --Battleground
		"[BGL]", --Battleground Leader
		"[G]", --Guild
		"[P]", --Party
		"[PL]", --Party Leader
		"[PL]", --Party Leader (Guide)
		"[O]", --Officer
		"[R]", --Raid
		"[RL]", --Raid Leader
		"[RW]", --Raid Warning
		"[%1]", --Custom Channels
	}

	local chn = {
		"%[%d0?%. General.-%]",
		"%[%d0?%. Trade.-%]",
		"%[%d0?%. WorldDefense%]",
		"%[%d0?%. LocalDefense.-%]",
		"%[%d0?%. LookingForGroup%]",
		"%[%d0?%. GuildRecruitment.-%]",
		gsub(CHAT_BATTLEGROUND_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_BATTLEGROUND_LEADER_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_GUILD_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_PARTY_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_PARTY_LEADER_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_PARTY_GUIDE_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_OFFICER_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_RAID_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_RAID_LEADER_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		gsub(CHAT_RAID_WARNING_GET, ".*%[(.*)%].*", "%%[%1%%]"),
		"%[(%d0?)%. (.-)%]", --Custom Channels
	}

	local L = GetLocale()
	if L == "ruRU" then --Russian
		chn[1] = "%[%d0?%. Общий.-%]"
		chn[2] = "%[%d0?%. Торговля.-%]"
		chn[3] = "%[%d0?%. Оборона: глобальный%]" --Defense: Global
		chn[4] = "%[%d0?%. Оборона.-%]" --Defense: Zone
		chn[5] = "%[%d0?%. Поиск спутников%]"
		chn[6] = "%[%d0?%. Гильдии.-%]"
	elseif L == "deDE" then --German
		chn[1] = "%[%d0?%. Allgemein.-%]"
		chn[2] = "%[%d0?%. Handel.-%]"
		chn[3] = "%[%d0?%. Weltverteidigung%]"
		chn[4] = "%[%d0?%. LokaleVerteidigung.-%]"
		chn[5] = "%[%d0?%. SucheNachGruppe%]"
		chn[6] = "%[%d0?%. Gildenrekrutierung.-%]"
	elseif L == "frFR" then --French
		chn[1] = "%[%d0?%. Général.-%]"
		chn[2] = "%[%d0?%. Commerce.-%]"
		chn[3] = "%[%d0?%. DéfenseUniverselle%]"
		chn[4] = "%[%d0?%. DéfenseLocale.-%]"
		chn[5] = "%[%d0?%. RechercheDeGroupe%]"
		chn[6] = "%[%d0?%. RecrutementDeGuilde.-%]"
	elseif L == "zhTW" then --Traditional Chinese
		chn[1] = "%[%d0?%. 綜合.-%]"
		chn[2] = "%[%d0?%. 交易.-%]"
		chn[3] = "%[%d0?%. 世界防務%]"
		chn[4] = "%[%d0?%. 本地防務.-%]"
		chn[5] = "%[%d0?%. 組隊%]"
		chn[6] = "%[%d0?%. 公會招募.-%]"
	end

	local AddMessage = function(frame, text, ...)
	for i = 1, 17 do	
		text = gsub(text, chn[i], rplc[i])
	end

	--If Blizz timestamps is enabled, stamp anything it misses
	if CHAT_TIMESTAMP_FORMAT and not text:find("^|r") then
		text = BetterDate(CHAT_TIMESTAMP_FORMAT, time())..text
	end
	text = gsub(text, "%[(%d0?)%. .-%]", "[%1]") --custom channels
	return newAddMsg[frame:GetName()](frame, text, ...)
end

	for i = 1, 10 do
		local fcl = _G[format("%s%d", "ChatFrame", i)]
		--skip combatlog and frames with no messages registered
		if i ~= 2 then -- skip combatlog
			newAddMsg[format("%s%d", "ChatFrame", i)] = fcl.AddMessage
			fcl.AddMessage = AddMessage
		end
	end
end

--[[-----------------------------------------------------------------------------
URL Copy.
-------------------------------------------------------------------------------]] 
if hideurl then
local color = "ffffff"
local pattern = "[wWhH][wWtT][wWtT][\46pP]%S+[^%p%s]"

function string.color(text, color)
	return "|cff"..color..text.."|r"
end

function string.link(text, type, value, color)
	return "|H"..type..":"..tostring(value).."|h"..tostring(text):color(color or "ffffff").."|h"
end

StaticPopupDialogs["LINKME"] = {
	text = "URL COPY",
	button2 = CANCEL,
	hasEditBox = true,
        editBoxWidth = 400,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
	whileDead = 1,
	maxLetters = 255,
}

local function f(url)
	return string.link("["..url.."]", "url", url, color)
end

local function hook(self, text, ...)
	self:f(text:gsub(pattern, f), ...)
end

for i = 1, NUM_CHAT_WINDOWS do
	if ( i ~= 2 ) then
		local lframe = _G["ChatFrame"..i]
		lframe.f = lframe.AddMessage
		lframe.AddMessage = hook
	end
end

local ur = ChatFrame_OnHyperlinkShow
function ChatFrame_OnHyperlinkShow(self, link, text, button)
	local type, value = link:match("(%a+):(.+)")
	if ( type == "url" ) then
		local dialog = StaticPopup_Show("LINKME")
		local editbox1 = _G[dialog:GetName().."EditBox"]  
		editbox1:SetText(value)
		editbox1:SetFocus()
		editbox1:HighlightText()
		local button = _G[dialog:GetName().."Button2"]
            
		button:ClearAllPoints()
           
		button:SetPoint("CENTER", editbox1, "CENTER", 0, -30)
	else
		ur(self, link, text, button)
	end
    end
end

--[[-----------------------------------------------------------------------------
Chat copy.
-------------------------------------------------------------------------------]]
if hidechatcopy then
local frame = CreateFrame('Frame', nil, UIParent)
frame:SetFrameStrata('DIALOG')
frame:SetPoint('LEFT', 3, 10)
frame:SetHeight(400)
frame:SetWidth(500)
frame:Hide()

frame:SetBackdrop({
	bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
	edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
	edgeSize = 16, tileSize = 16, tile = true,
	insets = { left = 3, right = 3, top = 5, bottom = 3 }
})
frame:SetBackdropColor(0, 0, 0, 1)

local scrollArea = CreateFrame('ScrollFrame', "wChatScrollFrame", frame, 'UIPanelScrollFrameTemplate')
scrollArea:SetPoint('TOPLEFT', 13, -30)
scrollArea:SetPoint('BOTTOMRIGHT', -30, 13)

local editBox = CreateFrame('EditBox', nil, frame)
editBox:SetMultiLine(true)
editBox:SetMaxLetters(20000)
editBox:EnableMouse(true)
editBox:SetAutoFocus(true)
editBox:SetFontObject(ChatFontNormal)
editBox:SetWidth(450)
editBox:SetHeight(270)
editBox:SetScript('OnEscapePressed', function() frame:Hide() end)

scrollArea:SetScrollChild(editBox)

local close = CreateFrame('Button', nil, frame, 'UIPanelCloseButton')
close:SetPoint('TOPRIGHT', 0, -1)

local CopyChat = function(self, chatTab)
	local chatFrame = _G['ChatFrame' .. chatTab:GetID()]
	local numMessages = chatFrame:GetNumMessages()
	if numMessages >= 1 then
		local GetMessageInfo = chatFrame.GetMessageInfo
		local text = GetMessageInfo(chatFrame, 1)
		for index = 2, numMessages do
			text = text .. "\n" .. GetMessageInfo(chatFrame, index)
		end
		frame:Show()
		editBox:SetText(text)
	end
end

hooksecurefunc('FCF_Tab_OnClick', function(self)
	local info = UIDropDownMenu_CreateInfo()
	info.text = "Copy Chat Contents"
	info.notCheckable = true
	info.func = CopyChat
	info.arg1 = self
	UIDropDownMenu_AddButton(info)
end)
end

--[[-----------------------------------------------------------------------------
Chat Sounds.
-------------------------------------------------------------------------------]]
if csounds then
local name, ns = ...
local mediaPath = [=[Interface\AddOns\wChat\media\]=]
local name = UnitName'player'
local evtsounds = {
	["CHAT_MSG_GUILD"] = "Kachink",
	["CHAT_MSG_OFFICER"] = "Link",
	["CHAT_MSG_PARTY"] = "pop1",
	["CHAT_MSG_PARTY_LEADER"] = "pop2",
	["CHAT_MSG_RAID"] = "Text2",
	["CHAT_MSG_WHISPER"] = "Heart",
	["CHAT_MSG_GMWHISPER"] = "gasp",
	["CHAT_MSG_RAID_LEADER"] = "Choo",
	["CHAT_MSG_BATTLEGROUND"] = "switchy",
	["CHAT_MSG_BATTLEGROUND_LEADER"] = "doublehit",
	["CHAT_MSG_CHANNEL"] = true, --dummy,
	["CHAT_MSG_REALID"] = "Heart"
}

local cs = CreateFrame'Frame'
cs:SetScript('OnEvent', function(self, event, ...)
	local msg, author, lang, channel = ...
	if author == name then return end
	if event == "CHAT_MSG_CHANNEL" then
		-- TODO
	else
		local sound = mediaPath..evtsounds[event]..'.mp3'
		PlaySoundFile(sound)
	end
end)

for event, sound in pairs(evtsounds) do
	cs:RegisterEvent(event)
   end
end

--[[-----------------------------------------------------------------------------
Alt click invite.
-------------------------------------------------------------------------------]]
if altclickinvite then
           local origSetItemRef = SetItemRef
                 SetItemRef = function(link, text, button)
           local linkType = string.sub(link, 1, 6)
         if IsAltKeyDown() and linkType == "player" then
           local aname = string.match(link, "player:([^:]+)")
                 InviteUnit(aname)
                 return nil
              end
         return origSetItemRef(link,text,button)
     end
end

print("|cff3399FFw|rChat: Loaded|r");
