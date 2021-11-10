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
            [168583] = true, -- Widowbloom
            [168586] = true, -- Rising Glory
            [168589] = true, -- Marrow Root
            [169701] = true, -- Death Blossom
            [170554] = true, -- Vigils Torch
            [171315] = true, -- Nightshade
        },
    },
    ["Extracts"] = {
        uiName = "Shadowlands Alchemy Extracts",
        uiDesc = "Extracts made from herbs found in Shadowlands",
        title = "Extracts",
        items = {
            -- ID  = true,		--Item name
            [171287] = true, -- Ground Death Blossom
            [171291] = true, -- Ground Rising Glory
            [171290] = true, -- Ground Marrowroot
            [171292] = true, -- Ground Nightshade
            [171288] = true, -- Ground Vigil's Torch
            [171289] = true, -- Ground Widowbloom
        },
    },
    ["Transmute"] = {
        uiName = "Shadowlands Alchemy Transmute",
        uiDesc = "Transmuted items made from herbs found in Shadowlands",
        title = "Transmute",
        items = {
            -- ID  = true,		--Item name
            [180457] = true, -- Shadestone
            [307142] = true, -- Shadowgast Ingot
        },
    },
    ["Vendor_Reagents"] = {
        uiName = "Shadowlands Vendor Reagents",
        uiDesc = "Reagents from vendors used in Shadowlands",
        title = "Vendor Reagents",
        items = {
            -- ID    = true,    --Item name
            [177062] = true, -- Penumbra Thread
            [178787] = true, -- Orboreal shards
            [177061] = true, -- Twilight Bark
            [183955] = true, -- Curing Salt
            [180732] = true, -- Rune Etched Vial
            [183950] = true, -- Distilled Death Extract
        },
    },
    ["Crafted_Reagents"] = {
        uiName = "Shadowlands Crafted Reagents",
        uiDesc = "Reagents made by crafting in Shadowlands",
        title = "Crafted Reagents",
        items = {
            -- ID    = true,    --Item name
            [173384] = true, -- Crafter's Mark of the Chained Isle
            [173383] = true, -- Crafter's Mark III
            [173382] = true, -- Crafter's Mark II
            [173381] = true, -- Crafter's Mark I
            [183942] = true, -- Novice Mark II
            [185960] = true, -- Vestige of Origins
        }
    },
}

-- now that db is populated lets pass it on.
addonTable.db = db
