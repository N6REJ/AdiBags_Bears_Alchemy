-- AdiBags_Shadowlands_Crafting - Alchemy Database
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/AdiBags_Shadowlands_Alchemy
local addonName, addonTable, addon = ...

-- Create addon table
local db = {}

db.name = "Shadowlands Alchemy"
db.desc = "Alchemy reagents for Shadowlands"

-- Filter info
db.Filters = {
	["Alchemy"] = {
		uiName = "Shadowlands Alchemy",
		uiDesc = "Alchemy reagents for Shadowlands",
		title = "Alchemy",
		items = {
			-- ID,	--Item name
			[180732] = true, -- Rune Etched Vial
			[183950] = true, -- Distilled Death Extract
			[171287] = true, -- Ground Death Blossom
			[171291] = true, -- Ground Rising Glory
			[171290] = true, -- Ground Marrowroot
			[171292] = true, -- Ground Nightshade
			[171288] = true, -- Ground Vigil's Torch
			[171289] = true, -- Ground Widowbloom
			[180457] = true, -- Shadestone
			[307142] = true -- Shadowgast Ingot
		}
	}
}

-- Items to offer exculsion
db.Profiles = {
	--Item to be excluded
	["moveVials"] = {
		id = 180732, -- Id of item to be excluded
		name = "Rune Ethched Vial", -- Name for checkbox
		desc = "Turns off moving vials.", -- Description on hover
		type = "toggle", -- type of switch
		order = 10 -- display order
	}
}

-- now that db is populated lets pass it on.
addonTable.db = db
