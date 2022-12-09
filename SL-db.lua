-- AdiBags Bears Alchemy - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...;

-- Get the common expansion names from expansion.lua
local E = addonTable.expansion
local Expansion = E["Shadowlands"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Alchemy"
db.desc = "Alchemy reagents for " .. Expansion

-- Filter info
db.Filters = {
    ["Herbs"] = {
        uiName = Expansion .. " Herbs",
        uiDesc = "Herbs found in " .. Expansion,
        title = "Herbs",
        items = {
            -- ID  = true,		--Item name
            [168583] = true, -- Widowbloom
            [168586] = true, -- Rising Glory
            [168589] = true, -- Marrow Root
            [169701] = true, -- Death Blossom
            [170554] = true, -- Vigils Torch
            [171315] = true, -- Nightshade
            [187699] = true -- First Flower
        }
    },
    ["Ground"] = {
        uiName = Expansion .. " Alchemy Extracts",
        uiDesc = "Ground reagents made from herbs found in " .. Expansion,
        title = "Ground Herbs",
        items = {
            -- ID  = true,		--Item name
            [171287] = true, -- Ground Death Blossom
            [171291] = true, -- Ground Rising Glory
            [171290] = true, -- Ground Marrowroot
            [171292] = true, -- Ground Nightshade
            [171288] = true, -- Ground Vigil's Torch
            [171289] = true -- Ground Widowbloom
        }
    },
    ["Transmute"] = {
        uiName = Expansion .. " Alchemy Transmute",
        uiDesc = "Transmuted items made from herbs found in " .. Expansion,
        title = "Transmute",
        items = {
            -- ID  = true,		--Item name
            [180457] = true, -- Shadestone
            [171428] = true -- Shadowgast Ingot
        }
    },
    ["Vendor_Reagents"] = {
        uiName = Expansion .. " Alchemy Reagents",
        uiDesc = "Alchemy reagents from vendors used in " .. Expansion,
        title = "Vendor Reagents",
        items = {
            -- ID    = true,    --Item name
            [180732] = true, -- Rune Etched Vial
            [183950] = true -- Distilled Death Extract
        }
    },
    ["Crafted_Reagents"] = {
        uiName = Expansion .. " Crafted Reagents",
        uiDesc = "Reagents made by crafting in " .. Expansion,
        title = "Crafted Reagents",
        items = {
            -- ID    = true,    --Item name
            [173384] = true, -- Crafter's Mark of the Chained Isle
            [173383] = true, -- Crafter's Mark III
            [173382] = true, -- Crafter's Mark II
            [173381] = true, -- Crafter's Mark I
            [183942] = true, -- Novice Mark
            [185960] = true, -- Vestige of Origins
            [359703] = true, -- Vestige of the Eternal
            [187707] = true, -- Progenitor Essentia
            [359673] = true, -- Crafter's Mark of the First Ones
            [187850] = true, -- Sustaining Armor Polish
            [187827] = true -- Infusion: Corpse Purification
        }
    }
}

-- now that db is populated lets pass it on.
addonTable.Shadowlands = db
