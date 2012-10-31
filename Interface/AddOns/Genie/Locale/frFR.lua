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

local L = LibStub("AceLocale-3.0"):NewLocale("Genie", "frFR")
if not L then return end
--[[///////////////////////////////////////////////////////////////////////////////////////
    Automatic translation injection

	NOTE: Do NOT translate strings here!
	If you want to translate, do so at
	http://wow.curseforge.com/addons/genie/localization/
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Add"] = "Ajouter" -- Needs review
L["Add a class/family to the ranking"] = "Ajouter une classe/famille pour le classement" -- Needs review
L["Add an element to this X"] = "Add an element to this X" -- Requires localization
L["AddonNotes"] = "Genie helps you organize your bags, bank and/or guildbank" -- Requires localization
L["All items are beeing ignored"] = "Tous les éléments seront ignorés" -- Needs review
L["Alt"] = "Alt" -- Requires localization
L["Always"] = "Always" -- Requires localization
L["And"] = "And" -- Requires localization
L["As you wish master"] = "As you wish master" -- Requires localization
L["AttachTo"] = "AttachTo" -- Requires localization
L["Automatic"] = "Automatique"
L["Automatic events"] = "Automatic events" -- Requires localization
L["Automatic mode"] = "Automatic mode" -- Requires localization
L["Bag"] = "Sac"
L["bag/ bank or guildbank"] = "sac/banque ou banque de guilde" -- Needs review
L["Bags"] = "Sacs" -- Needs review
L["BagWork"] = "Actif sacs" -- Needs review
L["Bank"] = "Banque"
L["BANKFRAME_CLOSED"] = "Vérifier votre banque" -- Needs review
L["BANKFRAME_OPENED"] = "Ouvrir votre banque" -- Needs review
L["BankWork"] = "Actif banque" -- Needs review
L["Bool"] = "Bool" -- Requires localization
L["Classranking"] = "Rang de classes" -- Needs review
L["Colors"] = "Colors" -- Requires localization
L["Combine"] = "Combine" -- Requires localization
L["Combined"] = "Combined" -- Requires localization
L["Combine one or more ranks"] = "Combiner un ou plusieurs rangs" -- Needs review
L["Configmode"] = "Configurations " -- Needs review
L["Contains"] = "Contient"
L["Count"] = "Nombre" -- Needs review
L["Create"] = "Create" -- Requires localization
L["Created"] = "Créé" -- Needs review
L["Criteria"] = "Critère" -- Needs review
L["Current content of X"] = "Contenu actuel de X" -- Needs review
L["Custom family"] = "Famille personalisée"
L["Custom family:short"] = "Famille perso" -- Needs review
L["Delete"] = "Delete" -- Requires localization
L["Delete a combined rank"] = "Supprimer un rang combiné" -- Needs review
L["Deleted"] = "Supprimé"
L["Disable"] = "Désactiver" -- Needs review
L["Disable a class"] = "Disable a class" -- Requires localization
L["Disabled"] = "Désactivé" -- Needs review
L["Disabled:short"] = "D" -- Requires localization
L["Display detailed infos about a rank"] = "Afficher les détails d'un rang" -- Needs review
L["Enable"] = "Activer" -- Needs review
L["Enable a class"] = "Enable a class" -- Requires localization
L["Enabled"] = "Activé" -- Needs review
L["EquipLoc"] = "Emplacement d'équipement" -- Needs review
L["Equipment sets"] = "Sets d'équipement" -- Needs review
L["EQUIPMENT_SWAP_FINISHED"] = "Set d'équipement changé" -- Needs review
L["Events"] = "Événements" -- Needs review
L["Family"] = "Famille"
L["Fast"] = "Fast" -- Requires localization
L["Filter"] = "Filtre" -- Needs review
L["Finished"] = "Terminé" -- Needs review
L["Genie"] = "Génie" -- Needs review
L["GUI"] = "Interface" -- Needs review
L["Guildbank"] = "Guildbank" -- Requires localization
L["Guildbank delay"] = "Delay" -- Requires localization
L["Guildbank delay:desc"] = "Genie will delay each item-swap by this value (plus some additional lag adjustment)" -- Requires localization
L["GUILDBANKFRAME_CLOSED"] = "Banque de guilde vérifiée" -- Needs review
L["Guildbank-Tab 'X' unlocked. You're welcome."] = "Onglet de banque de guilde 'X' déverrouillé. De rien." -- Needs review
L["GuildbankWork"] = "Actif banque de guilde" -- Needs review
L["Highlight"] = "Surligner" -- Needs review
L["Ignore"] = "Ignorer"
L["Ignore all elements of this X"] = "Ignore all elements of this X" -- Requires localization
L["Ignore all elements of X"] = "Ignorer tous les éléments de X" -- Needs review
L["iLvl"] = "iLvl" -- Needs review
L["I'm locking Guildbank-Tab 'X'. Step back!"] = "Je verrouille l'onglet de guilde 'X'. Aller à l'étape précédente !" -- Needs review
L["I need to know on which tabs i'm allowed to work"] = "I need to know on which tabs i'm allowed to work" -- Requires localization
L["Inspect"] = "Inspecter"
L["Inventory"] = "Inventaire"
L["Invert"] = "Inverser" -- Needs review
L["Invert a class"] = "Invert a class" -- Requires localization
L["Inverted:short"] = "I" -- Requires localization
L["Invert the sorting order"] = "Inverser l'ordre de tri"
L["ItemID"] = "ItemID" -- Requires localization
L["I've done what you requested in X seconds"] = "I've done what you requested in X seconds" -- Requires localization
L["I will try to read your mind master"] = "Je vais essayer de lire votre esprit" -- Needs review
L["Keyring"] = "Porte-clés"
L["LeftClick"] = "Clic gauche" -- Needs review
L["Lock the Guildbank"] = "Verrouiller la banque de guilde" -- Needs review
L["Lock the Guildbank:desc"] = "Verrouille l'onglet de banque de guilde sur lequel Génie se trouve" -- Needs review
L["LOOT_CLOSED"] = "Looté" -- Needs review
L["MAIL_CLOSED"] = "Courrier vérifié" -- Needs review
L["Master i apologize, there where some errors. I had to stop"] = "Maître, je suis désolé. Des erreurs sont survenues, je dois m'arrêter." -- Needs review
L["Master, i can't work with an empty container"] = "Master, i can't work with an empty container" -- Requires localization
L["Master, that's one thing i'm not allowed to do"] = "Master, that's one thing i'm not allowed to do" -- Requires localization
L["Master, there's nothing (more) to do"] = "Master, there's nothing (more) to do" -- Requires localization
L["MERCHANT_CLOSED"] = "Visited a Merchant" -- Requires localization
L["Minimap"] = "Minicarte" -- Needs review
L["MinLevel"] = "Level minimum"
L["Mode"] = "Mode" -- Needs review
L["Move all items"] = "Déplacer tous les items" -- Needs review
L["Moving"] = "Déplacer" -- Needs review
L["Name"] = "Nom" -- Needs review
L["New"] = "Nouveau" -- Needs review
L["No X defined"] = "X n'est pas défini" -- Needs review
L["Number"] = "Nombre" -- Needs review
L["Open the options menu"] = "Ouvrir les options" -- Needs review
L["Open the ranking editor"] = "Ouvrir l'éditeur de rangs" -- Needs review
L["Or"] = "Or" -- Needs review
L["Price"] = "Prix de vente" -- Needs review
L["Questitem"] = "Objet de quête" -- Needs review
L["Rarity"] = "Qualité" -- Needs review
L["Remove"] = "Supprimer" -- Needs review
L["Remove an element from this X"] = "Remove an element from this X" -- Requires localization
L["Rename"] = "Renommer" -- Needs review
L["Reset the classranking"] = "Reset the classranking" -- Requires localization
L["Reverse"] = "Reverse" -- Requires localization
L["Reverse the order in which your bags and/or bagslots will be accsessed"] = "Reverse the order in which your bags and/or bagslots will be accsessed" -- Requires localization
L["RightClick"] = "RightClick" -- Requires localization
L["Shift"] = "Shift" -- Requires localization
L["Show"] = "Show" -- Requires localization
L["Show current X"] = "Show current X" -- Requires localization
L["Silent"] = "Silent" -- Requires localization
L["SlotCooldown"] = "Cooldown de slot" -- Needs review
L["SlotCooldown:desc"] = "Temps en secondes que Génie doit attendre avant de réutiliser un slot spécifique. Indiquez 0(zéro) si vous ne voulez aucun délai." -- Needs review
L["Slots"] = "Slots" -- Requires localization
L["Sort all items"] = "Trier tous les objets" -- Needs review
L["sort_heap"] = "Tri des piles" -- Needs review
L["Sorting"] = "Trier" -- Needs review
L["Sorting algorithm"] = "Algorithme de tri" -- Needs review
L["sort_insert"] = "Tri à l'ajout" -- Needs review
L["sort_quick3"] = "Tri rapide 3" -- Needs review
L["sort_select"] = "Tri sélectionné" -- Needs review
L["Soulbound"] = "Lié" -- Needs review
L["Sound"] = "Son" -- Needs review
L["Stack all items"] = "Empiler les objets" -- Needs review
L["StackCount"] = "Nombre de piles" -- Needs review
L["Stacking"] = "Empiler" -- Needs review
L["Stack, move and sort your X"] = "Stack, move and sort your X" -- Requires localization
L["Stop"] = "Stop" -- Requires localization
L["Strg"] = "Control" -- Requires localization
L["String"] = "Texte" -- Needs review
L["SubType"] = "Sous type" -- Needs review
L["SwapsPerCycle"] = "Échanges par cycle" -- Needs review
L["SwapsPerCycle:desc"] = "À chaque cycle, Génie échange un montant spécifique d'objets. Indiquez 0(zéro) si vous voulez que Génie n'échange plus aucun objet." -- Needs review
L["Sync"] = "Synchroniser" -- Needs review
L["Text"] = "Text" -- Needs review
L["Texture"] = "Texture" -- Requires localization
L["Toggle config mode"] = "Basculer en mode configuration" -- Needs review
L["ToggleWithRankingEditor"] = "Basculer vers l'éditeur de rang" -- Needs review
L["ToggleWithRankingEditorDesc"] = "Basculer en mode configuration à l'ouverture/fermeture de l'éditeur de rang" -- Needs review
L["Tooltip"] = "Infobulle" -- Needs review
L["TRADE_CLOSED"] = "Traded with someone" -- Requires localization
L["TStID"] = "Catégorie HV" -- Needs review
L["Type"] = "Type" -- Needs review
L["Unique"] = "Unique" -- Needs review
L["Unknown"] = "Inconnu" -- Needs review
L["Update"] = "Update" -- Requires localization
L["Update a class"] = "Update a class" -- Requires localization
L["Updated"] = "Mis à jour" -- Needs review
L["UseProfile"] = "UseProfile" -- Requires localization
L["Verbosity"] = "Verbosité" -- Needs review
L["Version"] = "Version" -- Requires localization
L["waitAfter"] = "Attendre après un combat" -- Needs review
L["When"] = "Quand" -- Needs review
L["Work"] = "Fonctionne" -- Needs review
L["X added to Y"] = "X added to Y" -- Requires localization
L["X has been updated"] = "X a été mis à jour" -- Needs review
L["X is empty"] = "X is empty" -- Requires localization
L["X removed from Y"] = "X supprimé de Y" -- Needs review
L["X renamed to Y"] = "X renommé en Y" -- Needs review


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
