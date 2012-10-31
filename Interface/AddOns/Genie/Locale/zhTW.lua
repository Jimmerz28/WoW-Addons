--[[///////////////////////////////////////////////////////////////////////////////////////
    GENIE 5.0.4

    Author: adjo
    Website: http://wow.curseforge.com/projects/genie
    Feedback: http://wow.curseforge.com/projects/genie/tickets/
    Localization: http://wow.curseforge.com/addons/genie/localization/
    
	adjo 2010-10-06T21:23:24Z   
    
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

local L = LibStub("AceLocale-3.0"):NewLocale("Genie", "zhTW")
if not L then return end
--[[///////////////////////////////////////////////////////////////////////////////////////
    Automatic translation injection

	NOTE: Do NOT translate strings here!
	If you want to translate, do so at
	http://wow.curseforge.com/addons/genie/localization/
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Add"] = "增加"
L["Add a class/family to the ranking"] = "Add a class/family to the ranking" -- Requires localization
L["Add an element to this X"] = "Add an element to this X" -- Requires localization
L["AddonNotes"] = "Genie helps you organize your bags, bank and/or guildbank" -- Requires localization
L["All items are beeing ignored"] = "All items are beeing ignored" -- Requires localization
L["Alt"] = "Alt"
L["Always"] = "總是"
L["And"] = "And" -- Requires localization
L["As you wish master"] = "As you wish master" -- Requires localization
L["AttachTo"] = "AttachTo" -- Requires localization
L["Automatic"] = "自動"
L["Automatic events"] = "Automatic events" -- Requires localization
L["Automatic mode"] = "Automatic mode" -- Requires localization
L["Bag"] = "背包"
L["bag/ bank or guildbank"] = "背包/ 銀行 或 公會銀行"
L["Bags"] = "背包"
L["BagWork"] = "Work with the bags" -- Requires localization
L["Bank"] = "銀行"
L["BANKFRAME_CLOSED"] = "Checked your Bank" -- Requires localization
L["BANKFRAME_OPENED"] = "開啟你的銀行"
L["BankWork"] = "Work with the bank" -- Requires localization
L["Bool"] = "Bool" -- Requires localization
L["Classranking"] = "Classranking" -- Requires localization
L["Colors"] = "顏色"
L["Combine"] = "Combine" -- Requires localization
L["Combined"] = "Combined" -- Requires localization
L["Combine one or more ranks"] = "Combine one or more ranks" -- Requires localization
L["Configmode"] = "Configmode" -- Requires localization
L["Contains"] = "Contains" -- Requires localization
L["Count"] = "計數"
L["Create"] = "Create" -- Requires localization
L["Created"] = "已創建"
L["Criteria"] = "標準"
L["Current content of X"] = "Current content of X" -- Requires localization
L["Custom family"] = "Custom family" -- Requires localization
L["Custom family:short"] = "CF" -- Requires localization
L["Delete"] = "Delete" -- Requires localization
L["Delete a combined rank"] = "Delete a combined rank" -- Requires localization
L["Deleted"] = "Deleted" -- Requires localization
L["Disable"] = "停用"
L["Disable a class"] = "Disable a class" -- Requires localization
L["Disabled"] = "已停用"
L["Disabled:short"] = "D" -- Requires localization
L["Display detailed infos about a rank"] = "Display detailed infos about a rank" -- Requires localization
L["Enable"] = "啟用"
L["Enable a class"] = "Enable a class" -- Requires localization
L["Enabled"] = "已啟用"
L["EquipLoc"] = "Equip Location" -- Requires localization
L["Equipment sets"] = "裝備設置"
L["EQUIPMENT_SWAP_FINISHED"] = "改變裝備設置"
L["Events"] = "活動"
L["Family"] = "Family" -- Requires localization
L["Fast"] = "Fast" -- Requires localization
L["Filter"] = "Filter" -- Requires localization
L["Finished"] = "Finished" -- Requires localization
L["Genie"] = "Genie" -- Requires localization
L["GUI"] = "GUI"
L["Guildbank"] = "公會銀行"
L["Guildbank delay"] = "Delay" -- Requires localization
L["Guildbank delay:desc"] = "Genie will delay each item-swap by this value (plus some additional lag adjustment)" -- Requires localization
L["GUILDBANKFRAME_CLOSED"] = "Checked your Guildbank" -- Requires localization
L["Guildbank-Tab 'X' unlocked. You're welcome."] = "Guildbank-Tab 'X' unlocked. You're welcome." -- Requires localization
L["GuildbankWork"] = "Work with the guildbank" -- Requires localization
L["Highlight"] = "高亮"
L["Ignore"] = "Ignore" -- Requires localization
L["Ignore all elements of this X"] = "Ignore all elements of this X" -- Requires localization
L["Ignore all elements of X"] = "Ignore all elements of X" -- Requires localization
L["iLvl"] = "ItemLevel" -- Requires localization
L["I'm locking Guildbank-Tab 'X'. Step back!"] = "I'm locking Guildbank-Tab 'X'. Step back!" -- Requires localization
L["I need to know on which tabs i'm allowed to work"] = "I need to know on which tabs i'm allowed to work" -- Requires localization
L["Inspect"] = "Inspect" -- Requires localization
L["Inventory"] = "Inventory" -- Requires localization
L["Invert"] = "Invert" -- Requires localization
L["Invert a class"] = "Invert a class" -- Requires localization
L["Inverted:short"] = "I" -- Requires localization
L["Invert the sorting order"] = "Invert the sorting order" -- Requires localization
L["ItemID"] = "物品ID"
L["I've done what you requested in X seconds"] = "I've done what you requested in X seconds" -- Requires localization
L["I will try to read your mind master"] = "I will try to read your mind master" -- Requires localization
L["Keyring"] = "Keyring" -- Requires localization
L["LeftClick"] = "左鍵點擊"
L["Lock the Guildbank"] = "Lock the Guildbank" -- Requires localization
L["Lock the Guildbank:desc"] = "Lock the Guilbank-Tab Genie is currently working on" -- Requires localization
L["LOOT_CLOSED"] = "Looted" -- Requires localization
L["MAIL_CLOSED"] = "Checked your Mailbox" -- Requires localization
L["Master i apologize, there where some errors. I had to stop"] = "Master i apologize, there where some errors. I had to stop" -- Requires localization
L["Master, i can't work with an empty container"] = "Master, i can't work with an empty container" -- Requires localization
L["Master, that's one thing i'm not allowed to do"] = "Master, that's one thing i'm not allowed to do" -- Requires localization
L["Master, there's nothing (more) to do"] = "Master, there's nothing (more) to do" -- Requires localization
L["MERCHANT_CLOSED"] = "Visited a Merchant" -- Requires localization
L["Minimap"] = "小地圖"
L["MinLevel"] = "最低級別"
L["Mode"] = "模式"
L["Move all items"] = "移動所有物品"
L["Moving"] = "移動中"
L["Name"] = "Name" -- Requires localization
L["New"] = "新"
L["No X defined"] = "No X defined" -- Requires localization
L["Number"] = "Number" -- Requires localization
L["Open the options menu"] = "Open the options menu" -- Requires localization
L["Open the ranking editor"] = "Open the ranking editor" -- Requires localization
L["Or"] = "或"
L["Price"] = "販售金額"
L["Questitem"] = "Quest Item" -- Requires localization
L["Rarity"] = "Quality" -- Requires localization
L["Remove"] = "移除"
L["Remove an element from this X"] = "Remove an element from this X" -- Requires localization
L["Rename"] = "Rename" -- Requires localization
L["Reset the classranking"] = "Reset the classranking" -- Requires localization
L["Reverse"] = "Reverse" -- Requires localization
L["Reverse the order in which your bags and/or bagslots will be accsessed"] = "Reverse the order in which your bags and/or bagslots will be accsessed" -- Requires localization
L["RightClick"] = "右鍵點擊"
L["Shift"] = "Shift"
L["Show"] = "Show" -- Requires localization
L["Show current X"] = "Show current X" -- Requires localization
L["Silent"] = "Silent" -- Requires localization
L["SlotCooldown"] = "Slot Cooldown" -- Requires localization
L["SlotCooldown:desc"] = "Time in seconds Genie should wait before reusing a specific slot. Set this to 0(Zero) if you want no delay." -- Requires localization
L["Slots"] = "空格"
L["Sort all items"] = "Sort all items" -- Requires localization
L["sort_heap"] = "Heapsort" -- Requires localization
L["Sorting"] = "Sorting" -- Requires localization
L["Sorting algorithm"] = "Sorting algorithm" -- Requires localization
L["sort_insert"] = "Insertionsort" -- Requires localization
L["sort_quick3"] = "Quicksort3" -- Requires localization
L["sort_select"] = "Selectionsort" -- Requires localization
L["Soulbound"] = "Soulbound" -- Requires localization
L["Sound"] = "聲音"
L["Stack all items"] = "Stack all items" -- Requires localization
L["StackCount"] = "Stackcount" -- Requires localization
L["Stacking"] = "Stacking" -- Requires localization
L["Stack, move and sort your X"] = "Stack, move and sort your X" -- Requires localization
L["Stop"] = "Stop" -- Requires localization
L["Strg"] = "Control" -- Requires localization
L["String"] = "String" -- Requires localization
L["SubType"] = "Subtype" -- Requires localization
L["SwapsPerCycle"] = "Swaps per cycle" -- Requires localization
L["SwapsPerCycle:desc"] = "Each cycle Genie swaps a specifc amount of items. Set this to 0(Zero) if you want Genie to swap them all at once" -- Requires localization
L["Sync"] = "Sync" -- Requires localization
L["Text"] = "文字"
L["Texture"] = "材質"
L["Toggle config mode"] = "切換設置模式"
L["ToggleWithRankingEditor"] = "Toggle with ranking editor" -- Requires localization
L["ToggleWithRankingEditorDesc"] = "Enable/ disable config mode when opening/ closing the ranking editor" -- Requires localization
L["Tooltip"] = "工具提示"
L["TRADE_CLOSED"] = "Traded with someone" -- Requires localization
L["TStID"] = "Aic" -- Requires localization
L["Type"] = "類型"
L["Unique"] = "獨特"
L["Unknown"] = "未知"
L["Update"] = "Update" -- Requires localization
L["Update a class"] = "Update a class" -- Requires localization
L["Updated"] = "已更新"
L["UseProfile"] = "UseProfile" -- Requires localization
L["Verbosity"] = "Verbosity" -- Requires localization
L["Version"] = "Version" -- Requires localization
L["waitAfter"] = "Wait after combat" -- Requires localization
L["When"] = "當"
L["Work"] = "Work" -- Requires localization
L["X added to Y"] = "X added to Y" -- Requires localization
L["X has been updated"] = "X 已更新"
L["X is empty"] = "X is empty" -- Requires localization
L["X removed from Y"] = "X removed from Y" -- Requires localization
L["X renamed to Y"] = "X renamed to Y" -- Requires localization


--[[///////////////////////////////////////////////////////////////////////////////////////
	translated auctionitemclasses

    Usage: L[L['Weapon']()] to get the translated type
    Note: Update if auctionitemclasses are added/removed
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Weapon"] = function() return "aic01" end
L["Armor"] = function() return "aic02" end
L["Container"] = function() return "aic03" end
L["Consumable"] = function() return "aic04" end
L["Glyph"] = function() return "aic05" end
L["Trade Goods"] = function() return "aic06" end
L["Projectile"] = function() return "aic07" end
L["Quiver"] = function() return "aic08" end
L["Recipe"] = function() return "aic09" end
L["Gem"] = function() return "aic10" end
L["Miscellaneous"] = function() return "aic11" end
L["Quest"] = function() return "aic12" end

local itemClasses = { GetAuctionItemClasses() }
if #itemClasses > 0 then
	for i, itemClass in pairs(itemClasses) do
        local icString = "aic".. string.format('%.2d',i)
    
		L[icString] = itemClass
		local itemSubClasses = { GetAuctionItemSubClasses(i) }
		if #itemSubClasses > 0 then
			for j, itemSubClass in pairs(itemSubClasses) do
				L[icString..string.format('%.2d',j)] = itemClass .. '>' .. itemSubClass
			end
		else
			L[icString.. "00"] = itemClass
		end
	end
end
