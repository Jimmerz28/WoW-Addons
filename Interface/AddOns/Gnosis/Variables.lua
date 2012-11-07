-- local functions
local GetSpellInfo = GetSpellInfo;
local string_format = string.format;

-- local variables
local _;

-- global Gnosis event tables
Gnosis.tCastbarEvents = {
	"UNIT_SPELLCAST_CHANNEL_START",
	"UNIT_SPELLCAST_CHANNEL_STOP",
	"UNIT_SPELLCAST_CHANNEL_UPDATE",
	"UNIT_SPELLCAST_START",
	"UNIT_SPELLCAST_STOP",
	"UNIT_SPELLCAST_DELAYED",
	"UNIT_SPELLCAST_INTERRUPTIBLE",
	"UNIT_SPELLCAST_NOT_INTERRUPTIBLE",
	"UNIT_SPELLCAST_INTERRUPTED",
	"UNIT_SPELLCAST_FAILED",
	"UNIT_SPELLCAST_FAILED_QUIET",
	"UNIT_SPELLCAST_SUCCEEDED"
};

Gnosis.tMiscEvents = {
	"PLAYER_REGEN_DISABLED",
	"PLAYER_REGEN_ENABLED",
	"COMBAT_LOG_EVENT_UNFILTERED",
	"UNIT_SPELLCAST_SENT",
	"PLAYER_ENTERING_WORLD",
	"PLAYER_FOCUS_CHANGED",
	"PLAYER_TARGET_CHANGED",
	"DISPLAY_SIZE_CHANGED",
	"PLAYER_TALENT_UPDATE",
};

Gnosis.tMirrorEvents = {
	"MIRROR_TIMER_START",
	"MIRROR_TIMER_STOP",
	"PLAYER_UNGHOST",
	"PLAYER_ALIVE",
};

Gnosis.tSwingEvents = {
	"PLAYER_ENTER_COMBAT",
	"PLAYER_LEAVE_COMBAT",
	"START_AUTOREPEAT_SPELL",
	"STOP_AUTOREPEAT_SPELL"
};

-- mirror bar icons for breath, fatigue and feign death
Gnosis.tMirrorIcons = {
	["BREATH"] = "Interface\\Icons\\Spell_Shadow_DemonBreath",
	["EXHAUSTION"] = "Interface\\Icons\\Ability_Suffocate",
	["FEIGNDEATH"] = "Interface\\Icons\\Ability_Rogue_FeignDeath",
};

Gnosis.tRuneName = {
	[1] = _G["COMBAT_TEXT_RUNE_BLOOD"],
	[2] = _G["COMBAT_TEXT_RUNE_UNHOLY"],
	[3] = _G["COMBAT_TEXT_RUNE_FROST"],
	[4] = _G["COMBAT_TEXT_RUNE_DEATH"],
};

Gnosis.tRuneTexture = {
	[1] = "Interface\\PlayerFrame\\Deathknight-Energize-Blood",
	[2] = "Interface\\PlayerFrame\\Deathknight-Energize-Unholy",
	[3] = "Interface\\PlayerFrame\\Deathknight-Energize-Frost",
	[4] = "Interface\\PlayerFrame\\Deathknight-Energize-White",
};

-- spell school colors
Gnosis.colSchools = {
	physical	= "1, 1, 1, 1",
	holy		= "1, 1, 0.627, 1",
	fire		= "1, 0.5, 0.5, 1",
	nature		= "0.5, 1, 0.5, 1",
	frost		= "0.5, 0.5, 1, 1",
	shadow		= "0.628, 0, 0.628, 1",
	arcane		= "1, 0.725, 1, 1",
	frostfire	= "0.824, 0.314, 0.471, 1",
};

-- class colors (http://www.wowwiki.com/Class_colors)
Gnosis.colClasses = {
	DEATHKNIGHT	= "0.77, 0.12, 0.23, 1.00",
	DRUID		= "1.00, 0.49, 0.04, 1.00",
	HUNTER		= "0.67, 0.83, 0.45, 1.00",
	MAGE		= "0.41, 0.80, 0.94, 1.00",
	PALADIN		= "0.96, 0.55, 0.73, 1.00",
	PRIEST		= "1.00, 1.00, 1.00, 1.00",
	ROGUE		= "1.00, 0.96, 0.41, 1.00",
	SHAMAN		= "0.00, 0.44, 0.87, 1.00",
	WARLOCK		= "0.58, 0.51, 0.79, 1.00",
	WARRIOR		= "0.78, 0.61, 0.43, 1.00",
};

function Gnosis:StartupVariables()
	local fCurTime = GetTime() * 1000;

	self.ver = 3.25;
	self.optver = 3.25;
	self.build = "v3.25";
	self.addonname = "Gnosis";
	local strVer = string_format("v%.2f", self.ver);
	if(self.build == strVer) then
		self.title = string_format("%s %s", self.addonname, strVer);
	else
		self.title = string_format("%s %s (%s)", self.addonname, strVer, self.build);
	end

	-- initial latency
	_, _, self.lag = GetNetStats();
	self.lastSpellSent = fCurTime;
	self.lastTimerScan = fCurTime;

	-- castbars
	self.castbars = {};		-- castbars
	self.activebars = {};	-- currently active bars (performance reasons)
	self.fadeoutbars = {};	-- bars to fade out
	self.unusedcastbars = {};	-- table to store deleted castbar frames
	self.cb_fl = {};		-- castbar fast lookup
	self.ti_fl = {};		-- timer fast lookup
	self.ti_icd = {};		-- inner cooldown scan table
	self.ti_icd_active = {};-- active inner cooldowns
	self.scan = {};			-- units to scan

	-- (LibSharedMedia)
	self.bartexnames = {};
	self.bartextures = {};
	self.fonts = {};
	self.fontnames = {};
	self.music = {};
	self.musicnames = {};

	-- events registered to blizzard castbar
	self.blizzcastbar = {};
	self.petcastbar = {};

	-- events registered to blizzard mirror castbar
	self.blizzmirrorcastbar = {};

	-- clip test
	self.curchannel = nil;	-- currently channeling spell
	self.nextchannel = nil;	--

	-- default variables
	self.tDefaults = {
		bAddonEn = true,
		bHideBlizz = false,
		bHideMirror = false,
		bHidePetVeh = false,
		bHideAddonMsgs = false,
		-- option settins
		bAutoCreateOptions = false,
		iTimerScanEvery = 200,

		-- castbar configs
		cbconf = {},
		nameNewBar = "",

		-- channeled spells
		channeledspells = {},

		-- combat text/clip
		ct = {
			bsound = true,
			bmusic = false,
			sound = "MONEYFRAMEOPEN",
			music = nil,
		},

		configs = {
			name = "",
			bsavecastbars = true,
			bsavespell = true,
			bsavedefaultopt = true,
			bsavectct = true,
		},

		-- clip test
		wfcl = 1000,	-- wait for combat log data (in ms), combat log timing tends to be bitchy (well, at least on Frostwolf)
		ctt = 300,		-- clip test time (in ms)

		-- timer scan
		tiscan = 200,	-- scan for spell/item cooldowns and auras every 200ms (default)
	};

	-- set default combat text addon, if multiple addons found than MSBT > Parrot > SCT
	self.tDefaults.ct.addon = (MikSBT and "MSBT" or (Parrot and "Parrot" or (SCT and "SCT" or "Blizz")));

	-- swing timer
	self.iSwing = 0;				-- 1 == melee (onehand), 2 == range
	self.bSwingBar = false;	-- combat log event unfiltered registered
	self.iExtraSwings = 0;
	self.bNextSwingNotExtra = false;
	_, self.class = UnitClass("player");
	self.bIsDruid = self.class == "DRUID";

	self.curincombattype = 3;		-- set as out of combat

	self.tCastbarDefaults = {
		-- castbar options v
		cboptver = self.optver,

		-- default unit
		unit = "player",
		bartype = "cb",

		-- bar geometry
		width = 250,
		height = 20,
		border = 1.0,
		bordericon = 1.0,
		scale = 1.0,
		scaleicon = 1.0,
		alpha = 1.0,
		fadeout = 0.3;
		latbarsize = 0.15;
		latbarfixed = 0.02;

		-- coordinates
		coord = {
			castname = { x = 2, y = 0 },
			casttime = { x = -2, y = 0 },
			casticon = { x = 0, y = 0 },
			latency = { x = -1, y = 1 },
			shadow = { x = 3, y = -3 },
		},

		-- alignments
		alignment = "NAMETIME",	-- new alignment options for name and time (v1.30)
		alignname = "LEFT",		--
		aligntime = "RIGHT", 	--
		alignlat = "ADAPT",		--

		-- spark modifiers
		fSparkHeightMulti = 1.0,
		fSparkWidthMulti = 1.0,

		-- default bar colors
		colBar = { 0.20, 0.30, 0.50, 0.70 },
		colBarNI = { 0.20, 0.30, 0.50, 0.70 },
		colBarBg = { 0.10, 0.10, 0.35, 0.40 },
		colLagBar  = { 0.35, 0.65, 0.90, 0.65 },
		colBorder = { 0.00, 0.00, 0.00, 0.75 },
		colBorderNI = { 1.00, 0.80, 0.00, 0.75 },
		colText = { 1.00, 1.00, 1.00, 1.00 },
		colTextTime = { 1.00, 1.00, 1.00, 1.00 },
		colTextLag = { 1.00, 0.00, 0.00, 1.00 },
		colInterrupted = { 0.85, 0.85, 0.65, 0.75 },
		colFailed = { 0.70, 0.30, 0.20, 0.75 },
		colSpark = { 1.00, 1.00, 1.00, 1.00 },
		colSuccess = { 0.35, 0.60, 0.15, 0.70 },
		colShadow = { 0.00, 0.00, 0.00, 0.70 },

		-- default statusbar texture
		bartexture = "Waterline",
		bordertexture = nil,

		-- bar settings
		anchor = nil,
		bEn = true,				-- enabled
		spec = 0,				-- talent spec (both)
		bShowWNC = false,		-- show when not casting
		bShowLat = true,		-- show latency box
		bShowCBS = true,		-- show castbar spark
		bShowTicks = true,		-- show channeled ticks
		bExtChannels = true,	-- extend channeled spells
		bUnlocked = true,		-- unlocked when first created
		bFillup = false,		-- fill bar up at end of cast
		bShowShield = true,		-- show shielded icon for non-intteruptible casts
		iconside = "LEFT",		-- where to draw icon
		fontoutline = "OUTLINE",-- font outline
		font = "",				-- no default font selection (v2.61)
		fontsize = 0,			-- automatic
		fontsize_timer = 0,		-- automatic
		fontsize_lat = 0,		-- automatic

		relationsel = 1,		-- show casts of friendly and/or enemy units
		incombatsel = 1,		-- show castbar in and out of combat (1==always)
		ingroupsel = 1,			-- show castbar while solo, in party or raid (1==always)
		bnwtypesel = 1,			-- neither black-/whitelist
		bnwlist = {},			-- empty list to begin with
		bnwlistnew = "",		-- new entry box
		bResizeLongName = true,	-- automatic resize of long spell names
		strata = "MEDIUM",		-- medium frame strata
		strNameFormat = "namecol<1,0,0>txm< (>misctxm<)>col<pre>txts< (>tscurtxts</>tstottxts<)>",	-- default castname string, rank text in red, tradeskill total cnt
		strTimeFormat = "col<1,0,0>p<2s>col<pre> r<1m> / t<2m>",	-- default casttime string
		bShowPlayerLatency = true,	-- do not show text latency information
		bShowAsMinutes = true,	-- show timer in minutes if longer than 60s
		bMergeTrade = true,		-- merge tradeskill information
		bIconUnlocked = false,	-- option to unlock icon (v1.31)
		strGap = 15,			-- minimum distance between name and time text

		rotateicon = 0,			-- rotate icon (degrees)
		orient = 1,				-- castbar orientation (horizontal, vertical)
		bInvDir = false,		-- invert bar direction
		bColSuc = false,		-- change castbar color when cast finished successfully
		bEnShadowOffset = false,-- enable changing of text shadow offset
		bEnShadowCol = false,	-- change text shadow color

		-- anchoring
		anchortype = 1,			-- no anchor
		anchorframe = "",		-- Anchor frame name
		anchorfrom = 5,			-- Gnosis bar anchor point
		anchorto = 5,			-- Anchor frame anchor point
		anchor_x = 0,			-- Offset x
		anchor_y = 0,			-- Offset y

		-- rotate text
		rotatectext = 0,		--
		rotatertext = 0,		--
		rotatelattext = 0,		--
	};

	self.strAutoShot, _, self.iconAutoShot = GetSpellInfo(75);
	self.strAutoAttack, _, self.iconAutoAttack = GetSpellInfo(6603);
	self.strShootWand, _, self.iconShootWand = GetSpellInfo(5019);

	self.toyIcon = "Interface\\Icons\\Inv_Misc_Toy_07";

	if(not GnosisConfigs) then
		GnosisConfigs = {};
	end
end

-- sound files
Gnosis.BlizzSounds = {
	["PVPENTERQUEUE"] = "PVPENTERQUEUE",
	["PVPTHROUGHQUEUE"] = "PVPTHROUGHQUEUE",
	["GAMEABILITYBUTTONMOUSEDOWN"] = "GAMEABILITYBUTTONMOUSEDOWN",
	["GAMESPELLBUTTONMOUSEDOWN"] = "GAMESPELLBUTTONMOUSEDOWN",
	["GAMETARGETFRIENDLYUNIT"] = "GAMETARGETFRIENDLYUNIT",
	["GAMETARGETHOSTILEUNIT"] = "GAMETARGETHOSTILEUNIT",
	["GAMETARGETNEUTRALUNIT"] = "GAMETARGETNEUTRALUNIT",
	["ACTIONBARBUTTONDOWN"] = "ACTIONBARBUTTONDOWN",
	["MINIMAPZOOMOUT"] = "MINIMAPZOOMOUT",
	["MINIMAPZOOMIN"] = "MINIMAPZOOMIN",
	["MINIMAPOPEN"] = "MINIMAPOPEN",
	["BAGMENUBUTTONPRESS"] = "BAGMENUBUTTONPRESS",
	["ITEMWEAPONSOUND"] = "ITEMWEAPONSOUND",
	["ITEMARMORSOUND"] = "ITEMARMORSOUND",
	["ITEMGENERICSOUND"] = "ITEMGENERICSOUND",
	["LEVELUPSOUND"] = "LEVELUPSOUND",
	["GLUECREATECHARACTERBUTTON"] = "GLUECREATECHARACTERBUTTON",
	["GLUEENTERWORLDBUTTON"] = "GLUEENTERWORLDBUTTON",
	["SPELLBOOKOPEN"] = "SPELLBOOKOPEN",
	["SPELLBOOKCLOSE"] = "SPELLBOOKCLOSE",
	["SPELLBOOKCHANGEPAGE"] = "SPELLBOOKCHANGEPAGE",
	["PAPERDOLLOPEN"] = "PAPERDOLLOPEN",
	["PAPERDOLLCLOSE"] = "PAPERDOLLCLOSE",
	["QUESTADDED"] = "QUESTADDED",
	["QUESTCOMPLETED"] = "QUESTCOMPLETED",
	["QUESTLOGOPEN"] = "QUESTLOGOPEN",
	["QUESTLOGCLOSE"] = "QUESTLOGCLOSE",
	["SHEATHINGSHIELDSHEATHE"] = "SHEATHINGSHIELDSHEATHE",
	["SHEATHINGWOODWEAPONSHEATHE"] = "SHEATHINGWOODWEAPONSHEATHE",
	["SHEATHINGMETALWEAPONSHEATHE"] = "SHEATHINGMETALWEAPONSHEATHE",
	["SHEATHINGWOODWEAPONUNSHEATHE"] = "SHEATHINGWOODWEAPONUNSHEATHE",
	["SHEATHINGMETALWEAPONUNSHEATHE"] = "SHEATHINGMETALWEAPONUNSHEATHE",
	["SHEATHINGSHIELDUNSHEATHE"] = "SHEATHINGSHIELDUNSHEATHE",
	["GAMEERRORUNABLETOEQUIP"] = "GAMEERRORUNABLETOEQUIP",
	["ITEMGENERICSOUND"] = "ITEMGENERICSOUND",
	["GAMEERRORINVALIDTARGET"] = "GAMEERRORINVALIDTARGET",
	["LEVELUP"] = "LEVELUP",
	["GAMEERROROUTOFRANGE"] = "GAMEERROROUTOFRANGE",
	["QUESTADDED"] = "QUESTADDED",
	["MONEYFRAMEOPEN"] = "MONEYFRAMEOPEN",
	["MONEYFRAMECLOSE"] = "MONEYFRAMECLOSE",
	["LOOTWINDOWOPEN"] = "LOOTWINDOWOPEN",
	["LOOTWINDOWCLOSE"] = "LOOTWINDOWCLOSE",
	["LOOTWINDOWCOINSOUND"] = "LOOTWINDOWCOINSOUND",
	["GAMEHIGHLIGHTHOSTILEUNIT"] = "GAMEHIGHLIGHTHOSTILEUNIT",
	["GAMEHIGHLIGHTNEUTRALUNIT"] = "GAMEHIGHLIGHTNEUTRALUNIT",
	["GAMEHIGHLIGHTFRIENDLYUNIT"] = "GAMEHIGHLIGHTFRIENDLYUNIT",
	["INTERFACESOUND_LOSTTARGETUNIT"] = "INTERFACESOUND_LOSTTARGETUNIT",
	["INTERFACESOUND_CURSORGRABOBJECT"] = "INTERFACESOUND_CURSORGRABOBJECT",
	["INTERFACESOUND_CURSORDROPOBJECT"] = "INTERFACESOUND_CURSORDROPOBJECT",
	["GAMESCREENMEDIUMBUTTONMOUSEDOWN"] = "GAMESCREENMEDIUMBUTTONMOUSEDOWN",
	["GAMEABILITYACTIVATE"] = "GAMEABILITYACTIVATE",
	["GAMESPELLACTIVATE"] = "GAMESPELLACTIVATE",
	["gsTitleEnterWorld"] = "gsTitleEnterWorld",
	["gsTitleOptions"] = "gsTitleOptions",
	["gsTitleQuit"] = "gsTitleQuit",
	["gsTitleCredits"] = "gsTitleCredits",
	["gsTitleIntroMovie"] = "gsTitleIntroMovie",
	["gsTitleOptionScreenResolution"] = "gsTitleOptionScreenResolution",
	["gsTitleOption16bit"] = "gsTitleOption16bit",
	["gsTitleOption32bit"] = "gsTitleOption32bit",
	["gsTitleOptionOpenGL"] = "gsTitleOptionOpenGL",
	["gsTitleOptionDirect3D"] = "gsTitleOptionDirect3D",
	["gsTitleOptionFullScreenMode"] = "gsTitleOptionFullScreenMode",
	["gsTitleOptionOK"] = "gsTitleOptionOK",
	["gsTitleOptionExit"] = "gsTitleOptionExit",
	["gsLogin"] = "gsLogin",
	["gsLoginNewAccount"] = "gsLoginNewAccount",
	["gsLoginChangeRealm"] = "gsLoginChangeRealm",
	["gsLoginExit"] = "gsLoginExit",
	["gsLoginChangeRealmOK"] = "gsLoginChangeRealmOK",
	["gsLoginChangeRealmSelect"] = "gsLoginChangeRealmSelect",
	["gsLoginChangeRealmCancel"] = "gsLoginChangeRealmCancel",
	["gsCharacterSelection"] = "gsCharacterSelection",
	["gsCharacterSelectionEnterWorld"] = "gsCharacterSelectionEnterWorld",
	["gsCharacterSelectionDelCharacter"] = "gsCharacterSelectionDelCharacter",
	["gsCharacterSelectionAcctOptions"] = "gsCharacterSelectionAcctOptions",
	["gsCharacterSelectionExit"] = "gsCharacterSelectionExit",
	["gsCharacterSelectionCreateNew"] = "gsCharacterSelectionCreateNew",
	["gsCharacterCreationClass"] = "gsCharacterCreationClass",
	["gsCharacterCreationRace"] = "gsCharacterCreationRace",
	["gsCharacterCreationGender"] = "gsCharacterCreationGender",
	["gsCharacterCreationLook"] = "gsCharacterCreationLook",
	["gsCharacterCreationCreateChar"] = "gsCharacterCreationCreateChar",
	["gsCharacterCreationCancel"] = "gsCharacterCreationCancel",
	["UChatScrollButton"] = "UChatScrollButton",
	["Deathbind Sound"] = "Deathbind Sound",
	["LOOTWINDOWOPENEMPTY"] = "LOOTWINDOWOPENEMPTY",
	["TaxiNodeDiscovered"] = "TaxiNodeDiscovered",
	["UnwrapGift"] = "UnwrapGift",
	["TellMessage"] = "TellMessage",
	["WriteQuest"] = "WriteQuest",
	["MapPing"] = "MapPing",
	["igBonusBarOpen"] = "igBonusBarOpen",
	["FriendJoinGame"] = "FriendJoinGame",
	["Fishing Reel in"] = "Fishing Reel in",
	["HumanExploration"] = "HumanExploration",
	["OrcExploration"] = "OrcExploration",
	["UndeadExploration"] = "UndeadExploration",
	["TaurenExploration"] = "TaurenExploration",
	["TrollExploration"] = "TrollExploration",
	["NightElfExploration"] = "NightElfExploration",
	["GnomeExploration"] = "GnomeExploration",
	["DwarfExploration"] = "DwarfExploration",
	["igPVPUpdate"] = "igPVPUpdate",
	["ReadyCheck"] = "ReadyCheck",
	["RaidWarning"] = "RaidWarning",
	["AuctionWindowOpen"] = "AuctionWindowOpen",
	["AuctionWindowClose"] = "AuctionWindowClose"
};
