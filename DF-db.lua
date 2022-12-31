-- AdiBags Bears Alchemy - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Alchemy"
db.desc = "Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Herb"] = {
		uiName = "Bears " .. Expansion .. " Herbs",
		uiDesc = "Herbs found in " .. Expansion,
		title = "Herbs",
		items = {-- ID,	--Item name
			[191460] = true, -- Hochenblume 1
			[191461] = true, -- Hochenblume 2
			[191462] = true, -- Hochenblume 3
			[191464] = true, -- Saxifrage 1
			[191465] = true, -- Saxifrage 2
			[191466] = true, -- Saxifrage 3
			[191470] = true, -- Writhebark 1
			[191471] = true, -- Writhebark 2
			[191472] = true, -- Writhebark 3
			[191469] = true, -- Bubble poppy 3
			[191468] = true, -- Bubble poppy 2
			[191467] = true, -- Bubble poppy 1
			[200506] = true, -- Roused Seedling
			[200508] = true, -- Propagating Roused Seedling
		}
	},
	["Crafted_Reagents"] = {
		uiName = "Bears " .. Expansion .. " Crafted Reagents",
		uiDesc = "Assorted crafted reagents used in " .. Expansion,
		title = "Crafted",
		items = {
			-- ID  = true,		--Item name
			[191495] = true, -- Primal Convergent 3
			[191494] = true, -- Primal Convergent 2
			[191493] = true, -- Primal Convergent 1
			[191498] = true, -- Omnium Draconis 3
   			[191497] = true, -- Omnium Draconis 2
   			[191496] = true, -- Omnium Draconis 1
   			[191570] = true, -- Dragon's Alchemical Solution
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db

