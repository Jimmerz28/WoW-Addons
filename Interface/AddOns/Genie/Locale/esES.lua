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

local L = LibStub("AceLocale-3.0"):NewLocale("Genie", "esES")
if not L then return end
--[[///////////////////////////////////////////////////////////////////////////////////////
    Automatic translation injection

	NOTE: Do NOT translate strings here!
	If you want to translate, do so at
	http://wow.curseforge.com/addons/genie/localization/
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Add"] = "Añade" -- Needs review
L["Add a class/family to the ranking"] = "Añade Clase /Familia a la clasificación" -- Needs review
L["Add an element to this X"] = "Añade un elemento a esta X" -- Needs review
L["AddonNotes"] = "Genie helps you organize your bags, bank and/or guildbank" -- Requires localization
L["All items are beeing ignored"] = "Todos los objetos estan siendo ignorados" -- Needs review
L["Alt"] = "Alt" -- Requires localization
L["Always"] = "Always" -- Requires localization
L["And"] = "And" -- Requires localization
L["As you wish master"] = "Comos tu desees Amo" -- Needs review
L["AttachTo"] = "AttachTo" -- Requires localization
L["Automatic"] = "Automático" -- Needs review
L["Automatic events"] = "Automático" -- Needs review
L["Automatic mode"] = "Modo Automático" -- Needs review
L["Bag"] = "Bolsa" -- Needs review
L["bag/ bank or guildbank"] = "Bolsas /Banco o Banco de Hermandad" -- Needs review
L["Bags"] = "Bolsas" -- Needs review
L["BagWork"] = "Work with the bags" -- Requires localization
L["Bank"] = "Banco" -- Needs review
L["BANKFRAME_CLOSED"] = "Comprobar su banco" -- Needs review
L["BANKFRAME_OPENED"] = "Abre tu banco" -- Needs review
L["BankWork"] = "Work with the bank" -- Requires localization
L["Bool"] = "Bool" -- Requires localization
L["Classranking"] = "Clasificación de Clase" -- Needs review
L["Colors"] = "Colors" -- Requires localization
L["Combine"] = "Combine" -- Requires localization
L["Combined"] = "Combined" -- Requires localization
L["Combine one or more ranks"] = "Combine one or more ranks" -- Requires localization
L["Configmode"] = "Configmode" -- Requires localization
L["Contains"] = "Contiene" -- Needs review
L["Count"] = "Contar" -- Needs review
L["Create"] = "Crear" -- Needs review
L["Created"] = "Creado" -- Needs review
L["Criteria"] = "Criteria" -- Requires localization
L["Current content of X"] = "Actual contenido de X" -- Needs review
L["Custom family"] = "Familia personalizada" -- Needs review
L["Custom family:short"] = "Familia personalizada Fp" -- Needs review
L["Delete"] = "Borrar" -- Needs review
L["Delete a combined rank"] = "Delete a combined rank" -- Requires localization
L["Deleted"] = "Borrado" -- Needs review
L["Disable"] = "Deshabilita" -- Needs review
L["Disable a class"] = "Deshabilita una Clase" -- Needs review
L["Disabled"] = "Deshabilitado" -- Needs review
L["Disabled:short"] = "D" -- Requires localization
L["Display detailed infos about a rank"] = "Display detailed infos about a rank" -- Requires localization
L["Enable"] = "Habilitar" -- Needs review
L["Enable a class"] = "Habilita una clase" -- Needs review
L["Enabled"] = "Habilitado" -- Needs review
L["EquipLoc"] = "Ubicación de equipar" -- Needs review
L["Equipment sets"] = "Equipment sets" -- Requires localization
L["EQUIPMENT_SWAP_FINISHED"] = "Changed Equipment Set" -- Requires localization
L["Events"] = "Evento" -- Needs review
L["Family"] = "Familia" -- Needs review
L["Fast"] = "Rápido" -- Needs review
L["Filter"] = "Filter" -- Requires localization
L["Finished"] = "Finalizado" -- Needs review
L["Genie"] = "Genio" -- Needs review
L["GUI"] = "GUI" -- Requires localization
L["Guildbank"] = "Banco de Hermandad" -- Needs review
L["Guildbank delay"] = "Delay" -- Requires localization
L["Guildbank delay:desc"] = "Genie will delay each item-swap by this value (plus some additional lag adjustment)" -- Requires localization
L["GUILDBANKFRAME_CLOSED"] = "Comprobado tu Banco de Hermandad" -- Needs review
L["Guildbank-Tab 'X' unlocked. You're welcome."] = "Guildbank-Tab 'X' unlocked. You're welcome." -- Requires localization
L["GuildbankWork"] = "Work with the guildbank" -- Requires localization
L["Highlight"] = "Highlight" -- Requires localization
L["Ignore"] = "Ignorar" -- Needs review
L["Ignore all elements of this X"] = "Ignorar todos los elementos de esta X" -- Needs review
L["Ignore all elements of X"] = "Ignorar todos los elementos de X" -- Needs review
L["iLvl"] = "Nivel de Objeto" -- Needs review
L["I'm locking Guildbank-Tab 'X'. Step back!"] = "I'm locking Guildbank-Tab 'X'. Step back!" -- Requires localization
L["I need to know on which tabs i'm allowed to work"] = "I need to know on which tabs i'm allowed to work" -- Requires localization
L["Inspect"] = "Inspeccionar" -- Needs review
L["Inventory"] = "Inventario" -- Needs review
L["Invert"] = "Invert" -- Requires localization
L["Invert a class"] = "Invert a class" -- Requires localization
L["Inverted:short"] = "I" -- Requires localization
L["Invert the sorting order"] = "Invertir el orden de ordenación" -- Needs review
L["ItemID"] = "ItemID" -- Requires localization
L["I've done what you requested in X seconds"] = "Yo hice lo que me pediste en X segundos" -- Needs review
L["I will try to read your mind master"] = "Yo tratare de leer tu mente Amo" -- Needs review
L["Keyring"] = "Llavero" -- Needs review
L["LeftClick"] = "LeftClick" -- Requires localization
L["Lock the Guildbank"] = "Lock the Guildbank" -- Requires localization
L["Lock the Guildbank:desc"] = "Lock the Guilbank-Tab Genie is currently working on" -- Requires localization
L["LOOT_CLOSED"] = "saqueado" -- Needs review
L["MAIL_CLOSED"] = "Buzon comprovado" -- Needs review
L["Master i apologize, there where some errors. I had to stop"] = "Amo pido disculpas, habia algunos errores. Tuve que detenerme" -- Needs review
L["Master, i can't work with an empty container"] = "Master, i can't work with an empty container" -- Requires localization
L["Master, that's one thing i'm not allowed to do"] = "Master, that's one thing i'm not allowed to do" -- Requires localization
L["Master, there's nothing (more) to do"] = "Amo, no hay nada mas que hacer" -- Needs review
L["MERCHANT_CLOSED"] = "Visitado un mercader" -- Needs review
L["Minimap"] = "Minimap" -- Requires localization
L["MinLevel"] = "Minimo Nivel" -- Needs review
L["Mode"] = "Modo" -- Needs review
L["Move all items"] = "Mueve todos los objetos" -- Needs review
L["Moving"] = "Moviendo" -- Needs review
L["Name"] = "Nombre" -- Needs review
L["New"] = "Nuevo" -- Needs review
L["No X defined"] = "X no definida" -- Needs review
L["Number"] = "Number" -- Requires localization
L["Open the options menu"] = "Open the options menu" -- Requires localization
L["Open the ranking editor"] = "Open the ranking editor" -- Requires localization
L["Or"] = "Or" -- Requires localization
L["Price"] = "Sell price" -- Requires localization
L["Questitem"] = "Objeto de Misión" -- Needs review
L["Rarity"] = "Rareza" -- Needs review
L["Remove"] = "Quitar" -- Needs review
L["Remove an element from this X"] = "Remueve un elemento de esta X" -- Needs review
L["Rename"] = "Renombrar" -- Needs review
L["Reset the classranking"] = "Restablecer la clasificación de clase" -- Needs review
L["Reverse"] = "Inverso" -- Needs review
L["Reverse the order in which your bags and/or bagslots will be accsessed"] = "Invertir el orden en el cual sus bolsas y/o los huecos serán accedidos" -- Needs review
L["RightClick"] = "RightClick" -- Requires localization
L["Shift"] = "Shift" -- Requires localization
L["Show"] = "Mostrar" -- Needs review
L["Show current X"] = "Muestra actual X" -- Needs review
L["Silent"] = "Silencio, Verbosidad" -- Needs review
L["SlotCooldown"] = "tiempo de reutilización de hueco" -- Needs review
L["SlotCooldown:desc"] = "Tiempo en segundos que Genie debe esperar, antes de volver a un espacio específico. Ponga esto a 0 (cero) si desea sin demora." -- Needs review
L["Slots"] = "Huecos" -- Needs review
L["Sort all items"] = "Ordena todos los objetos" -- Needs review
L["sort_heap"] = "pila de clasificación" -- Needs review
L["Sorting"] = "Ordenando" -- Needs review
L["Sorting algorithm"] = "Algoritmo de ordenación" -- Needs review
L["sort_insert"] = "Ordenar por la inserción" -- Needs review
L["sort_quick3"] = "Ordenar Rápido 3" -- Needs review
L["sort_select"] = "Ordenar por Selección" -- Needs review
L["Soulbound"] = "Ligado al alma" -- Needs review
L["Sound"] = "Sound" -- Requires localization
L["Stack all items"] = "Apilar todos los objetos" -- Needs review
L["StackCount"] = "Número de apilados" -- Needs review
L["Stacking"] = "Apilando" -- Needs review
L["Stack, move and sort your X"] = "Apila, mueve y ordena tus X" -- Needs review
L["Stop"] = "Parar" -- Needs review
L["Strg"] = "Control" -- Requires localization
L["String"] = "String" -- Requires localization
L["SubType"] = "Sub Tipo" -- Needs review
L["SwapsPerCycle"] = "Swaps per cycle" -- Requires localization
L["SwapsPerCycle:desc"] = "Each cycle Genie swaps a specifc amount of items. Set this to 0(Zero) if you want Genie to swap them all at once" -- Requires localization
L["Sync"] = "Sync" -- Requires localization
L["Text"] = "Text" -- Requires localization
L["Texture"] = "Textura" -- Needs review
L["Toggle config mode"] = "Toggle config mode" -- Requires localization
L["ToggleWithRankingEditor"] = "Toggle with ranking editor" -- Requires localization
L["ToggleWithRankingEditorDesc"] = "Enable/ disable config mode when opening/ closing the ranking editor" -- Requires localization
L["Tooltip"] = "Tooltip" -- Requires localization
L["TRADE_CLOSED"] = "Comerciado con alguien" -- Needs review
L["TStID"] = "Aic" -- Requires localization
L["Type"] = "Tipo" -- Needs review
L["Unique"] = "Unico" -- Needs review
L["Unknown"] = "Desconocido" -- Needs review
L["Update"] = "Actualizar" -- Needs review
L["Update a class"] = "Actualiza una clase" -- Needs review
L["Updated"] = "Actualizado" -- Needs review
L["UseProfile"] = "UseProfile" -- Requires localization
L["Verbosity"] = "Verbosity" -- Requires localization
L["Version"] = "Versión" -- Needs review
L["waitAfter"] = "Wait after combat" -- Requires localization
L["When"] = "When" -- Requires localization
L["Work"] = "Trabajo" -- Needs review
L["X added to Y"] = "X añadido a Y" -- Needs review
L["X has been updated"] = "X ha sido actualizado" -- Needs review
L["X is empty"] = "X esta vacío" -- Needs review
L["X removed from Y"] = "X quitada de Y" -- Needs review
L["X renamed to Y"] = "X renombrada a Y" -- Needs review


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
