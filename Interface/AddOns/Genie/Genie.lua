--[[///////////////////////////////////////////////////////////////////////////////////////
	GENIE 5.0.4
		Core 302;
	
	Author: adjo
	Website: http://wow.curseforge.com/projects/genie
	Feedback: http://wow.curseforge.com/projects/genie/tickets/
	Localization: http://wow.curseforge.com/addons/genie/localization/
	
	adjo 2012-02-22T20:55:46Z
	
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

Genie = LibStub("AceAddon-3.0"):NewAddon("Genie", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceComm-3.0", "AceSerializer-3.0")
local CLIENT_VERSION, CLIENT_BUILD = GetBuildInfo()
local L = LibStub("AceLocale-3.0"):GetLocale("Genie", true)

Genie.API = {} --global api
local API = Genie.API

Genie.theWorks = {}
Genie.Queue = {}
Genie.SortStringCache = {}
Genie.syncList = {}

Genie.FLAG_RSS = false --refresh sort string (CLASS.Item)
Genie.FLAG_GBILC = false -- guild bank item lock changed
Genie.FLAG_ERR = false -- error occurred
Genie.FLAG_GBOOS = 0
Genie.FLAG_IC = false -- in combat
Genie.FLAG_OC = true -- out of combat

--///////////////////////////////////////////////////////////////////////////////////
-- WOW API
--///////////////////////////////////////////////////////////////////////////////////
local BANK_CONTAINER = BANK_CONTAINER or -1
local KEYRING_CONTAINER = KEYRING_CONTAINER or -2
local BACKPACK_CONTAINER = BACKPACK_CONTAINER or 0
local MAX_GUILDBANK_SLOTS_PER_TAB = MAX_GUILDBANK_SLOTS_PER_TAB or 98
--/////////////////////////////////////////////////////////////////////]]

--///////////////////////////////////////////////////////////////////////////////////
-- KEYBINDINGS
--///////////////////////////////////////////////////////////////////////////////////
BINDING_HEADER_GENIE_BINDINGS = L.Genie
BINDING_NAME_GENIE_WORK = L.Work
BINDING_NAME_GENIE_BAGWORK = L.BagWork
BINDING_NAME_GENIE_BANKWORK = L.BankWork
BINDING_NAME_GENIE_GUILDBANKWORK = L.GuildbankWork
BINDING_NAME_GENIE_UI = L['Open the ranking editor']
BINDING_NAME_GENIE_OPTIONS = L['Open the options menu']
BINDING_NAME_GENIE_CONFIGMODE = L['Toggle config mode']
BINDING_NAME_GENIE_STOP = L.Stop
--/////////////////////////////////////////////////////////////////////]]

-- available classes
Genie.CLASS = {}
Genie.CLASS.Bag = {}
Genie.CLASS.GuildBag = setmetatable({}, {__index = Genie.CLASS.Bag})
Genie.CLASS.Container = {}
Genie.CLASS.Family = {}
Genie.CLASS.Item = {}
Genie.UTILS = {}

local printMemory = {}
local guildProfile

--[[	UTILS	///////////////////////////////////////////////////////////////////////////////////
--]]
function Genie.UTILS.pairsByKeys(t, f)
--[[
	function Genie.UTILS.pairsByKeys
	http://www.lua.org/pil/19.3.html
--]]
	local func = {}
		func[false] = function(a,b)
				if type(a) ~= 'number' or type(b) ~= 'number' then
					return tostring(a) < tostring(b)
				else
					return a < b
				end
		end

		func[true] = function(a,b)
				if type(a) ~= 'number' or type(b) ~= 'number' then
					return tostring(a) > tostring(b)
				else
					return a > b
				end
		end

	local a = {}
	if t ~= nil then
	for n in pairs(t) do
		table.insert(a, n)
	end
	end

	if type(f) == 'function' then
		table.sort(a, f)
	elseif type(f) == 'boolean' then
		table.sort(a, func[f])
	else
		table.sort(a, func[false])
	end

	local i = 0	  -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end
function Genie.UTILS.MergeTable(t1, t2, priority)
	if type(t1) == "table" and type(t2) == "table" then
		for k,v in pairs(t2) do
			if priority == 2 or t1[k] == nil then
				t1[k] = v
			end
		end
	end
	return t1
end
function Genie.UTILS.ConcatTable(t1, t2, key)
	if type(t1) == "table" and type(t2) == "table" then
		for k,v in pairs(t2) do
			if key then
				table.insert(t1, k)
			else 
				table.insert(t1, v)
			end
		end
	end	
end
function Genie.UTILS.purgeText(text, complete)
	if text == nil then return '' end
	local str = string.lower(text):gsub('%d', '') -- all chars
	str = str:gsub('  ', ' '):trim() -- remove unneeded
	if complete == true then
		str = str:gsub('%c', ''):gsub('%p', ''):gsub('%s','')
	end
	return str
end
function Genie.UTILS.findPattern(text, pattern, start)
	if text~= nil and strlen(text) > 0 and string.find(text, pattern, start) ~= nil then
		return string.sub(text, string.find(text, pattern, start))
	end
	return ''
end
function Genie.UTILS.CopyTable(t)
	local tnew = {}
	if t then
		for i, e in pairs(t) do
			if type(e) == "table" then
				tnew[i] = Genie.UTILS.CopyTable(e)
			else
				tnew[i] = e
			end
		end
	end
	return tnew
end
function Genie.UTILS.FamilyInput(input)
	--[[ accepted inputs:
		<name with spaces> <itemlink|itemid>
		<name with spaces> !<item>!<item>!<item>
		or	<nr of family> instead of <name with spaces>
	--]]
	local output = {}
	local pattern = '^[^!%|]+'
	local name = Genie.UTILS.findPattern(input, pattern):trim()
	local other = ''
	if strlen(name) > 0 then
		local number = tonumber(name)
		if tostring(number) == name then
			if number <= 0 then return output end
			other = gsub(input, name, '', 1)
			if number == 1 then
				output[1] = string.lower(L['Ignore'])
			else
				number = number - 1
				local count = 1
				for rank, values in pairs(Genie.db.profile.classranking) do
					if values['type'] == 'family' then
						if number == count then
							output[1] = values['name']
							break
						end
						count = count +1
					end
				end
			end
		else
			output[1] = name
			other = gsub(input, output[1], '', 1)
		end
	end
	if strlen(other) > 0 then
		local params = { strsplit("!", other)}
		count = 2
		for i, v in pairs(params) do
			if v ~= nil and strlen(v:trim()) > 0 then
				local tmp = { strsplit('|', v:trim())}
				local items = {}
				local itemCount = 0
				for i, e in pairs(tmp) do
					if string.match(e, 'Hitem:([^:]+)') ~= nil then
						itemCount = itemCount+1
						table.insert(items, string.match(e, 'Hitem:([^:]+)'))
					end
				end
				if itemCount > 1 then
					for i, itemId in pairs(items) do
						output[count] = itemId
						count=count+1
					end
				else
					output[count] = v:trim()
					count=count+1
				end
			end
		end
	end
	if output and output[1] then
		output[1] = tostring(output[1]):lower()
	end
	return output
end
function Genie.UTILS.CalcGBDelay()
	local delay = tonumber(Genie:GetDB().global.GB_Delay) or 0.4
	local down, up, lag = GetNetStats()
	if lag > 0 then	lag = (3*lag/1000)+ delay
		else lag = delay
	end
	return lag
end
function Genie.UTILS.GetTStID(t, sub)
	if not t then return nil end
	local itemClasses = { GetAuctionItemClasses() } --get all AIC's
	if #itemClasses > 0 then
		t = string.lower(t)
		local id, i, itemClass
		for i, itemClass in pairs(itemClasses) do
			if string.lower(itemClass) == t then
				id = 'aic' .. string.format("%.2d", i)
				if sub then
					-- we found the type
					sub = string.lower(sub)
					local itemSubClasses = { GetAuctionItemSubClasses(i) }
					if #itemSubClasses > 0 then
						-- there exist subclasses and a subclass was provided
						-- if type is empty, then this will return the first class/subclass pair found
						local j, itemSubClass
						for j, itemSubClass in pairs(itemSubClasses) do
							if string.lower(itemSubClass) == sub then
								id = id	.. string.format("%.2d", j)
								return id
							end
						end
						--if we arrive here, then the specified subclass doesn't exist, ergo this is no aic
						return nil
					elseif sub == t then
						--[[
							there's no subclass; like blizz does, create one sub class with the same name. ( quest->quest)
							use 00 as id, just in case blizz adds subclasses with a patch
						--]]
						id = id .. '00'
					else
						-- this can't be an aic
						return nil
					end
				end
				return id
			end
		end
	end
	return nil
end
function Genie.UTILS.SetGuildBankOption(tab)
	if Genie.currentGuild and tab then
		--first time
		if not rawget(Genie.db.factionrealm, 'gb') then Genie.db.factionrealm.gb = {} end
		if not rawget(Genie.db.factionrealm.gb, Genie.currentGuild) then Genie.db.factionrealm.gb[Genie.currentGuild] = {} end
		if not rawget(Genie.db.factionrealm.gb[Genie.currentGuild], tab) then Genie.db.factionrealm.gb[Genie.currentGuild][tab] = {}  end

		--clean
		Genie.db.factionrealm.gb[Genie.currentGuild][tab] = {}
		
		local git = GetGuildBankText(tab);		
		if git then
		git = string.lower(git)
		local guildBankOptions = string.match(git, '<genie>(.*)<\/genie>')
		if guildBankOptions and string.find(guildBankOptions, '@') then

			--set
			guildBankOptions = string.gsub(guildBankOptions,"%s","")
			guildBankOptions = {strsplit('@', guildBankOptions)}
			for _, option in pairs( guildBankOptions ) do
				if strlen(option) > 0 then
					local setting = gsub(option, ':.*', '')  
					local values = gsub(option,'[^:]*:?', '', 1)
					if strlen(setting) > 0 then
						if strlen(values) > 0 then
							Genie.db.factionrealm.gb[Genie.currentGuild][tab][setting] = values
						else
							Genie.db.factionrealm.gb[Genie.currentGuild][tab][setting] = tab
						end
					end
				end
			end
		end
		end
	
	end
end
function Genie.UTILS.GetGuildBankOption(gbo, find)
	local function handleValueSearch(setting, values)
		if string.lower(setting) == string.lower(gbo) and values then
			
			-- the option was found
			if find then
				-- we want to know if 'find' is part of this option
				for i, value in pairs({strsplit('!', values)}) do
					if value == string.lower(tostring(find)) then 
						return true 
					end
				end
			else
				--we want to handle the values somewhere else
				return values
			end
		end
	end   
	
	if gbo then
		-- search whitin the guildinfotext
		local guildBankOptions = string.match( string.lower(GetGuildInfoText()), '<genie>(.*)<\/genie>')		  
		if guildBankOptions and string.find(guildBankOptions, '@') then
			guildBankOptions = string.gsub(guildBankOptions,"%s","")
			guildBankOptions = {strsplit('@', guildBankOptions)}
			for _, option in pairs( guildBankOptions ) do
				if string.len(option) > 0 then
					local params = {strsplit(':', option)}
					local result = handleValueSearch(params[1], params[2])
					if result then 
						return result 
					end
				end
			end
		end
		--we want infos about a specific guildbanktab	
		if Genie.db.factionrealm.gb[Genie.currentGuild] then
			local pos = {strsplit(':', gbo)}
			if pos[2] then
				--search a specific tab
				return handleValueSearch(pos[1], Genie.db.factionrealm.gb[Genie.currentGuild][tonumber(pos[2])][pos[1]])
			else
				--search the currently selected tab
				for setting, value in pairs(Genie.db.factionrealm.gb[Genie.currentGuild][GetCurrentGuildBankTab()]) do
					local result = handleValueSearch(setting, value)
					if result then return result end
				end
			end
		end
	end
	
	return nil
end
function Genie.UTILS.GetAvailableBags(bagtype)
	local diff = {}
	if bagtype and bagtype.BAGSLOTS and bagtype.SHORT then
		if not rawget(Genie.db.profile, "bags") then Genie.db.profile.bags = {} end
		if not rawget(Genie.db.profile.bags, "ignore") then Genie.db.profile.bags.ignore = {} end	
		for _, slot in pairs(bagtype.BAGSLOTS) do
			if not Genie.db.profile.bags.ignore[bagtype.SHORT .. slot] then
				table.insert(diff, slot)
			end
		end
	end	
	return diff
end

function Genie.UTILS.substituteNumber(string, number, replacement)
	local function createPatterns(num, repl)  
		local patterns = {}
			patterns[repl..'%1'] = '^'.. num ..'([^0-9]+)'
			patterns['%1'..repl..'%2'] = '([^0-9]+)'.. num ..'([^0-9]+)'
			patterns['%1'..repl]= '([^0-9><=]+)'.. num ..'$' --remove ><= if you want to substitute everey number; this does allows parameters to be preserved
			patterns[repl]= '^'.. num ..'$'
  		return patterns
	end

	if string then
		for replace, pattern in pairs(createPatterns(number, replacement)) do
			local new, number = string:gsub(pattern, replace)
			if number > 0 then
				string = new
			end
		end
	end
	return string
end
function Genie.UTILS.moneyStringToCopper(money)
	gold = (string.match(money, '[^0-9]*(%d+)g') or 0)
	silver = (string.match(money, '[^0-9]*(%d+)s') or 0)
	copper = (string.match(money, '[^0-9]*(%d+)c?$') or 0)		
	return copper + (silver + gold*100) *100
end
function Genie.UTILS.tobool(bool)
	local translateBool = {}
		translateBool['1'] = true
		translateBool['true'] = true
 
	if type(bool) == 'boolean' then return bool end
	if translateBool[tostring(bool)] then
		return true
	else
		return false
	end
end


function Genie.UTILS.RegisterEventWithGui(event)
	if event then
		event = tostring(event)
		for index in pairs(Genie.OPT) do
			if Genie.OPT[index].args.events_select then
				Genie.OPT[index].args.events_select.values[index ..':'.. event] = L[event]
			end
		end
	end
end

function Genie.UTILS.GetSearchParams(paramString)
	Genie:PrintToChat(4, nil, 'getParams', paramString)
	
		local op, comp, invert
		local vPos, cPos, treatas = string.find(paramString, '_([^:_]+):?')
		local value = string.sub(paramString, 1, vPos-1)
		if cPos < strlen(paramString) then 
			op, comp = string.sub(paramString, cPos+1):match('([~=<>!]*)([^~=<>!]+)')
		end
		invert, value = value:match('(~?)([^~]+)')
		return tostring(treatas):lower(), value, (strlen(invert or Genie.CONSTANT.EMPTY_STRING) > 0), comp, op
	end

--[[  CONSTANTS  //////////////////////////////////////////////////////////////////////////////////
]]--
Genie.CONSTANT = {
	--[[ todo: complete transition to Genie.Container ]]--
	BAGS = {
	-- todo: use Genie.Container
		TYPE = 1,
		SHORT = 'S',
		BAGSLOTS = {KEYRING_CONTAINER, 0, 1, 2, 3, 4},
	},
	BANK = {
	-- todo: use Genie.Container	
		TYPE = 2,
		SHORT = 'B',
		BAGSLOTS = {BANK_CONTAINER, 5, 6, 7, 8, 9, 10, 11},
	},
	GUILDBANK = {	
	-- todo: use Genie.Container	
		TYPE = 3,
		SHORT = 'G',		
		BAGSLOTS = {1, 2, 3, 4, 5, 6}, --not needed currently
		--[===[@alpha@
		--BAGSLOTS = {2}, --for testing
		--@end-alpha@]===]
	},
	--[[ not used
	-- todo: use Genie.Container	
	KEYRING = {
		TYPE = 4,
		SHORT = 'K',		
		BAGSLOTS = {KEYRING_CONTAINER}
	},
	--]]
	--[[ // transition ]]--

	FAMILY = {
		0, --1 Unspecified
		1,--2 Quiver
		2,--3 Ammo Pouch
		4,--4 Soul Bag
		8,--5 Leatherworking Bag
		16,--6 Inscription Bag
		32,--7 Herb Bag
		64,--8 Enchanting Bag
		128,--9 Engineering Bag
		256,--10 Keyring
		512,--11 Gem Bag
		1024,--12 Mining Bag
		2048,--13 Unknown
		4096, --14 Vanity Pets
		32768, -- Tackle Box
	},
	NUMBER_MAX = 2147483647,
	CHAT_PREFIX = '('.. L['Genie'] ..'): ',
	CHAT_PREFIX_COLORED = "|cff33ff99".. L['Genie'] .."|r: ",
	EMPTY_STRING = '',
	AUTOMATIC_DELAY = 2.7,
	CHAT_TYPES = {PARTY=true, GUILD=true, OFFICER=true, EMOTE=true},--allowed printtochat chattypes
	COM = {
		SYNC = 'GENIE_SYNC',
		DATA = 'GENIE_DATA',
		TIME = 'GENIE_TIME',
		DBSET = 'GENIE_DBCGD',
	},
	
	BOOL_AND = '\038', --TODO: m.g.a
	BOOL_OR = '\124', 
	BOOL_NOT = '\126',
	SEPARATOR = '!',
	
	--allowed operators when creating a filter
	OP = {
		['string'] = {'~=', '=', '=='},
		['bool'] = {'~=', '=' },
		['number'] = {'>', '>=', '~=', '=', '<=', '<' }
	},
}

--[[  Database defaults ///////////////////////////////////////////////////////////////////////////
--]]
local db
local defaults = {
	global = {
		GB_Delay = .4,
		GB_PermissionsSave	= {},
	},
	factionrealm = {
		['**'] = {
			gbank = { lock = true, },
			sync = false,
			useProfile = false,
			switchProfile = false,
		},
	},
	profile = {
		customFamilies = {
			['**'] = {
				['enabled'] = true,
				['ignore'] = false,
				['refill'] = {
					['**'] = '0:0',
				},
			},
		},
		sortalgo = 'sort_quick3',
		invert = false,
		bags = {
			['**'] = false,
		},
		mode = {
			['**'] = false,
			['sound'] = true,
			['text'] = 2,			
			['waitAfterCombat'] = 15,
		},
		events = {
			['**'] = '',
		},
	},
}
local defaultClassRanking = {
		[1] = {
			criteria = 'QuestItem',
			name = ITEM_BIND_QUEST,
			enabled = true,
			type = 'bool',
		},
		[2] = {
			criteria = 'Soulbound',
			name = L['Soulbound'],
			enabled = true,
			type = 'bool',
		},
		[3] = {
			criteria = 'Rarity',
			name = L['Rarity'],
			enabled = true,
			type = 'number',
			invert = true,
			max = 9,
		},
		[4] = {
			criteria = 'TStID',
			name = L['TStID'],
			enabled = true,
			max = 9999,
			type = 'number',
			invert = false,
		},
		[5] = {
			--todo: create a customizable ranking
			criteria = 'EquipLoc',
			name = L['EquipLoc'],
			enabled = true,
			type = 'string',
		},
		[6] = {
			criteria = 'Name',
			name = L['Name'],
			enabled = true,
			type = 'string',
		},
		[7] = {
			criteria = 'Count',
			name = L['Count'],
			enabled = true,
			type = 'number',
			max = 9999,
		},
		[8] = {
			criteria = 'Unique',
			name = L['Unique'],
			enabled = false,
			type = 'bool',
			invert = true,
		},
		[9] = {
			criteria = 'iLvl',
			name = L['iLvl'],
			enabled = false,
			type = 'number',
			max = 999,
		},
		[10] = {
			criteria = 'MinLevel',
			name = L['MinLevel'],
			enabled = false,
			type = 'number',
			max = 99,
		},
		[11] = {
			criteria = 'StackCount',
			name = L['StackCount'],
			enabled = false,
			type = 'number',
			max = 9999,
		},
		[12] = {
			criteria = 'Texture',
			name = L['Texture'],
			enabled = false,
			type = 'string',
		},
		[13] = {
			criteria = 'Type',
			name = L['Type'],
			enabled = false,
			type = 'string',
		},
		[14] = {
			criteria = 'SubType',
			name = L['SubType'],
			enabled = false,
			type = 'string',
		},
		[15] = {
			criteria = 'boe',
			name = ITEM_BIND_ON_EQUIP,
			enabled = false,
			type = 'bool',
		},
		[16] = {
			criteria = 'bop',
			name = ITEM_BIND_ON_PICKUP,
			enabled = false,
			type = 'bool',
		},
		[17] = {
			criteria = 'bou',
			name = ITEM_BIND_ON_USE,
			enabled = false,
			type = 'bool',
		},
		[18] = {
			criteria = 'boa',
			name = ITEM_BIND_TO_ACCOUNT,
			enabled = false,
			type = 'bool',
		},
		[19] = {
			criteria = 'ItemID',
			name = L['ItemID'],
			enabled = false,
			type = 'number',
			max = 999999,
			invert = true,
		},
		[20] = {
			criteria = 'Price',
			name = L['Price'],
			enabled = false,
			type = 'number',
			max = 9999999999,
			invert = true,
		},
		[21] = {
			criteria = 'SkillLvl',
			name = CHAT_MSG_SKILL,
			enabled = false,
			type = 'number',
			max = 999,
			invert = true,
		},
		[22] = {
			criteria = '<<set',
			name = L['Equipment sets'],
			enabled = false,
			type = 'family',
		},
		
		--[[
		-- template //////////////////
		{
			criteria = '',
			name = L[''],
			enabled = true,
			type = 'string', -- bool, family
		},
		{
			criteria = '',
			name = L[''],
			enabled = true,
			type = 'number',
			max = 999, -- only available with number-type
		},
		--]]
		}

--[[ available bagtypes
	idea: allow the user to define containers
--]]

--///////////////////////////////////////////////////////////////////////////////////
-- Genie.Container
--///////////////////////////////////////////////////////////////////////////////////
--- Genie.Container
Genie.Container = {
	--api
  _B = { --the default bank slots
	BAGS = {BANK_CONTAINER},
		api = true,
  },
	_BC = {
		api = true,
		BAGS = {}, --injected
	},
  _K = {
		api = true,
	BAGS = {KEYRING_CONTAINER},
  },
	_I = {
		BAGS = {},
		api = true,
	},
	_SB = {
		api = true,
		--backpack
		BAGS = {BACKPACK_CONTAINER},
	},
  _SC = {
		api = true,
		BAGS = {}, --injected
  },
	_G = {
		api = true,
		GROUP = {},  --injected
	guild = true,
	},
	--internal only; use at your own risk
	_S = {
		api = true,
		GROUP = {_SB = '_SB', _SC = '_SC'},
	},
	_C = {
		api = true,
		GROUP = {_SB = '_SB', _SC = '_SC', _BC = '_BC'},
	},
	-- visible to the user
  S = {
		NAME = L.Bags,
		GROUP = { '_K', '_SB', '_SC'},
	},
  B = {
		NAME = L.Bank,
		GROUP = {'_B', '_BC'},
  },
	G = {
		NAME = L.Guildbank,
		GROUP = {}, --injected
		guild = true,
	},
}
-- Genie.Container injection
--_SC
for i=1, NUM_BAG_SLOTS do
	table.insert(Genie.Container._SC.BAGS, i)
end
--_BC
for i=NUM_BAG_SLOTS+1, NUM_BAG_SLOTS+NUM_BANKBAGSLOTS do
	table.insert(Genie.Container._BC.BAGS, i)
end
--G, _G<#tab>T

local gPickup = function(tab, slot)
	SetCurrentGuildBankTab(tab)
	PickupGuildBankItem(tab, slot)
	QueryGuildBankTab(tab)
end

local gSplitup = function(tab, slot, amount)
	SetCurrentGuildBankTab(tab)
	  SplitGuildBankItem(tab, slot, amount)
	  QueryGuildBankTab(tab)
	end

local gItemID = function(tab, slot)
	return string.match(GetGuildBankItemLink(tab, slot) or '', "Hitem%:(.-)%:.+")
  end

for i=1, MAX_GUILDBANK_TABS, 1 do
	local current = '_G' .. i .. 'T'
	Genie.Container[current] = {}
	Genie.Container[current].api = true
	Genie.Container[current].NAME = L.Guildbank ..' '.. i
	Genie.Container[current].BAGS = {}
	table.insert(Genie.Container[current].BAGS, i)
	table.insert(Genie.Container.G.GROUP, current)
	Genie.Container._G.GROUP[current] = current

	Genie.Container[current].PUP = gPickup
	Genie.Container[current].SUP = gSplitup

	Genie.Container[current].GCI = GetGuildBankItemInfo
	Genie.Container[current].ID =  gItemID
end



  local getInfo = function(slot, group, bag)
	if not Genie.Container[group] then Genie:PrintToChat(5, nil, 'NOT_DEFINED', group) end
	if Genie.Container[group] and Genie.Container[group].GCI then
	  return Genie.Container[group].GCI(bag, slot)
	else
	  return GetContainerItemInfo(bag, slot)
	end
  end

  local getItem = function(slot, group, bag)
	if not Genie.Container[group] then Genie:PrintToChat(5, nil, 'NOT_DEFINED', group) end
	if Genie.Container[group] and Genie.Container[group].ID then
	  return Genie.Container[group].ID(bag, slot)
	else
	  return GetContainerItemID(bag, slot)
	end
  end

  local pickUp = function(slot, group, bag, amount)
  --be careful; amount is not checked
	if tonumber(amount) then
	  if Genie.Container[group] and Genie.Container[group].SUP then
		return Genie.Container[group].SUP(bag, slot, amount)
	  else
		return SplitContainerItem(bag, slot, amount)
	  end
	else
	  if Genie.Container[group] and Genie.Container[group].PUP then
		return Genie.Container[group].PUP(bag, slot)
	  else
		return PickupContainerItem(bag, slot)
	  end
	end
  end

  local chi = function(slot, group, bag)
	local type = GetCursorInfo()
	if type == 'item' then
	  return true
	end
  end
--/////////////////////////////////////////////////////////////////////]]
 
--///////////////////////////////////////////////////////////////////////////////////
-- GroupUtils
-- todo: rename and move to own class/file
--///////////////////////////////////////////////////////////////////////////////////
function Genie.UTILS.getContainerAndInteralID(bagID)
	return string.match(tostring(bagID), '^(_%w*)(%d+)$')
end
function Genie.UTILS.convertToWowBagID(bagID)
	local gC = Genie.Container
	local container, interalID = Genie.UTILS.getContainerAndInteralID(bagID)
	if gC[container] and gC[container].BAGS then
		return gC[container].BAGS[tonumber(interalID)], container
	end
	return bagID --todo:remove, and test
end

function Genie.UTILS.convertToGenieBagID(bagID, short)
	if not string.match(bagID, '%a(%d+)') then
		local bagID = tostring(bagID)
		local short = tostring(short or 'c'):upper()
		if Genie.Container[short] then
			for internalID, apiBagID in Genie.UTILS.pairsByKeys(Genie.Container[short].BAGSLOTS) do
				if apiBagID == tonumber(bagID) then
					bagID = short .. internalID
					return bagID, short
				end
			end
		end
		return
	end
	return bagID, short
end


function Genie.UTILS.GroupGetParent(group)
	local gC = Genie.Container
	if gC[group] then
		if gC[group].GROUP then 
			return group 
		end
		for short, container in pairs(gC) do
			if container.GROUP and string.find(table.concat(container.GROUP, '#'), group) then
				return short
			end
		end
	end
end


function Genie.UTILS.GroupGetBags(group, parent, all, find)
	local diff = {}
	local gC = Genie.Container
	if gC[group] then
		if gC[group].BAGS then
			if not rawget(Genie.db.profile, "bags") then Genie.db.profile.bags = {} end
			if not rawget(Genie.db.profile.bags, "ignore") then Genie.db.profile.bags.ignore = {} end	
			local parent = parent or Genie.UTILS.GroupGetParent(group)
			for number, slot in ipairs(gC[group].BAGS) do
				if all or (not Genie.db.profile.bags.ignore[group .. number]) then
					if find then
						if slot == tonumber(find) then
							return group..number
						end
					else
						table.insert(diff, group .. number)
					end
				end
			end
		elseif gC[group].GROUP then
			if find then
				local found
				for _, sub in pairs(gC[group].GROUP) do
					found = Genie.UTILS.GroupGetBags(sub, group, all, find)
					if found then return found end
				end
			else
				for _, sub in pairs(gC[group].GROUP) do
					Genie.UTILS.ConcatTable(diff, Genie.UTILS.GroupGetBags(sub, group, all, find))
				end
			end
		end
	else
		Genie:PrintToChat(5, nil, group,"doesn't exist")
	end
	if not find then
		return diff
	end
end

function Genie.UTILS.GroupGetAllBags(group)
	return Genie.UTILS.GroupGetBags(group, nil, true)
end
function Genie.UTILS.GroupGetName(group)
	local gC = Genie.Container
	if gC[group] and gC[group].NAME then
		return gC[group].NAME
	end
end

function Genie.UTILS.GroupGetVisibleUser()
	local visible = {}
	for short, def in pairs(Genie.Container) do
		if not def.api then
			table.insert(visible, short)
		end
	end
	return visible
end

function Genie.UTILS.GroupFindBag(group, bagslot)
	return Genie.UTILS.GroupGetBags(group, nil, true, tostring(bagslot))
end
--/////////////////////////////////////////////////////////////////////]]
 
Genie.CMD = {
	name = L['Genie'],
	handler = Genie,
	type = 'group',
	args = {
		inspect = {
			order = 30,
			type = "input",
			name = L['Inspect'],
			set = "Inspect",
		},
		dev = {
			order = 99,
			type = "input",
			hidden = true,
			name = 'develop',
			desc = 'Don\'t use this! this command is for internal use only',
			set="Develop",
		},
		auto = {
			order = 5,
			type = 'execute',
			name = L['Automatic'],
			func = 'SetAuto',
		},
		stop = {
			order = 29,
			type = 'execute',
			name = L['Stop'],
			func = 'Stop',
		},
		work = {
			order = 1,
			type = 'execute',
			name = L['Work'],
			func = 'PreWorks',
		},
		bag = {
			order = 2,
			type = 'group',
			name = L['Bag'],
			args = {
				move = {
					type = 'execute',
					name = L['Move all items'],
					func = 'DoBagMove',
					order = 2,
				},
				stack = {
					type = 'execute',
					name = L['Stack all items'],
					func = 'DoBagStack',
					order = 3,
				},
				sort = {
					type = 'execute',
					name = L['Sort all items'],
					func = 'DoBagSort',
					order = 4,
				},
				work = {
					type = 'execute',
					name = L['BagWork'],
					func = 'DoBagWorks',
					order = 1,
				},

			},
		},
		bank = {
			order = 3,
			type = "group",
			name = L['Bank'],
			args = {
				move = {
					type = 'execute',
					name = L['Move all items'],
					func = 'DoBankMove',
					order = 2,
				},
				stack = {
					type = 'execute',
					name = L['Stack all items'],
					func = 'DoBankStack',
					order = 3,
				},
				sort = {
					type = 'execute',
					name = L['Sort all items'],
					func = 'DoBankSort',
					order = 4,
				},
				work = {
					type = 'execute',
					name = L['BankWork'],
					func = 'DoBankWorks',
					order = 1,
				},
			},
		},
		guildbank = {
			order = 3,
			type = "group",
			hidden = true,
			disabled = true,
			name = L['Guildbank'],
			args = {
				move = {
					type = 'execute',
					name = L['Move all items'],
					func = 'DoGuildbankMove',
					order = 2,
				},
				stack = {
					type = 'execute',
					name = L['Stack all items'],
					func = 'DoGuildbankStack',
					order = 3,
				},
				sort = {
					type = 'execute',
					name = L['Sort all items'],
					func = 'DoGuildbankSort',
					order = 4,
				},
				work = {
					type = 'execute',
					name = L['GuildbankWork'],
					func = 'DoGuildbankWorks',
					order = 1,
				},
			},
		},
		rank = {
			order = 10,
			type="group",
			name=L['Classranking'],
			args = {
				show = {
					type = "execute",
					name = L['Show'] ..' '.. L['Classranking'],
					func = "ClassRankingShow",
				},
				update = {
					type = "input",
					name = L['Update a class'],
					set = "ClassRankingUpdate",
				},
				enable = {
					type = "input",
					name = L['Enable a class'],
					set = "ClassRankingEnable",
				},
				disable = {
					type = "input",
					name = L['Disable a class'],
					set = "ClassRankingDisable",
				},
				invert = {
					type = "input",
					name = L['Invert a class'],
					set = "ClassRankingInvert",
				},
				reset = {
					type = "execute",
					name = L['Reset the classranking'],
					func = "ClassRankingReset",
				},
				combine = {
					type = "input",
					name = L['Combine one or more ranks'],
					set = "ClassRankingCombine",
				},
				delete = {
					type = "input",
					name = L['Delete a combined rank'],
					set = "ClassRankingDelete",
				},
				details = {
					type = "input",
					name = L['Display detailed infos about a rank'],
					set = "ClassRankingDetails",
				},				
			},
		},
		family = {
			order = 20,
			type = "group",
			name = L['Family'],
			args = {
				show = {
					type = "input",
					name = L['Show'] ..' '.. L['Family'],
					set = "FamilyShow",
				},
				update = {
					type="input",
					name=L['Update'],
					set= "FamilyUpdate",
				},
				rename = {
					type = "input",
					name=L['Rename'],
					desc=L['Rename'] ..' '.. L['Family'],
					set="FamilyRename",
				},
				ignore = {
					type="input",
					name= L['Ignore'],
					desc= L['Ignore all elements of this X']:gsub('X', L['Family']),
					set="FamilyIgnore",
				},
				delete = {
					type="input",
					name=L['Delete']..' '..L['Family'],
					set= "FamilyDelete",
				},

			},
		},
		ignore = {
			order = 21,
			type = "input",
			name = L['Ignore'],
			set = "Ignore",
		},
	},
}

--add shortcuts
Genie.CMD.args.f = Genie.UTILS.CopyTable(Genie.CMD.args.family)
Genie.CMD.args.f.hidden = true
Genie.CMD.args.r = Genie.UTILS.CopyTable(Genie.CMD.args.rank)
Genie.CMD.args.r.hidden = true
Genie.CMD.args.i = Genie.UTILS.CopyTable(Genie.CMD.args.ignore)
Genie.CMD.args.i.hidden = true
Genie.CMD.args.gb = Genie.UTILS.CopyTable(Genie.CMD.args.guildbank)
Genie.CMD.args.gb.hidden = true

Genie.OPT = {}
Genie.OPT.Genie = {
	name = L['Genie'],
	handler = Genie,
	type = 'group',
	args = {
	verbosity = {
		order = 3,
		width = 'full',
		type = 'group',
		inline = true,
		name = L['Verbosity'],
		args = {
			text = {
				name = L['Text'],
				type = 'range',
				min = 0,
				max = 5,
				step = 1,
				get = "GetMode",
				set = "SetMode",
			},
			sound = {
				name = L['Sound'],
				type = 'toggle',
				get = "GetMode",
				set = "ToggleMode",
			},
		},
	},

		reverse = {
			order = 2,
			type = "multiselect",
			name = L['Reverse'],
			desc = L["Reverse the order in which your bags and/or bagslots will be accsessed"],
			values = {
				reversebags = L['Bags'],
				reverseslots = L['Slots'],
			},
			get = "GetMode",
			set = "ToggleMode",
		},
		
		automatic = {
			order = 1,
			type = 'group',
			inline = true,
			name = L['Automatic'],
			args = {
				enabled = {
					order = 1,
					type = "toggle",
					name = L['Enabled'],
					get = "IsAuto",
					set = "ToggleAuto",
				},			
				delay = {
					order = 3,
					type = 'range',
					name = L['automaticDelay'],
					min = 1,
					max = 10,
					step = 1,
					set = "SetAutomaticDelay",
					get = "GetAutomaticDelay",
				},		   

				waitAfter = {
					order = 4,
					type = 'range',
					name = L['waitAfter'],
					min = 1,
					max = 60,
					step = 1,
					set = "SetWaitAfterCombat",
					get = "GetWaitAfterCombat",
				},		   
			},
		},	   
	},
}
Genie.OPT.Sort = {
	name = L['Sorting'],
	handler = Genie,
	type = 'group',
	args = {
		sortalgo = {
			order= 10,
			type = 'select',
			name = L['Sorting algorithm'],
			style = 'dropdown',
			values = {
				sort_select = L['sort_select'],
				sort_quick3 = L['sort_quick3'],
				sort_heap = L['sort_heap'],
				sort_insert = L['sort_insert'],
			},
			set="SetSortAlgorithm",
			get="GetSortAlgorithm",
		},
		invert = {
			order = 11,
			type = "toggle",
			name = L['Invert the sorting order'],
			get = "IsInvert",
			set = "ToggleInvert",
		},
		events_select = {
			order = 16,
			type = 'multiselect',
			--disabled = false,
			width = 'full',
			name = L['Automatic events'],
			values = {},
			set = 'ToggleEvent',
			get = 'IsEvent',
		},
	},
}
Genie.OPT.Move = {
	name = L['Moving'],
	handler = Genie,
	type = 'group',
	args = {
		events_select = {
			order = 16,
			disabled = false,
			type = 'multiselect',
			--disabled = false,
			width = 'full',
			name = L['Automatic events'],
			values = {},
			set = 'ToggleEvent',
			get = 'IsEvent',
		},
	}
}
Genie.OPT.Stack = {
	name = L['Stacking'],
	handler = Genie,
	type = 'group',
	args = {
		events_select = {
			order = 16,
			type = 'multiselect',
			--disabled = true,
			width = 'full',
			name = L['Automatic events'],
			values = {},


			set = 'ToggleEvent',
			get = 'IsEvent',
		},
	}
}
Genie.OPT.Bags = {
	name = L['Bags'],
	handler = Genie,
	type = 'group',
	args = {
		bagslots = {
			order = 1,
			type = 'description',
			name = 'If you need more info about bagslots look at http://www.wowwiki.com/BagId',	
		},	
		ignore_header = {
			type = 'header',
			name = L['Ignore'],
			order = 13,			
		},
		bag_select = {
			order = 16,
			type = 'multiselect',
			--disabled = true,
			name = L['Bags'],
			values = function()
				local b = {}
				local bag
				for nr, bagID in pairs(Genie.UTILS.GroupGetAllBags('S')) do
					bag = Genie.CLASS.Container:NewBag(bagID)
					if bag then
						b[bagID] = nr .. ' ('.. bag:GetName() ..')' 
					else
						b[bagID] = nr
					end
				end
				return b
			end,
			set = 'ToggleBagslot',
			get = 'IsIgnoredBagslot',
		},
		bank_select = {
			order = 17,
			type = 'multiselect',
			--disabled = true,
			name = L['Bank'],
			values = function()
				local b = {}
				local bag
				for nr, bagID in pairs(Genie.UTILS.GroupGetAllBags('B')) do
					bag = Genie.CLASS.Container:NewBag(bagID)
					if bag then
						b[bagID] = nr .. ' ('.. bag:GetName() ..')' 
					else
						b[bagID] = nr
					end
				end
				return b
			end,
			set = 'ToggleBagslot',
			get = 'IsIgnoredBagslot',
		},			
	},
}

Genie.OPT.Guildbank = {
	name = L['Guildbank'],
	handler = Genie,
	disabled = function() if Genie.currentGuild then return false else return true end end,
	type = 'group',
	args = {
		GB_Delay = {
			order = 30,
			type = 'input',
			name = L['Guildbank delay'],
			desc = L['Guildbank delay:desc'],
			set = 'GBInputsSet',
			get = 'GBInputsGet',
			width = 'normal',
		},	
		GB_LockGuildBank = {
			order = 29,
			type = 'toggle',
			disabled = function() return not IsGuildLeader(UnitName("player")) end,
			hidden = function() return not IsGuildLeader(UnitName("player")) end,
			name = L['Lock the Guildbank'],
			desc = L['Lock the Guildbank:desc'],
			set = 'GBInputsSet',
			get = 'GBInputsGet',
			width = 'normal',
		},	
	
		useProfile = {
			name = L["UseProfile"],
			type = 'select',
			style = 'dropdown',
			values = function() local profiles = {} profiles["__FALSE"]='' for _,v in pairs(Genie.db:GetProfiles()) do profiles[v] = v end return profiles end,
			set = function(info, input) 
				if Genie.currentGuild then --just to be sure ;)
					if input ~= "__FALSE" then
						Genie.db.factionrealm[Genie.currentGuild].useProfile = input 
					else
						Genie.db.factionrealm[Genie.currentGuild].useProfile = false					 
						Genie.db.factionrealm[Genie.currentGuild].sync = false					
					end 
				end
			end,
			get = function() if Genie.currentGuild and Genie.db.factionrealm[Genie.currentGuild].useProfile then return Genie.db.factionrealm[Genie.currentGuild].useProfile end end,			
			order = 20,	
			width = 'normal',		
		},
		sync = {
			type = 'toggle',
			name = L["Sync"],
			disabled = function() 
				if Genie.currentGuild and Genie.db.factionrealm[Genie.currentGuild].useProfile then 
					return false 
				else 
					return true 
				end
			end,
			get = function() if Genie.currentGuild then return Genie.db.factionrealm[Genie.currentGuild].sync end end,
			set = function(info, input) if Genie.currentGuild then Genie.db.factionrealm[Genie.currentGuild].sync = input end end,			
			order = 21,
			width = 'normal',							
		},
	}
}


--[[  GUI OptionsFrame ////////////////////////////////////////////////////////////////////////////
--]]
function Genie:IsEvent(info, value)
	--return db.events[value]
	local action, event = strsplit(':', value)
	local found, one
		if db.events[event] ~= nil then
			one, found = string.find(db.events[event], action)
		end
		if found ~= nil then return true else return false end
end
function Genie:ToggleEvent(info, value)
	--db.events[value] = not db.events[value]
	local action, event = strsplit(':', value)
	if db.events[event] ~= nil then
		local new, found = string.gsub(db.events[event], action, '')
		if found == 0 then
			--enable
			db.events[event] = db.events[event] .. action .. ','
		else
			--disable
			new = gsub(new, '^,', '')
			new = gsub(new, ',,', ',')
			db.events[event] = new
		end
	else
		db.events[event] = action
	end
end
function Genie:GetSortAlgorithm(info)
	return db.sortalgo
end
function Genie:SetSortAlgorithm(info, value)
	db.sortalgo = value
end

function Genie:SetMode(info, value)
	db.mode[info[#info]] = value
end

function Genie:GetMode(info, value)
	if value then return db.mode[value] else
		return db.mode[info[#info]]
	end
end

function Genie:ToggleMode(info, value)
	if type(value) == 'boolean' then
		db.mode[info[#info]] = value
	else
		db.mode[value] = not db.mode[value]
	end
end
function Genie:IsInvert(info)
	return db.invert
end
function Genie:ToggleInvert(info, value)
	db.invert = value

end

function Genie:IsAuto()
	return db.mode.automatic
end
function Genie:ToggleAuto()
	db.mode.automatic = not db.mode.automatic
end


function Genie:SetAuto()
	local function activateEvent(doAtEvent)
		local todo, event = strsplit(':', doAtEvent)
		if db.events[event] == nil then db.events[event] = '' end
		if string.find(db.events[event], todo) == nil then
			db.events[event] = db.events[event] .. todo .. ','
		end
	end
	if db.mode.automatic == true then
		db.mode.automatic = false
		self:PrintToChat(2, nil, L["Automatic mode"], ':', L["Disabled"])
	else
		db.mode.automatic = true
		for index in pairs(Genie.OPT) do
			if Genie.OPT[index].args.events_select then
				for doAtEvent in pairs(Genie.OPT[index].args.events_select.values) do activateEvent(doAtEvent) end
			end
		end
		self:PrintToChat(2, nil, L["Automatic mode"], ':', L["Enabled"])
	end
end


function Genie:GBInputsSet(info, value)
	self.db.global[info[1]] = value
end
function Genie:GBInputsGet(info, value)
	return self.db.global[info[1]]
end
function Genie:ToggleBagslot(info, value)
	local value, short = gsub(value, '^%d*', '')
	if rawget(db.bags.ignore, value) then
		db.bags.ignore[value] = nil
	else
		db.bags.ignore[value] = true
	end
end
function Genie:IsIgnoredBagslot(info, value)
	local value, short = gsub(value, '^%d*', '')
	if not db.bags then db.bags = {} end
	if not db.bags.ignore then db.bags.ignore = {} end
	
	return db.bags.ignore[value]
end

function Genie:SetWaitAfterCombat(info, value)
	db.mode.waitAfterCombat = tonumber(value)
end
function Genie:GetWaitAfterCombat(info, value)
	return db.mode.waitAfterCombat
end

function Genie:SetAutomaticDelay(info, value)
	db.mode.automaticDelay = tonumber(value)
end
function Genie:GetAutomaticDelay(info, value)
	return db.mode.automaticDelay or Genie.CONSTANT.AUTOMATIC_DELAY
end

--[[  Genie ///////////////////////////////////////////////////////////////////////////////////////
--]]
function Genie:OnInitialize()
	--variables
	self.atBank = false
	self.atGuildBank = false
	
	-- database -----------------------------------------------------------------------------
	self.db = LibStub("AceDB-3.0"):New("GenieDB", defaults, true)
	self.db.RegisterCallback(self, "OnProfileChanged", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileCopied", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileReset", "RefreshConfig")
	db = self.db.profile --shortcut to the current profile
	--check if the selected profile has a classranking, otherwise fill with the default classranking
	if not rawget(db, 'classranking') then
		db.classranking = defaultClassRanking
	end

	local ac = LibStub("AceConfig-3.0")
	--[[	Slashcommands --------------------------------------------------------------------]]
	--cmd
	ac:RegisterOptionsTable(L["Genie"]..": SlashCommands", Genie.CMD)
	self:RegisterChatCommand("genie", "ChatCommand")

	--[[	AddonOptions ----------------------------------------------------------------------]]

	-- general
	ac:RegisterOptionsTable('Genie', Genie.OPT.Genie)
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie', "Genie")
	-- sorting
	ac:RegisterOptionsTable('Genie Sorting', Genie.OPT.Sort)
	self.optionsFrame.Sort = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Sorting', Genie.OPT.Sort.name, "Genie")
	-- moving
	ac:RegisterOptionsTable('Genie Moving', Genie.OPT.Move)
	self.optionsFrame.Move = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Moving', Genie.OPT.Move.name, "Genie")
	-- stacking
	ac:RegisterOptionsTable('Genie Stacking', Genie.OPT.Stack)
	self.optionsFrame.Stack = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Stacking', Genie.OPT.Stack.name, "Genie")
	-- bags
	ac:RegisterOptionsTable('Genie Bags', Genie.OPT.Bags)
	self.optionsFrame.Bags = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Bags', Genie.OPT.Bags.name, "Genie")
	-- guildbank
	ac:RegisterOptionsTable('Genie Guildbank', Genie.OPT.Guildbank)
	self.optionsFrame.Guildbank = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Guildbank', Genie.OPT.Guildbank.name, "Genie")
	-- profiles
	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	ac:RegisterOptionsTable('Genie Profiles', profiles)
	self.optionsFrame.Profiles = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('Genie Profiles', profiles.name, "Genie")

	self:Update()
	--[===[@alpha@
		self.db.global.gC = Genie.Container
	--@end-alpha@]===]
end

function Genie:GenerateVersion()
	local c = GetBuildInfo()
	self.VERSION = GetAddOnMetadata('Genie', 'Version')
	self.DBVERSION = tonumber(c:sub(1,1) .. string.format('%.3d',  self.VERSION:match('%.(%d+)_') or '0'))
	self:PrintToChat(1, nil, L['Version'], self.VERSION)
	return self.DBVERSION	
end

function Genie:GetDB()
	return self.db
end

function Genie:ChatCommand(input)
  if (not input or input:trim() == "") and API.ToggleOptionsFrame then
	API:ToggleOptionsFrame()
  elseif (input:trim() == "r" or input:trim() == "rank") and API.ToggleUI then
	API:ToggleUI()
  else
	LibStub("AceConfigCmd-3.0").HandleCommand(Genie, "genie", L["Genie"]..": SlashCommands", input)
  end
end


function Genie:OnEnable()
	GuildRoster() --Request guildinfos
	
	-- Register Events
	self:RegisterEvent('GUILD_ROSTER_UPDATE')
	self:RegisterEvent('PLAYER_GUILD_UPDATE')
	
	self:RegisterEvent('UI_ERROR_MESSAGE')
	self:RegisterEvent('ADDON_ACTION_FORBIDDEN')
	
	self:RegisterEvent('GUILDBANK_ITEM_LOCK_CHANGED')
	self:RegisterEvent('GUILDBANK_TEXT_CHANGED')	
	
	self:RegisterEvent('LOOT_CLOSED')
		self.UTILS.RegisterEventWithGui('LOOT_CLOSED')
	self:RegisterEvent('BAG_CLOSED') -- internal
	--self:RegisterEvent('BAG_UPDATE')
	self:RegisterEvent('MAIL_CLOSED')
		self.UTILS.RegisterEventWithGui('MAIL_CLOSED')
	self:RegisterEvent('TRADE_CLOSED')
		self.UTILS.RegisterEventWithGui('TRADE_CLOSED')
	self:RegisterEvent('MERCHANT_CLOSED')
		self.UTILS.RegisterEventWithGui('MERCHANT_CLOSED')
	self:RegisterEvent('BANKFRAME_CLOSED')
		self.UTILS.RegisterEventWithGui('BANKFRAME_CLOSED')	
	self:RegisterEvent('CHAT_MSG_TRADESKILLS')
		self.UTILS.RegisterEventWithGui('TRADESKILL_CREATE')
		
	--self:RegisterEvent('ITEM_PUSH')	
	--self:RegisterEvent('ITEM_LOCK_CHANGED')
	self:RegisterEvent('BANKFRAME_OPENED')
		self.UTILS.RegisterEventWithGui('BANKFRAME_OPENED')
	--self:RegisterEvent('PLAYERBANKBAGSLOTS_CHANGED')
	--self:RegisterEvent('PLAYERBANKSLOTS_CHANGED') -- internal
	self:RegisterEvent('GUILDBANKFRAME_OPENED')
		self.UTILS.RegisterEventWithGui('BANKFRAME_OPENED')
	self:RegisterEvent('GUILDBANKFRAME_CLOSED')
		self.UTILS.RegisterEventWithGui('GUILDBANKFRAME_CLOSED')
	self:RegisterEvent('GUILDBANK_UPDATE_TEXT')
	
	self:RegisterEvent('PLAYER_ENTER_COMBAT')
	self:RegisterEvent('PLAYER_LEAVE_COMBAT')
	self:RegisterEvent('PLAYER_REGEN_DISABLED')
	self:RegisterEvent('PLAYER_REGEN_ENABLED')
	self:RegisterEvent('PLAYER_DEAD')
	
	--Equipment Sets
	self:RegisterEvent('EQUIPMENT_SETS_CHANGED')
	self:RegisterEvent('EQUIPMENT_SWAP_FINISHED')
		self.UTILS.RegisterEventWithGui('EQUIPMENT_SWAP_FINISHED')
		
	-- Create a tooltip to get iteminfos from; isn't used for anything else
	CreateFrame( "GameTooltip", "GenieScanningTooltip" ) -- Tooltip name cannot be nil
	GenieScanningTooltip:SetOwner( WorldFrame, "ANCHOR_NONE" )
	-- Allow tooltip SetX() methods to dynamically add new lines based on these
	GenieScanningTooltip:AddFontStrings(
		GenieScanningTooltip:CreateFontString( "$parentTextLeft1", nil, "GameTooltipText" ),
		GenieScanningTooltip:CreateFontString( "$parentTextRight1", nil, "GameTooltipText" )
		)
	delay = tonumber(Genie.db.global.GB_SlotCooldown)

	--look for incoming com
		self:RegisterComm(Genie.CONSTANT.COM.SYNC)
		self:RegisterComm(Genie.CONSTANT.COM.DATA)
		self:RegisterComm(Genie.CONSTANT.COM.TIME)
	
	
	
end
function Genie:OnDisable()
	-- Called when the addon is disabled
	self:UnregisterAllEvents()
	self:CancelAllTimers()
	
	-- Unload and disable all LoD- Modules
	for name, module in Genie:IterateModules() do
		module:Disable()
		if IsAddOnLoadOnDemand(tostring(module)) then
			DisableAddOn(tostring(module))
		end
	end	  
end
function Genie:RefreshConfig(event, database, profilekey)
	db = database.profile
	--check if the selected profile has a classranking, otherwise fill with the default classranking
	if not rawget(db, 'classranking') then
		db.classranking = Genie.UTILS.CopyTable(defaultClassRanking)
	end
   
	self:Update()
	
	Genie:NotifyDBChange(Genie.CONSTANT.COM.DBSET)
end
function Genie:Update()
	-- get the current profile-db-version
	local currentDBVersion = tonumber(db.version);
		if not currentDBVersion then currentDBVersion = 0 end
	-- get the new db version (which the profile will be after the update)
	local newDBVersion = Genie:GenerateVersion()

	-- update if necessary
	if currentDBVersion < newDBVersion then
		if currentDBVersion < 3043 then
			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if classdef.type == 'ranking' then
					db.classranking[classrank] = nil
				end
			end
		end

		if currentDBVersion < 3048 then
			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if classdef.criteria == "Level" then
					db.classranking[classrank].name = L['iLvl']
					db.classranking[classrank].criteria = 'iLvl'
				end
			end
		end

		if currentDBVersion < 3049 then
			if not db.bags then 
				db.bags = {} 
				db.bags['**'] = false	
			end
			if not db.bags.ignore then db.bags.ignore = {} end
		end		
		
		if currentDBVersion < 3050 then
			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if classdef.criteria == "Questitem" then
					db.classranking[classrank].criteria = 'QuestItem'
				end
			end			
		end
		
		if currentDBVersion < 3051 then
			for index, family in pairs(db.customFamilies) do
				if db.customFamilies[index].ignore == true then
					db.customFamilies[index].ignore = {}
				end
				if db.customFamilies[index].set then
					db.customFamilies[index] = nil
				else
					for id in Genie.UTILS.pairsByKeys(family) do
						if tonumber(id) and db.customFamilies[index][id] and not db.customFamilies[index][tonumber(id)] then
							db.customFamilies[index][id] = nil
							db.customFamilies[index][tonumber(id)] = true
						end
					end			
				end
			end
		end
		
		if currentDBVersion < 3052 then
  			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if string.lower(classdef.criteria) == "id" then
					db.classranking[classrank].criteria = 'ItemID'
				end
				if string.lower(classdef.criteria) == "tstid" then
					db.classranking[classrank].name = L.TStID
				end
			end		  
		end
	
	if currentDBVersion < 4002 then
		db.mode.silent_text = nil
		db.mode.text = defaults.profile.mode.text
		db.mode.silent_sound = nil
		db.mode.sound = defaults.profile.mode.sound
	end
	
	if currentDBVersion < 4003 then
		self.db.global.GB_Delay = 1.0
	end
		
		-- add new entries/ update changed ones
		for defaultClassrank, defaultClassdef in Genie.UTILS.pairsByKeys(defaultClassRanking) do
			local new = true
			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if defaultClassdef.criteria == classdef.criteria then
					if classdef.type ~= defaultClassdef.type then classdef.type = defaultClassdef.type end
					if classdef.max ~= defaultClassdef.max then classdef.max = defaultClassdef.max end
					new = false
					break
				end
			end
			if new then
				table.insert(db.classranking, defaultClassdef)
			end
		end
		
		db.version = newDBVersion
	end
end


function Genie:PrintToChat(verbosity, chat, ...)
	local msg = {Genie.CONSTANT.CHAT_PREFIX_COLORED}
	for _,v in pairs({...}) do
		table.insert(msg, tostring(v))
	end
	msg = table.concat(msg, ' ')

	if verbosity <= db.mode.text then
		local id = 0
		id = GetChannelName(tostring(chat) )

		if (id > 0) then
			SendChatMessage(msg, "CHANNEL", nil, id);
		elseif Genie.CONSTANT.CHAT_TYPES[chat] then
			SendChatMessage(msg, chat);		
		else
  			DEFAULT_CHAT_FRAME:AddMessage(msg);
  		end
  	end
	msg = nil
end

function Genie:AtBank()
	return self.atBank
end
function Genie:AtGuildBank()
	return self.atGuildBank
end
function Genie:Stack(container)
	if container == nil then container = Genie.theWorks.container end

	local itemgroup = {}
	local itemcount = {}
	for _, bag in Genie.UTILS.pairsByKeys(container.bags, Genie.db.profile.mode['reversebags']) do
		for i, item in Genie.UTILS.pairsByKeys(bag:GetItems(), Genie.db.profile.mode['reverseslots']) do
			if item:GetIgnore() == false then
				if itemgroup[item:GetId()] == nil then 
					itemgroup[item:GetId()] = {} 
					itemcount[item:GetId()] = 0
				end
				if item.Count < item.StackCount or itemcount[item:GetId()] < 5 then
					table.insert(itemgroup[item:GetId()], item)
					itemcount[item:GetId()] = itemcount[item:GetId()] + item.Count
				end
			end
		end
	end
	itemcount = nil
	
	for i, items in pairs(itemgroup) do
		if #items > 1 then
			local currentItem
			for _, item in Genie.UTILS.pairsByKeys(items) do
				if currentItem ~= nil and currentItem.Count < currentItem.StackCount then
					local newCount = currentItem.Count + item.Count
					if newCount < item.StackCount then
						-- continue with the merged stack
						currentItem.Count = 0
							container:Swap(currentItem, item, true, true)
						currentItem = item
						currentItem.Count = newCount
					elseif newCount == item.StackCount then
						-- get a new stack
						currentItem.Count = 0 --nothing remains
						item.Count = newCount
							container:Swap(currentItem, item, true, true)
						currentItem = item
					else
						item.Count = item.StackCount
						currentItem.Count = newCount-item.StackCount
							container:Swap(currentItem, item, true, true)
					end

				else
					currentItem = item
				end
			end
		end
	end

	Genie:TheWorks()
end
function Genie:Move(container)
	if container == nil then container = Genie.theWorks.container end
	-- initialize; create a list of items that could be put into special bags
	-- and are currently in a general purpose bag
	local sI = {}
	for _, bag in Genie.UTILS.pairsByKeys(container.familyToBag[0], Genie.db.profile.mode['reversebags']) do
		for i, item in Genie.UTILS.pairsByKeys(container.bags[bag]:GetItems(), (not Genie.db.profile.mode['reverseslots'])) do
			if item:GetFamily() ~= 0 and item:GetIgnore() == false then
				table.insert(sI, item)
			end
		end
	end

	for family, bags in Genie.UTILS.pairsByKeys(container.familyToBag, true) do
			local baggroup = {}
			local maxSlots = 0
			local delta = 0
			for _, bag in Genie.UTILS.pairsByKeys(bags, Genie.db.profile.mode['reversebags']) do
				if Genie.db.profile.mode['reverseslots'] == true then
				while maxSlots-delta < container.bags[bag]:GetSize() do
					maxSlots = maxSlots +1
					baggroup[maxSlots] = {}
					baggroup[maxSlots].Item = container.bags[bag]:GetItem(container.bags[bag]:GetSize() - (maxSlots - delta)+1)
					baggroup[maxSlots].Bag = container.bags[bag].bagSlot
					baggroup[maxSlots].Group = container.bags[bag].Group
					baggroup[maxSlots].Slot = (container.bags[bag]:GetSize() - (maxSlots - delta)) +1
					baggroup[maxSlots].ignore = false
					if baggroup[maxSlots].Item ~= nil then
						baggroup[maxSlots].ignore = baggroup[maxSlots].Item:GetIgnore()
					end
				end
				delta = delta + container.bags[bag]:GetSize()
				else
				while maxSlots-delta < container.bags[bag]:GetSize() do
					maxSlots = maxSlots +1
					baggroup[maxSlots] = {}
					baggroup[maxSlots].Bag = container.bags[bag].bagSlot
					baggroup[maxSlots].Slot = maxSlots - delta
					baggroup[maxSlots].Group = container.bags[bag].Group
					baggroup[maxSlots].Item = container.bags[bag]:GetItem(maxSlots - delta)
					baggroup[maxSlots].ignore = false
					if baggroup[maxSlots].Item ~= nil then
						baggroup[maxSlots].ignore = baggroup[maxSlots].Item:GetIgnore()
					end
				end
				delta = delta + container.bags[bag]:GetSize()
				end
			end

			-- move special items
			-- todo: integrate into the above for
			if family ~= 0 then
			local freeSlot = 1;
			while freeSlot <= maxSlots do
				--pick the first free slot
				while baggroup[freeSlot] ~= nil and baggroup[freeSlot].Item ~= nil do
					freeSlot = freeSlot +1
				end
				if freeSlot > maxSlots then break end
				local target = Genie.CLASS.Item:New('', 0, baggroup[freeSlot].Bag, baggroup[freeSlot].Slot)
		target:SetContainer(baggroup[freeSlot].Group)
				for i, item in pairs(sI) do
					if item:IsPartOfFamily(family) then
						container:Swap(target, item, false, true)
						baggroup[freeSlot].Item = item
						table.remove(sI, i)
						lastItem = item
						break
					end
				end
				freeSlot = freeSlot + 1
			end
			end

			--[[ compact ]]
			local freeSlot = 1;
			local filledSlot = maxSlots
			while freeSlot < filledSlot do
				--pick the first free slot
				while baggroup[freeSlot] ~= nil and baggroup[freeSlot].Item ~= nil do
					freeSlot = freeSlot +1
				end
				if freeSlot > filledSlot then break end
				local target = Genie.CLASS.Item:New('', 0, baggroup[freeSlot].Bag, baggroup[freeSlot].Slot)
		target:SetContainer(baggroup[freeSlot].Group)
				-- pick the last item
				while baggroup[filledSlot] ~= nil and (baggroup[filledSlot].Item == nil or baggroup[filledSlot].ignore == true) do
					filledSlot = filledSlot -1
				end
				--  put it into the free slot
				if	freeSlot < filledSlot then
						container:Swap(target, baggroup[filledSlot].Item, false, true)
						table.remove(baggroup, filledSlot)
						filledSlot = filledSlot -1
				end
				freeSlot = freeSlot + 1
			end
			--]]
	end

	Genie:TheWorks()
end
function Genie:Sort(container)
	local swapsNeeded = 0
	local timeNeeded = GetTime()
	local items = {}

	local function Swap(pos1, pos2)
		if items[pos1] ~= items[pos2] then
			swapsNeeded = swapsNeeded+1
			-- 'virtually' swap the items
			local tmp = items[pos1]
				items[pos1] = items[pos2]
				items[pos2] = tmp
			-- tell the container about
			container:Swap(items[pos1], items[pos2], false, false)
		end
	end

	-- QuickSort with 3 partitioning
	local function QuickSort3(l, r)
		if (l < r) then
		--initialize
			local i = l-1; local p = l
			local j = r; local q = r-1
			local pivot = r
				while (i <= j) do
					repeat i=i+1
						until items[i] >= items[pivot]
					repeat j=j-1
						until items[j] <= items[pivot] or j == l
					if (i >= j) then break end
					Swap(i,j)
					if items[i] == items[pivot] then Swap(p,i); p=p+1 end
					if items[j] == items[pivot] then Swap(j,q); q=q-1 end
				end
			Swap(pivot, i)

			local next_r = i-1
			local next_l = i+1

			local k = l
				while k < p do
					Swap(k,next_r);
					k=k+1; next_r=next_r-1
				end
			local k = r-1
				while k > q do
					Swap(next_l, k);
					k=k-1; next_l=next_l+1
				end
			QuickSort3(l, next_r)
			QuickSort3(next_l, r)
		end
	end
	-- InsertionSort
	local function InsertionSort()
		for i=2, #items do
			local k = i
			while k > 1 and items[k] < items[k-1] do
				Swap(k, k-1)
				k= k-1
			end
		end
	end
	-- SelectionSort
	local function SelectionSort()
		for i=1, #items do
			local minimal = i
				for j=i+1, #items do
					if items[j] < items[minimal] then
						minimal = j
					end
				end
				if i ~= minimal then Swap(i, minimal) end
		end
	end
	-- HeapSort
	local function HeapSort()
		local function Sink(i, n)
			while i <= floor(n/2) do
				local child = i*2 --leftChild
				if child+1 <= n then -- right child exists
					if items[child] < items[child+1] then
						child = child+1 --switch to the rightChild
					end
				end
				if items[i] < items[child] then
					Swap(i, child)
					i=child
				else
					break
				end
			end
		end
		local function GenerateMaxHeap()
			for i= floor(#items/2), 1, -1 do
				Sink(i, #items)
			end
		end

		GenerateMaxHeap()
		for i= floor(#items), 2, -1 do
			Swap(1, i)
			Sink(1,i-1)
		end
	end

	--[[
		the user can pick one; they all work,
		although selectionsort may work the best as it has the least swaps
	--]]
	if container == nil then container = Genie.theWorks.container end

	--[[ testing only
	items = {0,1,2,5,7,8,1,2,2,6,9}
		-- for i=1, 10 do items[i] = math.random(10) end
	--]]
	--[[ get all items ]]
	for family, bags in pairs(container.familyToBag) do
		for i, item in pairs(container:GetItems(bags)) do
			if item:GetIgnore() == false then
				if Genie.FLAG_RSS == true then
					 --refresh the sortstring because the user has changed the ranking since the last /ReloadUI
					Genie.SortStringCache[item:GetId()] = nil
					item:GenerateSortString()
				end
				table.insert(items, item)
			end
		end
	--[[
		Sorting
		1. virtually sort the container
		2. while doing so, protocoll which swaps were made
	--]]
		if Genie.db.profile.sortalgo == 'sort_insert' then
			InsertionSort()
		elseif Genie.db.profile.sortalgo == 'sort_heap' then
			HeapSort()
		elseif Genie.db.profile.sortalgo == 'sort_select' then
			SelectionSort()
		else --default
			QuickSort3(1, #items)
		end

		items = {}
	end

	timeNeeded = GetTime() - timeNeeded
	Genie.FLAG_RSS = false

	-- 3. tell genie to really sort the container
	--Generate FastSwapGrid
	local from, to
	for i, item in pairs(container:GetItems()) do
		from = Genie.UTILS.EncodePos(item.Slot, item.Container, item.Bag)
		--if from ~= item:GetT() then
			container.SwapGrid[from] = item:GetT()
			--if not container.SwapGrid[to] then container.SwapGrid[to] = from end
			item:SetPosition(item:GetT(3), item:GetT(1))
			item:SetContainer(item:GetT(2))
		--end
	end
	wipe(items)
	Genie:TheWorks()
end
function Genie:DoGBSwap(container)
  if container == nil then container = Genie.theWorks.container end
  if container == nil or not container.SwapGrid then
	Genie:PrintToChat(5, nil, 'NO_SWAPGRID')
	return true
  end

  local changesThisRound = false
  local to, tmp
  local letThemRefresh = {}
  
	for from in next,container.SwapGrid,nil do
		to = container.SwapGrid[from] --better readability
		if from ~= container.SwapGrid[from] then
			changesThisRound = true
			if not letThemRefresh[from] and not letThemRefresh[to] then
			if self:DoLift(from, to) then
				-- 'virtual swap'
				tmp = container.SwapGrid[from]
				container.SwapGrid[from] = container.SwapGrid[to]
				container.SwapGrid[to] = tmp
				letThemRefresh[from] = true
				letThemRefresh[to] = true
			end
			end
			if Genie:AtGuildBank() then return false end
		end
	end
	wipe(letThemRefresh)
	if not changesThisRound then return true end
	return false
end


function Genie:DoSwap(container)
	if container == nil then container = Genie.theWorks.container end
	if container == nil or #container.SwapList == 0 then return true end

	local from, from_amount, to = string.match(container.SwapList[1], '([^:]*):?(%-?%d*)>([^>]*)')
	while Genie:DoLift(from, to, from_amount) do
		table.remove(container.SwapList,1)
		if #container.SwapList > 0 then
			from, from_amount, to = string.match(container.SwapList[1], '([^:]*):?(%-?%d*)>([^>]*)')
		else
			return true
		end
		if Genie:AtGuildBank() then return false end
	end
	return false
end
function Genie:DoUpdateContainer(container)
	if container == nil then container = Genie.theWorks.container end
	if container == nil then return end

	if not Genie:DoSwap(container) or not Genie:DoGBSwap(container) then
		if self:AtGuildBank() then
			self:ScheduleTimer("DoUpdateContainer", Genie.UTILS.CalcGBDelay() , container)
		else
			self:ScheduleTimer("DoUpdateContainer", 0.2, container)
		end
	else
		if not Genie.FLAG_AutoStart then
			local timeNeeded = GetTime() - Genie.theWorks.startTime
			local txt = gsub(L["I've done what you requested in X seconds"], 'X', string.format('%.3f',timeNeeded))
			Genie:PrintToChat(2, nil, txt)
		end
		self:SilentHalt()
	end
end

--[[  EVENTS  /////////////////////////////////////////////////////////////////////////////////////
]]--
function Genie:PLAYER_GUILD_UPDATE()
	if (IsInGuild()) then
		self.currentGuild = GetGuildInfo("player")
	else
		self.currentGuild = nil
	end
end
function Genie:GUILD_ROSTER_UPDATE()
	local hide = not IsGuildLeader(UnitName("player"))
	Genie.OPT.Guildbank.args.GB_LockGuildBank.disabled = hide
	if IsInGuild() then
		self.currentGuild = GetGuildInfo("player")
		self:LookForNewGuildProfile()
	else
		self.currentGuild = nil
	end
end
function Genie:GUILDBANK_ITEM_LOCK_CHANGED()
	Genie.FLAG_GBILC = not Genie.FLAG_GBILC
end
function Genie:UI_ERROR_MESSAGE()
	if arg1 == ERR_ITEM_NOT_FOUND and Genie.theWorks.container then
		UIErrorsFrame:Clear()
	end
end
function Genie:LOOT_CLOSED()
	self:Automatic('LOOT_CLOSED')
end
function Genie:MAIL_CLOSED()
	self:Automatic('MAIL_CLOSED')
end
function Genie:BAG_UPDATE()
	self:Automatic('BAG_UPDATE')
end
function Genie:BAG_CLOSED()
	self:Automatic('BAG_CLOSED')
end
function Genie:TRADE_CLOSED()
	self:Automatic('TRADE_CLOSED')
end
function Genie:MERCHANT_CLOSED()
	self:Automatic('MERCHANT_CLOSED')
end
function Genie:CRAFT_CLOSE()
	self:Automatic('CRAFT_CLOSE')
end
function Genie:BANKFRAME_OPENED()
	self.atBank = true
	self:Automatic('BANKFRAME_OPENED')
end
function Genie:BANKFRAME_CLOSED()
	self.atBank = false
	self:SilentHalt()
	self:Automatic('BANKFRAME_CLOSED')
end
function Genie:ITEM_PUSH()
	self:Automatic('ITEM_PUSH')
end
function Genie:ITEM_LOCK_CHANGED(arg1, arg2)
	self:Automatic('ITEM_LOCK_CHANGED')
end
function Genie:PLAYERBANKBAGSLOTS_CHANGED()
	self:Automatic('PLAYERBANKBAGSLOTS_CHANGED')
end
function Genie:PLAYERBANKSLOTS_CHANGED()
end
function Genie:GUILDBANKFRAME_OPENED()
	self.atGuildBank = true
	for i=1, GetNumGuildBankTabs(), 1 do QueryGuildBankText(i) end
	if self.db.factionrealm[Genie.currentGuild] and self.db.factionrealm[Genie.currentGuild].useProfile and self.db.factionrealm[Genie.currentGuild].useProfile ~= self.db:GetCurrentProfile() then
		Genie:PrintToChat(5, nil, 'switch_to ', self.db.factionrealm[Genie.currentGuild].useProfile)
		self.db.factionrealm[Genie.currentGuild].switchProfile = self.db:GetCurrentProfile()
		self.db:SetProfile(self.db.factionrealm[Genie.currentGuild].useProfile)
	end
	self:Automatic('GUILDBANKFRAME_OPENED') 
	self:RegisterEvent('GUILDBANKBAGSLOTS_CHANGED')
end
function Genie:GUILDBANKFRAME_CLOSED()
	self.atGuildBank = false
	self:UnregisterEvent('GUILDBANKBAGSLOTS_CHANGED')	 
	self:SilentHalt()
	if Genie.FLAG_GBLOCKED then Genie:GBLock(false) end
	
	if self.db.factionrealm[Genie.currentGuild] and self.db.factionrealm[Genie.currentGuild].switchProfile then
		Genie:PrintToChat(5, nil, 'switch_back', self.db.factionrealm[Genie.currentGuild].switchProfile)
		self.db:SetProfile(self.db.factionrealm[Genie.currentGuild].switchProfile)
		self.db.factionrealm[Genie.currentGuild].switchProfile = false
	end
	self:Automatic('GUILDBANKFRAME_CLOSED')
end

function Genie:GUILDBANKBAGSLOTS_CHANGED(...)
	self:Automatic('GUILDBANKFRAME_OPENED')	
end 
function Genie:GUILDBANK_TEXT_CHANGED(_, tab)
	Genie.UTILS.SetGuildBankOption(tab)	
end
function Genie:GUILDBANK_UPDATE_TEXT(_, tab)
	Genie.UTILS.SetGuildBankOption(tab)
end
function Genie:PLAYER_ENTER_COMBAT()
	Genie:CombatEnter()
end
function Genie:PLAYER_LEAVE_COMBAT()
	Genie:CombatLeave()
end
function Genie:PLAYER_REGEN_DISABLED()
	Genie:CombatEnter()	
end
function Genie:PLAYER_REGEN_ENABLED()
	Genie:CombatLeave()
end
function Genie:PLAYER_DEAD()
	Genie:CombatLeave()
end
function Genie:ADDON_ACTION_FORBIDDEN(arg1, arg2)
	self:PrintToChat(5, nil, 'ActionForbidden', arg1, arg2)
end


function Genie:EQUIPMENT_SETS_CHANGED()
	self:UpdateEquipmentSets()
end

function Genie:EQUIPMENT_SWAP_FINISHED(successful, changedSet)
	self:Automatic('EQUIPMENT_SWAP_FINISHED')
end

function Genie:CHAT_MSG_TRADESKILLS(_, msg)
	if msg:match(TRADESKILL_LOG_FIRSTPERSON:gsub("%%%S-s", "(.+)")) then
		self:Automatic('TRADESKILL_CREATE')
	end
end
	

--[[  UI execute   ////////////////////////////////////////////////////////////////////////////////
--]]
--///////////////////////////////////////////////////////////////////////////////////
-- Combat handling
--///////////////////////////////////////////////////////////////////////////////////
function Genie:CombatEnter()
	Genie.FLAG_IC = true
	Genie.FLAG_OC = false
	self:SilentHalt()
end
function Genie:CombatLeave()
	Genie.FLAG_OC = true
	if db.mode.waitAfterCombat then
		self:ScheduleTimer("CombatLeaveNotify", tonumber(db.mode.waitAfterCombat))
	else
		self:CombatLeaveNotify()
	end
end
function Genie:CombatLeaveNotify()
		Genie.FLAG_IC = false	   
		if Genie.FLAG_OC and Genie.Queue["_queue"] then
		Genie.FLAG_OC = false
			ClearCursor()
			self:Automatic(Genie.Queue["_queue"])
		end
end

--///////////////////////////////////////////////////////////////////////////////////
-- Routines
--///////////////////////////////////////////////////////////////////////////////////
function Genie:TheWorks()
	local function getNextTask(task)
		if not task then task = '' end
		return self.UTILS.findPattern(Genie.theWorks.todolist, '[^,]+', tonumber(string.find(Genie.theWorks.todolist, task)+strlen(task)))
	end
	if Genie.theWorks.todolist then
		if not Genie.db.profile.mode.sound then Genie:EnableSFX(false) end

		Genie.theWorks.currentTask = getNextTask(Genie.theWorks.currentTask)
		if strlen(Genie.theWorks.currentTask) > 0 then
			Genie[Genie.theWorks.currentTask]()
		else
			--all tasks completed, now stack/move and sort for real
			Genie.FLAG_ERR = false
			if Genie.theWorks.container and #Genie.theWorks.container.SwapList == 0 then
				--the swaplist is empty
				local todo = false
				for from, to in pairs(Genie.theWorks.container.SwapGrid) do
						if from ~= to then
								todo = true
								break
						end
				end

				if not todo then
					if not Genie.FLAG_AutoStart then
						Genie:PrintToChat(2, nil, L["Master, there's nothing (more) to do"])
					end
					self:SilentHalt()
					return true
				else
					self:DoUpdateContainer()
				end
			else
				self:DoUpdateContainer()
			end
		end
	end
end
function Genie:PreWorks(info, value)
	if not Genie.theWorks.todolist or strlen(Genie.theWorks.todolist) == 0 then Genie.theWorks.todolist = 'Stack,Move,Sort,' end
	if not Genie.FLAG_AutoStart then
		self:PrintToChat(2, nil, L['I will try to read your mind master'])
	end
	if self.atGuildBank then
		self:DoGuildbank()
	elseif self.atBank then
		self:DoBank()
	else
		self:DoBag()
	end
end
function Genie:EnableSFX(value)
	if value then SetCVar("Sound_EnableSFX", 1)
		else SetCVar("Sound_EnableSFX", 0)
	end
end
function Genie:SilentHalt()
	self:CancelAllTimers()
	if Genie.FLAG_OC then Genie:CombatLeaveNotify() end --just to be sure we didn't miss this because of cancelalltimers()   
	ClearCursor()
	Genie.FLAG_AutoStart = nil
	Genie.theWorks.todolist = nil
	Genie.theWorks.container = nil
	if not Genie.db.profile.mode.sound then Genie:EnableSFX(true) end
	if Genie.FLAG_GBLOCKED then Genie:GBLock(false) end
	wipe(printMemory)
end
function Genie:Stop()
	self:SilentHalt()
	self:PrintToChat(0, nil, L["As you wish master"])
end
function Genie:Automatic(event)
	if Genie.Queue[event] then self:CancelTimer(Genie.Queue[event],true) end
	Genie.Queue[event] = self:ScheduleTimer("QueueExecute", db.mode.automaticDelay or Genie.CONSTANT.AUTOMATIC_DELAY, event)	
end
function Genie:QueueExecute(event)
	if not Genie.FLAG_IC then
		Genie:AutomaticExecute(event)
	else
		-- retry
		Genie.Queue["_queue"] = event
	end
end

function Genie:AutomaticExecute(event)
	if db.mode.automatic == true then
		--[[if event == 'ITEM_PUSH' or event == 'ITEM_LOCK_CHANGED' then
		--	Genie.updateNeeded = true
		--elseif not Genie.FLAG_IC then ]]
			if Genie.Queue["_queue"] == event then Genie.Queue["_queue"] = nil end
			if db.events[event] ~= '' then
			--if db.events[event] ~= '' and Genie.updateNeeded == true then --ONLY IF SOMETHING HAS CHANGED
				-- build the todolist
				Genie.FLAG_AutoStart = true
				Genie.theWorks.todolist = ''
				if string.find(string.lower(db.events[event]), 'stack') then Genie.theWorks.todolist = 'Stack,' end
				if string.find(string.lower(db.events[event]), 'move') then Genie.theWorks.todolist = Genie.theWorks.todolist .. 'Move,' end
				if string.find(string.lower(db.events[event]), 'sort') then Genie.theWorks.todolist = Genie.theWorks.todolist .. 'Sort,' end
				-- do the works
				self:PreWorks()
				Genie.updateNeeded = false
			end
		--[[
		else 
			Genie.Queue["_queue"] = event
		end
		--]]
	end
end
function Genie:Do()
	if not Genie.FLAG_IC then
	  wipe(Genie.syncList)
		if Genie.theWorks.container and #Genie.theWorks.container.bags > 0 then
			Genie.theWorks.startTime = GetTime()+1
			self:ScheduleTimer("TheWorks", 1)
		else
			self:PrintToChat(1, nil, L["Master, i can't work with an empty container"])
			self:SilentHalt()
		end
	elseif not Genie.FLAG_OC then
		self:PrintToChat(2, nil, L["Oh, you're in combat"])
		self:SilentHalt()
	else
		self:PrintToChat(5, nil, L['You told me to wait'])
	end
end
function Genie:DoBag()
	local tW = Genie.theWorks
	tW.useGBSwap = false
	tW.container = Genie.CLASS.Container:New('S')
	tW.container:Fill()
	self:Do()
end
function Genie:DoBagWorks(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,Move,Sort,'
	self:DoBag()
end
function Genie:DoBagMove(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Move,'
	self:DoBag()
end
function Genie:DoBagStack(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,'
	self:DoBag()
end
function Genie:DoBagSort(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Sort,'
	self:DoBag()
end
function Genie:DoBank()
	local tW = Genie.theWorks
	tW.useGBSwap = false
	tW.container = Genie.CLASS.Container:New('B')
	tW.container:Fill()
	self:Do()
end
function Genie:DoBankWorks(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,Move,Sort,'
	self:DoBank()
end
function Genie:DoBankMove(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Move,'
	self:DoBank()
end
function Genie:DoBankStack(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,'
	self:DoBank()
end
function Genie:DoBankSort(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Sort,'
	self:DoBank()
end
function Genie:DoGuildbank()
	if Genie.atGuildBank then
		-- should i move on? yes if:
		-- a) this char is the guildleader 
		-- b) @GBA is set to allow him AND @GBT is set for the current tab
		if IsGuildLeader(UnitName("player")) 
			or (Genie.UTILS.GetGuildBankOption('gba', UnitName("player")) and Genie.UTILS.GetGuildBankOption('gbt', GetCurrentGuildBankTab())) then
			
			Genie.FLAG_GBOOS = 0
			local tW = Genie.theWorks
			tW.useGBSwap = true
			tW.container = Genie.CLASS.Container:New('_G' .. GetCurrentGuildBankTab() .. 'T')
			tW.container:Fill()
			
			if Genie.db.global.GB_LockGuildBank and self.atGuildBank then
				self:GBLock()
				self:ScheduleTimer("Do", 2)
			else
				self:Do()
			end
		else
			self:PrintToChat(1, nil, L["Master, that's one thing i'm not allowed to do"])
		end
	end
end
function Genie:DoGuildbankWorks(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,Move,Sort,'
	self:DoGuildbank()
end
function Genie:DoGuildbankStack(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Stack,'
	self:DoGuildbank()
end
function Genie:DoGuildbankMove(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Move,'
	self:DoGuildbank()
end
function Genie:DoGuildbankSort(info, value)
	self:PrintToChat(2, nil, L['As you wish master'])
	Genie.theWorks.todolist = 'Sort,'
	self:DoGuildbank()
end

--///////////////////////////////////////////////////////////////////////////////////
-- UI/Cmd classranking wrapper
--///////////////////////////////////////////////////////////////////////////////////
function Genie:GetClassRanking(info, value)
	local rank = value:gsub('[^0-9]+', '') -- use all numbers present
	return db.classranking[rank] or 0
end
function Genie:ClassRankingShow()
	local txt = L['Show current X']:gsub('X', L['Classranking'])
	self:PrintToChat(1, nil, txt)
		for rank, class in Genie.UTILS.pairsByKeys(db.classranking) do
			local status = ''
			if not class.enabled then status = status .. '|cFF999933' .. L['Disabled:short'] .. '|r' end
			if class.invert  then status = status .. '|cFFFF9933' .. L['Inverted:short'] .. '|r' end
			self:PrintToChat(0, nil, string.format("%.3d", tostring(rank)),'|cFFFFFF00', tostring(class.name),  status)
		end
end

function Genie:ClassRankingDate()
	wipe(self.SortStringCache)
	db.date = time()
end
function Genie:ClassRankingEnable(info, value)
	local rank = gsub(value, '[^0-9]+', '') -- use all numbers present
	value = string.lower(value)
	if db.classranking[tonumber(rank)] ~= nil and rank == value then
		db.classranking[tonumber(rank)].enabled = true
		--[[
		if Genie.CLASS.Family.NewEx(db.classranking[tonumber(rank)].criteria) then
			local f = Genie.CLASS.Family:New(db.classranking[tonumber(rank)].criteria)
			f:ToggleProperty('enabled', true)
		end
		--]]
		self:PrintToChat(2, nil, db.classranking[tonumber(rank)].name, string.lower(L['Enabled']))
		self:ClassRankingDate()
	else
		for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
			if string.lower(classdef.name) == value or string.lower(classdef.criteria) == value then
				classdef.enabled = true
				self:PrintToChat(2, nil, classdef.name, string.lower(L['Enabled']))
				self:ClassRankingDate()
				break
			end
		end
	end
end
function Genie:ClassRankingDisable(info, value)
	local rank = gsub(value, '[^0-9]+', '') -- use all numbers present
	value = string.lower(value)
	if db.classranking[tonumber(rank)] ~= nil and rank == value then
		db.classranking[tonumber(rank)].enabled = false
		self:PrintToChat(2, nil, db.classranking[tonumber(rank)].name, string.lower(L['Disabled']))
		self:ClassRankingDate()
	else
		for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
			if string.lower(classdef.name) == value or string.lower(classdef.criteria) == value then
				classdef.enabled = false
				self:PrintToChat(2, nil, classdef.name, string.lower(L['Disabled']))
				self:ClassRankingDate()				
				break
			end
		end
	end
end
function Genie:ClassRankingUpdate(info, value)
	if strlen(tostring(value)) > 0 then
		local params = { strsplit(" ", string.lower(value))}
		if #params < 2 then return false end
		-- param 1 ..N-1= class; param N = rank

		local class = params[1]
		for i=2, #params-1 do
			class = class .. ' ' .. params[i]
		end
		local rank = tonumber(params[#params])
		local updateClass, oldRank
			for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
				if string.lower(classdef.name) == class or tonumber(classrank) == tonumber(class) then
					updateClass = classdef
					oldRank = classrank
					break
				end
			end
			if updateClass and rank ~= oldRank then
				-- the class was found, now update
				if rank > 0 and rank <= #db.classranking then
					local value = db.classranking[oldRank]
					table.remove(db.classranking, oldRank)
					table.insert(db.classranking, rank, value)

					local txt = gsub(L['X has been updated'], 'X', updateClass.name)
						self:PrintToChat(2, nil, txt)
						self:ClassRankingDate()
				end
			end
	end
end
function Genie:ClassRankingReset()
	Genie:PrintToChat(1, nil, L['As you wish master'])
	for rank, class in Genie.UTILS.pairsByKeys(db.classranking) do
		class.enabled = false
	end
	self:ClassRankingDate()	
end
function Genie:ClassRankingInvert(info, value)
	local class, invert
	local rank = gsub(value, '[^0-9]+', '') -- use all numbers present
	value = string.lower(value)

	if db.classranking[tonumber(rank)] ~= nil and rank == value then
		db.classranking[tonumber(rank)].invert = not db.classranking[tonumber(rank)].invert
		invert = db.classranking[tonumber(rank)].invert
		class = db.classranking[tonumber(rank)].name
		self:ClassRankingDate()
	else
		for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
			if string.lower(classdef.name) == value or string.lower(classdef.criteria) == value then
				classdef.invert = not classdef.invert
				invert = classdef.invert
				class = classdef.name
				break
			end
		end
	end
	if class then
		if invert then
			self:PrintToChat(2, nil, class, string.lower(L['Reverse'])..':', L['Enabled'])
		else
			self:PrintToChat(2, nil, class, string.lower(L['Reverse'])..':', L['Disabled'])
		end
		self:ClassRankingDate()
	end
end




function Genie:ClassRankingCombine(info, value)
	--[[
		expected input: something like (3|4:>value)&!5
		expected output: something like (Quest Item_bool|Count_number:>value)&!Soulbound_bool
	--]]
	value = tostring(value)
	if strlen(strtrim(value)) > 0 then
		local class = {}
		class.type = 'combined'
		class.name = value
		class.criteria = value
		
		-- check if every enterd rank exists
		for rank in string.gmatch(value:gsub('%:[^0-9:]?[^0-9:]?%w+', ''), "%d+") do
			local cDef = db.classranking[tonumber(rank)]
			if not cDef then
				self:PrintToChat(5, nil, 'fail')
				return nil
			else--if db.classranking[tonumber(rank)].type == 'combined' then
				--//////////////////////////////
				if cDef.type ~= 'combined' then
					class.criteria = Genie.UTILS.substituteNumber(class.criteria, rank, cDef.criteria ..'_'.. cDef.type)			
				else
					class.criteria = Genie.UTILS.substituteNumber(class.criteria, rank, cDef.criteria)			
				end
				class.name = Genie.UTILS.substituteNumber(class.name, rank, cDef.name)
				--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\	 
			end
		end

		class.criteria = '('.. class.criteria ..')'
		class.enabled = true
		
		table.insert(db.classranking, 1, class)

		self:PrintToChat(2, nil, class.name, string.lower(L['Created']))
	self:ClassRankingDate()
	end
end

function Genie:ClassRankingDelete(info, value)
	local rank = gsub(value, '[^0-9]+', '') -- use all numbers present
	value = string.lower(value)
	if db.classranking[tonumber(rank)] ~= nil and rank == value then
		if db.classranking[tonumber(rank)].type == 'combined' then
			self:PrintToChat(2, nil, db.classranking[tonumber(rank)].name, string.lower(L['Deleted']))
			table.remove(db.classranking, tonumber(rank))
			self:ClassRankingDate()
		end
	else
		for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
			if string.lower(classdef.name) == value or string.lower(classdef.criteria) == value then
				if classdef.type == 'combined' then
					self:PrintToChat(2, nil, classdef.name, string.lower(L['Deleted']))
					table.remove(db.classranking, classrank)
					self:ClassRankingDate()
				end
				break
			end
		end
	end
end

function Genie:ClassRankingDetails(info, value)
	--detail
	--output: type, max, allowed operators
	local rank = gsub(value, '[^0-9]+', '') -- use all numbers present
	local output = ''
	value = string.lower(value)
	if db.classranking[tonumber(rank)] ~= nil and rank == value then
		local classdef = db.classranking[tonumber(rank)]
		output = classdef.name .. ': ' .. classdef.type:upper()
		if classdef.max then
			output = output .. ', ' .. classdef.max
		end
		if Genie.CONSTANT.OP[classdef.type] then
			output = output .. ', ' .. Genie.CONSTANT.OP[classdef.type]:gsub('|', ' ')
		end
	else
		for classrank, classdef in Genie.UTILS.pairsByKeys(db.classranking) do
			if string.lower(classdef.name) == value or string.lower(classdef.criteria) == value then
				output = classdef.name .. ': ' .. classdef.type:upper()
				if classdef.max then
					output = output .. ', ' .. classdef.max
				end
				if Genie.CONSTANT.OP[classdef.type] then
					output = output .. ', ' .. Genie.CONSTANT.OP[classdef.type]:gsub('|', ' ')
				end
				break
			end
		end
	end
	self:PrintToChat(0, nil, output)
end
--///////////////////////////////////////////////////////////////////////////////////
-- UI/Cmd family wrapper
--///////////////////////////////////////////////////////////////////////////////////
function Genie:FamilyUpdate(info, value)
	--create a family, add or remove items
	if value == nil then return false end
	local f
	-- extract the needed informations from the input
	local params = Genie.UTILS.FamilyInput(value)
	if #params > 0 then
		--a name was specified
		local classTStID = Genie.UTILS.GetTStID(params[1], params[2])
		if classTStID then
			-- a Type, Subtype or (Type and Subtype) where provided
			local name = params[1]
			if params[2] then name = name .. '>' .. params[2] end
			f = Genie.CLASS.Family:New(name, classTStID)
				for i=3, #params do
					f:UpdateContent(Genie.CLASS.Item:New(params[i]))
				end
		else
			if params[1] == '' and #params == 2 then
				local item = Genie.CLASS.Item:New(params[2])
					if item~=nil and item:GetId() ~= 0 then
						f = Genie.CLASS.Family:New(item:GetName())
						f:UpdateContent(item)
					end
			else
				f = Genie.CLASS.Family:New(params[1])
					for i=2, #params do
						f:UpdateContent(Genie.CLASS.Item:New(params[i]))
					end
			end
		end
	end
	if f then 
		Genie.FLAG_RSS = true	   
		return f 
	end
end
function Genie:FamilyIgnore(info, value)
	if value == nil then return false end
	local params = Genie.UTILS.FamilyInput(value)
	if Genie.CLASS.Family.NewEx(params[1]) then
		local f = Genie.CLASS.Family:New(params[1])
		local txt = gsub(L["Ignore all elements of X"],'X', f.name)
		local typeName = (params[2] and gsub(params[2]:upper(), '%d', '')) or ''
		local enable = Genie.UTILS.tobool(params[3])
		if #params == 2 then enable = Genie.UTILS.tobool(params[2]) end
			for short, data in pairs(Genie.Container) do
				if strlen(typeName) == 0 or (short:upper() == typeName) then
					f:SetIgnore(short, (enable or not f:GetIgnore(short)))
					if not string.match(short, '^_') then
						if f:GetIgnore(short) then
							self:PrintToChat(1, nil, txt, '['.. (data.NAME or short) ..']:', L['Enabled'])
						else
							self:PrintToChat(1, nil, txt, '['.. (data.NAME or short) ..']:', L['Disabled'])
						end		
					end
					Genie.FLAG_RSS = true					
				end
			end
	end
end

function Genie:FamilyDelete(info, value)
	if value == nil then return false end
	local params = Genie.UTILS.FamilyInput(value)
	if Genie.CLASS.Family.NewEx(params[1]) then
		local f = Genie.CLASS.Family:New(params[1])
		self:PrintToChat(1, nil, f.name, string.lower(L['Deleted']))
		f:Delete()
		Genie.FLAG_RSS = true		
	end
end
function Genie:FamilyRename(info, value)
	if value == nil then return false end
	local params = Genie.UTILS.FamilyInput(value)
	if #params == 2 and Genie.CLASS.Family.NewEx(params[1]) then
		local f = Genie.CLASS.Family:New(params[1])
		if f:Rename(params[2]) then
			Genie.FLAG_RSS = true
			local txt = L["X renamed to Y"]:gsub('X', '"'.. params[1] ..'"'):gsub('Y', '"'.. params[2] ..'"')
			self:PrintToChat(1, nil, txt)
			return true
		end
	end
	return false
end
function Genie:FamilyShow(info, value)
	if value == nil then return false end
	-- extract the needed informations from the input
	local params = Genie.UTILS.FamilyInput(value)

	if #params == 0 then
		--show all
		Genie.CLASS.Family:ShowAll()
	elseif Genie.CLASS.Family.NewEx(params[1]) then
		local f = Genie.CLASS.Family:New(params[1])
		f:PrettyPrint()
	end
end
--///////////////////////////////////////////////////////////////////////////////////
-- Misc
--///////////////////////////////////////////////////////////////////////////////////
function Genie:UpdateEquipmentSets()
	self:ClassRankingDate()
	local removeSets = Genie.CLASS.Family.GetAllSets()
	local f, set
	for i=1, GetNumEquipmentSets() do
		set = GetEquipmentSetInfo(i);
		f = Genie.CLASS.Family:New(set) -- load the set
		if f then
			f:SetEquipmentSet(GetEquipmentSetItemIDs(set))
			f:ToggleProperty('set', set)
			removeSets[f:GetName()] = nil
		end
	end

	for name, count in pairs(removeSets) do
		self:FamilyDelete(nil, name)
	end
	
	self:NotifyDBChange(Genie.CONSTANT.COM.DBSET, 'profile.customFamilies')
end

function Genie:Ignore(info, value)
	if strlen(value) > 0 then
		local ignoreFamily = Genie.CLASS.Family:New(string.lower(L['Ignore']))
		Genie:FamilyUpdate(nil, string.lower(L['Ignore'])..'!'..value)
		ignoreFamily:SetIgnore(nil, {})
	end
end
function Genie:Inspect(info, value)
	local function searchItem(search)
		search = select(2, GetItemInfo(search))
		if search == nil then return nil end
		if self.atGuildBank then
			--also search the current guilbanktab
			for slot = 1, 98 do
				local item = GetGuildBankItemLink(GetCurrentGuildBankTab(), slot)
				if item == search then
					return Genie.CLASS.Item:New(value, select(2, GetGuildBankItemInfo(GetCurrentGuildBankTab(), slot)), GetCurrentGuildBankTab(), slot)
				end
			end
		end
		if self.atBank then
			--also search the bank
			for _, bagslot in pairs(Genie.UTILS.GetAvailableBags(Genie.CONSTANT.BANK)) do
				for slot = 1,GetContainerNumSlots(bagslot) do
					local item = GetContainerItemLink(bagslot,slot)
					if item == search then
						return Genie.CLASS.Item:New(value, select(2, GetContainerItemInfo(bagslot, slot)), bagslot, slot)
					end
				end
			end
		end
		for _, bagslot in pairs(Genie.UTILS.GetAvailableBags(Genie.CONSTANT.BAGS)) do
			for slot = 1,GetContainerNumSlots(bagslot) do
				local item = GetContainerItemLink(bagslot,slot)
				if item == search then
					return Genie.CLASS.Item:New(value, select(2, GetContainerItemInfo(bagslot, slot)), bagslot, slot)
				end
			end
		end
	end

	local item
	if type(value) == "table" then
		item = value
	elseif strlen(value) > 0 then
		item = searchItem(tostring(value))		
	end
	if item ~= nil then
		Genie:PrintToChat(1, nil, '--------------------------------------')
		for name,desc  in Genie.UTILS.pairsByKeys(item) do
			if type(desc) == "table" then
				local tmp = ''
				for key, val in pairs(desc) do
					tmp = tmp .. tostring(key) ..'='.. tostring(val) .. ', '
				end
				desc = tmp:gsub(',+$', '')
			end

			Genie:PrintToChat(1, nil, name,'=',tostring(desc))
		end
		Genie:PrintToChat(1, nil, '--------------------------------------')
	end
end

--[[  NEWFEATURES  ////////////////////////////////////////////////////////////////////////////////
]]--

--todo: also use this API-functions with the cmdline
function API:PreWorks()
  Genie.FLAG_OC = false
  Genie:CombatLeaveNotify()
  Genie:PreWorks() 
end
function API:DoBagWorks()
  Genie.FLAG_OC = false
  Genie:CombatLeaveNotify()
  Genie:DoBagWorks() 
end
function API:DoBankWorks()
  Genie.FLAG_OC = false
  Genie:CombatLeaveNotify()
  Genie:DoBankWorks() 
end
function API:DoGuildbankWorks()
  Genie.FLAG_OC = false
  Genie:CombatLeaveNotify()
  Genie:DoGuildbankWorks() 
end

--/////////////////////////////////////////////////////////
--todo: move to prototype
function Genie:NotifyDBChange(changedEntry)
	self:SendCommMessage(Genie.CONSTANT.COM.DBSET, self:Serialize(changedEntry), 'WHISPER', UnitName("player"))	 
end
function Genie:GBLock(lock)
	local currentTab = GetCurrentGuildBankTab()
	local function lock()
		currentTab = GetCurrentGuildBankTab()
		local numRanks = GuildControlGetNumRanks()
		local canView, canDeposit, stacksPerDay
		for rank=2, GuildControlGetNumRanks() do --do not touch the guildmaster (rank == 1)
			GuildControlSetRank(rank)
			canView, canDeposit, stacksPerDay = GetGuildBankTabPermissions(currentTab)
			if canView then
				if not Genie.db.global['GB_PermissionsSave'][currentTab] then Genie.db.global['GB_PermissionsSave'][currentTab] = {} end
				if not Genie.db.global['GB_PermissionsSave'][currentTab][rank] then Genie.db.global['GB_PermissionsSave'][currentTab][rank] = {} end
				SetGuildBankTabPermissions(currentTab, 1, false)
				Genie.db.global['GB_PermissionsSave'][currentTab][rank][1] = true
				Genie.db.global['GB_PermissionsSave'][currentTab][rank][2] = canDeposit
				Genie.db.global['GB_PermissionsSave'][currentTab][rank][3] = stacksPerDay
				Genie.db.global['GB_PermissionsSave'][currentTab][rank][4] = GetGuildBankWithdrawGoldLimit()
				GuildControlSaveRank(GuildControlGetRankName(rank))
			end
		end
	end
	local function unlock()
		currentTab = GetCurrentGuildBankTab()
		local numRanks = GuildControlGetNumRanks()
		for rank=2, GuildControlGetNumRanks() do --do not touch the guildmaster (rank == 1)
			GuildControlSetRank(rank)
			if Genie.db.global['GB_PermissionsSave'][currentTab] and Genie.db.global['GB_PermissionsSave'][currentTab][rank] then
				SetGuildBankTabPermissions(currentTab, 1, Genie.db.global['GB_PermissionsSave'][currentTab][rank][1])
				SetGuildBankTabPermissions(currentTab, 2, Genie.db.global['GB_PermissionsSave'][currentTab][rank][2])
				SetGuildBankTabPermissions(currentTab, 3, Genie.db.global['GB_PermissionsSave'][currentTab][rank][3])
				SetGuildBankWithdrawGoldLimit(Genie.db.global['GB_PermissionsSave'][currentTab][rank][4])
				GuildControlSaveRank(GuildControlGetRankName(rank))
			end
		end
		Genie.db.global['GB_PermissionsSave'][currentTab] = nil
	end
	if IsGuildLeader(UnitName("player")) and Genie.db.global.GB_LockGuildBank and Genie.atGuildBank then
		if lock ~= false then
			if Genie.FLAG_GBLOCKED then
				Genie.FLAG_GBLOCKED = false
				unlock()
				--if not Genie.db.profile.mode.silent_text then
					local txt = L["Guildbank-Tab 'X' unlocked. You're welcome."]:gsub("X", tostring(select(1, GetGuildBankTabInfo(currentTab))))
					self:PrintToChat(2, 'GUILD', txt)
				--end
			else
				if GuildControlGetNumRanks() > 0 then
					Genie.FLAG_GBLOCKED = true
					--if not Genie.db.profile.mode.silent_text then
					local txt = L["I'm locking Guildbank-Tab 'X'. Step back!"]:gsub("X", tostring(select(1, GetGuildBankTabInfo(currentTab))))
					self:PrintToChat(2, 'GUILD', txt)
					--end
					lock()
				end
			end
		else
			unlock()
		end
	end
end

function Genie:LookForNewGuildProfile()
	if Genie.currentGuild and self.db.factionrealm[Genie.currentGuild].sync then
		self:SendCommMessage(Genie.CONSTANT.COM.SYNC, 'REQUEST', "GUILD")
	end
end
function Genie:RequestProfileSync()
	if Genie.currentGuild and self.db.profiles[Genie.db.factionrealm[Genie.currentGuild].useProfile] then
		self:SendCommMessage(Genie.CONSTANT.COM.DATA, Genie.CONSTANT.COM.SYNC, "WHISPER", Genie.db.factionrealm[Genie.currentGuild].syncWith)  
	end
end
function Genie:OnCommReceived(prefix, message, distribution, sender)
	-- process the incoming message
	if self.db.factionrealm[Genie.currentGuild].sync and sender ~= UnitName("player") then	
		guildProfile = self.db.profiles[Genie.db.factionrealm[Genie.currentGuild].useProfile]
		if (prefix == Genie.CONSTANT.COM.SYNC) and distribution == "GUILD" then
			--incoming sync request
			if guildProfile and guildProfile.date then
				self:SendCommMessage(Genie.CONSTANT.COM.TIME, self:Serialize(guildProfile.date), "GUILD")
			end
		end
		if (prefix == Genie.CONSTANT.COM.TIME) then
			--process
			local success, time = self:Deserialize(message)	   
			local guildName, guildRankName, guildRankIndex = GetGuildInfo(sender)
			if success and guildProfile and guildProfile.date < time and guildName == Genie.currentGuild then
				guildProfile.date = time
				Genie.db.factionrealm[Genie.currentGuild].syncWith = sender
				self:ScheduleTimer("RequestProfileSync", 5)
			end
		end
		if (prefix == Genie.CONSTANT.COM.DATA) then	   
			if message == Genie.CONSTANT.COM.SYNC then
				--send
				self:SendCommMessage(Genie.CONSTANT.COM.DATA, self:Serialize(self.db.profiles[Genie.db.factionrealm[Genie.currentGuild].useProfile]), "WHISPER", sender)
				Genie:PrintToChat(5, nil, 'Profile synced with:', sender)			
			else 
				local success, profile = self:Deserialize(message)	   
				if success and sender == Genie.db.factionrealm[Genie.currentGuild].syncWith then
				--recieve
					local syncedProfile = {}
					for rank, values in paris(profile) do
						syncedProfile[rank] = values
						if L[values.criteria] then syncedProfile[rank].name = L[values.criteria] end
					end
				
					self.db.profiles[Genie.db.factionrealm[Genie.currentGuild].useProfile] = syncedProfile
					Genie.db.factionrealm[Genie.currentGuild].syncWith = false
					Genie:PrintToChat(5, nil, 'Profile recieved from:', sender)	 
				end
			end
		end
	end
end

--new 4.0
function Genie:FamilyRemove(info, value)
	if value == nil then return false end
	local params = Genie.UTILS.FamilyInput(value)
	if #params == 2 and Genie.CLASS.Family.NewEx(params[1]) then
		local f = Genie.CLASS.Family:New(params[1])
		local item = Genie.CLASS.Item:New(params[2], 0)
		if item then
			f:Remove(item)
		end
	end
end
function Genie.CLASS.Family:Remove(item)
	if item and item:GetId() then
		local id = item:GetId()
		if self.itemDB[id] then
			self.itemDB[id] = nil --remove
		elseif self.itemDB[-id] then
			self.itemDB[-id] = nil --include
		else
			self.itemDB[-id] = true --exclude
		end
	end
end
function Genie.CLASS.Family:GetAllExcludedItems()
	local excluded = {}
	for id in pairs(self.itemDB) do
		if type(id) == 'number' and id < 0 then
			local item = Genie.CLASS.Item:New(abs(id))
			if item then --safety first; should always be true
				table.insert(excluded, item)
			end
		end
	end
	return excluded
end


--[[ Refill
	todo:
		-make it work
		-include in the work-process
		-(maybe) include into move() or stack()
--]]
function Genie:DoRefillBank()
	if self.atBank then
		Genie:DoRefill('B')
	end
end
function Genie:DoRefillGuildBank()
	if self.atGuildBank then
		Genie:DoRefill('_G' .. GetCurrentGuildBankTab() .. 'T')
	end
end
function Genie:DoRefill(group)
	if group and Genie.Container[group] and group ~= 'S' then
		-- prevent refilling bags -> bags	   
		-- bags -> group
		local c = Genie.CLASS.Container:New(group)
			c:Fill()
			Genie:Refill(c, 'S')
		-- group -> bags
		c = Genie.CLASS.Container:New('S')			
			c:Fill()
			Genie:Refill(c, group)		
	end
end

function Genie:Refill(container, refillFrom)
	if not container then return end
	
	local group = container.Group
	local fam, t, pool
	if next(db.customFamilies) then
		for name, f in pairs(db.customFamilies) do
			if f.refill and f.refill[group] then
				fam = Genie.CLASS.Family:New(name)
				local min, max

				--Genie:PrintToChat(5, nil, 'DO_refill', group)
				--Genie:PrintToChat(5, nil, 'FROM', refillFrom) 
				
					-- fill the pool
					pool = {}
					for i, item in pairs(fam:GetAllItems(refillFrom, true, true)) do
						if not item:GetIgnore() then
							if not pool[item:GetId()] then pool[item:GetId()] = {} end
							table.insert(pool[item:GetId()], item)
						end
					end

					-- fill the target pool
					tPool = {}
					for i, item in pairs(fam:GetAllItems(group, true, true)) do
						if pool[item:GetId()] then
							--only list items we can transfer
							if not tPool[item:GetId()] then tPool[item:GetId()] = {} end
							table.insert(tPool[item:GetId()], item)
						end
					end
					
					-- let the "children" jump from on pool to the other

					local max, min = fam:GetRefill(container.Group)
					if max and max ~= 0 then
					for id in pairs(pool) do
						if Genie:StackCore(pool[id], tPool[id], pool[id][1].StackCount, container, max, min) then
							--stop once the container is full
							return
						end
					end
				end
			end
		end
	end
end


function Genie:StackCore(pool1, pool2, size, container, max, min)
	if #pool1 > 0 then
		local count = 0
		local itemP1
		if not pool2 then pool2 = {} end
		local containerFull = false
	if not pool1 or not size or not container or not max or not min then return true end
		-- create number of desired stacks
		while not containerFull and #pool1 > min and (#pool2 < max or max == -1) do
			pool1[1]:PickUp()
			containerFull = not container:PutIn(pool1[1])
			table.insert(pool2, pool1[1])
			table.remove(pool1, 1)
		end 
		-- try to make them all full
		for i, itemP1 in pairs(pool1) do
			for _, itemP2 in Genie.UTILS.pairsByKeys(pool2) do
				if itemP2.Count < size then
						--stock up
						local needed = size - itemP2.Count
						itemP1:PickUp(needed) --picks up as much as possible
						itemP2:PickUp() --puts it where it should end
						itemP2:SetCount(itemP1.Count+itemP2.Count)
				end
			end
		end
	end
end


function Genie.CLASS.Item:PickUp(count)
	--does not work with guildbank
	--expand, or make this a wrapper
	if not Genie.FLAG_IC then
		local parent = Genie.UTILS.GroupGetParent(self.Container)
		if not Genie.Container[parent].guild then
			if count and self.Count > count then
				SplitContainerItem(self.Bag, self.Slot, count)
			else
				--Genie:PrintToChat(5, nil, 'PickUp',self.Bag, self.Slot)
				PickupContainerItem(self.Bag, self.Slot)
			end
		else
			if count and self.Count > count then
				SplitGuildBankItem(self.Bag, self.Slot, count)
			else
				--Genie:PrintToChat(5, nil, 'PickUp',self.Bag, self.Slot)
				PickupGuildBankItem(self.Bag, self.Slot)
			end
		end
		return true
	elseif CursorHasItem()then
		ClearCursor()
	end
	return false
end
function Genie.CLASS.Item:GetQuality()
	return self.Rarity or 0
end
function Genie.CLASS.Container:PutIn(item)
	for i, bag in pairs(self:GetSuitableBags(item)) do   
		if self.bags[bag]:Add(item) then 
			item:PickUp()
			return true
		end
	end
	--the container is full
	ClearCursor()
	return false
end

function Genie.CLASS.Family:GetRefill(group)
	if self.itemDB.refill then
		if not self.itemDB.refill[group] then
			--try to find the parent group
			local group = Genie.UTILS.GroupGetParent(group)
		end
		if self.itemDB.refill[group] then
			local max, min = string.match(self.itemDB.refill[group], '(.*):(.*)')
			max = tonumber(max); min = tonumber(min)
			if Genie.Container[group].guild then
				local _, _, _, _, perDay, remainingDay = GetGuildBankTabInfo(GetCurrentGuildBankTab())
				if perDay > 0 and perDay < max then
					self:SetRefill(group, perDay .. ':' .. min)
				end
				if remainingDay < max then
					max = remainingDay
				end
			end
			return max or 0, min or 0 -- 0:0 disables the group; default setting
		end
	end
end
function Genie.CLASS.Family:SetRefill(group, setting)
	if string.match(setting, '%-?%d+:?') then
		if not self.itemDB.refill then self.itemDB.refill = {} end
		self.itemDB.refill[group] = setting
	end
end
function Genie:FamilyRefill(info, value)
	local params = Genie.UTILS.FamilyInput(value)
	local gC = Genie.Container
	if #params == 3 and Genie.CLASS.Family.NewEx(params[1]) and gC[params[2]] then
		local f = Genie.CLASS.Family:New(params[1])
		f:SetRefill(params[2], params[3])
	end
end


--[[////////////////////////////////////////////////////////////////
	finalized
--]]

function Genie.UTILS.DecodePos(position)
  if position then
	local s, c, b = string.match(position, '^(%d+)(_%w*[a-zA-Z]+)(-?%d+)$')
	return tonumber(s), c, tonumber(b)
  end
end

function Genie.UTILS.EncodePos(slot, group, bagslot)
  return table.concat({slot, group, bagslot}, '')
end

function Genie:CheckOutOfSync()
	local checkWith
	  for pos, item in pairs(self.syncList) do
		checkWith = getItem(Genie.UTILS.DecodePos(pos))
		if checkWith and item ~= checkWith then
			Genie:PrintToChat(5, nil, gsub(checkWith, "\124", "\124\124"), 'should be', gsub(tostring(item), "\124", "\124\124"))
			WAIT = 0
			--wait for the next update
			return
		end
		self.syncList[pos] = nil
	  end
	--all items are synced again
	Genie.FLAG_OOS = false
end

function Genie:AbortLift()
	  self:PrintToChat(1, nil, L["Master i apologize, there where some errors. I had to stop"])
	  self:SilentHalt()
end

function Genie:DoLift(from, to, from_amount)
  --wait until synced again
  if self.syncList[from] or self.syncList[to] then
	self:CheckOutOfSync()
	return false
  end

  local from_S, from_G, from_B = Genie.UTILS.DecodePos(from)
  local to_S, to_G, to_B = Genie.UTILS.DecodePos(to)

  -- see if slots are blocked
  local _, _, locked1 = getInfo(from_S, from_G, from_B)
  local _, _, locked2 = getInfo(to_S, to_G, to_B)
  local i1, i2 = getItem(from_S, from_G, from_B), getItem(to_S, to_G, to_B)

  if locked1 or locked2 then
	return false
  end

  ClearCursor()
  if i1 then pickUp(from_S, from_G, from_B, from_amount) 
  else return false
  end
  if 'item' == GetCursorInfo() then
	self.syncList[to] = i1
	self.syncList[from] = i2

	pickUp(to_S, to_G, to_B)
	Genie.FLAG_OOS = true
  elseif GetCursorInfo() then
	  --something has gone wrong
	Genie:PrintToChat(5, nil, 'ABORT_WRONG_PICKUP', from, to, from_amount, GetCursorInfo())
	self:AbortLift()
  --[[
  elseif i2 and not i1 then
	Genie:PrintToChat(5, nil, 'RETRY_PICKUP_SWAP_DIRECTION', i2, i1)
	return self:DoLift(to, from)
	--]]
  end
  
  return true
end

function Genie.CLASS.Item:GetPosition()
  return self.Position or Genie.UTILS.EncodePos(self.Slot, self.Container, self.Bag)
end


function Genie:Develop(info, input)
	--[===[@alpha@
	--do new stuff
	self:PrintToChat(5, nil, "Genie:Develop #################")

	local i1 = Genie.CLASS.Bag:New('T1')
	for k,v in pairs(i1) do
		self:PrintToChat(5, nil, k, v)
	end

	for k,v in pairs(i1:GetFamilies()) do
		self:PrintToChat(5, nil, k, v)
	end
	
	self:PrintToChat(5, nil, "Genie:Develop #END#############")
	--@end-alpha@]===]

end

--[[	CLASS DEFINITIONS	////////////////////////////////////////////////////////////////////////
		todo: decide > move to separate files
]]--
--[[  Bag  ////////////////////////////////////////////////////////////////////////////]]
function Genie.CLASS.Bag:New(bagID, group)
	local self = setmetatable({}, { __index = Genie.CLASS.Bag, __tostring = Genie.CLASS.Bag.ToString })
		self.bagSlot, self.Group = Genie.UTILS.convertToWowBagID(bagID)
		if self.bagSlot and self.Group then
			self.BagID = bagID
		else
			self.bagSlot = bagID
			self.Group = group
			self.BagID = Genie.UTILS.convertToGenieBagID(self.bagSlot, self.Group)
		end
		self.size = 0
		if self.bagSlot then
			self.size = GetContainerNumSlots(self.bagSlot) -- size
		end
		
		if self.size == 0 then return end
		-- handle special cases : bank and keyring
		self.name = self:GetName()
		self.items = {} --initialize self.items
		self.Overwrite = false -- enable: write once
		self.FreeSlots = self.size
		self.MinimumGap = 0.05
		self:SetFamily()
		self:SetFamilies()
	return self
end
function Genie.CLASS.Bag:ToString()
	local it = ''
	local f = ''
	for i, item in Genie.UTILS.pairsByKeys(self.items) do it = it .. ', ' .. i ..':'.. item:ToString() end
	return self.name .. it or ''
end
function Genie.CLASS.Bag:SetFamily()
	if self.bagSlot == KEYRING_CONTAINER then
		self.family = 256
	elseif self.bagSlot == BANK_CONTAINER or self.bagSlot == 0 then
		self.family = 0
	else
		self.family = GetItemFamily(self.name)
	end
end

function Genie.CLASS.Bag:GetId()
	return self.BagID
end
function Genie.CLASS.Bag:SetFamilies(families)
	if families ~= nil and type(families) == "table" then
		self.Families = families
		return true
	end
	--reset the current setting
	self.Families = {}
	if self:GetFamily() and self:GetFamily() > 0 then
		--iterate through all default itemfamilies
		for _, family in pairs(Genie.CONSTANT.FAMILY) do
			if bit.band(self:GetFamily(), family) > 0 then
				self.Families[family] = true
			end
		end
	end
	return true
end
function Genie.CLASS.Bag:GetFamilies()
	return self.Families
end
function Genie.CLASS.Bag:GetFamily()
	return self.family
end

function Genie.CLASS.Bag:GetGroup()
	return self.Group
end
function Genie.CLASS.Bag:GetName()
	--todo: splitup
	if self.name ~= nil then return self.name
	else
		if self.bagSlot == KEYRING_CONTAINER then self.name = L['Keyring']
			elseif self.bagSlot == BANK_CONTAINER then self.name = L['Bank']
			else self.name = GetBagName(self.bagSlot) or L['Unknown']
		end
		return self.name
	end
end
function Genie.CLASS.Bag:Fill(items, preserve)
	self.items = {}
	if items ~= nil and #items <= self.size then
		for _, item in Genie.UTILS.pairsByKeys(items) do
			self:Add(item, preserve)
		end
		return true
	elseif self:GetSize() > 0 then
		for position=1, self:GetSize() do
			local itemLink = GetContainerItemLink(self.bagSlot, position)
			--slot not empty and not ignored
			if itemLink ~= nil then
				local count = select(2, GetContainerItemInfo(self.bagSlot, position))
				self:Add(Genie.CLASS.Item:New(itemLink, count, self.bagSlot, position), true)
			end
		end
		return true
	end
	return false
end
function Genie.CLASS.Bag:GetSize()
	local parent = Genie.UTILS.GroupGetParent(self.Group)
	if parent == 'B' then
		if not Genie.atBank then return 0 end
	elseif parent == 'G' then
		if not Genie.atGuildBank then return 0 end
	end
	--[[
		the real size of the keybag can't be determined through wow-api functions,
		because the api function always has a return value of 32 (//3.1.0)
	--]]
	return self.size
end
function Genie.CLASS.Bag:GetItems()
	return self.items
end
function Genie.CLASS.Bag:GetItem(slot)
	return self.items[slot]
end
function Genie.CLASS.Bag:Add(item, preserve, finalize)
	if item ~= nil and item:IsPlacableInto(self) then
	item:SetContainer(self.Group)
		if  preserve == true then
			--if self:GetOverwrite() or self.items[item.Slot] == nil then
			if self:GetOverwrite() or self.items[item:GetT(1)] == nil then
				if self.items[item.Slot] == nil then
					self.FreeSlots = self.FreeSlots -1
				end
				if finalize == true then
		  --TODO: Replace with SetP(position)
		  item:SetPosition(self.bagSlot, item:GetT(1))

		end
				self.items[item:GetT(1)] = item
				return true
			end
			return false
		elseif self.FreeSlots > 0 then
			--item:SetPosition(self.bagSlot, #self.items)
			--changed with 4.1; todo: watch for sideeffects
			item:SetPosition(self.bagSlot, #self.items +1)
		table.insert(self.items, item)
		self.FreeSlots = self.FreeSlots -1
			return {true, item}
		end
	end
	return false
end
function Genie.CLASS.Bag:Del(item)
	if item ~= nil and item:GetT(3) == self.bagSlot then
		--table.remove(self.items, item.Slot)
		self.items[item:GetT(1)] = nil
		self.FreeSlots = self.FreeSlots+1

		return true
	end
	return false
end
function Genie.CLASS.Bag:SetOverwrite(over)
	self.Overwrite = over
end
function Genie.CLASS.Bag:GetOverwrite()
	return self.Overwrite
end
function Genie.CLASS.Bag:PickupItem(slot)
	if not Genie.FLAG_IC then
		PickupContainerItem(self.bagSlot, slot)
	elseif CursorHasItem()then
		ClearCursor()
	end
end
function Genie.CLASS.Bag:GetContainerItemInfo(slot)
	return GetContainerItemInfo(self.bagSlot, slot)
end
function Genie.CLASS.Bag:IsPlacableInto(item)
	return item:IsPlacableInto(self.family)
end
function Genie.CLASS.Bag:HasSpace(preserve, item)
	if preserve == true then
		if self.items[item.Slot] == nil or self.Overwrite == true then return true end
	else
		if self.FreeSlots > 0 then return true end
	end
	return false
end
function Genie.CLASS.Bag:GetNextFreeSlot(currentSlot)
	if self.FreeSlots > 0 then
		local i
		if Genie.db.profile.mode['reverseslot'] == true then
			if currentSlot == nil then i = self:GetSize() else i = currentSlot-1 end
				while self.items[i] ~= nil do
					i = i-1
				end
		else
			if currentSlot == nil then i = 1 else i = currentSlot+1 end
				while self.items[i] ~= nil do
					i = i+1
				end
		end

		if i > 0 and i <= self:GetSize() then
			return i
		end
	end
	return 0
end
function Genie.CLASS.Bag:GetLastItem()
	return self.items[#self.items]
end
function Genie.CLASS.Bag:GetFreeSlots()
	local free = {}
	if self.FreeSlots > 0 then
		for i=1, self.size, 1 do
			if self.items[i] == nil then
				table.insert(free, i)
			end
		end
	end
	return free
end
function Genie.CLASS.Bag:GetFilledSlots()
	local filled = {}
	for i, item in pairs(self.items) do
		table.insert(filled, item.Slot)
	end
	return filled
end

--[[  GuildBag  ///////////////////////////////////////////////////////////////////////]]
function Genie.CLASS.GuildBag:New(bagSlot, group)
	local self = setmetatable({}, { __index = Genie.CLASS.GuildBag, __tostring = Genie.CLASS.GuildBag.ToString })
	if Genie.atGuildBank == false then return nil end
 	self.bagSlot = bagSlot --tab
	self.Group = group
	self.size = MAX_GUILDBANK_SLOTS_PER_TAB -- fixed size
	self.name = GetGuildBankTabInfo(self.bagSlot)
	self.family = 0
	self.items = {}
	self.FreeSlots = self.size
	self.MinimumGap = 0.8
	return self
end
function Genie.CLASS.GuildBag:ToString()
	local it = ' items: '
	for i, item in Genie.UTILS.pairsByKeys(self.items) do it = it .. ', ' .. i ..':'.. item:ToString() end
	return self.name ..'('.. self.family ..')'.. it or ''
end
function Genie.CLASS.GuildBag:Fill(items, preserve)
	self.items = {}
	if items ~= nil and #items <= self.size then
		for _, item in Genie.UTILS.pairsByKeys(items) do
			self:Add(item, preserve)
		end
		return true
	elseif self:GetSize() > 0 then
		for position=1, self:GetSize() do
			local itemLink = GetGuildBankItemLink(self.bagSlot, self:TranslatePosition(position))
			--slot not empty and not ignored
			if itemLink ~= nil then
				local count = select(2, GetGuildBankItemInfo(self.bagSlot, self:TranslatePosition(position)))
				self:Add(Genie.CLASS.Item:New(itemLink, count, self.bagSlot, position), true)
			end
		end
		return true
	end
	return false
end
function Genie.CLASS.GuildBag:GetName()
	return self.name
end
function Genie.CLASS.GuildBag:PickupItem(slot, amount)
	if Genie.atGuildBank then
		local locked = select(3, self:GetContainerItemInfo(slot))
		if not locked then
			if amount == nil then
				PickupGuildBankItem(self.bagSlot, self:TranslatePosition(slot))
			else
				SplitGuildBankItem(self.bagSlot, self:TranslatePosition(slot), amount)
			end
		end
	end
end
function Genie.CLASS.GuildBag:GetContainerItemInfo(slot)
	return GetGuildBankItemInfo(self.bagSlot, self:TranslatePosition(slot))
end
function Genie.CLASS.GuildBag:IsPlacableInto(item)
	if item.Soulbound then return false end
	return item:IsPlacableInto(self.family)
end
function Genie.CLASS.GuildBag:TranslatePosition(pos)
	local function calcLeftToRight(pos)
		local totalRows = NUM_GUILDBANK_COLUMNS
		local totalCols = NUM_SLOTS_PER_GUILDBANK_GROUP

		local row = (math.floor((pos-1)/totalCols)+1)
		local col = pos % totalCols
		if col == 0 then col = totalCols end

		return (col-1)*totalRows+row
	end

	if not Genie.UTILS.GetGuildBankOption('gbh', self.bagSlot) then return pos 
		else return calcLeftToRight(pos)
	end
	
end

--[[  CONTAINER  ///////////////////////////////////////////////////////////////////////]]
function Genie.CLASS.Container:New(name) --name === group
	local self = setmetatable({}, { __index = self, __tostring = self.ToString })  
		if Genie.Container[name] and Genie.Container[name].NAME then
			self.name = Genie.Container[name].NAME
			self.Group = name
		else
			error('NO_NAME_GIVEN:' .. name)
			return
		end
		self.bags = {}
		self.size = 0
		self.familyToBag = {}
		self.SwapList = {}
		self.SwapGrid = {}
		self.MinimumGap = 0.5
	return self
end

function Genie.CLASS.Container:NewBag(bagID, deprecated)
	if deprecated then
		Genie:PrintToChat(5, nil, 'use bagID instead')
		return
	end
	local slot, group = Genie.UTILS.convertToWowBagID(bagID) --todo: try to move out of this function
	local gC, parent = Genie.Container, Genie.UTILS.GroupGetParent(group)
	if gC[group] then
		if gC[group].guild or (gC[parent] and gC[parent].guild) then
			return Genie.CLASS.GuildBag:New(slot, group) 
		end
		return Genie.CLASS.Bag:New(slot, group)
	end
end

function Genie.CLASS.Container:ToString()
	return self.name
end
function Genie.CLASS.Container:Add(bag)
	if bag ~= nil then
		-- add the bag
		local nr = #self.bags+1
		self.bags[nr] = bag
		-- update containersize
		self.size = self.size + bag:GetSize()
		-- update list of bagfamilies
		if self.familyToBag[bag:GetFamily()] == nil then self.familyToBag[bag:GetFamily()] = {} end
		table.insert(self.familyToBag[bag:GetFamily()], #self.bags)
		--[[
		for family in pairs(bag:GetFamilies()) do
			if self.familyToBag[family] == nil then self.familyToBag[family] = {} end
			table.insert(self.familyToBag[family], #self.bags)
		end
		--]]
	end
	return false
end
function Genie.CLASS.Container:Del(bag)
	local removeIndex = 0
	for i, containerBag in pairs(self.bags) do
		if containerBag == bag then
			removeIndex = i
			break
		end
	end
	if removeIndex > 0 then
		self.size = self.size - self.bags[removeIndex]:GetSize()
		self.bags[removeIndex] = nil
		return true
	else
		return false
	end
end


function Genie.CLASS.Container:Fill()
	self:FillWith(self.Group)
end

function Genie.CLASS.Container:FillWith(container)
	local gC = Genie.Container 
	if gC[container] then	 
		for nr, bagID in Genie.UTILS.pairsByKeys(Genie.UTILS.GroupGetBags(container)) do
			bag = self:NewBag(bagID)
			if bag then
				bag:Fill()
				self:Add(bag)
			end 
		end
	end
end
function Genie.CLASS.Container:DisplayBags()
	local txt = L['Current contents of X']:gsub('X', self.name)
	Genie:PrintToChat(1, nil, txt)
	for i, bag in Genie.UTILS.pairsByKeys(self.bags) do
		Genie:PrintToChat(1, nil, i..' >> '.. bag:ToString())
	end
end
function Genie.CLASS.Container:GetSize(baggroup)
	local size = 0
	if baggroup ~= nil then
		-- get the size of a specific baggroup
		for i, bag in pairs(baggroup) do
			size = size + self.bags[bag]:GetSize()
		end
	else
		--get the size of the whole container
		for i, bag in pairs(self.bags) do
			size = size + bag:GetSize()
		end
	end
	return size
end
function Genie.CLASS.Container:GetItems(baggroup)
	local selectedBags = {}
	if baggroup ~= nil then
		for i, bag in pairs(baggroup) do
			selectedBags[i] = self.bags[bag]
		end
	else
		selectedBags = self.bags
	end

	local items = {}; local index = 1
	for _, bag in Genie.UTILS.pairsByKeys(selectedBags, Genie.db.profile.mode['reversebags']) do
		for _, item in Genie.UTILS.pairsByKeys(bag:GetItems(), Genie.db.profile.mode['reverseslots']) do
			table.insert(items, index, item)
			index = index +1
		end
	end

	return items
end
function Genie.CLASS.Container:ConPos2BagPos(position)
	local currentBag = next(self.bags)
	while self.bags[currentBag] ~= nil and position > self.bags[currentBag]:GetSize() do
		position = position - self.bags[currentBag]:GetSize()
		currentBag = next(self.bags)
	end
	return currentBag, position
end
function Genie.CLASS.Container:GetItem(position, slot)
	local item
	if position == nil or position > self:GetSize() then return nil end
	if slot == nil then
		--in this case bagslot equals the slotnumber of the entire container
		position, slot = self:ConPos2BagPos(position)
		return self.bags[position]:GetItem(slot)
	end
	return self:GetBag(position):GetItem(slot)
end
function Genie.CLASS.Container:GetBag(bagslot, group)
	local foundBag
	for i, bag in pairs(self.bags) do
		if bag.bagSlot == bagslot and bag.Group == group then
	--Genie:PrintToChat(5, nil, bag.bagSlot, bag.Group, 'GetBag', bagslot, group)
			foundBag = bag
			break
		end
	end
	return foundBag
end
function Genie.CLASS.Container:PickupItem(bag, slot)
--[[
	if CursorHasItem() then
		-- Putdown
		-- do some fancy stuff here
		return self:GetBag(item.Bag):PickupItem(item)
	else
		return self:GetBag(item.Bag):PickupItem(item)
	end
--]]
	return self:GetBag(bag):PickupItem(slot)
end
function Genie.CLASS.Container:GetContainerItemInfo(item)
	if item ~= nil then
		return self:GetBag(item.Bag):GetContainerItemInfo(item.Slot)
	end
end
function Genie.CLASS.Container:Swap(item1, item2, checkPosition, finalize)
	local function AddToSwapList(item1, item2, finalize)

		-- prepare items for virtual swap
		local target = item1:GetT()
			item1:SetT(item2:GetT())
			item2:SetT(target)
	-- add the change to the swaplist
	if finalize then

		if item1.Count > 0 then
			local newBag = self:GetBag(item1:GetT(3), item1:GetT(2))
			newBag:SetOverwrite(true)
			newBag:Add(item1, true, finalize)
			newBag:SetOverwrite(false)
		elseif self:GetBag(item1:GetT(3), item1:GetT(2)) then
			self:GetBag(item1:GetT(3), item1:GetT(2)):Del(item1)
	--[===[@alpha@
	elseif not self:GetBag(item1:GetT(3), item1:GetT(2)) then
	  Genie:PrintToChat(5, nil, item1:GetT(), 'Container:GetBag', item1:GetT(3), item1:GetT(2))
	--@end-alpha@]===]

		end
		if item2.Count > 0 then
			local newBag = self:GetBag(item2:GetT(3), item2:GetT(2))
			newBag:SetOverwrite(true)
			newBag:Add(item2, true, finalize)
			newBag:SetOverwrite(false)
		elseif self:GetBag(item2:GetT(3), item2:GetT(2)) then
			self:GetBag(item2:GetT(3), item2:GetT(2)):Del(item2)
	--[===[@alpha@
	elseif not self:GetBag(item2:GetT(3), item2:GetT(2)) then
	  Genie:PrintToChat(5, nil, item2:GetT(), 'Container:GetBag', item2:GetT(3), item2:GetT(2))
	--@end-alpha@]===]
		end
--]]
		
	  table.insert(self.SwapList, string.format('%s>%s', item1:GetT(), item2:GetT()))
		end
	end

	if item1 and item2 then
		if item1 ~= item2 then
			AddToSwapList(item1, item2, finalize)
		elseif checkPosition == true and (item1.Bag ~= item2.Bag or item1.Slot ~= item2.Slot )then
			AddToSwapList(item1, item2, finalize)
		end
	end
end

function Genie.CLASS.Container:GetSuitableBags(item)
	local suitableBags = {}
	if item ~= nil and item:GetFamily() ~= nil then
		-- the item can be placed only into one type of bags
		-- and we have a such a (spacial) bag
		if self.familyToBag[item:GetFamily()] ~= nil then
			return self.familyToBag[item:GetFamily()]
		end
		-- maybe the item can be placed into more than one bag	   
		for family, enabled in Genie.UTILS.pairsByKeys(item:GetFamilies()) do
			if self.familyToBag[family] ~= nil then
				for i, bag in pairs(self.familyToBag[family]) do
					if self:GetSize({bag}) > 0 then
						table.insert(suitableBags, bag)
					end
				end
			end
		end
	end
	return suitableBags
end

--[[  ITEM  ////////////////////////////////////////////////////////////////////////////]]
function Genie.CLASS.Item:Create(slot, bagID, container)
	--Genie:PrintToChat(5, nil, 'Item:Create', slot, bagID, container)
	if slot then
		local container, link, count, bag = container
		if bagID then bag, container = Genie.UTILS.convertToWowBagID(bagID) end
		--Genie:PrintToChat(5, nil, 'slot, bagID, container', slot, bagID, container)
		if Genie.Container._C.GROUP[container] then
			link = GetContainerItemLink(bag, slot)
			count = select(2, GetContainerItemInfo(bag, slot))
		elseif Genie.Container._G.GROUP[container] then
			link = GetGuildBankItemLink(bag, slot)
			count = select(2, GetGuildBankItemInfo(bag, slot))
		elseif container == '_B' then
			link = GetInventoryItemLink("player", BankButtonIDToInvSlotID(slot))
			count = GetInventoryItemCount("player", BankButtonIDToInvSlotID(slot))		   
		elseif container == '_K' then
			link = GetInventoryItemLink("player", KeyRingButtonIDToInvSlotID(slot))
			count = GetInventoryItemCount("player", KeyRingButtonIDToInvSlotID(slot))		   
		else
			link = GetInventoryItemLink("player", slot)
			count = GetInventoryItemCount("player", slot)
		end
		return self:New(link, count, bag, slot, container)
	end
end
function Genie.CLASS.Item:New(item, count, bag, slot, container)
	if not item then return end
	local self = setmetatable({},
		{	__index = self,
			__tostring = self.ToString,
			__eq = self.Eq,
			__lt = self.Lt,
			__le = self.Le
		})
		self.TStID = 'AIC0000'
		self.Family = 0
		self.SortString = ''
		self.Ignore = false
		self.Count = 0
		self.SkillLvl = 0		
		self.Name, self.Link, self.Rarity, self.iLvl, self.MinLevel,
		self.Type, self.SubType, self.StackCount, self.EquipLoc, self.Texture, self.Price = GetItemInfo(item)

		self:SetCount(count)
		
		if self:SetPosition(bag, slot) and self.Bag then
			self:GetToolTipInfo()	
			local item, id, active = GetContainerItemQuestInfo(self.Bag, self.Slot)
			self:SetQuestItem(item or id or acitve)			
		end		
	   
		-- works even without a cache
		if type(item) == 'number' then
			if not self.Texture then self.Texture = GetItemIcon(item) end
			self.ItemID = item
		end
	   
		if self.Link then
			self.ItemID = tonumber(select(3, string.find(self.Link, "Hitem%:(.-)%:.+")))
			self:SetTStID() --todo: call self:SetFamilies within; has to be executed before self:SetFamilies()
			self.Family = GetItemFamily(self.Link)
			self:SetPrice(self.Price) --adjust the price as we always get that for a single item, not the whole stack
			self:SetFamilies() -- Item can be placed into those Families
			if container then
				self:SetContainer(container) -- self:SetIgnore() is automatically called when setting a new container
			else
	   			self:SetIgnore()
			end			
		
		
		self.UNIQUE = self.ItemID*10000+self.Count	
		
		self:GenerateSortString()			
	end
	
	
	return self
end

function Genie.CLASS.Item:SetQuestItem(isQuestItem)
	self.QuestItem = isQuestItem or false
end
function Genie.CLASS.Item:SetCount(count)
	local newCount = tonumber(count)
	if newCount and newCount >= 0 then
		self.Count = newCount
		return true
	end
	return false
end

function Genie.CLASS.Item:SetTradeSkill(skill)
	local skill = skill:gsub('%D', '')
	if skill then 
		self.SkillLvl = tonumber(skill)
	end
end
function Genie.CLASS.Item:SetPrice(priceSingleItem)
	if priceSingleItem then
		self.Price = priceSingleItem * self.Count
	else
		local price = select(11, GetItemInfo(self.Link))
		self.Price = tonumber(price) * self.Count
	end
end
function Genie.CLASS.Item:GetToolTipInfo()
	local tradeSkillTip = '%(%d+%)'

		self.Soulbound = false
		self.QuestItem = false
		self.Unique = false
		self.boe = false
		self.bop = false
		self.bou = false
		self.boa = false	
	
	GenieScanningTooltip:ClearLines()
	if self.Bag == BANK_CONTAINER then
		GenieScanningTooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(self.Slot, nil));
	elseif self.Bag == KEYRING_CONTAINER then
		GenieScanningTooltip:SetInventoryItem("player", KeyRingButtonIDToInvSlotID(self.Slot));
	else
		GenieScanningTooltip:SetBagItem(self.Bag, self.Slot)		
	end
	
	for i=1, math.max(0, GenieScanningTooltip:NumLines()) do -- scan every line
		local mytext = getglobal("GenieScanningTooltipTextLeft" .. i)
		if mytext and mytext:GetText() then
			local text = mytext:GetText()
			if text ~= nil then
				if string.find(text, tradeSkillTip) then self:SetTradeSkill(text) end
				if text == ITEM_UNIQUE then self.Unique = true end
				if text == ITEM_BIND_QUEST then self.QuestItem = true end
				if text == ITEM_SOULBOUND then	self.Soulbound = true
					-- those items will turn into soulbound ones
					elseif text == ITEM_BIND_ON_EQUIP then self.boe = true
					elseif text == ITEM_BIND_ON_PICKUP then self.bop = true
					elseif text == ITEM_BIND_ON_USE then self.bou = true
					-- accountbound items
					-- in order to distinguish them, boa remains set
					elseif text == ITEM_BIND_TO_ACCOUNT or text == ITEM_BIND_TO_BNETACCOUNT then 
						self.boa = true
					elseif text == ITEM_ACCOUNTBOUND or text == ITEM_BNETACCOUNTBOUND then
						self.boa = true
						self.Soulbound = true
				end
			end
		end
	end
end
function Genie.CLASS.Item:ToString()
	local _,_,_, hex = GetItemQualityColor(self.Rarity or 1) --get the right color or default to 1 (== white)
		if hex then
			if tonumber(hex, 16) then
				return '|c' .. hex .. self:GetName() .. '|r' .. ' ['.. self:GetId() ..']'			
			else	
				return hex .. self:GetName() .. '|r' .. ' ['.. self:GetId() ..']'
			end
		else
			 return self:GetName() .. '|r' .. ' ['.. self:GetId() ..']'
		end
end
function Genie.CLASS.Item:Eq(a)
	--todo: expand
	return self.SortString == a.SortString
end
function Genie.CLASS.Item:Lt(a)
	if Genie.db.profile.invert == true then
		return self.SortString > a.SortString
	else
		return self.SortString < a.SortString
	end
end
function Genie.CLASS.Item:Le(a)
	return self:Lt(a) or self:Eq(a)
end
function Genie.CLASS.Item:GenerateSortString()
  if Genie.SortStringCache[self.UNIQUE] then self.SortString = Genie.SortStringCache[self.UNIQUE] else
	local b
	local sortstring = ''
	local translateBool = {}
		translateBool[true] = '1'
		translateBool[false] = '0'
	for ranking, criteria in Genie.UTILS.pairsByKeys(Genie.db.profile.classranking) do
			repeat
				if criteria['enabled'] == false then
					break
				end
				if criteria['type'] == 'string' and self[criteria['criteria']] then
					local s = self[criteria['criteria']]
					if criteria['invert'] == true then
						local tmp = ''
						for _, word in ipairs({ strsplit(' ', s) }) do
							tmp = word .. ' ' .. tmp
						end
						s = tmp
					end
					sortstring = sortstring .. '<' ..Genie.UTILS.purgeText(s, true) .. '>'
					break
				end
				if criteria['type'] == 'number' then
					local defAdjust = 0
					local defMax = 1
					if criteria['max'] then
						while defMax < criteria['max'] do
							defMax = defMax * 10
							defAdjust = defAdjust +1
						end
						if criteria['max'] > Genie.CONSTANT.NUMBER_MAX then
							--catch the overflow
							criteria['max'] = Genie.CONSTANT.NUMBER_MAX
						end					
					else
						criteria['max'] = 9
					end
					local value = 0
					if self[criteria['criteria']] then
						value = gsub(self[criteria['criteria']], '[^0-9]', '')
						value = tonumber(value)
					end
					if criteria['invert'] == true then
						sortstring = sortstring .. string.format('%.' .. defAdjust ..'d', tostring(tonumber(criteria['max']) - value))
					else
						sortstring = sortstring .. string.format('%.'.. defAdjust ..'d', tostring(value))
					end
					break
				end
				if criteria['type'] == 'bool' then
					b = not self[criteria['criteria']]
					if criteria['invert'] == true then b = not b end
					sortstring = sortstring .. tostring(translateBool[b])
					break
				end
				
				if criteria['type'] == 'family' then
					if criteria['criteria'] == '<<set' then
						local f
					
						local index
						--return the number of the first equipmentset the item belongs to
						for familyName in Genie.UTILS.pairsByKeys(self.Families) do
							if type(familyName) == 'string' then
								f = Genie.CLASS.Family:New(familyName)
								if f and f:GetSet() then
									_, index = GetEquipmentSetInfoByName(f:GetSet())
									if index then break end
								end
							end
						end
						
						-- no index == not part of any set
						if not index then index = GetNumEquipmentSets() end
						if not criteria['invert'] then
							sortstring = sortstring .. string.format('%.'.. string.len(tostring(GetNumEquipmentSets())) ..'d', tostring(index))
						else
							sortstring = sortstring .. string.format('%.' .. string.len(tostring(GetNumEquipmentSets())) ..'d', tostring(GetNumEquipmentSets() - index ))
						end	
					else
				
				
					local family = Genie.CLASS.Family:New(criteria['name'])
					local b = true
					if family then
						b = family:Contains(self)
					end
					if criteria['name'] ~= criteria['criteria'] then b = not b end
					if criteria['invert'] == true then b = not b end
					sortstring = sortstring .. tostring(translateBool[b])
					
					end
					break
				end
				--/////////////////////////////////////////////////////////////////////////////////
				if criteria['type'] == 'combined' then
					local b = not Genie.UTILS.tobool(self:Search(criteria['criteria']))
					if criteria['invert'] == true then b = not b end
					sortstring = sortstring .. tostring(translateBool[b])
					break
				end
				--/////////////////////////////////////////////////////////////////////////////////]]
				break --just for safety, in case somethings wrong with the itemranking definition
			until true
		end
		Genie.SortStringCache[self.UNIQUE] = sortstring
		self.SortString = Genie.SortStringCache[self.UNIQUE]
	end
end
function Genie.CLASS.Item:GetFamily()
	return self.Family
end
function Genie.CLASS.Item:GetLink(item)
	return self.Link or ''
end
function Genie.CLASS.Item:GetId(item)
	if item then
		local id = select(3, string.find(tostring( select(2, GetItemInfo(item)) or ''), "Hitem%:(.-)%:.+"))
		if id then return tonumber(id) else return 0 end
	else
		return self.ItemID or 0
	end
end
function Genie.CLASS.Item:SetSortString(sortstring)
	if sortstring ~= nil then self.sortstring = sortstring end
end
function Genie.CLASS.Item:SetFamilies(families)
	if families ~= nil and type(families) == "table" then
		self.Families = families
		return true
	end
	--reset the current setting
	self.Families = {}
	--every item can be placed into a general purpose bag
	-- bags can only be placed into general puropse bags, regardless of their family
	self.Families[0] = true
	if self.EquipLoc ~= 'INVTYPE_BAG' and self.EquipLoc ~= 'INVTYPE_QUIVER' and self:GetFamily() > 0 then
		--iterate through all default itemfamilies
		for _, family in pairs(Genie.CONSTANT.FAMILY) do
			if bit.band(self:GetFamily(), family) == family then
				self.Families[family] = true
			end
		end
	end
	--iterate through all custom itemfamilies
	local customFamilies = Genie.CLASS.Family.GetAllContaining(self)
	Genie.UTILS.MergeTable(self.Families, customFamilies, 2)
	return true
end
function Genie.CLASS.Item:GetFamilies()
	return self.Families or {}
end
function Genie.CLASS.Item:IsPlacableInto(bag)
	return self:IsPartOfFamily(bag:GetFamily())
end
function Genie.CLASS.Item:IsPartOfFamily(name)
	if type(name) == "table" then
		--expected: table[family] == true
		local partOf = false
		for family, _ in pairs(name) do
			partOf = self.Families[family] or self:IsPartOfCustomFamily(family)
			if partOf == true then break end
		end
		return partOf
	elseif self.Families then
		return self.Families[name] or self:IsPartOfCustomFamily(name)
	else
		return self:IsPartOfCustomFamily(name)
	end
end
function Genie.CLASS.Item:IsPartOfCustomFamily(name)
	local customFamily = Genie.CLASS.Family:New(name)
	if customFamily then return customFamily:Contains(self) end
	return false
end
function Genie.CLASS.Item:SetPosition(bag, slot)
	if slot == nil then return false end
	self.Bag = bag
	self.Slot = slot
	--new
	self.Target = nil

	return true
end
function Genie.CLASS.Item:GetName()
	return self.Name or Genie.CONSTANT.EMPTY_STRING
end
function Genie.CLASS.Item:GetIgnore()
	return self.Ignore
end
function Genie.CLASS.Item:SetIgnore()
	self.Ignore = false
	for name in pairs(self:GetFamilies()) do
		local family = Genie.CLASS.Family:New(name)
		if family ~= nil and family:GetIgnore(self.Container) then
			self.Ignore = true
			break
		end
	end
end
function Genie.CLASS.Item:SetContainer(container)
	self.Container = container
	self:SetIgnore()
end
function Genie.CLASS.Item:SetT(pos, group, bag)
  if group then
	self.Target = Genie.UTILS.EncodePos(pos, group, bag)
  else
	self.Target = pos
  end
end
function Genie.CLASS.Item:GetT(part)
  if part then
	--a specific part was requested
	if self.Target then
		local parts = { Genie.UTILS.DecodePos(self.Target) }
		return (parts and parts[part]) or error('WRONG_PART_NUMBER', part)
	  elseif part == 1 then return self.Slot
	  elseif part == 2 then return self.Container
	  elseif part == 3 then return self.Bag
	end
  else
	return self.Target or Genie.UTILS.EncodePos(self.Slot, self.Container or 'NO_CONTAINER', self.Bag)
  end
end
function Genie.CLASS.Item:GetTStID()
	return self.TStID or ''
end
function Genie.CLASS.Item:SetTStID(id)
	if not id then
		self.TStID = Genie.UTILS.GetTStID(self.Type, self.SubType)
	else
		self.TStID = id
	end
end

function Genie.CLASS.Item:Search(find)
	-- always sync with Genie.CONSTANT.OP
	local handle = {}
		handle['string'] = function (value, invert, comp, op)
			if invert then
				local tmp = ''
				  	for _, word in ipairs({ strsplit(' ', value) }) do
				   		tmp = word .. ' ' .. tmp
				   	end
					value = tmp
			end
			value = Genie.UTILS.purgeText(value, false)
			comp = Genie.UTILS.purgeText(comp, false)
			--[[if not comp then
				return true
			else--]]if op == '==' and string.find(value, comp) then
				return true
			elseif op == '~=' and not string.find(value, '^'.. comp .. '$') then
				return true
			elseif op == '=' and string.find(value, '^'.. comp .. '$') then
				return true
			end	  
			return false			
		end
		handle['bool'] = function (value, invert, comp, op)
			local b = false
			comp = Genie.UTILS.tobool(comp)
			if op == '~=' then
				b = (value ~= comp)
			else
				b = (value == comp)
			end					
			if invert then b = not b end
			return b
		end
		handle['family'] = function (value, invert, comp, op)
			return false
		end
		handle['number'] = function (value, invert, comp, op)
			comp = Genie.UTILS.moneyStringToCopper(comp)
			if op == '>' then return (value > comp)
			elseif op == '>=' then return (value >= comp)
			elseif op == '<=' then return (value <= comp)
			elseif op == '<' then return (value < comp)			
			elseif op == '~=' then return (value ~= comp)					
			else return (value == comp) end
		end
		


	local function eval(compare)
		if compare == 'true' or compare == 'false' then
			--already evaluated
			return Genie.UTILS.tobool(compare)
		else
			--some work needs to be done
			--[[//////////////////////////////////////////////////////////////////////
				<negate><criteria>_<treatas>:<op><value>
				<negate> ... ~|''
				<criteria> ... Item.<attribute>
				<op> ... |>|>=|=|<=|<|==|~=
				<treatas> ... bool|number|string|?family
			--//////////////////////////////////////////////////////////////////////]]			
			local treatas, value, invert, comp, op = Genie.UTILS.GetSearchParams(compare)
			if self[value] ~= nil then
				return handle[treatas](self[value], invert, comp, op)
			else
				return false
			end
		end
	end

	local function split(find)
		local f = find:match('[^()]+')
		if f then
			if f:match('\124') then
				-- \124 == |
				local p = {strsplit('\124', f)}
				return eval(p[1]) or eval(p[2])
			elseif f:match('\038') then
				-- \038 == &		
				local p = {strsplit('\038', f)}
				return eval(p[1]) and eval(p[2])
			else
				return eval(f)
			end
		end
		return false --failsave
	end

	local pattern = '%([^()]+%)'
	local match = string.match(find, pattern)	
	while match do
		find = find:gsub(pattern, tostring(split(match)))
		match = string.match(find, pattern)	
	end
	find = tostring(split(find))
	return find
end


--[[  FAMILY  //////////////////////////////////////////////////////////////////////////]]
function Genie.CLASS.Family:New(name, criteria)
	-- creates a new family or loads the Family called 'name'
	local self = setmetatable({}, { __index = self, __tostring = self.ToString })
	if name == '' then return nil end --don't allow empty names
	if tostring(tonumber(name)) == tostring(name) then
		return nil
	end --don't allow numbers as name
	self.name = string.lower(name)
	self.TStID  = self:GetTStID()  
	if not self.NewEx(name) then
		-- that's a new family
		-- todo: don't change db.classranking directly, create/use genie-classranking-functions
		if not Genie.db.profile.customFamilies[self.name] then Genie.db.profile.customFamilies[self.name] = {} end
		if self.name ~= string.lower(L['Ignore']) then
			local rank = #Genie.db.profile.classranking+1
			Genie.db.profile.classranking[rank] = {}
			if criteria then
				Genie.db.profile.classranking[rank]["criteria"] = criteria
			else
				Genie.db.profile.classranking[rank]["criteria"] = self.name
			end
			Genie.db.profile.classranking[rank]["type"] = 'family'
			Genie.db.profile.classranking[rank]["name"] = self.name
			Genie.db.profile.classranking[rank]["enabled"] = false
			Genie.db.profile.classranking[rank].invert = true
		end
	end
	self.itemDB = Genie.db.profile.customFamilies[self.name] or {} 
	return self
end
function Genie.CLASS.Family:GetSet()
	return self.itemDB.set
end
function Genie.CLASS.Family:ToString()
	local items = ''
	if Genie.db.profile.customFamilies[self.name] ~= nil then
		for id, enabled in pairs(Genie.db.profile.customFamilies[self.name]) do items = items .. id .. ', ' end
		return self.name .. ' '.. L['contains'] ..' '.. items
	end
	return L['X is empty']:gsub('X', self.name)
end
function Genie.CLASS.Family:GetEnabled()
	--currently all families are enabled
	return true
	--return Genie.db.profile.customFamilies[self.name].enabled
end
function Genie.CLASS.Family:ShowAll()
	local count = 1
	local txt = L["Current content of X"]:gsub('X', L["Custom family"])
	Genie:PrintToChat(0, nil, txt)
		-- the default ignore-list always comes first
		local f = Genie.CLASS.Family:New(string.lower(L['Ignore']))
		if f:GetEnabled() then
			if f:GetIgnore() then
				Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name),  '('..string.lower(L['Ignore'])..')')
			else
				Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name))
			end
		else
			Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name),  '('..string.lower(L['Disabled'])..')')
		end

		for rank, values in Genie.UTILS.pairsByKeys(Genie.db.profile.classranking) do
			if values['type'] == "family" then
				count = count +1
				local f = Genie.CLASS.Family:New(values['name'])
					if f:GetEnabled() then
						if f:GetIgnore() then
							Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name),  '('..string.lower(L['Ignore'])..')')
						else
							Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name))
						end
					else
						Genie:PrintToChat(0, nil, string.format("%.3d", tostring(count)) .. '|cFFFFFF00', tostring(f.name),  '('..string.lower(L['Disabled'])..')')
					end
			end
		end
end
function Genie.CLASS.Family:HasSpecificIgnore()
	if Genie.db.profile.customFamilies[self.name].ignore then
		return next(Genie.db.profile.customFamilies[self.name].ignore)
	end
	return false
end

function Genie.CLASS.Family:GetIgnore(container)
	--globally ignored
	if self.name == string.lower(L.Ignore) then return true end
	--ignored by family
	local cf = Genie.db.profile.customFamilies	
	local gC = Genie.Container
	if cf[self.name].ignore then
		if not cf[self.name].ignore.enabled then
			if container then return cf[self.name].ignore[container] end
			return true
		else
			for rank, class in pairs(Genie.db.profile.classranking) do
				if class.name == self.name then
					if class.enabled then
						if container then return cf[self.name].ignore[container] end
						return true
					else
						return false
					end
				end
			end
		end
	end
	return false
end

function Genie.CLASS.Family:SetIgnore(container, bool)
	local gC = Genie.Container
	if container and gC[container] then
		if not self.itemDB.ignore then self.itemDB.ignore = {} end
		local thereIsSomething = next(self.itemDB.ignore)
		--ignore the container
		self.itemDB.ignore[container] = bool or nil
		--ignore all subcontainers
		if gC[container].GROUP then
			for _, sub in pairs(gC[container].GROUP) do
				self.itemDB.ignore[sub] = bool or nil
			end
		end
		if thereIsSomething and not next(self.itemDB.ignore) then
			--there was an entry, now there's none
			--delete the ignore list
			self.itemDB.ignore = nil
		end
	end
end

function Genie.CLASS.Family:GetName()
	return self.name
end
function Genie.CLASS.Family:ToggleProperty(property, enable)
	if property ~= nil and strlen(tostring(property)) > 0 then
		if enable ~= nil then
			Genie.db.profile.customFamilies[self.name][property] = enable
		else
			Genie.db.profile.customFamilies[self.name][property] = not Genie.db.profile.customFamilies[self.name][property]
		end
	end
end
function Genie.CLASS.Family:UpdateContent(item, append, silent)
	if type(item) == "table" and item:GetId() > 0 then
		if self.itemDB[item:GetId()] ~= nil then
			self.itemDB[item:GetId()] = nil
			if not silent and item:GetLink() then
				local txt = L['X removed from Y']:gsub('X', item:GetLink()):gsub('Y', '"'..self.name..'"')
				Genie:PrintToChat(2, nil, txt)
			end
		else
			if append then
				if strlen(item:GetName()) > 0 then
					Genie:PrintToChat(5, nil, 'UPDATE_CONTENT', item, item:GetId(), item:GetName())
					self.itemDB[item:GetId()] = item:GetName() .. ':' .. append
				end
			else
				self.itemDB[item:GetId()] = true
			end
			if not silent and strlen(item:GetLink()) > 0 then
				Genie:PrintToChat(5, nil, 'ADD', type(item), type(item:GetLink()), type(self.name))
			
				local txt = L['X added to Y']:gsub('X', item:GetLink()):gsub('Y', '"'..self.name..'"')
				Genie:PrintToChat(2, nil, txt)
			end
		end
		return true
	end
	return false
end
function Genie.CLASS.Family:Delete()
	--remove the class from the ranking
	for rank, values in pairs(Genie.db.profile.classranking) do
		if values['name'] == self.name and values['type'] == 'family' then
			table.remove( Genie.db.profile.classranking, rank)
			break
		end
	end
	--delete the class from the database
	Genie.db.profile.customFamilies[self.name] = nil
	self = nil
end
function Genie.CLASS.Family:Rename(newName)
	newName = Genie.UTILS.purgeText(newName)
	if strlen(newName) > 0 and not self.NewEx(newName) then	
	-- update the name in the classranking
	newName = string.lower(newName)
	local renamed = false
	if self.name == string.lower(L['Ignore']) then
		Genie.CLASS.Family:New(newName)
		renamed = true
	else
		for rank, values in pairs(Genie.db.profile.classranking) do
			if values['name'] == self.name and values['type'] == 'family' then
				if newName == string.lower(L['Ignore']) then
					Genie.db.profile.classranking[rank] = nil
				else
					if Genie.db.profile.classranking[rank]["criteria"] == Genie.db.profile.classranking[rank]["name"] then
						--this is a custom family
						Genie.db.profile.classranking[rank]["criteria"] = newName
						Genie.db.profile.classranking[rank]["name"] = newName
					else
						--this is a 'category' family
						Genie.db.profile.classranking[rank]["name"] = newName
					end
				end
				renamed = true
				break
			end
		end
	end
	-- update the database
	if renamed == true then
		Genie.db.profile.customFamilies[newName] = Genie.db.profile.customFamilies[self.name]
		Genie.db.profile.customFamilies[self.name] = nil
		return true
	end
	end
	return false
end
function Genie.CLASS.Family:PrettyPrint()
	--todo: REMOVE
	local txt = gsub(L['Current content of X'], 'X', self.name)
	Genie:PrintToChat(0, nil, txt)
	local entrys = 0
		for item in pairs(Genie.db.profile.customFamilies[self.name]) do
			current = Genie.CLASS.Item:New(item)
			if current ~= nil and current:GetName() ~= '' then
				entrys = entrys +1
				Genie:PrintToChat(0, nil, '|cFFFFFF00'..string.format("%.5d", tostring(current:GetId()))..'|r:', current:GetName())
			end
		end
	if self:GetIgnore() then
		Genie:PrintToChat(0, nil, L['All items are beeing ignored'])
	elseif self:HasSpecificIgnore() then
		local containerList = {}
		for name, v in pairs(Genie.CONSTANT) do
			--[[ todo: replace Genie.CONSTANT
					with the container array, once it's possible to define containers by the user
			--]]
			if type(v) == "table" and v.TYPE and Genie.db.profile.customFamilies[self.name].ignore[v.TYPE] then
				if L[name:lower():gsub("^%l", string.upper)] then
					containerList[#containerList+1] = L[name:lower():gsub("^%l", string.upper)]
				else
					containerList[#containerList+1] = tostring(v.TYPE)
				end
			end
		end
		Genie:PrintToChat(0, nil, L['All items are beeing ignored'], '[',table.concat(containerList,", "), ']')
		
		--[[
		for k in pairs(Genie.db.profile.customFamilies[self.name]) do
			containerList[#t+1] = str:lower():gsub("^%l", string.upper)
		end
		--]]
	end
	if entrys == 0 then
		local txt = L['X is empty']:gsub('X', L['Family'])
		Genie:PrintToChat(0, nil, txt)
	end
end
function Genie.CLASS.Family:Contains(item)
	if not item then return end
	if type(item) == 'table' then
		if self.itemDB[item:GetId()] then
			--does this item belong to a set
			local _, pos = strsplit(':', tostring(self.itemDB[item:GetId()]))
			Genie:PrintToChat(4, nil, self.name, 'CONTAINS:SET', self.Set)
			if pos and self:GetSet() and GetEquipmentSetLocations(self:GetSet()) then
				local player, bank, bags, slot, bag = EquipmentManager_UnpackLocation(GetEquipmentSetLocations(self:GetSet())[tonumber(pos)] or -1)
				if (player and bags) or (bank and bags) then
					return ((item.Bag == bag) and (item.Slot == slot))
				elseif (bank and not bags) then
					return ((item.Bag == BANK_CONTAINER) and (item.Slot == slot))
				end
			end
			-- this item was directly added to the family
			return true
		elseif not self.itemDB[-item:GetId()] then 
			return self:ContainsTStID(item:GetTStID())
		end
	elseif self.itemDB[item] then
		return true
	end
	return false
end

function Genie.CLASS.Family.NewEx(name)
	if type(name) ~= 'string' then error('WRONG_TYPE_CHECKED ' .. type(name)) return -1 end
	local lowerCase = string.lower(name)
	local exists, genre = false, 0-- genre == type
	-- the equipment class always exists
	if lowerCase == string.lower(L['Equipment sets']) then return true end
	-- look for equipment sets
	if GetEquipmentSetInfoByName(name) then
		genre = 1
	end
	-- search the classranking
	for rank, values in pairs(Genie.db.profile.classranking) do
		if values['type'] == 'family' then
			if (values.criteria == lowerCase or values.name == lowerCase) then
				exists = true
				break
			end
		end
	end
	return exists, genre
end
function Genie.CLASS.Family:SetEquipmentSet(itemTable)
	local toRemove = Genie.UTILS.CopyTable(Genie.db.profile.customFamilies[self.name])
	for inventorySlot, id in pairs(itemTable) do
		if type(id) == "number" then
			if Genie.db.profile.customFamilies[self.name][id] then
				--keep this item, update the position
				toRemove[id] = nil
				Genie.db.profile.customFamilies[self.name][id] = nil
				self:UpdateContent(Genie.CLASS.Item:New(id), inventorySlot, true)
			else
				--add this item
				self:UpdateContent(Genie.CLASS.Item:New(id), inventorySlot)
			end
		end
	end   
	--remove items
	for id in pairs(toRemove) do
		if type(id) == "number" then
		   self:UpdateContent(Genie.CLASS.Item:New(id))
		end
	end
end

function Genie.CLASS.Family.GetAllSets()
	local sets = {}
	for name, values in pairs(Genie.db.profile.customFamilies) do
		if values['set'] then
			sets[name] = table.getn(values) -1
		end
	end
	return sets
end
--- Searches through all families
--@param entry can be anything that has a GetId() function. 
--if entry isn't a table then it will try to create an item
--@return all families the entry is part of as table[family] = true
function Genie.CLASS.Family.GetAllContaining(entry)
	local entry = entry
	if not type(entry) == 'table' then
		entry = Genie.CLASS.Item:New(item)
	end
	if entry then
		local custom = {}
		--directly added
		if entry.GetId then
		for name, family in pairs(Genie.db.profile.customFamilies) do
			if family[entry:GetId()] then 
				custom[name] = true 
			end
		end
		end
		--search within 'aic-famlies'
		if entry.GetTStID and entry:GetTStID() then
		for _, class in pairs(Genie.db.profile.classranking) do
			if class.type == 'family' and string.match(entry:GetTStID(), class.criteria .. '.*') 
				and not (Genie.db.profile.customFamilies[class.name] and Genie.db.profile.customFamilies[class.name][-entry:GetId()])
			then
				custom[class.name] = true
			end
		end
		end
		return custom
	end
	return false
end
function Genie.CLASS.Family:GetAllItems(container, both, duplicates)
	local items, c = {}
	
	if not container then
		-- if we not have been given a container
		-- return all itemID's direcly added into the family
		for id in pairs(self.itemDB) do
			if type(id) == 'number' and id > 0 then
				local item = Genie.CLASS.Item:New(id)
				if item then --safety first; should always be true
					table.insert(items, item)
				end
			end
		end
	else 
		if type(container) == 'table' then
			c = Genie.UTILS.CopyTable(container)
		else
			c = Genie.CLASS.Container:New(container)
		end
		if c then 
			c:Fill()
			local inserted = {}
			-- else return all items from the container
			-- that where directly added
			-- with the possibiliy to return only unique ID's 
			for _, item in pairs(c:GetItems()) do
				if self.itemDB[item:GetId()] and (not inserted[item:GetId()] or duplicates) then
					inserted[item:GetId()] = true
					table.insert(items, item)
				end
			end
			--tstid	
			if (#items == 0 or both) then
				for index, item in pairs(c:GetItems()) do
					if self:ContainsTStID(item:GetTStID()) and not self.itemDB[-item:GetId()] 
					and (not inserted[item:GetId()] or duplicates) then
						table.insert(items, item)
					end
				end
			end	
		end
	end
	return items
end

function Genie.CLASS.Family:ContainsTStID(TStID)
	if self.TStID then
		return string.match(tostring(TStID), '^' .. self.TStID)
	end	
end
function Genie.CLASS.Family:GetTStID()
	if self.TStID then return self.TStID else
		for rank, values in pairs(Genie.db.profile.classranking) do
			if values['type'] == 'family' and values['name'] == self.name then
				return values.criteria
			end
		end
	end
end
