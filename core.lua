-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io

local addonName, addonTable, addon = ...

-- Get reference to AdiBags addon
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local db = addonTable.db
local MatchIDs
local tooltip
local Result = {}
-- Debug mode switch
local debugMode = true

-- Notify that debugMode is on
if debugMode then
	print("-- Debug mode is on --\n")
end

local function tooltipInit()
	local tip, leftside = CreateFrame("GameTooltip"), {}
	for i = 1, 6 do
		local left, right = tip:CreateFontString(), tip:CreateFontString()
		left:SetFontObject(GameFontNormal)
		right:SetFontObject(GameFontNormal)
		tip:AddFontStrings(left, right)
		leftside[i] = left
	end
	tip.leftside = leftside
	return tip
end

-- Check for existing filter
local function CheckFilter(newFilter)
	local filterExists = false
	for key, value in AdiBags:IterateFilters() do
		if value.filterName == newFilter then
			filterExists = true
			return filterExists
		end
	end
	return filterExists
end

-- Create Filters
local function CreateFilter(name, uiName, uiDesc, title, items)
	local filter = AdiBags:RegisterFilter(uiName, 98, "ABEvent-1.0")
	-- Register Filter with adibags
	filter.uiName = uiName
	filter.uiDesc = uiDesc .. "Version:" .. GetAddOnMetadata(addonName, "Version")
	filter.items = items

	function filter:OnInitialize()
		-- Assign item table to filter
		self.items = filter.items
	end

	function filter:Update()
		self:SendMessage("AdiBags_FiltersChanged")
	end

	function filter:OnEnable()
		AdiBags:UpdateFilters()
	end

	function filter:OnDisable()
		AdiBags:UpdateFilters()
	end


	-- check for items that are exempt from being moved.
	function filter:GetOptions(profiles)
		return {
			profiles
			--[[ Items switch state
profile = {
moveMiscellaneous = true,
moveCurrency = true,
moveContaining = true,
moveSupplies = true,
moveRare = true,
moveTraining = true,
moveToys = true,
moveCostume = true,
}
--]]

		},
		AdiBags:GetOptionHandler(self, false, function ()
			return self:Update()
		end)
	end

	function filter:Filter(slotData)
		if self.items[tonumber(slotData.itemId)] then
			return title
		end

		tooltip = tooltip or tooltipInit()
		tooltip:SetOwner(UIParent, "ANCHOR_NONE")
		tooltip:ClearLines()

		if slotData.bag == BANK_CONTAINER then
			tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slotData.slot, nil))
		else
			tooltip:SetBagItem(slotData.bag, slotData.slot)
		end

		tooltip:Hide()
	end
end

-- Lets find out if we need to use profiles
local function CheckProfile(db)
	-- get list of excluded items.
	for name, group in pairs(db.Profiles) do
		-- is there anything to exclude?
		-- Filter Name, Elements
		if debugMode then
			print(name, group)
		end
	end

	--local profiles = group
	--[[ Items switch state
        profile = {
    moveMiscellaneous = true,
    moveCurrency = true,
    moveContaining = true,
    moveSupplies = true,
    moveRare = true,
    moveTraining = true,
    moveToys = true,
    moveCostume = true,
} --]]

	--[[ send the created table to next step
	return profiles
	--]]
end

-- Run filters
local function AllFilters(db)
	local options = CheckProfile(db.Profiles)

	for name, group in pairs(db.Filters) do
		-- Does filter already exist?
		local filterExists = CheckFilter(group.uiName)
		if not filterExists == nil or filterExists == false then
			-- name = Name of table
			-- group.uiName = Name to use in filter listing
			-- group.uiDesc = Description to show in filter listing
			-- group.items = table of items to sort
			CreateFilter(name, group.uiName, group.uiDesc, group.title, group.items)
		end
	end
end

-- Start here
AllFilters(db)
