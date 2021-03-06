-- This module has functions and a lookup table to deal with some gems having multiple itemIDs.

local private = {gemData={}}
local lib = TSMAPI

function lib:IsOldGem(itemID)
	if not private.oldGems then
		private.oldGems = {}
		for newID, oldIDs in pairs(private.gemData) do
			for _, gemID in pairs(oldIDs) do
				if gemID ~= newID then
					private.oldGems[gemID] = true
				end
			end
		end
	end
	
	return private.oldGems[itemID]
end

function lib:GetNewGem(itemID)
	if not private.newGems then
		private.newGems = {}
		for newID, oldIDs in pairs(private.gemData) do
			for _, oldID in pairs(oldIDs) do
				private.newGems[oldID] = newID
			end
		end
	end
	
	return private.newGems[itemID]
end

function lib:GetOldGems(itemID)
	return private.gemData[itemID]
end

private.gemData = {
	-- rituals of the new moon
	[45854] = {45854, 45850, 45851, 45852, 45853},

	-- gems
	[40025] = {40025, 40085},
	[40057] = {40057, 40056},
	[40089] = {40089, 40031},
	[32194] = {32194, 32197, 35487},
	[40124] = {40124, 40117},
	[40157] = {40157, 40131, 40137, 40148},
	[23116] = {23116, 31860},
	[40095] = {40095, 40096},
	[40160] = {40160, 40161},
	[42143] = {36766, 42143},
	[24061] = {24061, 31865},
	[42144] = {42144, 42148},
	[40130] = {40130, 40136},
	[42145] = {42145, 42146},
	[32198] = {32198, 32208},
	[23119] = {23119, 23121},
	[40100] = {40100, 40099},
	[40164] = {40132, 40164},
	[39909] = {39909, 39914},
	[40133] = {40133, 40134, 40170, 40175, 40151},
	[40165] = {40165, 40140},
	[39942] = {39961, 39942, 39944, 39953},
	[40102] = {40103, 40102},
	[42149] = {42149, 42153},
	[40167] = {40167, 40138},
	[39976] = {39938, 39976},
	[42151] = {42151, 42157},
	[32201] = {32201, 32202},
	[24065] = {24057, 24065},
	[40171] = {40171, 40176},
	[40044] = {40030, 40044, 40053, 40024},
	[40045] = {40045, 40054},
	[40173] = {40173, 40178},
	[32225] = {32225, 37503, 32216},
	[23094] = {23094, 23113, 23096, 27777, 27812},
	[24035] = {24037, 24035},
	[39912] = {39911, 39912},
	[23109] = {23106, 23109},
	[39983] = {39983, 39989},
	[39935] = {39935, 39937},
	[39979] = {39941, 39943, 39979, 39984},
	[24051] = {24051, 31861},
	[40113] = {40123, 40113},
	[40177] = {40172, 40177},
	[24048] = {24048, 24050},
	[40098] = {40101, 40098},
	[39998] = {39998, 40012},
	[40112] = {40114, 40112},
	[39982] = {39982, 39988},
	[32205] = {32205, 32207},
	[24053] = {27679, 24053},
	[39954] = {39962, 39954},
	[23110] = {23110, 31862, 31864},
	[23114] = {28290, 23114},
	[24055] = {31863, 24055},
	[24030] = {24047, 24029, 24030},
	[39955] = {39963, 39955},
	[40051] = {40047, 40051},
	[39981] = {39981, 39986},
	[40115] = {40126, 40115},
	[40147] = {40156, 40147},
	[40179] = {40174, 40179},
	[39965] = {39964, 39965},
	[39933] = {39933, 39974},
	[40013] = {40013, 40002},
	[39997] = {39999, 39997},
	[32206] = {32206, 32210},
	[23095] = {23095, 63697, 63696},
	[40052] = {40043, 40052},
	[39980] = {39980, 39985},
	[40180] = {40180, 40181},
	[23104] = {27785, 27786, 27820, 27809, 23104},
	[40149] = {40158, 40149},
	[24032] = {24052, 24032},
	[35760] = {32219, 35760},
	[40086] = {40033, 40086},
	[40150] = {40159, 40150},
	[24060] = {24060, 35316},
	[32220] = {32214, 32220},
	[24028] = {24028, 24031},
	[28595] = {28360, 28361, 23097, 28595},
	[35707] = {24062, 35707},
	[39927] = {39920, 39927},
	[39959] = {39946, 39959},
	[39991] = {39991, 39990},
	[40023] = {40029, 40023},
	[40055] = {40046, 40055},
	[40026] = {40026, 40027, 40092, 40094},
	[40010] = {40009, 40010},
	[40105] = {40105, 40104},
	[32212] = {32213, 32212},
	[40120] = {40121, 40120},
	[32196] = {35488, 32195, 32196, 32204, 35489},
	[39905] = {39906, 39905},
	[40000] = {40015, 40000},
	[39968] = {39936, 39968},
	[39952] = {39952, 39960},
}