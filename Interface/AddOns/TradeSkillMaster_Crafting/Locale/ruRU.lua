-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_Crafting - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/tradeskillmaster_crafting.aspx    --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --

-- TradeSkillMaster_Crafting Locale - ruRU
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Crafting/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Crafting", "ruRU")
if not L then return end

L["2H Weapon"] = "Двуручное оружие"
L["Add Crafted Items from this Group to Auctioning Groups"] = "Добавить крафты из этого раздела в Auctioning группы"
L["Added %s crafted items to: %s."] = "Добавлено %s крафтов в: %s"
L["Added %s crafted items to %s individual groups."] = "Добавлено %s крафтов в %s отдельные группы."
L["Add Item to New Group"] = "Добавить предмет в новую группу"
L["Add Item to Selected Group"] = "Добавить предмет в выбранную группу"
L["Add Item to TSM_Auctioning"] = "Добавить предмет в TSM_Auctioning"
L["Additional Item Settings"] = "Дополнительные настройки для предмета"
L["Addon to use for alt data:"] = "Аддон для хранения данных альтов:"
L["Adds all items in this Crafting group to Auctioning group(s) as per the above settings."] = "Добавить все предметы из этого раздела в Auctioning группы согласно настройкам выше."
L["AH/Bags/Bank/Alts"] = "Аук/Сумки/Банк/Альт"
L["All"] = "Все"
L["All in Individual Groups"] = "Все в отдельные группы"
L["All in Same Group"] = "Все в одну группу"
L["Allows you to override the minimum profit settings for this profession."] = "Здесь можно изменить настройки минимальной прибыли для этой профессии."
L["Allows you to set a custom maximum queue quantity for this item."] = "Здесь можно изменить максимальное кол-во для добавления в очередь для этой предмета."
L["Allows you to set a custom maximum queue quantity for this profession."] = "Здесь можно изменить максимальное кол-во для добавления в очередь для этой профессии."
-- L["Allows you to set a custom minimum ilvl to queue."] = ""
L["Allows you to set a custom minimum queue quantity for this item."] = "Позволяет задать минимальное кол-во этих предметов, добавляемых в очередь."
L["Allows you to set a custom minimum queue quantity for this profession."] = "Здесь можно изменить минимальное кол-во для добавления в очередь для этой профессии."
L["Allows you to set a different craft sort method for this profession."] = "Здесь можно задать методы сортировки крафтов для этой профессии."
L["Allows you to set a different craft sort order for this profession."] = "Здесь можно задать порядок сортировки крафтов для этой профессии."
-- L["All vendor items that cost more than this price will not be ignored by the on-hand queue."] = ""
L["Always queue this item."] = "Всегда добавлять этот предмет в очередь."
L["Are you sure you want to delete the selected profile?"] = "Вы уверены, что хотите удалить выбранный профиль?"
L["Armor"] = "Доспехи"
L["Armor - Back"] = "Доспехи - Спина"
L["Armor - Chest"] = "Доспехи - Грудь"
L["Armor - Feet"] = "Доспехи - Ступни"
L["Armor - Hands"] = "Доспехи - Кисти рук"
L["Armor - Head"] = "Доспехи - Голова"
L["Armor - Legs"] = "Доспехи - Ноги"
L["Armor - Shield"] = "Доспехи - Щит"
L["Armor - Shoulders"] = "Доспехи - Плечи"
L["Armor - Waist"] = "Доспехи - Пояс"
L["Armor - Wrists"] = "Доспехи - Запястья"
L["Ascending"] = "В порядке возрастания"
L["Auctioneer"] = "Auctioneer"
L["Auction House"] = "Аукцион"
L["Auction House Value"] = "Рыночная стоимость"
L["Bags"] = "Сумки"
L["Bars"] = "Панели"
L["Blackfallow Ink"] = "Мрачно-коричневые чернила"
L["Blue Gems"] = "Синие камни"
L["Boots"] = "Ступни"
L["Bracers"] = "Запястья"
-- L["Cannot delete currently active profile!"] = ""
L["Can not set a max restock quantity below the minimum restock quantity of %d."] = "Максимум предметов для добавления очередь должен быть больше минимума предметов %d, добавляемых в очередь."
-- L["Can not set a min restock quantity above the max restock quantity of %d."] = ""
-- L["Category to put groups into:"] = ""
L["Celestial Ink"] = "Астрономические чернила"
-- L["Character(s) (comma-separated if necessary):"] = ""
L["Characters to include:"] = "Включить следующих персонажей:"
-- L["Character to Send Crafting Costs to:"] = ""
L["Checking this box will allow you to set a custom, fixed price for this item."] = "Назначить фиксированную стоимость для этого предмета"
L["Chest"] = "Грудь"
L["Class"] = "Класс"
L["Clear Queue"] = "Очистить очередь"
L["Clear Tradeskill Filters"] = "Очистить фильтры"
L["Cloak"] = "Спина"
L["Close TradeSkillMaster_Crafting"] = "Закрыть TradeSkillMaster_Crafting"
L["Cloth"] = "Ткань"
L["Combine/Split Essences/Eternals"] = "Объединить/разделить субстанции" -- Needs review
L["Companions"] = "Питомцы"
-- L["Compressing and sending %s bytes of data to %s. This will take approximately %s seconds. Please wait..."] = ""
L["Consumables"] = "Расходные материалы"
L["Copy From"] = "Скопировать из"
L["Copy the settings from one existing profile into the currently active profile."] = "Скопировать настройки из существующего профиля в текущий."
L["Cost"] = "Стоимость"
L["Cost: %s Market Value: %s Profit: %s Times Crafted: %s"] = "Стоймость: %s Рыночная цена: %s Прибыль: %s Создано раз: %s"
L["Cost to Craft"] = "Стоимость создания"
L["Craft"] = "Крафт"
L["Crafting Cost: %s (%s profit)"] = "Стоимость создания: %s (прибыль %s)"
-- L["Crafting Cost Synchronization"] = ""
L["Crafting Options"] = "Настройки крафта"
-- L["<Crafting Stage #%s>"] = ""
L["Craft Item (x%s)"] = "Создать предмет (x%s)"
-- L["Craft Management Window Settings"] = ""
L["Craft Next"] = "Создать следующее"
L["Crafts"] = "Крафты"
L["Create a new empty profile."] = "Создать новый пустой профиль"
L["Create Auctioning Groups"] = "Создать Auctioning группу"
L["Current Profile:"] = "Текущий профиль"
L["Custom"] = "Свои настройки"
L["Custom Value"] = "Своя цена"
L["DataStore"] = "DataStore"
L["Default"] = "По умолчанию"
L["Delete a Profile"] = "Удалить профиль"
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "Удалить существующие и неиспользуемые профили для экономии места и очистить файл SavedVariables."
L["Descending"] = "В порядке убывания"
L["Disable All Crafts"] = "Отключить все крафты"
L["Don't queue this item."] = "Не добавлять этот предмет в очередь."
L["Double Click Queue"] = "Добавить предметов при двойном клике"
L["Edit Custom Value"] = "Изменить свою цену"
L["Elixir"] = "Эликсир"
L["Enable All Crafts"] = "Включить все крафты"
L["Enable / Disable showing this craft in the craft management window."] = "Включить / выключить отображение этого крафта в окне управления крафтом."
L["Enable New TradeSkills"] = "Отметить новые крафты."
-- L["Enter a value that Crafting will use as the cost of this material."] = ""
-- L["Enter what you want to multiply the cost of the other item by to calculate the price of this mat."] = ""
L["Estimated Total Mat Cost:"] = "Приблизительная стоимость материалов:"
L["Estimated Total Profit:"] = "Приблизительная прибыль:"
L["Ethereal Ink"] = "Астральные чернила"
L["Existing Profiles"] = "Существующие профили"
L["Explosives"] = "Взрывчатка"
L["Export Crafts to TradeSkillMaster_Auctioning"] = "Экспорт крафтов в TradeSkillMaster_Auctioning"
L["Filter out items with low seen count."] = "Не показывать предметы, редко появляющиеся на ауке."
L["Flask"] = "Настой"
L["Force Rescan of Profession (Advanced)"] = "Принудительно пересканировать профессию (Дополн.)"
L["Frame Scale"] = "Масштаб фрейма"
-- L["General Price Sources"] = ""
L["General Setting Overrides"] = "Изменить общие настройки"
L["General Settings"] = "Общие настройки"
L["Get Craft Prices From:"] = "Источник цены крафтов"
L["Get Mat Prices From:"] = "Источник цены материалов"
L["Gloves"] = "Перчатки"
L["Gold Amount"] = "Количество золота"
-- L["Got invalid crafting cost data from %s."] = ""
L["Green Gems"] = "Зеленые камни"
L["Group Inscription Crafts By:"] = "Сгруппировать крафты Начертания по:"
L["Group to Add Crafts to:"] = "В какую группу добавить крафты:"
L["Guilds to include:"] = "Включить гильдии:"
L["Guns"] = "Ружья"
L["Help"] = "Помощь"
L["Here, you can override default restock queue settings."] = "Здесь можно изменить настройки создания очереди."
L["Here, you can override general settings."] = "Здесь можно изменить общие настройки."
-- L["Here you can view and adjust how Crafting is calculating the price for this material."] = ""
L["How to add crafts to Auctioning:"] = "Как добавлять крафты:"
L["If checked, any crafts which are already in an Auctioning group will be removed from their current group and a new group will be created for them. If you want to maintain the groups you already have setup that include items in this group, leave this unchecked."] = "Отметьте, чтобы все крафты, которые уже включены в Auctioning группы, были удалены из них. Для них будут созданы новые группы. Если вы не хотите изменять настройки групп, в которые входят эти крафты, не отмечайте этот пункт."
-- L["If checked, Crafting will account for items you have on the AH."] = ""
L["If checked, Only crafts that are enabled (have the checkbox to the right of the item link checked) below will be added to Auctioning groups."] = "Только крафты, отмеченные галочками буду добавлены в Аукционные группы."
-- L["If checked, only vendor items below a maximum price will be ignored by the on-hand queue."] = ""
L["If checked, the crafting cost of items will be shown in the tooltip for the item."] = "Отметьте для показа стоимости создания предмета в подсказке."
-- L["If checked, the on-hand queue will assume you have all vendor items when queuing crafts."] = ""
L["If checked, the profit percent (profit/sell price) will be shown next to the profit in the craft management window."] = "Отметьте для показа прибыли в процентах (прибыль/цена продажи) в рядом с прибылью в окне управления крафтом."
L["If checked, when Crafting scans a tradeskill for the first time (such as after you learn a new one), it will be enabled by default."] = "При пересканировании профессии новые крафты автоматически будут отмечены."
-- L["If checked, you can change the price source for this mat by clicking on one of the checkboxes below. This source will be used to determine the price of this mat until you remove the override or change the source manually. If this setting is not checked, Crafting will automatically pick the cheapest source."] = ""
L["If enabled, any craft with a profit over this percent of the cost will be added to the craft queue when you use the \"Restock Queue\" button."] = "Отметьте этот пункт, чтобы при нажатии кнопки \"Создать очередь\" в очередь крафта добавлять все предметы с прибылью выше этого процента."
L["If enabled, any craft with a profit over this value will be added to the craft queue when you use the \"Restock Queue\" button."] = "Отметьте этот пункт, чтобы при нажатии кнопки \"Создать очередь\" в очередь крафта добавлять все предметы с прибылью выше этого значения."
L["If enabled, any item with a seen count below this seen count filter value will not be added to the craft queue when using the \"Restock Queue\" button. You can overrride this filter for individual items in the \"Additional Item Settings\"."] = "Отметьте этот пункт, чтобы при нажатии кнопки \"Создать очередь\" в очередь крафта не добавлять предметы, появляющиеся на аукционе реже, чем введенное значения. В разделе \"Дополнительные настройки предмета\" можно выбрать игнорирование этого фильтра."
-- L["If you use multiple accounts, you can use the steps below to synchronize your crafting costs between your accounts. This can be useful if you craft on one account and would like to post on another account using % of crafting cost as the threshold/fallback. Read the tooltips of the options below for instructions."] = ""
-- L["Ignored crafting cost data from %s since he is not on your list. You will only see this message once per session for this player."] = ""
L["Ignore Seen Count Filter"] = "Игнорировать фильтр по кол-ву раз появления на ауке."
-- L["Ignore Vendor Items"] = ""
L["In Bags"] = "В сумках."
L["Include Crafts Already in a Group"] = "Включая крафты, которые уже находятся в группах"
-- L["Include Items on AH"] = ""
L["Ink"] = "Чернила"
L["Ink of the Sea"] = "Чернила моря"
L["Inks"] = "Чернила"
L["Inscription crafts can be grouped in TradeSkillMaster_Crafting either by class or by the ink required to make them."] = "Свитки в TradeSkillMaster_Crafting можно сгруппировать как по классам, так и по чернилам, из которых их создают."
-- L["Invalid item entered. You can either link the item into this box or type in the itemID from wowhead."] = ""
-- L["Invalid money format entered, should be \"#g#s#c\", \"25g4s50c\" is 25 gold, 4 silver, 50 copper."] = ""
-- L["Invalid Number"] = ""
-- L["Invalid target player \"%s\"."] = ""
L["Inventory Settings"] = "Настройки инвентаря."
L["Item Enhancements"] = "Улучшения"
L["Item Level"] = "Уровень предмета."
L["Item Name"] = "Название предмета"
L["Items will only be added to the queue if the number being added is greater than this number. This is useful if you don't want to bother with crafting singles for example."] = "Предметы будут добавлены в очередь только если их кол-во больше этого числа. Полезно, если вы не хотите создавать единичные предметы."
-- L["ItemTracker"] = ""
-- L["Item Value"] = ""
L["Jadefire Ink"] = "Чернила Нефритового Пламени"
L["Leather"] = "Кожа"
L["Level 1-35"] = "Уровни 1-35"
L["Level 36-70"] = "Уровни 36-70"
L["Level 71+"] = "Уровни 71+"
-- L["Limit Vendor Item Price"] = ""
L["Lion's Ink"] = "Чернила царя зверей"
L["Manual Entry"] = "Ввести вручную."
L["Mark as Unknown (\"----\")"] = "Отметить как Неизвестное (\"----\")"
-- L["Material Cost Options"] = ""
L["Materials"] = "Материалы."
L["Mat Price"] = "Цена мат-ов"
-- L["Maximum Price Per Vendor Item"] = ""
L["Max Restock Quantity"] = "Макс. кол-во для добавления в очередь."
L["Meta Gems"] = "Особые камни"
L["Midnight Ink"] = "Полуночные чернила"
L["Mill"] = "Измельчить"
-- L["Milling"] = ""
-- L["Min Craft ilvl"] = ""
-- L["Min ilvl to craft:"] = ""
L["Minimum Profit (in %)"] = "Минимальная прибыль (в%)"
L["Minimum Profit (in gold)"] = "Минимальная прибыль (в золоте)"
L["Minimum Profit Method"] = "Способ определения минимальной прибыли."
L["Min Restock Quantity"] = "Мин. кол-во для добавления в очередь."
L["Misc Items"] = "Разное"
-- L["Multiple of Other Item Cost"] = ""
L["Name"] = "Название"
L["Name of New Group to Add Item to:"] = "Название новой группы, куда будет добавлен предмет."
L["Need"] = "Требуется"
L["New"] = "Новый"
L["<New Group>"] = "<Новая группа>"
L["<No Category>"] = "<Без категории>"
L["No crafts have been added for this profession. Crafts are automatically added when you click on the profession icon while logged onto a character which has that profession."] = "Для этой профессии нет добавленных крафтов. Они добавятся автоматически, когда вы зайдете за персонажа с этой профессией и нажмете на иконку этой профессии."
L["No Minimum"] = "Нет минимума"
-- L["Note: By default, Crafting will use the second cheapest value (herb or pigment cost) to calculate the cost of the pigment as this provides a slightly more accurate value."] = ""
-- L["NOTE: Milling prices can be viewed / adjusted in the mat options for pigments. Click on the button below to go to the pigment options."] = ""
-- L["Number Owned"] = ""
L["OK"] = "ОК"
L["On-Hand Queue"] = "Очередь из мат-ов в сумках."
L["Only Included Enabled Crafts"] = "Включить только отмеченные крафты"
-- L["On the account that will be receiving the crafting cost data (ie the account that doesn't have the profession), list the characters that will be sending the crafting cost data below (ie the characters with the profession)."] = ""
-- L["Open Mat Options for Pigment"] = ""
L["Open TradeSkillMaster_Crafting"] = "Открыть TradeSkillMaster_Crafting"
L["Options"] = "Настройки"
L["Orange Gems"] = "Оранжевые камни"
L["Other"] = "Другое"
L["Other Consumable"] = "Другие расходуемые мат."
-- L["Other Item"] = ""
L["Override Craft Sort Method"] = "Изменить метод сортировки крафтов"
L["Override Craft Sort Order"] = "Изменить порядок сортировки крафтов"
L["Override Max Restock Quantity"] = "Переписать макс. кол-во для добавления в очередь."
L["Override Minimum Profit"] = "Изменить настройки мин. прибыли"
L["Override Min Restock Quantity"] = "Переписать мин. кол-во для добавления в очередь"
-- L["Override Price Source"] = ""
L["Percent and Gold Amount"] = "Процент и количество золота"
L["Percent of Cost"] = "Процент стоимости"
L["Percent to subtract from buyout when calculating profits (5% will compensate for AH cut)."] = "Процент, вычитаемый из цены выкупа при вычислении прибыли (5% компенсируют налог аука)"
L["per pigment"] = "за чернила"
-- L["Place lower limit on ilvl to craft"] = ""
L["Potion"] = "Зелье"
L["Price:"] = "Цена:"
-- L["Price / Inventory Settings"] = ""
-- L["Price Multiplier"] = ""
L["Price Settings"] = "Настройки стоимости"
L["Price Source"] = "Источник цены"
L["Prismatic Gems"] = "Радужные камни"
-- L["Profession Page Settings"] = ""
L["Profession-Specific Settings"] = "Настройки профессии"
L["Profiles"] = "Профили."
L["Profit"] = "Прибыль."
L["Profit Deduction"] = "Вычисление прибыли."
L["Purple Gems"] = "Фиолетовые камни"
-- L["# Queued:"] = ""
-- L["Queue Settings"] = ""
L["Red Gems"] = "Красные камни"
L["Reset Profile"] = "Сбросить профиль."
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "Сбросить настройки профиля (если сбились настройки, или вы хотите настроить все заново)."
L["Restock Queue"] = "Создать очередь."
L["Restock Queue Overrides"] = "Изменение настройки создания очереди."
L["Restock Queue Settings"] = "Настройки создания очереди."
L["Scopes"] = "Прицелы"
L["Scrolls"] = "Свитки"
L["Seen Count"] = "Замечено раз"
L["Seen Count Filter"] = "Фильтр по кол-ву раз появления на ауке."
L["Seen Count Source"] = "Источник данных о кол-ве раз появления на ауке"
L["Select an Auctioning group to add these crafts to."] = "Выберите группу, куда добавить эти крафты."
L["Select the crafts you would like to add to Auctioning and use the settings / buttons below to do so."] = "Выберите крафты для добавления в Auctioning группы. Воспользуйтесь настройками / кнопками ниже."
-- L["Send Crafting Costs"] = ""
-- L["Sending data to %s complete!"] = ""
-- L["Set Crafted Item Cost to Auctioning Fallback"] = ""
L["Shield"] = "Щит"
L["Shimmering Ink"] = "Мерцающие чернила"
L["Show Crafting Cost in Tooltip"] = "Показывать стоимость создания в подсказке."
L["Show Craft Management Window"] = "Показать окно управления крафтом"
L["Show Profit Percentages"] = "Показать прибыль в процентах"
L["%s not queued! Min restock of %s is higher than max restock of %s"] = "%s не добавлен в очередь! Минимальное количество %s больше максимального количества %s"
L["Sort Crafts By"] = "Метод сортировки крафтов"
L["Sort crafts in ascending order."] = "Отсортировать крафты в порядке возрастания."
L["Sort crafts in descending order."] = "Отсортировать крафты в порядке убывания."
L["Sort Order:"] = "Порядок сортировки:"
L["Staff"] = "Посох"
L["Status"] = "Статус"
-- L["Step 2 (on Crafting Account):"] = ""
-- L["Successfully got %s bytes of crafting cost data from %s!"] = ""
L["The checkboxes in next to each craft determine enable / disable the craft being shown in the Craft Management Window."] = "Поставьте / уберите галочки напротив тех крафтов, которые нужно / не нужно показывать в Окне управления крафтом."
L["The item you want to base this mat's price on. You can either link the item into this box or type in the itemID from wowhead."] = "Предмет, на котором основана цена. Введите линк на предмет (shift+клик) или его ID из wowhead."
-- L["These options control the \"Restock Queue\" button in the craft management window. These settings can be overriden by profession or by item in the profession pages of the main TSM window."] = ""
-- L["This is where TradeSkillMaster_Crafting will get material prices. AuctionDB is TradeSkillMaster's auction house data module. Alternatively, prices can be entered manually in the \"Materials\" pages."] = ""
-- L["This is where TradeSkillMaster_Crafting will get prices for crafted items. AuctionDB is TradeSkillMaster's auction house data module."] = ""
L["This item is already in the \"%s\" Auctioning group."] = "Этот предмет уже находится в группе \"%s\"."
L["This item will always be queued (to the max restock quantity) regardless of price data."] = "Этот предмет всегда будет добавляться в очередь создания вне зависимости от цен."
L["This item will not be queued by the \"Restock Queue\" ever."] = "Этот предмет никогда не будет добавлен в очередь функцией \"Создать очередь\"."
L["This item will only be added to the queue if the number being added is greater than or equal to this number. This is useful if you don't want to bother with crafting singles for example."] = "Этот предмет будет добавлен в очередь только если их кол-во. больше данного числа. Полезная функция, если вы не хотите создавать единичные предметы."
L["This setting determines how crafts are sorted in the craft group pages (NOT the Craft Management Window)."] = "Способ сортировки крафтов в окне профессии (НЕ в окне управления крафтом)."
L["This setting determines where seen count data is retreived from. The seen count data can be retreived from either Auctioneer or TradeSkillMaster's AuctionDB module."] = "Эта функция задает, откуда будут браться данные о частоте появления данного товара на аукционе. Эти данные могут браться как из Auctioneer, так и из модуля AuctionDB."
-- L["This will allow you to base the price of this item on the price of some other item times a multiplier. Be careful not to create circular dependencies (ie Item A is based on the cost of Item B and Item B is based on the price of Item A)!"] = ""
-- L["This will determine how items with unknown profit are dealt with in the Craft Management Window. If you have the Auctioning module installed and an item is in an Auctioning group, the fallback for the item can be used as the market value of the crafted item (will show in light blue in the Craft Management Window)."] = ""
L["This will set the scale of the craft management window. Everything inside the window will be scaled by this percentage."] = "Эта функция определяет масштаб окна управления крафтом. Все внутри этого окна будет масштабировано в соответствии с этим процентом."
L["Times Crafted"] = "Создано раз"
L["Total"] = "Всего"
L["TradeSkillMaster_AuctionDB"] = "TradeSkillMaster_AuctionDB"
-- L["TradeSkillMaster_Crafting can use TradeSkillMaster_ItemTracker or DataStore_Containers to provide data for a number of different places inside TradeSkillMaster_Crafting. Use the settings below to set this up."] = ""
L["TradeSkillMaster_Crafting - Scanning..."] = "TradeSkillMaster_Crafting - Сканирование"
L["Transmutes"] = "Трансмутации"
L["Trinkets"] = "Аксессуары"
L["TSM_Auctioning Group to Add Item to:"] = "Группа в TSM_Auctioning, куда добавить этот предмет"
-- L["TSM_Crafting - Buy Vendor Items"] = ""
-- L["Type in the name of the player you want to send your crafting cost data to and hit the \"Send\" button. Remember to do step 1 on the character you're trying to send to first!"] = ""
L["Unknown Profit Queuing"] = "Создание очереди с неизвестной прибылью."
-- L["Use auction house data from the addon you have selected in the Crafting options for the value of this mat."] = ""
-- L["User-Defined Price"] = ""
L["Use the links on the left to select which page to show."] = "Воспользуйтесь ссылками слева для выбора страницы."
-- L["Use the price of buying herbs to mill as the cost of this material."] = ""
-- L["Use the price that a vendor sells this item for as the cost of this material."] = ""
-- L["Vendor"] = ""
-- L["Vendor Trade"] = ""
-- L["Vendor Trade (x%s)"] = ""
L["Warning: The min restock quantity must be lower than the max restock quantity."] = "Внимание! Минимальное кол-во предметов, добавляемых в очередь, должно быть меньше максимального."
L[ [=[Warning: Your default minimum restock quantity is higher than your maximum restock quantity! Visit the "Craft Management Window" section of the Crafting options to fix this!

You will get error messages printed out to chat if you try and perform a restock queue without fixing this.]=] ] = "Внимание! Значение минимального количества добавляемых в очередь предметов у вас больше максимального. Исправьте это в \"Окне управления крафтом\". Вы будете получать это сообщение до тех пор, пока не исправите свои настройки."
L["Weapon"] = "Оружие"
L["Weapon - Main Hand"] = "Оружие - Правая рука"
L["Weapon - One Hand"] = "Оружие - одноручное"
L["Weapon - Thrown"] = "Оружие - Метательное"
L["Weapon - Two Hand"] = "Оружие - Двуручное"
L["When you click on the \"Restock Queue\" button enough of each craft will be queued so that you have this maximum number on hand. For example, if you have 2 of item X on hand and you set this to 4, 2 more will be added to the craft queue."] = "При нажатии на кнопку \"Создать очередь\" в очередь будут добавлено столько крафтов, чтобы в конечном итоге у вас оказалось максимальное их количество. Например, у вас есть 2 крафта Х, макс. кол-во задано 4, в очередь будет добавлено 2."
L["When you double click on a craft in the top-left portion (queuing portion) of the craft management window, it will increment/decrement this many times."] = "Двойной щелчок на крафте наверху слева в окне управления крафтом увеличит/уменьшит его кол-во в очереди."
L["When you use the \"Restock Queue\" button, it will ignore any items with a seen count below the seen count filter below. The seen count data can be retreived from either Auctioneer or TradeSkillMaster's AuctionDB module."] = "Использование функции \"Создать очередь\" не добавит в очередь предметы , появляющиеся на ауке реже, чем введенное ниже значения. Это число может быть взято из Auctioneer или из модуля TradeSkillMaster AuctionDB."
L["Which group in TSM_Auctioning to add this item to."] = "В какую группу модуля TSM_Auctioning добавить этот предмет."
L["Yellow Gems"] = "Желтые камни"
L["You can change the active database profile, so you can have different settings for every character."] = "Можно изменить датабазу для текущего профиля, для каждого профиля можно задать отдельные настройки."
L["You can choose to specify a minimum profit amount (in gold or by percent of cost) for what crafts should be added to the craft queue."] = "Минимальная прибыль крафта (в золоте или %) для добавления в очередь."
-- L["You can click on one of the rows of the scrolling table below to view or adjust how the price of a material is calculated."] = ""
L["You can either add every craft to one group or make individual groups for each craft."] = "Можно добавить все крафты в одну группу. или создать для каждого отдельную."
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "Можно создать новый профиль, введя его имя, или выбрать один из существующих."
L["You can select a category that group(s) will be added to or select \"<No Category>\" to not add the group(s) to a category."] = "Выберите категорию, в которую будет добавлена группа(ы) или оставьте \"Без категории\" чтобы никуда не добавлять группу(ы)."
L["You must have your profession window open in order to use the craft queue. Click on the button below to open it."] = "Чтобы воспользоваться очередью крафта, необходимо открыть окошко профессии. Нажмите на кнопку ниже для открытия."
