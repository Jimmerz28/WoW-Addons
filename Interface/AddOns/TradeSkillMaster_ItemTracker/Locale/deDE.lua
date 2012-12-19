-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_ItemTracker - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/TradeSkillMaster_ItemTracker.aspx   --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --

-- TradeSkillMaster_ItemTracker Locale - deDE
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_ItemTracker/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_ItemTracker", "deDE")
if not L then return end

-- L["AH"] = ""
-- L["Bags"] = ""
-- L["Bank"] = ""
-- L["Characters"] = ""
-- L["Characters on other account to sync with (comma separated)"] = ""
-- L["Compressing and sending ItemTracker data to %s. This will take approximately %s seconds. Please wait..."] = ""
-- L["Could not sync with %s since they are not on your friends list and you friends list is full."] = ""
L["Delete Character:"] = "Lösche Charakter:"
--[==[ L[ [=[Enter the name of the characters on your other account which you'd like to sync ItemTracker with below. You must also enter the name of this character in their ItemTracker settings in order to be able to sync. Also, these characters must be on your friends list (ItemTracker will add them if they aren't). All character and guild data will be synced, but only via the characters listed.

Every time it's loaded, ItemTracker will automatically attempt to sync data with the characters listed below. You can also force a manual sync via the button below.]=] ] = "" ]==]
L["Full"] = "Voll"
-- L["Got invalid ItemTracker data from %s."] = ""
-- L["Guild Bank"] = ""
-- L["Guilds"] = ""
L["Here, you can choose what ItemTracker info, if any, to show in tooltips. \"Simple\" will show only show totals for bags/banks and for guild banks. \"Full\" will show detailed information for every character and guild."] = [=[Hier kannst du auswählen, welche Info's ItemTracker, sofern sie existieren, in den Tooltips zeigt. "Einfach" zeigt nut die Gesamtzahl in Taschen/Banken und für die Gildenbank. "Voll" zeigt detallierte Informationen für jeden Charakter und Gilde.
]=]
L["If you previously used TSM_Gathering, note that inventory data was not transfered to TSM_ItemTracker and will not show up until you log onto each character and visit the bank / gbank / auction house."] = "Wenn du vorher TSM_Gathering verwendet hast, beachte, dass die Inventardaten nicht zu TSM_ItemTracker importiert wurden und nicht auftauchen werden, bis du dich auf jedem Charakter angemeldet hast und die Bank / Gildenbank / Auktionshaus besucht hast."
L["If you rename / transfer / delete one of your characters, use this dropdown to remove that character from ItemTracker. There is no confirmation. If you accidentally delete a character that still exists, simply log onto that character to re-add it to ItemTracker."] = "Wenn du ein deiner Charakter umbenennst / transferierst / löschst, nutze das Dropdownmenü um den Charakter aus ItemTracker zu löschen. Es gibt keine Bestätigung. Wenn du aus Versehen einen Charakter löschst der noch existiert, logge dich einfach auf den Charakter ein um in wieder zu ItemTracker hinzuzufügen. "
-- L["Ignored ItemTracker data from %s since you haven't added him to the list of characters in this character's ItemTracker options. You'll only see this message once per session per sender."] = ""
-- L["Inventory Viewer"] = ""
-- L["Item Name"] = ""
-- L["Item Search"] = ""
-- L["ItemTracker Data (%s item(s) total):"] = ""
L["ItemTracker: %s on player, %s on alts, %s in guild banks, %s on AH"] = "ItemTracker: %s beim Spieler, %s auf alts, %s in der Gilden Bank, %s im AH"
-- L["List the characters which are not on this account (but on the same realm and faction) that you want ItemTracker to sync with. Separate character names with a single comma."] = ""
-- L["Mailbox"] = ""
-- L["Manually Sync ItemTracker Data"] = ""
-- L["Multiple Account Sync"] = ""
L["No Tooltip Info"] = "Keine Tooltip Info"
L["Options"] = "Optionen"
-- L["Sending data to %s complete!"] = ""
L["Simple"] = "Einfach"
L["\"%s\" removed from ItemTracker."] = "\"%s\" aus ItemTracker entfernt."
L["%s: %s in guild bank"] = "%s: %s in der Gilden Bank"
-- L["%s: %s (%s in bags, %s in bank, %s on AH, %s in mail)"] = ""
-- L["Successfully got %s bytes of ItemTracker data from %s! Updated %s characters and %s guilds."] = ""
-- L["Total"] = ""
L["trackerMessage"] = "trackerNachricht"
