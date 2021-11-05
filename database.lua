-- AdiBags_Shadowlands Alchemy - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
--
local addonName, addonTable, addon = ...

-- Create addon table
local db = { }

db.name = "Shadowlands Alchemy"
db.desc = "Alchemy reagents for shadowlands"

-- Filter info
db.Filters = {
	["Herbs"] = {
		uiName = "Shadowlands Herbs",
		uiDesc = "Herbs found in Shadowlands",
		title = "Herbs",
		items = {
			-- ID  = true,		--Item name
			[180732] = true,		-- Rune Etched Vial
			[183950] = true,		-- Distilled Death Extract
			[171287] = true,		-- Ground Death Blossom
			[171291] = true,		-- Ground Rising Glory
			[171290] = true,		-- Ground Marrowroot
			[171292] = true,		-- Ground Nightshade
			[171288] = true,		-- Ground Vigil's Torch
			[171289] = true,		-- Ground Widowbloom
			[180457] = true,		-- Shadestone
			[307142] = true,		-- Shadowgast Ingot
		},
	},
	["Alchemy"] = {
		uiName = "Shadowlands Alchemy",
		uiDesc = "Alchemy reagents for Shadowlands",
		title = "Alchemy",
		items = {
			-- ID  = true,		--Item name
			[343678] = true,		-- Crafter's Mark II
			[343679] = true,		-- Crafter's Mark I
			[343675] = true,		-- Novice Crafter's Mark
		},
	},
}

-- now that db is populated lets pass it on.
addonTable.db = db
