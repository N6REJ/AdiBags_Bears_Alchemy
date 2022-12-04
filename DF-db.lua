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
db.desc = "Items & Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Herb"] = {
		uiName = Expansion .. " Herbs",
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
		}
	},
	["Elemental"] = {
		uiName = Expansion .. " Elemental",
		uiDesc = "Elemental reagents found in " .. Expansion,
		title = "Elemental",
		items = {
			-- ID  = true,		--Item name
			[190326] = true, -- Rousing Air
			[190315] = true, -- Rousing Earth
			[190320] = true, -- Rousing Fire
			[190451] = true, -- Rousing Ire
			[190328] = true, -- Rousing Frost
			[190322] = true, -- Rousing Order
			[190321] = true, -- Awakened Fire
			[190327] = true, -- Awakened Air
			[190329] = true, -- Awakened Frost
			[190316] = true, -- Awakened Fire
			[190324] = true, -- Awakened Order
		}
	},
	["Crafted_Reagents"] = {
		uiName = Expansion .. " Crafted Reagents",
		uiDesc = "Assorted crafted reagents used in " .. Expansion,
		title = "Crafted Reagents",
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
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Alchemy Reagents",
		uiDesc = "Alchemy reagents from vendors used in " .. Expansion,
		title = "Vendor",
		items = {
			-- ID    = true,    --Item name
			[191474] = true, -- Draconic Vial
			[197861] = true, -- Fleeting Philosopher's Stone
		}
	},
	["Zone_Reagents"] = {
		uiName = "Special Reagents",
		uiDesc = "Special reagents from " .. Expansion,
		title = "DF Mats",
		items = {
			-- ID  = true,		--Item name
			[190454] = true, -- Primal Chaos
			[202122] = true, -- Primal Chaos Cluster
			[200686] = true, -- Primal Focus
			[190456] = true, -- Artisan's Mettle
			[201405] = true, -- Tuft of Primal Wool -- Used by many professions
			[201406] = true, -- Glowing Titan Orb   -- Used by many professions
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
