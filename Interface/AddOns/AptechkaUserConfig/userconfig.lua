local helpers = Aptechka.helpers
local _, playerClass = UnitClass("player")
local isHealer = (playerClass == "PRIEST" or playerClass == "PALADIN" or playerClass == "SHAMAN" or playerClass == "DRUID")
local A = helpers.AddAura
local AD = helpers.AddAuraToDefault
local DT = helpers.AddDispellType
local ClickMacro = helpers.ClickMacro
local Trace = helpers.AddTrace
local config = AptechkaUserConfig
-- importing helper functions

--Here you can store personal settings, overriding fields in default configuration (located in Aptechka/config.lua).
--You can add here anything, but note that first time when you add spell you automatically create new spell set.
--(Because we add our own IndicatorAuras table which contains spell set, default one becomes unaccessible )
--You may still edit default configuration table from here. It's called AptechkaDefaultConfig.
--Refer to config.lua in core module for samples of what you can do here.
--Also frame.lua contains default GridSkin and loadables.lua - boss debuffs and pvp spells

config.showSolo = true -- display unit button of your character even when you're not in the group
--config.TargetStatus = false  -- disable target status
--config.HealthDificitStatus = { name = "HPD", assignto = { "text1" }, healthtext = true, priority = 80 }
--config.disableManaBar = true
config.width = 30 -- defined in skin module
config.height = 30
config.petgroup = true
config.cropNamesLen = 5  -- maximum amount of characters in unit name
config.unitGrowth = "TOP" -- direction for adding new players in group. LEFT / RIGHT / TOP / BOTTOM
config.groupGrowth = "RIGHT"

--if isHealer then
--    config.skin = "GridSkin"
--    config.useGroupAnchors = false
--else
--    config.unitGap = -2
--    config.useGroupAnchors = true
--    config.skin = "CTRaidAssist" --NoBorder"
--    config.ctraBackdropColor = {0,0,0,0.7}
--    --config.ctraNoBorder = true
--    --config.unitGap = -10
--end

--~ The first time A function is used, new spell set is created, and default one becomes unaccessible.
--~ So if you want to just edit settings of some spells use AD.
--~ --if playerClass == "PRIEST" then
--~ --    AD{ id = 17,    type = "HELPFUL", assignto = { "dispel" }, color = { 1, 1, 0}, showDuration = true }  -- edit PWS spell in default config
--~ --end

--~ --This will overwrite default spells if character class is paladin.
--~ if playerClass == "PALADIN" then
--~     A{ id = 20217, type = "HELPFUL", assignto = { "raidbuff" }, color = { .6 , .3, 1}, isMissing = true } --Blessing of Kings
--~     A{ id = 53563, type = "HELPFUL", assignto = { "spell2" }, showDuration = true,                --Beacon
--~                                                                             isMine = true,
--~                                                                             color = { 0,1,0 },
--~                                                                             --foreigncolor = { 0.96/2, 0.55/2, 0.73/2 },
--~                                                                         }
--~ end


--~ -- HOW TO CHANGE SKIN LAYOUT FROM USERCONFIG
--~ config.skin = "GridCustom"
--~ config.useAnchors = "GridSkin" -- use parent skin anchors
--~ config.GridCustomSettings = config.GridSkinSettings -- use parent skin settings (required)
--~ config.GridCustom = function(self)
--~     config.GridSkin(self)
--~     -- how to create new icon
--~     local icon2 = config.GridSkin_CreateIcon(self,24,24,0.4,"TOPLEFT",self,"TOPLEFT",0,0)  -- w/h = 24, alpha = 0.4
--~     self.icon2 = icon2
--~     
--~     -- how to move existing indicators
--~     self.spell2:ClearAllPoints() -- clear previous position
--~     self.spell2:SetPoint("CENTER",self,"CENTER",0,0) -- set to center
--~     -- same way to move text
--~     self.text1:ClearAllPoints()
--~     self.text1:SetPoint("TOP",self,"TOP",0,-5)
--~     
--~     -- how to delete existsing indicators
--~     self.raidbuff = nil
--~     
--~     -- how to create new indicator
--~     local newind = config.GridSkin_CreateIndicator(self,6,6,"TOPLEFT",self,"TOPLEFT",0,0)  -- w/h = 6
--~     self.spell4 = newind
--~     -- change healthbar texture
--~     self.health.bg:SetTexture([[Interface\AddOns\Aptechka\white]])
--~     self.health:SetStatusBarTexture[[Interface\AddOns\Aptechka\white]]
--~ end


--~ -- HOW TO ADD NEW ZONES AND BOSS SPELLS FOR LOADING
--~ AptechkaDefaultConfig.MapIDs[9001] = "Deathwing Lair"
--~ -- Every zone with a map have it's own area id, you can found out current area id typing /dump GetCurrentMapAreaID()
--~ -- In this case let's assume 9001 is the id of Deathwing Cave dungeon
--~ -- Next we create a function which will add new spells to our current spell set
--~ AptechkaDefaultConfig.LoadableDebuffs["Deathwing Lair"] = function()
--~     A{ id = 999999, prototype = AptechkaUserConfig.BossDebuffPrototype } --BIG-BADA-BOOM
--~     A{ id = 100500, priority = 45, prototype = AptechkaUserConfig.BossDebuffPrototype } --SHADOWFLAME!
--~     A{ id = 666, color = { 0,0,1}, priority = 50, prototype = AptechkaUserConfig.BossDebuffPrototype } --DEATH FURY
--~ end,
--~ --Now when we enter Deathwing Cave, these spells will be loaded.
--~ --Note that by using AptechkaDefaultConfig we're just editing default map id and loadable debuffs tables

--~ --AptechkaUserConfig.BossDebuffPrototype is the default bossdebuff job object template
--~ --prototype field means our new spells will inherit settings from that job object
--~ --You can either change default prototype by:
--~ --AptechkaDefaultConfig.BossDebuffPrototype.assignto = { "icon" }     -- now all boss debuffs will be assigned to center icon
--~ --Or you can create your our prototype in user config
--~ --config.BossDebuffPrototype = { type = "HARMFUL", assignto = { "bossdebuff" }, color = { 1,0,0 }, priority = 40, pulse = true }
--~ --Or you can forget about this prototype crap and use same syntax as for your own spells
