--[[///////////////////////////////////////////////////////////////////////////////////////
    GENIE 5.0.4
        UI 283; Creates a fancy GUI 
    
    Author: adjo
    Website: http://wow.curseforge.com/projects/genie
    Feedback: http://wow.curseforge.com/projects/genie/tickets/
    Localization: http://wow.curseforge.com/addons/genie/localization/
    
	adjo 2011-01-18T11:34:28Z
    
	This document may be redistributed as a whole, 
    provided it is unaltered and this copyright notice is not removed.    
    
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
    A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
    CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
    EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
    LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
    
--///////////////////////////////////////////////////////////////////////////////////////]]


local Genie = LibStub("AceAddon-3.0"):GetAddon("Genie")
local Module = Genie:NewModule("UI", "AceHook-3.0", "AceComm-3.0", "AceSerializer-3.0")
local API = Genie.API
local AceGUI = LibStub and LibStub("AceGUI-3.0", true)
local L = LibStub("AceLocale-3.0"):GetLocale("Genie")

assert(Genie, 'Genie required')


-- WOW API
local NORMAL_FONT_COLOR_CODE = NORMAL_FONT_COLOR_CODE
local FONT_COLOR_CODE_CLOSE = FONT_COLOR_CODE_CLOSE

local treeList = {}
local cR, families = {}, {}
local GCR, GCF 

local UI, tree, editor
local UI_OnClose, UI_OnCancel, UI_OnReset
local tree_OnClick, tree_OnDoubleClick, tree_OnDragAndDrop, tree_OnGroupSelected
  
local DDMenuFrame = CreateFrame("Frame", "GenieUI_DDMenuFrame", UIParent, "UIDropDownMenuTemplate")
DDMenuFrame.displayMode = "MENU"
DDMenuFrame.info = {}

Genie.OPT.GUI = {
    name = L.GUI,
    handler = Module,
    type = 'group',
    args = {
        attachTo = {
            type = "multiselect",
            name = L.AttachTo,
            values = {
                minimap = L.Minimap,
                tooltip = L.Tooltip,
            },
            get = "GetAttachTo",
            set = "SetAttachTo",
        },
        color = {
            type = 'group',
            inline = true,
            name = L.Colors,
            get = "GetColor",
            set = "SetColor",  
            args = {
                types = {           
                    type = 'group',
                    inline = false,
                    name = L.Classranking,                   
                    args = {
                        bool = {
                            name = L.Bool,
                            type = 'color',
                            --hasAlpha = true,
                            order = 1,
                        },
                        number = {
                            name = L.Number,
                            type = 'color',
                            --hasAlpha = true,
                            order = 2,
                        },
                        string = {
                            name = L.String,
                            type = 'color',
                            --hasAlpha = true,
                            order = 3,
                        },
                        family = {
                            name = L.Family,
                            type = 'color',
                            --hasAlpha = true,
                            order = 4,
                        },
                        combined = {
                            name = L.Combined,
                            type = 'color',
                            --hasAlpha = true,
                            order = 5,
                        },
                        disabled = {
                            name = L.Disabled,
                            type = 'color',
                            --hasAlpha = true,
                            order = 6,
                        },
                        
                    },
                },
                editmode = {
                    order = 5,
                    type = 'group',
                    inline = true,
                    name = L.Configmode,
                    args = {
                        editHighlight = {
                            name = L.Highlight,
                            hasAlpha = true,
                            type = 'color',
                        },
                        editEnable = {
                            name = L.ToggleWithRankingEditor,
                            desc = L["ToggleWithRankingEditorDesc"],
                            type = 'toggle',
                            set = "ToggleDBGlobal",
                            get = "GetDBGlobal",
                        }
                    },
                },
            },
        },
        
	},
}

local defaults = {
    global = {
        edit = false,
        color = {
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
    },
	profile = {
        attachTo = {
            tooltip = false,
        },
    },
}

--todo:use prototype instead
local function tableInsert(tab, options)
    if type(options) == 'table' then
        for k,v in pairs(options) do
            if tab[k] then
                tableInsert(tab[k], v)
            elseif tab[k] == nil then
                tab[k] = v
            end
        end
    elseif tab == nil then
        tab = options
    end
end

function Genie.UTILS.GetColor(forWhat)
   local db = Genie.db.global 
   if db.color and db.color[forWhat] then 
        local r,g,b,a = db.color[forWhat].r, db.color[forWhat].g, db.color[forWhat].b, db.color[forWhat].a
        r = math.ceil(r*255); g = math.ceil(g*255); b = math.ceil(b*255); a = math.ceil(a*255)
        return  string.format("|c%.2X%.2X%.2X%.2X",a, r,g,b), string.format("%.2X%.2X%.2X%.2X",a,r,g,b)
    else
        return NORMAL_FONT_COLOR_CODE, '|c80' .. string.match(NORMAL_FONT_COLOR_CODE, '%|c..(%w+)')
   end
end


function Module:GetAttachTo(info, value)
    return self.db.profile[info[#info]][value]
end
function Module:SetAttachTo(info, value)
    self.db.profile.attachTo[value] = not self.db.profile.attachTo[value]
    self:NotifyDBChange('profile.attachTo')
end

function Module:ToggleDBGlobal(info, value)
    self.db.global[info[#info]] = not self.db.global[info[#info]]
end
function Module:GetDBGlobal(info, value)
	if type(info) == 'table' then
    	return self.db.global[info[#info]]
	else
		return self.db.global[info]
	end
end


function Module:GetColor(info)
    local color = self.db.global.color[info[#info]]
    if color then
        return color.r, color.g, color.b, color.a
    end
end

function Module:SetColor(info, r, g, b, a)
    local c = self.db.global.color
    c[info[#info]] = {}
    c[info[#info]].r = r; c[info[#info]].g = g; c[info[#info]].b = b; c[info[#info]].a = a
    if info[#info] == 'editHighlight' then
        self:UpdateEditButton()
    end
end
function Module:NotifyDBChange(changedEntry)
    self:SendCommMessage(Genie.CONSTANT.COM.DBSET, self:Serialize(changedEntry), 'WHISPER', UnitName("player"))     
end

--[[///////////////////////////////////////////////////////////////////////////////////]]
function Module:OnInitialize()
    self.db = Genie:GetDB()
    
    GCR = self.db.profile.classranking
    GCF = self.db.profile.customFamilies
    
    -- GUI
    local ac = LibStub("AceConfig-3.0")
    ac:RegisterOptionsTable('Genie GUI', Genie.OPT.GUI)
	 LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie GUI', Genie.OPT.GUI.name, "Genie")
end
function Module:RefreshConfig()
    tableInsert(self.db, defaults)
    GCR = self.db.profile.classranking
    GCF = self.db.profile.customFamilies    
    self:LoadConfig()
end

function Module:OnEnable()
    self:RefreshConfig()
    self:LoadConfig()
    self:CreateUI()    
    --///////////////////////////////////////////////
    -- Default; works; beta 13117; ptr 13164 (4.0.1 release) 
    -- Uses :GetID() on both the item and the parent frame to get slotID and bagID
    API:RegisterForEditmode('_C', '^CONTAINERFRAME%d+ITEM',  '^.-ITEM%d+') --works
    API:RegisterForEditmode('_B', '^BANKFRAME', '^.*ITEM(%d+)', 
        function(container, itemButton, match)
            return string.match(tostring(itemButton:GetName()):upper(), match), BANK_CONTAINER
        end
    )  --works
    API:RegisterForEditmode('_I', '^CHARACTER.-SLOT',  '^.-SLOT') --works
    -- beta 13117;
    -- all tabs will be matched with the highest numbered _G<#>T,
    -- because they are all named the same.
    -- that's no problem because the custom function takes care of it
    API:RegisterForEditmode('_G', '^GUILDBANK.*', '^GUILDBANKCOLUMN(%d+)BUTTON(%d+)', 
        function(container, itemButton, match)
            local bag, slot = string.match(tostring(itemButton:GetName()):upper(), match)
            slot = (bag -1) * NUM_SLOTS_PER_GUILDBANK_GROUP + slot
            return slot, GetCurrentGuildBankTab()
        end
    )
    --///////////////////////////////////////////////]]
    --// ONEBAG  -- beta13117
    API:RegisterForEditmode('_S', '^ONEBAGFRAME.*', '^ONEBAGFRAMEBAG(%d+)ITEM(%d+)', 
        function(container, itemButton, match)
            local bag, slot = string.match(tostring(itemButton:GetName()):upper(), match)
            return slot, bag
        end
    )  --works
    --///////////////////////////////////////////////]]
    --// ONEBANK  -- beta13117
    API:RegisterForEditmode('_BC', '^ONEBANKFRAMEBAG%d+', '^ONEBANKFRAMEBAG(%d+)ITEM(%d+)', 
        function(container, itemButton, match)
            local bag, slot = string.match(tostring(itemButton:GetName()):upper(), match)
            return slot, bag
        end
    )
    API:RegisterForEditmode('_B', '^ONEBANKFRAMEBAG%-1', '^ONEBANKFRAMEBAG(%d+)ITEM(%d+)', 
        function(container, itemButton, match)
            local bag, slot = string.match(tostring(itemButton:GetName()):upper(), match)
            if bag then bag = bag + 1 end
            return slot, bag
        end
    )    
    --///////////////////////////////////////////////]]
    
    self:UpdateEditButton()
    self:EnableHooks()    
    self:RegisterComm(Genie.CONSTANT.COM.DBSET)  
end

function Module:OnCommReceived(prefix, message, distribution, sender)
    local success, message = self:Deserialize(message)       
    if prefix == Genie.CONSTANT.COM.DBSET and message == 'profile.customFamiles' then
        self:ResetUI()
    elseif prefix == Genie.CONSTANT.COM.DBSET then
        self:RefreshConfig()
    end
end    

function Module:LoadConfig()
    cR = Genie.UTILS.CopyTable(GCR)
    families = GCF
end

function Module:CancelConfig()
    for k,v in pairs(cR) do
        GCR[k] = v
    end
end
function Module:OnDisable()
    self:UnhookAll()
end
--[[///////////////////////////////////////////////////////////////////////////////////]]
function UI_OnCancel(widget, event, value, frame, ...)
    Module:CancelConfig()
    Module:RefreshUI()
end

function UI_OnClose(widget, event, ...)
    Module:ResetUI()
    API:SetEditmode(false)
end
function UI_OnIgnore(widget, event, value, frame, ...)
    if value == 'RightButton' then
        Module:UpdateInfo('ignore')
    else
        local selected = tree:GetSelected()
        if next(selected) then
            for rank in pairs(selected) do
                if cR[rank].type == 'family' then
                    if IsShiftKeyDown() then
                        Genie:FamilyIgnore(nil, cR[rank].name .. Genie.CONSTANT.SEPARATOR .. 1)
                    else
                        Genie:FamilyIgnore(nil, cR[rank].name)
                    end
                end
                Module:UpdateInfo('rank', rank)                   
            end
        else
   
            StaticPopupDialogs["NOTHING_SELECTED"] = {
                text = L["Please select something first"],
                button1 = CLOSE,
                    OnAccept = function()
                        --GreetTheWorld()
                    end,
                timeout = 0,
                whileDead = true,
                hideOnEscape = true,
            }
            StaticPopup_Show("NOTHING_SELECTED")
        end
    end
end
function UI_OnOverview(widget, event, value, frame, ...)
    Module:ResetUI()
end
--[[///////////////////////////////////////////////////////////////////////////////////]]
function Module:CreateUI()
    if UI then
		return
	else
        
        --todo: don't use
        UI = AceGUI:Create("GenieFrame")
        UI:SetTitle(L["Genie"])

        UI:SetButtonText("ignorebutton", L.Ignore)
        UI.ignorebutton:RegisterForClicks("RightButtonUp")      
        
        UI:SetLayout("Flow")
        UI:SetCallback("OnClose", UI_OnClose)
        UI:SetCallback("OnCancelButton", UI_OnCancel)
        UI:SetCallback("OnIgnoreButton", UI_OnIgnore)
        self.frame = UI
		
        tree = AceGUI:Create("GenieTreeGroup")
        tree:SetFullHeight(true)
        tree:SetFullWidth(true)
        tree:SetLayout("Flow")
        tree:SetCallback("OnClick", tree_OnClick)
        tree:SetCallback("OnDoubleClick", tree_OnDoubleClick)
        tree:SetCallback("OnDragAndDrop", tree_OnDragAndDrop)
        tree:SetCallback("OnPairSelected", tree_OnPairSelected)
        tree:SetTreeWidth(275, true)
        tree:EnableButtonTooltips(false)
       
        UI:AddChild(tree)
        UI:Hide()
    end 
end

function Module:ShowUI()
	if not self.frame then
		self:CreateUI()
    else
        self:RefreshUI()
	end
    self.frame:Show()
    if self:GetDBGlobal('editEnable') then
        API:SetEditmode(true)
    end
end

function Module:HideUI()
    if self.frame then
        self.frame:Hide()
        API:SetEditmode()
    end
end

function Module:IsVisible()
    return self.frame and self.frame:IsVisible()
end
function Module:ResetUI(show)
    tree:UnSelect()
    self:RefreshUI()
    self:UpdateInfo(show)
end

function Module:RefreshUI(rank)
	if tree then
        self:UpdateTree(tree)
        if rank then tree:Select(rank) end
        tree:RefreshTree()     
    end
	return true
end


function Module:DragAndDrop(changed)
    if type(changed) == 'table' then
        local update = changed[1] .. " " .. changed[2]
        Genie:ClassRankingUpdate(nil, update)
        self:ResetUI()
    end
end

--[[///////////////////////////////////////////////////////////////////////////////////]]   
local SortItems = function(a,b)
    if a:GetQuality() == b:GetQuality() then
        return a:GetName() > b:GetName()
    else
        return a:GetQuality() > b:GetQuality()
    end
end


function Module:UpdateIgnoreButton(value)
    if cR[value] and cR[value].type == 'family' then
        UI.ignorebutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    else
        UI.ignorebutton:RegisterForClicks("RightButtonUp")
    end
end
function Module:UpdateTree(tree)
    wipe(treeList)
    for k, v in ipairs(GCR) do
        local t = {}
            t.value = k
            t.color = Genie.UTILS.GetColor(v.type)
            if v.invert then
                t.text = v.name .. ' |cFFFF9933' .. L['Inverted:short'] .. FONT_COLOR_CODE_CLOSE
            else
                t.text = v.name
            end
            if v.enabled then
                t.icon = "Interface\\BUTTONS\\UI-CheckBox-Check"
            else
                t.color = Genie.UTILS.GetColor('disabled')
                t.icon = "Interface\\BUTTONS\\UI-CheckBox-Check-Disabled"
            end
        table.insert(treeList, t)
    end
    tree:SetTree(treeList)   
end

function Module:UpdateInfo(show, value)
    -- todo: use aceconfigdialog:open('optionstable', simplegroup)
    tree:ReleaseChildren()
    tree:SetLayout("Fill")
    
    --use as wrapper (to do the layout right)
    local simplegroup = AceGUI:Create("SimpleGroup")
        simplegroup:SetFullWidth(true)
        simplegroup:SetLayout('Flow')    

        if show == 'ignore' then self:InfoIgnoreList(simplegroup)
        elseif show == 'rank' then
            if value ~= 'current' then
                self.CurrentRank = value
                self:RefreshUI(value)
                self:CreateRankEditor(simplegroup, value)
            elseif value == 'current' and self.CurrentRank then
                self:RefreshUI(self.CurrentRank)
                self:CreateRankEditor(simplegroup, self.CurrentRank)
            else
                self:RefreshUI(1)
                self:CreateRankEditor(simplegroup, 1)
            end
        elseif show == 'combine' then self:CreateCombineEditor(simplegroup, value)
        else self:InfoOverview(simplegroup)
        end

    local frame = AceGUI:Create("ScrollFrame")
        frame:SetLayout("Flow")   
        frame:AddChild(simplegroup)
    tree:AddChild(frame)
end
function Module:InfoOverview(widget)

end
function Module:InfoIgnoreList(widget)
    local watchContainer = 'S' -- bag
    if Genie.atBank then watchContainer = 'B'
        elseif Genie.atGuildBank then watchContainer = 'G'
        end

    tree:UnSelect()
    tree:RefreshTree()
        
    --heading        
    local head = AceGUI:Create("Heading")
        head:SetText(L.Ignore .. ' ['..FONT_COLOR_CODE_CLOSE ..'|cFFFFFFFF' ..Genie.UTILS.GroupGetName(watchContainer) .. FONT_COLOR_CODE_CLOSE ..']')
        head:SetFullWidth(true)
        widget:AddChildren(head)

    --directly and globally ignored
    local dI = AceGUI:Create("InlineGroup")
        dI:SetRelativeWidth(1)
        dI:SetLayout('Flow')
        dI:SetTitle(L.Ignore)
        dI:SetFullWidth(true)
        
            local f = Genie.CLASS.Family:New(L.Ignore)        
            local items = f:GetAllItems()
            table.sort(items, SortItems)
        
            for _, i in pairs(items) do
                    local l = AceGUI:Create('GenieIcon')
                    l:SetLabel(i:GetId())
                    l:SetMinQualityForGlow(1)                      
                    l:SetGlow(i.Rarity) --alternative:also colors the label; l:SetQuality(i.Rarity)
                    l:SetImage(i.Texture)
                    l:SetImageSize(30,30)
                    l:SetCallback("OnClick", function(widget)
                        Module.DDMenuShow(widget, {'RF', i, f:GetName(), l})
                    end)
                    dI:AddChild(l)
            end
            items = nil
        
        if dI.content:GetChildren() then
            widget:AddChild(dI)   
        end    
        
    --family ignored        
            local f
            for family, def in Genie.UTILS.pairsByKeys(families) do
                if type(def.ignore) == 'table' and Genie.CLASS.Family.NewEx(family) then
                    f = Genie.CLASS.Family:New(family)  
                    if f:GetIgnore(watchContainer) then                  
                        local fI = AceGUI:Create("InlineGroup")
                            fI:SetRelativeWidth(1)
                            fI:SetTitle(L.Family .. ' ['.. f:GetName():gsub("^%l", string.upper) .. ']')
                            fI:SetLayout('Flow')   
                            fI:SetFullWidth(true)  

                        for _, i in pairs(f:GetAllItems(watchContainer, true)) do
                            local l = AceGUI:Create('GenieIcon')
                            l:SetLabel(i:GetId())
                            l:SetMinQualityForGlow(1)                      
                            l:SetGlow(i.Rarity) --alternative:also colors the label; l:SetQuality(i.Rarity)
                            l:SetImage(i.Texture)
                            l:SetImageSize(30,30)
                            
                            --todo: remove family, remove item from family
                            --l:SetCallback("OnClick", function(widget)
                            --    Module.DDMenuShow(widget, {'RF', i:GetId(), v.families, container})
                            --end)
                            
                            fI:AddChild(l)
                        end

                        if fI.content:GetChildren() then
                            widget:AddChild(fI)   
                        end            
                        
                    end
                end
            end
             
end

--[[///////////////////////////////////////////////////////////////////////////////////]]   
function tree_OnDragAndDrop(widget, event, value, ...)
    Module:DragAndDrop(value)
end
    
function tree_OnClick(widget, event, value, ...)
    Module:UpdateInfo('rank', value) 
    Module:UpdateIgnoreButton(value)
end

function tree_OnDoubleClick(widget, event, value, ...)
    Module:ToggleRank(value)
    Module:UpdateInfo('rank', value)         
end
    
function tree_OnPairSelected(widget, event, list, ...)
    Module:UpdateInfo('combine', list)   
end

--[[///////////////////////////////////////////////////////////////////////////////////]]
function Module:ToggleRank(rank, value)
   local rank = tonumber(rank)
   if GCR[rank] then
        if GCR[rank].enabled or value == false then
            Genie:ClassRankingDisable(nil, rank) 
        else
            Genie:ClassRankingEnable(nil, rank) 
        end
        self:RefreshUI()
    end
end

function Module:ToggleInvert(rank, value)
   local rank = tonumber(rank)
   if GCR[rank] then
        if not GCR[rank].invert == value then
            Genie:ClassRankingInvert(nil, rank) 
        end
        self:RefreshUI()
    end
end
--[[///////////////////////////////////////////////////////////////////////////////////]]
function Module:CreateRankEditor(frame, rank)
    local class = GCR[rank]
    if class then
    
    local head = AceGUI:Create("Heading")
        head:SetText(class.name or L[class.criteria])
        head:SetFullWidth(true)
    frame:AddChild(head)

    --[[
        Basics
        
        *Enabled = Enable/ Disable the selceted rank
        *Invert = Invert the sorting of this rank
    --]]
    local basics = AceGUI:Create("InlineGroup")
        basics:SetLayout("Flow")
        basics:SetTitle('')
        basics:SetFullWidth(true)
    
    --enabled
    local enabled = AceGUI:Create("CheckBox")
        enabled:SetRelativeWidth(0.5)
        enabled:SetValue(class.enabled)
        enabled:SetLabel(L.Enabled)
        enabled:SetCallback("OnEnter", OnEvent)
        enabled:SetCallback("OnValueChanged", function () Module:ToggleRank(rank, enabled:GetValue()) end )
        basics:AddChild(enabled)
    --]]

    --invert
    local invert = AceGUI:Create("CheckBox")
        invert:SetRelativeWidth(0.5)
        invert:SetValue(class.invert)
        invert:SetLabel(L.Invert)
        invert:SetCallback("OnValueChanged", function () Module:ToggleInvert(rank, invert:GetValue()) end )        
        basics:AddChild(invert)
    --]]
    
    frame:AddChild(basics)
    
   
    --[[
        Combine
    --]]
    local other = AceGUI:Create("InlineGroup")
        other:SetTitle(L.Combine)
        other:SetLayout("Flow")
        other:SetFullWidth(true)
        
    if class.type == 'combined' then
        local delete = AceGUI:Create("Button")
        delete:SetText(L.Delete)
        delete:SetRelativeWidth(0.5)
        delete:SetCallback("OnClick", function() 
            Genie:ClassRankingDelete(nil, rank)
            tree:ReleaseChildren()
            Module:UpdateInfo('rank', 1)
        end)
        other:AddChild(delete)    
    
        local name = AceGUI:Create("EditBox")
        name:SetText(class.name)
        name:SetLabel(L.Name)
        name:SetRelativeWidth(1)
        name:SetCallback('OnEnterPressed', function(widget, event, value, frame, ...) 
            if strlen(value) > 0 then
                GCR[rank].name = value
            else
                widget:SetText(class.name)
            end
            Module:RefreshUI()
        end )
        other:AddChild(name)

        local criteria = AceGUI:Create("MultiLineEditBox")
        criteria:SetText(class.criteria)
        criteria:SetRelativeWidth(1)
        criteria:SetLabel(L.Criteria)
        criteria:DisableButton(true)
        criteria:SetDisabled(true)
        criteria:SetCallback('OnLeave', function(widget) 
            widget:SetText(class.criteria)
        end )
        other:AddChild(criteria)

    elseif Genie.CONSTANT.OP[class.type] then
        local combine = AceGUI:Create("Button")
        combine:SetText(L.Filter)
        combine:SetRelativeWidth(0.5)
        combine:SetCallback("OnClick", function()
            Module:UpdateInfo('combine', {rank})
        end)
        other:AddChild(combine)
    end
    
    if other.content:GetChildren() then
        frame:AddChild(other) 
    end   
    

    if class.type == 'family' then
        local f = Genie.CLASS.Family:New(class.name)
    
        local family = AceGUI:Create("InlineGroup")
        family:SetTitle(L.Family)
        family:SetLayout("Flow")
        family:SetFullWidth(true)

        if not f:GetSet() and class.name ~= L['Equipment sets'] then
            local delete = AceGUI:Create("Button")
            delete:SetText(L.Delete)
            delete:SetRelativeWidth(0.5)
            delete:SetCallback("OnClick", function() 
                Genie:FamilyDelete(nil, class.name)
                Module:UpdateInfo('rank', 1)
            end)
            family:AddChild(delete)    
    
            local name = AceGUI:Create("EditBox")
            name:SetText(class.name)
            name:SetLabel(L.Name)
            name:SetRelativeWidth(0.5)
            name:SetCallback('OnEnterPressed', function(widget, event, value, frame, ...) 
                value = gsub(value, '[^%w _]', '')
                if strlen(value) == 0 or not Genie:FamilyRename(nil, class.name .. Genie.CONSTANT.SEPARATOR .. value:lower()) then
                    widget:SetText(class.name)
                else
                    Module:UpdateInfo('rank', rank)
                end
            end )
            family:AddChild(name)           
        end
        
        local ignore = AceGUI:Create("InlineGroup")
            ignore:SetTitle(L.Ignore)
            ignore:SetRelativeWidth(1)
            ignore:SetLayout('Flow')            
            local check
            for short, def in pairs(Genie.Container) do
                if not def.api then
                    check = AceGUI:Create("CheckBox")
                    check:SetLabel(def.NAME or short)
                    check:SetType('checkbox')
                    if families[class.name] and families[class.name].ignore then
                        check:SetValue(families[class.name].ignore[short])
                    else
                        check:SetValue(false)
                    end
                    check:SetRelativeWidth(0.5)
                    check:SetCallback("OnValueChanged", function () Genie:FamilyIgnore(nil, class.name .. Genie.CONSTANT.SEPARATOR .. short) end )
                    ignore:AddChild(check)
                end
            end
            
            --//////////////////////////////////////////////////////////
            
                local ignoreWhen = AceGUI:Create("InlineGroup")
                    ignoreWhen:SetTitle(L.When)
                    ignoreWhen:SetRelativeWidth(1)
                    ignoreWhen:SetLayout('Flow')  
                    
                    local ignoreAlways = not families[class.name] or 
                         not families[class.name].ignore or
                         (families[class.name].ignore and not families[class.name].ignore.enabled)
                    
                    local always = AceGUI:Create("CheckBox")
                        always:SetLabel(L.Always)
                        always:SetType('radio')
                        always:SetValue(ignoreAlways)
                        always:SetCallback('OnValueChanged', function(widget, event, value, frame, ...)
                            if value then
                                widget.parent.children[2]:SetValue()
                                if type(families[class.name]) == 'table' then
                                    families[class.name].ignore.enabled = nil
                                    if not next(families[class.name].ignore) then families[class.name].ignore = nil end
                                end
                            end
                        end)
                        always:SetRelativeWidth(0.5)

                        ignoreWhen:AddChild(always)
                        
                    local enabled = AceGUI:Create("CheckBox")
                        enabled:SetLabel(L.Enabled)
                        enabled:SetValue(not ignoreAlways)
                        enabled:SetType('radio')
                        enabled:SetRelativeWidth(0.5)
                        enabled:SetCallback('OnValueChanged', function(widget, event, value, frame, ...)
                            if value then
                                widget.parent.children[1]:SetValue()
                                if not families[class.name].ignore then families[class.name].ignore = {} end
                                families[class.name].ignore.enabled = true
                            end
                        end)
                        ignoreWhen:AddChild(enabled)
                
                
                ignore:AddChild(ignoreWhen)
                                    
        family:AddChild(ignore)
        
        local contains = AceGUI:Create("InlineGroup")
        contains:SetRelativeWidth(1)
        contains:SetTitle(L.Contains)
        contains:SetLayout('Flow')

            local items = f:GetAllItems()
            table.sort(items, SortItems)
            for _, item in pairs(items) do
                    local l = AceGUI:Create('GenieIcon')
                    l:SetLabel(item:GetId())
                    l:SetMinQualityForGlow(1)                    
                    l:SetGlow(item:GetQuality()) --alternative:also colors the label; l:SetQuality(i.Rarity)
                    l:SetImage(item.Texture)
                    l:SetImageSize(30,30)
                    if not f:GetSet() then
                        l:SetCallback("OnClick", function(widget)
                            Module.DDMenuShow(widget, {'R', item, class.name, l})
                        end)
                    end
                    contains:AddChild(l)
            end
        
            if contains.content:GetChildren() then
                family:AddChild(contains)   
            end
        
        local exclude = AceGUI:Create("InlineGroup")
        exclude:SetRelativeWidth(1)
        exclude:SetTitle(L.Exclude)
        exclude:SetLayout('Flow')

            local f = Genie.CLASS.Family:New(class.name)        
            local items = f:GetAllExcludedItems()
            table.sort(items, SortItems)
        
            for _, item in pairs(items) do
                    local l = AceGUI:Create('GenieIcon')
                    l:SetLabel(item:GetId())
                    l:SetMinQualityForGlow(1)                    
                    l:SetGlow(item.Rarity) --alternative:also colors the label; l:SetQuality(i.Rarity)
                    l:SetImage(item.Texture)
                    l:SetImageSize(30,30)
                    l:SetCallback("OnClick", function(widget)
                        Module.DDMenuShow(widget, {'R', item, class.name, l})
                    end)
                    exclude:AddChild(l)
            end
        
            if exclude.content:GetChildren() then
                family:AddChild(exclude)   
            end        
        
        --//////////////////////////////////////////////////////////// 
        -- todo: enable once the refill feature is ready
        --[===[@alpha@
        local refill = AceGUI:Create("InlineGroup")
            refill:SetTitle(L.Refill)
            refill:SetRelativeWidth(1)
            refill:SetLayout('Flow')  
            Module:CreateRefillGroup(refill, f)
            family:AddChild(refill)
        --@end-alpha@]===]
        --////////////////////////////////////////////////////////////               
        
        frame:AddChild(family) 
    end
    end
end

function Module:CreateCombineEditor(widget, list)
    local filterElements = {}
    local filter_string = ''

    local singleFilter = function()
        filter_string = ''
            for k,v in pairs(filterElements) do
                filter_string = v
            end
        return filter_string
    end
    local multipleFilter = function(combineWith)
        filter_string = ''
        if combineWith then
            for k,v in pairs(filterElements) do
                filter_string = filter_string ..  combineWith .. '(' .. v .. ')'
            end
            filter_string = string.gsub(filter_string, '^'..combineWith, '')
        end
        return filter_string
    end
    
    local filterUI = function(rank, createButton)
        
        local filter = AceGUI:Create('InlineGroup')
            filter:SetLayout("Flow")
            filter:SetFullWidth(true)

        local class = GCR[rank]
        if class then
            local localType = Genie.OPT.GUI.args.color.args.types.args
            filter:SetTitle('|cffffffff '.. (class.name or L[class.criteria]) .. ': ' .. FONT_COLOR_CODE_CLOSE .. 
                    Genie.UTILS.GetColor(class.type) .. ((localType[class.type] and localType[class.type].name) or class.type) .. FONT_COLOR_CODE_CLOSE)

            if Genie.CONSTANT.OP[class.type] then
                -- class has defined operators
                local dropdown = AceGUI:Create("Dropdown")
                dropdown:SetLabel(L.Filter) --needs to be set to align with the following editbox, which is bugged
                    local items = Genie.UTILS.CopyTable(Genie.CONSTANT.OP[class.type])
                    table.insert(items, 1, '')
                dropdown:SetList(items)
                dropdown:SetMultiselect(false)
                dropdown:SetRelativeWidth(0.2)
                dropdown:SetCallback('OnValueChanged', function(widget, event, value, ...)
                    if value == 1 then
                        widget.parent.children[2]:SetDisabled(true) --editbox
                        if widget.parent.children[3] then widget.parent.children[3]:SetDisabled(true) end -- create button                    
                    else
                        widget.parent.children[2]:SetDisabled(false) 
                        if widget.parent.children[3] then
                            local wdg = widget.parent.children[2]
                            if (wdg.type == 'EditBox' and (strlen(wdg:GetText()) > 0)) or
                            (wdg.type == 'Dropdown' and wdg.list[wdg:GetValue()])
                            then
                                widget.parent.children[3]:SetDisabled(false)
                            end                            
                        end 
                    end
                end)
                filter:AddChildren(dropdown)

                local filterValue
                if class.type == 'bool' then
                    filterValue = AceGUI:Create("Dropdown")
                    filterValue:SetList({['true'] = '1', ['false'] = '0'})
                    filterValue:SetLabel(' ')
                    filterValue:SetCallback("OnValueChanged", function(widget, event, value, ...)
                        local dD = widget.parent.children[1] --the dropdown box
                        if strlen(value) > 0 then
                            local rank = rank
                            if dD:GetValue() > 1 then
                                filterElements[tostring(widget):gsub('table: ', '')] = rank .. ':' .. dD.list[dD:GetValue()]  .. widget:GetValue()
                            else
                                filterElements[tostring(widget):gsub('table: ', '')] = rank
                            end
                            if widget.parent.children[3] then widget.parent.children[3]:SetDisabled(false) end -- create button
                        else
                            dD:SetValue(1) --reset the dropdown
                            widget:SetDisabled(true) --disable the dropdown
                            if widget.parent.children[3] then widget.parent.children[3]:SetDisabled(true) end -- disable the create button
                            filterElements[tostring(widget):gsub('table: ', '')] = rank
                        end
                    end)                
                    --// bool
                else
                    filterValue = AceGUI:Create("EditBox")
                    filterValue:SetCallback("OnEnterPressed", function(widget, event, value, ...)
                        if class.type == 'number' then 
                            value = gsub(value, '[^0-9]+', '')
                            widget:SetText(value)
                        end
                        if strlen(value) > 0 then
                            local dD = widget.parent.children[1] --the dropdown box
                            local rank = rank
                            if (class.type == 'combined') then rank = class.criteria end
                            if dD:GetValue() > 1 then
                                filterElements[tostring(widget):gsub('table: ', '')] = rank .. ':' .. dD.list[dD:GetValue()]  .. widget:GetText()
                            else
                                filterElements[tostring(widget):gsub('table: ', '')] = rank
                            end
                            if widget.parent.children[3] then widget.parent.children[3]:SetDisabled(false) end -- create button
                        else
                            widget.parent.children[1]:SetValue(1) --reset the dropdown
                            widget:SetDisabled(true) --disable the editbox
                            if widget.parent.children[3] then widget.parent.children[3]:SetDisabled(true) end -- disable the create button
                            filterElements[tostring(widget):gsub('table: ', '')] = rank
                        end
                    end)
                    --//class.type ~= bool
                end
            
            
                if createButton then filterValue:SetRelativeWidth(0.4) else filterValue:SetRelativeWidth(0.8) end
                filterElements[tostring(filterValue):gsub('table: ', '')] = rank
                filterValue:SetDisabled(true)
                filter:AddChildren(filterValue)

                if createButton then
                    local filterButton = AceGUI:Create("Button")
                        filterButton:SetText(L.Create)
                        filterButton:SetFullWidth(false)
                        filterButton:SetRelativeWidth(0.4)
                        filterButton:SetDisabled(true)
                        filterButton:SetCallback("OnClick", function()
                            Genie:ClassRankingCombine(nil, singleFilter())
                            Module:UpdateInfo('rank', 1)
                        end)
                        filter:AddChildren(filterButton)
                end

            else
                local filterLabel = AceGUI:Create("Label")
                filterLabel:SetText(L["No X defined"]:gsub('X', L.Filter))
                filter:AddChildren(filterLabel)
                filterElements[tostring(filterLabel):gsub('table: ', '')] = rank
            end
        end
        return filter
    end

    if not type(list) == "table" then return end
       
    local head = AceGUI:Create("Heading")
        head:SetText(L.Combine)
        head:SetFullWidth(true)
        widget:AddChild(head)
        
        if list[1] then
            widget:AddChild(filterUI(list[1], not list[2]))
        end
    
        if list[2] then
            widget:AddChild(filterUI(list[2]))
        
        local andButton = AceGUI:Create("Button")
            andButton:SetText(L.And)
            andButton:SetFullWidth(false)
            andButton:SetRelativeWidth(0.5)
            andButton:SetCallback("OnClick", function(widget, event, value)
                Genie:ClassRankingCombine(nil, multipleFilter(Genie.CONSTANT.BOOL_AND))
                Module:UpdateInfo('rank', 1)
            end)
            widget:AddChildren(andButton)
        
        local orButton = AceGUI:Create("Button")
            orButton:SetText(L.Or)
            orButton:SetFullWidth(false)
            orButton:SetRelativeWidth(0.5)
            orButton:SetCallback("OnClick", function(widget, event, value)
                Genie:ClassRankingCombine(nil, multipleFilter(Genie.CONSTANT.BOOL_OR))
                Module:UpdateInfo('rank', 1)
            end) 
            widget:AddChildren(orButton)
    end
end



function Module:CreateRefillGroup(widget, family)
    local createLine = function(title, group)
        local grp = AceGUI:Create("InlineGroup")
            grp:SetTitle(title)
            grp:SetRelativeWidth(1)
            grp:SetLayout('Flow')  
                 
        local maxValue, minValue = family:GetRefill(group)
        local max = AceGUI:Create("Slider")
            max:SetSliderValues(-1, 10, 1)
            max:SetLabel(L.Transfer)
            max:SetValue(maxValue or 0)
            max:SetRelativeWidth(0.5)
            max:SetCallback('OnMouseUp', function(widget, event, value)
                local max = widget:GetValue()
                local min = widget.parent.children[2]:GetValue()
                    Genie:FamilyRefill(nil, family:GetName() .. '!' .. group .. '!' .. max .. ':' .. min)
                end)
            grp:AddChildren(max)
                    
        local min = AceGUI:Create("Slider")
            min:SetSliderValues(0, 10, 1)
            min:SetLabel(L.Leave)
            min:SetValue(minValue or 0)
            min:SetRelativeWidth(0.5)
            min:SetCallback('OnMouseUp', function(widget, event, value)
                local min = widget:GetValue() or ''
                local max = widget.parent.children[1]:GetValue() or ''
                    Genie:FamilyRefill(nil, family:GetName() .. '!' .. group .. '!' .. max .. ':' .. min)
                end)
            grp:AddChildren(min)
        return grp
    end    

    local gC = Genie.Container
    widget:AddChildren(createLine(gC['S'].NAME, 'S'))
    widget:AddChildren(createLine(gC['B'].NAME, 'B'))
    if IsInGuild() then
        local name = ''
        for i=1, GetNumGuildBankTabs() do
            name = '_G' .. i .. 'T'
            widget:AddChildren(createLine(gC[name].NAME, name))
        end
    end
end
--[[  DROPDOWNMENU //////////////////////////////////////////////////////////////////////]]
function Module.DDMenuInit(self, level, detail)
    local function clear(t)
        wipe(t)
        t.notCheckable = 1
        t.keepShowOnClick = nil
        t.func = nil
        t.isTitle = nil        
    end
    if not level then return end
    DDMenuFrame.numButtons = 0;
    local info = self.info

    local family, icon
    
    if type(detail) == 'table' then
        whatToShow = detail[1]
    end
    
    if level == 1 then
        if whatToShow == 'I' and detail[2] then
            local item = detail[2]

            if item then
                -- item
                clear(info)
                info.isTitle = 1
                info.text = tostring(item)
                UIDropDownMenu_AddButton(info, level)

                --Space
                clear(info)
                info.text = ''
                UIDropDownMenu_AddButton(info, level)
        
                -- inspect 
                clear(info)
                info.text = L.Inspect
                info.func = Genie.Inspect
                info.arg2 = item
                UIDropDownMenu_AddButton(info, level)                
                
                --create cf
                clear(info)
                if not Genie.CLASS.Family.NewEx(item:GetName()) or
                    not Genie.CLASS.Family.NewEx(item.Type) or
                    not Genie.CLASS.Family.NewEx(item:GetTStID())
                then
                    info.hasArrow = 1
                    info.text = L['Create'] .. ' ' .. L['Custom family:short']
                    info.value = {'CF', item}
                    UIDropDownMenu_AddButton(info, level)
                end
               
                -- add to, remove from
                info.hasArrow = 1
                    info.text = L.Add
                    info.value = {'ADDFAM', item}
                    UIDropDownMenu_AddButton(info, level)
         
                    info.text = L.Remove
                    info.value = {'REMFAM', item}
                    UIDropDownMenu_AddButton(info, level)       
                
            end
        elseif whatToShow == 'RF' then
            local item = detail[2]

            if item then        
                -- item
                clear(info)
                info.isTitle = 1
                info.text = tostring(item)
                UIDropDownMenu_AddButton(info, level)

                --Space
                clear(info)
                info.text = ''
                UIDropDownMenu_AddButton(info, level)                
                
                --remove
                clear(info)
                info.text = L.Remove
                info.func = function(self, arg1) 
                    Genie:FamilyRemove(nil, arg1)
                    Module:UpdateInfo('ignore')
                    --if icon and icon.frame then icon.frame:Hide() end
                end
                info.arg1 = detail[3] .. Genie.CONSTANT.SEPARATOR .. item:GetId()
                UIDropDownMenu_AddButton(info, level)    
            end
            --// whatToShow RI
        elseif whatToShow == 'R' then
            -- remove item from contains/ exclude
            local item, family, icon = detail[2], detail[3], detail[4]
                -- item
                clear(info)
                info.isTitle = 1
                info.text = tostring(item)
                UIDropDownMenu_AddButton(info, level)

                --Space
                clear(info)
                info.text = ''
                UIDropDownMenu_AddButton(info, level)                
                
                --remove
                clear(info)
                info.text = L.Remove
                info.func = function(self, arg1) 
                    Genie:FamilyRemove(nil, arg1)
                    Module:UpdateInfo('rank', 'current')
                    if icon and icon.frame then icon.frame:Hide() end
                end
                info.arg1 = family .. Genie.CONSTANT.SEPARATOR .. item:GetId()
                UIDropDownMenu_AddButton(info, level)            
        
        end --// whatToShow R
        --////////////////////////////////////////////////////////////////////
        -- show always

        -- Space
        clear(info)
        info.text = ''
        info.disabled = 1        
        UIDropDownMenu_AddButton(info, level)

        clear(info)
        -- Close menu item
        info.text         = '|cff7fff7f'.. CLOSE .. '|r'
        info.func         = self.HideMenu
        UIDropDownMenu_AddButton(info, level)
        
        if Genie.db.global.edit then
            -- disable edit mode
            clear(info)
            info.text = '|cff7fff7f'.. L.Configmode ..':|r'.. L.Disable
            info.func = API.SetEditmode
            UIDropDownMenu_AddButton(info, level)
        end        
        --/////////////////////////////////////////////////////////////////////
    elseif level == 2 then
        clear(info)
        local params = UIDROPDOWNMENU_MENU_VALUE
        local display, cItem, familyData, value = params[1], params[2], params[3], params[4]        

		if not cItem then 
			Genie:PrintToChat(5, nil, 'cItem', cItem, cItem:GetTStID())
			return
		end
	    
            --////////////////////////////////////////////////////////////////
            if display == "CF" then            
                if not Genie.CLASS.Family.NewEx(cItem:GetName()) then
                    info.text =  Genie.UTILS.GetColor('family') .. cItem:GetName() .. '|r'
                    info.func = function()
                        Genie:FamilyUpdate(nil, cItem:GetName() .. Genie.CONSTANT.SEPARATOR .. cItem:GetId())
                        Module:RefreshUI()
                        CloseDropDownMenus()                        
                    end
                    UIDropDownMenu_AddButton(info, level)
                end            
                if not Genie.CLASS.Family.NewEx(cItem.Type) then
                    info.text =  Genie.UTILS.GetColor('family') .. cItem.Type .. '|r'
                    info.func = function()
                        Genie:FamilyUpdate(nil, cItem.Type)
                        Module:RefreshUI()
                        CloseDropDownMenus()                        
                    end                    
                    UIDropDownMenu_AddButton(info, level)
                end
                if not Genie.CLASS.Family.NewEx(cItem.Type..'>'..cItem.SubType) then
                    info.text =  Genie.UTILS.GetColor('family') .. cItem.Type..'>'..cItem.SubType .. FONT_COLOR_CODE_CLOSE
                    info.func = function()
                        Genie:FamilyUpdate(nil, cItem.Type .. Genie.CONSTANT.SEPARATOR .. cItem.SubType)
                        Module:RefreshUI()
                        CloseDropDownMenus()                        
                    end            
                    UIDropDownMenu_AddButton(info, level)
                end
                --//CF
            elseif display == "ADDFAM" then
                if not cItem:IsPartOfCustomFamily(L.Ignore) then
                    info.text = L.Ignore
                    info.func = function(self, arg1)
                            Genie:Ignore(nil, arg1)                         
                            Module:UpdateInfo('ignore')
                            CloseDropDownMenus()
                        end               
                    info.arg1 = cItem:GetId()
                    UIDropDownMenu_AddButton(info, level)        
                end               
                for _, class in pairs(GCR) do
                    if class.type == 'family' and
						class.name ~= L['Equipment sets'] and
						not string.find(cItem:GetTStID(), '^'..class.criteria) and
						not cItem:IsPartOfFamily(class.name) 
                    then                      
                        family = Genie.CLASS.Family:New(class.name)
                        if not family:GetSet() then
                        info.text = Genie.UTILS.GetColor('family') ..class.name .. FONT_COLOR_CODE_CLOSE
                        info.func = function(self,arg1,arg2) 
                            Genie:FamilyUpdate(nil, arg1)
                            CloseDropDownMenus()
                            Module:UpdateInfo('rank', 'current')
                        end
                        info.arg1 = class.name .. Genie.CONSTANT.SEPARATOR .. cItem:GetId()
                        UIDropDownMenu_AddButton(info, level)                   
                        end
                    end
                end
                --//ADDFAM
            elseif display == "REMFAM" then
                if cItem:IsPartOfCustomFamily(L.Ignore) then
                    info.text = L.Ignore
                    info.func = function(self, arg1)
                            Genie:Ignore(nil, arg1)
                            Module:UpdateInfo('ignore')
                            CloseDropDownMenus()
                        end               
                    info.arg1 = cItem:GetId()
                    UIDropDownMenu_AddButton(info, level)        
                end
                
                for _, class in pairs(GCR) do
                    if class.type == 'family' and 
                       --string.find(cItem:GetTStID(), '^'..class.criteria) or
                       cItem:IsPartOfFamily(class.name)
                    then
                        family = Genie.CLASS.Family:New(class.name)
                        if not family:GetSet() then

                        info.text = Genie.UTILS.GetColor('family') ..class.name .. FONT_COLOR_CODE_CLOSE
                        info.func = function(self,arg1,arg2) 
                            Genie:FamilyRemove(nil, arg1)
                            CloseDropDownMenus()
                            Module:UpdateInfo('rank', 'current')
                        end
                        info.arg1 = class.name .. Genie.CONSTANT.SEPARATOR .. cItem:GetId()
                        UIDropDownMenu_AddButton(info, level)                   
                        end
                    end                
                end 
                --//REMFAM
            end        
    end
end


function Module.DDMenuShow(frame, current)
    if frame and current then
        CloseDropDownMenus()
        if DDMenuFrame.initialize ~= Module.DDMenuInit then
            DDMenuFrame.initialize = Module.DDMenuInit
        end
        ToggleDropDownMenu(1, nil, DDMenuFrame, frame:GetName(), 0, 0, current)
    end
end    





--[[/////////////////////////////////////////////////////////////////////////////////////   
    'NEW' STUFF
    
    TODO: Hook ContainerFrame(%d)Item(%d) and display the DDMenu
    TODO: Resolve taint problem
--/////////////////////////////////////////////////////////////////////////////////////]]   


local lineAdded = false
local function OnTooltipSetItem(tooltip, ...)
    if not lineAdded and Genie.db.profile.attachTo.tooltip then
        tooltip:AddLine(' ')
        if Genie.db.global.edit then
            tooltip:AddDoubleLine(L.Genie, L.Configmode .. ':' .. L.Enabled, 1, 1, 1)
            tooltip:AddTexture(Genie.ICONS.editMode)
        else
            tooltip:AddDoubleLine(L.Genie, L.Configmode .. ':' .. L.Disabled, 1, 1, 1)
            tooltip:AddTexture(Genie.ICONS.default)            
        end
        tooltip:AddDoubleLine(' ', 'What would you want to see here master?', L.Configmode .. ':' .. L.Disabled, 1, 1, 1)
        tooltip:AddLine(' ')        
        --TODO: Add more
        lineAdded = true
    end
    Module:TTHook(tooltip:GetOwner())
end
 
local function OnTooltipCleared(tooltip, ...)
   lineAdded = false
end


function Module:EnableHooks()
    self:SecureHookScript(GameTooltip, "OnTooltipSetItem", OnTooltipSetItem)
    self:SecureHookScript(GameTooltip, "OnTooltipCleared", OnTooltipCleared)  
end

--[[  GENIEEDITBUTTON  //////////////////////////////////////////////////////////////////]]
local GenieEditButton = CreateFrame('Button', 'GenieEditButton', UIParent)
GenieEditButton:SetFrameStrata('MEDIUM')
GenieEditButton:SetScript('OnLeave', function() 
    GenieEditButton:Hide() 
end)
function Module.OnGenieEditButtonClick(button, event, value, frame, ...)
    local container = API:EditButtonGetContainer(button)
    if container then
        local itemButton, matchString, bagSlotFunc = API:EditButtonGetContainerItemFrame(button, container)
        if itemButton and not itemButton.IsBag then
            local bag, slot
            if bagSlotFunc then
                slot, bag = bagSlotFunc(container, itemButton, matchString)
            else
                --default
                bag = itemButton:GetParent():GetID()
                slot = itemButton:GetID()
                if bag == KEYRING_CONTAINER then
                    container = '_K'
                end
            end
            --search for bagID and create an item
            local bagID
            if bag then bagID = Genie.UTILS.GroupFindBag(container, bag) end
            item = Genie.CLASS.Item:Create(slot, bagID, container)
            if item then
                Module.DDMenuShow(GenieEditButton, {'I', item})        
            end
        end
    end
end
GenieEditButton:SetScript('OnClick', Module.OnGenieEditButtonClick)

--///////////////////////////////////////////////////////////////////////////////////////]]

function Module:TTHook(frame)
    if self.db.global.edit and not Genie.FLAG_IC and API:EditButtonGetContainer(frame) then
        CloseDropDownMenus()    
        local l = GenieEditButton
            l:SetAllPoints(frame)       
            l:SetWidth(frame:GetWidth())
            l:SetHeight(frame:GetHeight())
            l:SetScale(frame:GetEffectiveScale())
            l:SetParent(frame)
            l:Show()
    end
end

function Module:UpdateEditButton()
    if not GenieEditButton.texture then 
        GenieEditButton.texture = GenieEditButton:CreateTexture() 
        GenieEditButton.texture:SetAllPoints(GenieEditButton)
    end
    if self.db.global.color then
        local c = self.db.global.color.editHighlight
        GenieEditButton.texture:SetTexture(c.r, c.g, c.b, c.a)
    else
        GenieEditButton.texture:SetTexture(1,0,1, 0.25)    
    end
end


API.RegisteredFrames = {}

--- Register a custom bagaddon with Genie's editmode.
-- @param container type of the container; Allowed types can be found in Genie.Container
-- @see Genie.Container
-- @param frame pattern to identify the frame
-- @param itemFrame pattern to identify the itemFrame 
-- @param bagSlotFunction optional; custom function to retriever the location of the item within the specified container type. 
-- will be given three arguments: container:string, itemFrame:button and the pattern to match the itemFrame. if no function is defined then slot will default to itemButton:GetID,
-- and bag will default to itemButton:GetParent():GetID
-- @usage Genie.API:RegisterForEditmode('_C', '^CONTAINERFRAME',  '^.-ITEM%d+')
-- @usage Genie.API:RegisterForEditmode('_B', '^BANKFRAME', '^.*ITEM(%d+)', 
--        function(container, itemButton, match)
--        return string.match(tostring(itemButton:GetName()):upper(), match), BANK_CONTAINER
--        end
-- )
-- @usage Genie.API:RegisterForEditmode('_G', '^GUILDBANK.*', '^GUILDBANKCOLUMN(%d+)BUTTON(%d+)', 
--        function(container, itemButton, match)
--            local bag, slot = string.match(tostring(itemButton:GetName()):upper(), match)
--            slot = (bag -1) * NUM_SLOTS_PER_GUILDBANK_GROUP + slot
--            return slot, GetCurrentGuildBankTab()
--        end
-- )
function API:RegisterForEditmode(container, frame, itemFrame, bagSlotFunction)
    local reg = API.RegisteredFrames
    local gC = Genie.Container
    if not container or not gC[container] then return end
    if gC[container].api then
        --[[if gC[container].GROUP then 
            for group in pairs(gC[container].GROUP) do
                if not reg[group] then reg[group] = {} end
                table.insert(reg[group], { frame, itemFrame, bagSlotFunction })                
            end
        else--]]
            if not reg[container] then reg[container] = {} end
                table.insert(reg[container], { frame, itemFrame, bagSlotFunction })                
       -- end
    end
end

function API:EditButtonGetContainer(frame)
    local frame = frame
    while frame:GetParent() and not container do
        for typeContainer, entries in pairs(API.RegisteredFrames) do
            for k, data in pairs(entries) do
                if frame:GetName() and string.find(string.upper(frame:GetName()), data[1]) then
                    return typeContainer, data[3]
                end
            end
        end
        frame = frame:GetParent()
    end
end
function API:EditButtonGetContainerItemFrame(frame, container)
    if not frame or not container then return end
    local frame = frame
    local container = string.gsub(container, '(_.*)-$', '')
    local reg = API.RegisteredFrames    
    if type(reg[container]) == 'table' then
        while not itemFrame and frame:GetParent() do
            for _, data in pairs(reg[container]) do
                if frame:GetName() and string.find(string.upper(frame:GetName()), data[2]) then
                    return frame, data[2], data[3]
                end
            end
            frame = frame:GetParent()
        end
    end
end
