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

local L = LibStub("AceLocale-3.0"):NewLocale("Genie", "ruRU")
if not L then return end
--[[///////////////////////////////////////////////////////////////////////////////////////
    Automatic translation injection

	NOTE: Do NOT translate strings here!
	If you want to translate, do so at
	http://wow.curseforge.com/addons/genie/localization/
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Add"] = "Добавить"
L["Add a class/family to the ranking"] = "Добавить класс/вид в список приоритетов"
L["Add an element to this X"] = "Добавить элемент в этот X"
L["AddonNotes"] = "Джин помогает вам упорядочить сумки, банк и/или банк гильдии "
L["All items are beeing ignored"] = "Все вещи были помещены в черный список"
L["Alt"] = "Alt"
L["Always"] = "Всегда"
L["And"] = "И"
L["As you wish master"] = "Ваше желание для меня закон"
L["AttachTo"] = "AttachTo" -- Requires localization
L["Automatic"] = "Автоматическая сортировка"
L["Automatic events"] = "Автоматические события для X" -- Needs review
L["Automatic mode"] = "Автоматический режим"
L["Bag"] = "Сумка"
L["bag/ bank or guildbank"] = "Сумка, банк или банк гильдии"
L["Bags"] = "Сумки"
L["BagWork"] = "Work with the bags" -- Requires localization
L["Bank"] = "Банк"
L["BANKFRAME_CLOSED"] = "При проверке банка"
L["BANKFRAME_OPENED"] = "Банк открыт"
L["BankWork"] = "Work with the bank" -- Requires localization
L["Bool"] = "Bool" -- Requires localization
L["Classranking"] = "Список приоритетов по классу"
L["Colors"] = "Цвета"
L["Combine"] = "Combine" -- Requires localization
L["Combined"] = "Combined" -- Requires localization
L["Combine one or more ranks"] = "Объединить один или более рангов"
L["Configmode"] = "Configmode" -- Requires localization
L["Contains"] = "Содержит"
L["Count"] = "Количество"
L["Create"] = "Создать"
L["Created"] = "Создано"
L["Criteria"] = "Criteria" -- Requires localization
L["Current content of X"] = "Содержимое X"
L["Custom family"] = "Свой вид"
L["Custom family:short"] = "СГ"
L["Delete"] = "Удалить"
L["Delete a combined rank"] = "Удалить объединенный ранг"
L["Deleted"] = "Удалено"
L["Disable"] = "Отключить"
L["Disable a class"] = "Отключить вид"
L["Disabled"] = "Отключено"
L["Disabled:short"] = "Откл"
L["Display detailed infos about a rank"] = "Показывать детальную информацию о ранге"
L["Enable"] = "Включить"
L["Enable a class"] = "Включить вид"
L["Enabled"] = "Включено"
L["EquipLoc"] = "Местонахождение вещей"
L["Equipment sets"] = "Equipment sets" -- Requires localization
L["EQUIPMENT_SWAP_FINISHED"] = "Смена экипировки"
L["Events"] = "События"
L["Family"] = "Вид"
L["Fast"] = "Быстро"
L["Filter"] = "Фильтр"
L["Finished"] = "Закончено"
L["Genie"] = "Genie"
L["GUI"] = "GUI"
L["Guildbank"] = "Банк гильдии"
L["Guildbank delay"] = "Delay" -- Requires localization
L["Guildbank delay:desc"] = "Genie will delay each item-swap by this value (plus some additional lag adjustment)" -- Requires localization
L["GUILDBANKFRAME_CLOSED"] = "Закрыт банк гильдии"
L["Guildbank-Tab 'X' unlocked. You're welcome."] = "Вкладка 'X' разблокирована. Добро пожаловать."
L["GuildbankWork"] = "Work with the guildbank" -- Requires localization
L["Highlight"] = "Подсветка"
L["Ignore"] = "Черный список"
L["Ignore all elements of this X"] = "Игнорировать все элементы этого X"
L["Ignore all elements of X"] = "Игнорировать все элементы X"
L["iLvl"] = "Уровень вещей"
L["I'm locking Guildbank-Tab 'X'. Step back!"] = "Я блокирую вкладку 'X'. Всем отойти!"
L["I need to know on which tabs i'm allowed to work"] = "Я не знаю с какой вкладкой мне разрешено работать"
L["Inspect"] = "Осмотр"
L["Inventory"] = "Инвентарь"
L["Invert"] = "Invert" -- Requires localization
L["Invert a class"] = "Инвертировать класс"
L["Inverted:short"] = "Инв."
L["Invert the sorting order"] = "Обратный порядок сортировки"
L["ItemID"] = "Номер вещи" -- Needs review
L["I've done what you requested in X seconds"] = "Я сделал "
L["I will try to read your mind master"] = "Я угадаю ваше желание"
L["Keyring"] = "Кольцо для ключей"
L["LeftClick"] = "Левая кнопка мыши"
L["Lock the Guildbank"] = "Заблокировать банк гильдии"
L["Lock the Guildbank:desc"] = "Заблокировать вкладку над которой работает Джини"
L["LOOT_CLOSED"] = "Сбор"
L["MAIL_CLOSED"] = "Проверка почты"
L["Master i apologize, there where some errors. I had to stop"] = "Мастер мне кажется, произошла какая-то ошибка. Я прекращаю работу"
L["Master, i can't work with an empty container"] = "Повелитель, я не могу работать с пустой сумкой"
L["Master, that's one thing i'm not allowed to do"] = "Повелитель, мне нельзя это сделать"
L["Master, there's nothing (more) to do"] = "Повелитель, работа уже сделана"
L["MERCHANT_CLOSED"] = "Посещение торговца"
L["Minimap"] = "Миникарта"
L["MinLevel"] = "Минимальный уровень"
L["Mode"] = "Режим"
L["Move all items"] = "Переместить все вещи"
L["Moving"] = "Перемещение"
L["Name"] = "Имя"
L["New"] = "Новый"
L["No X defined"] = "X не определен"
L["Number"] = "Номер"
L["Open the options menu"] = "Open the options menu" -- Requires localization
L["Open the ranking editor"] = "Open the ranking editor" -- Requires localization
L["Or"] = "Или"
L["Price"] = "Стоимость"
L["Questitem"] = "Вещи для заданий"
L["Rarity"] = "Качество"
L["Remove"] = "Удалить"
L["Remove an element from this X"] = "Удалить элемент из этого X"
L["Rename"] = "Переименовать"
L["Reset the classranking"] = "Сбросить скисок приоритетов"
L["Reverse"] = "Обратный порядок"
L["Reverse the order in which your bags and/or bagslots will be accsessed"] = "Обратный порядок сортировки сумок и/или слотов."
L["RightClick"] = "Правая кнопка мыши"
L["Shift"] = "Shift"
L["Show"] = "Показать"
L["Show current X"] = "Показать данный X"
L["Silent"] = "Отключение сообщений" -- Needs review
L["SlotCooldown"] = "Время повторной доступности слота."
L["SlotCooldown:desc"] = "Время ожидания в секундах, перед использованием слота. 0 для отключения задержки."
L["Slots"] = "Слоты"
L["Sort all items"] = "Сортировать все вещи"
L["sort_heap"] = "Древовидная сортировка"
L["Sorting"] = "Сортировка"
L["Sorting algorithm"] = "Метод сортировки"
L["sort_insert"] = "Сортировка вставкой"
L["sort_quick3"] = "Быстрая сортировка"
L["sort_select"] = "Сортировка выбором"
L["Soulbound"] = "Личные"
L["Sound"] = "Звук"
L["Stack all items"] = "Сложить все вещи"
L["StackCount"] = "Количество стопок"
L["Stacking"] = "Объединение"
L["Stack, move and sort your X"] = "Объединить, переместить и отсортировать свой X" -- Needs review
L["Stop"] = "Остановить"
L["Strg"] = "Ctrl"
L["String"] = "String" -- Requires localization
L["SubType"] = "Подтип"
L["SwapsPerCycle"] = "Действия за цикл"
L["SwapsPerCycle:desc"] = "Каждый цикл Джини перемещает определенное число вещей. 0 для отключения ограничения."
L["Sync"] = "Синхронизация"
L["Text"] = "Текст"
L["Texture"] = "Текстура"
L["Toggle config mode"] = "Toggle config mode" -- Requires localization
L["ToggleWithRankingEditor"] = "Toggle with ranking editor" -- Requires localization
L["ToggleWithRankingEditorDesc"] = "Enable/ disable config mode when opening/ closing the ranking editor" -- Requires localization
L["Tooltip"] = "Tooltip" -- Requires localization
L["TRADE_CLOSED"] = "Торговля"
L["TStID"] = "Аукцион"
L["Type"] = "Тип"
L["Unique"] = "Уникальный"
L["Unknown"] = "Неизвестный"
L["Update"] = "Обновить"
L["Update a class"] = "Обновить класс"
L["Updated"] = "Обновлен"
L["UseProfile"] = "Используемый профиль" -- Needs review
L["Verbosity"] = "Verbosity" -- Requires localization
L["Version"] = "Версия"
L["waitAfter"] = "Время ожидания после выхода из боя"
L["When"] = "When" -- Requires localization
L["Work"] = "Работать"
L["X added to Y"] = "X добавлен в Y"
L["X has been updated"] = "X обновлен"
L["X is empty"] = "X пуст"
L["X removed from Y"] = "X удален из Y"
L["X renamed to Y"] = "X переименован в Y"


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
