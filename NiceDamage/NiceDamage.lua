local addonName, ns = ...

-- Default font path pointing to the add-on's font folder
local DEFAULT_FONT = "Interface\\AddOns\\NiceDamage\\fonts\\Expressway.ttf"

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")

function frame:ApplyFont()
    -- Set global combat damage text font for TBC Classic
    if DEFAULT_FONT then
        DAMAGE_TEXT_FONT = DEFAULT_FONT
    end
end

frame:SetScript("OnEvent", function(self, event, loadedAddon)
    if loadedAddon == addonName then
        self:ApplyFont()
        self:UnregisterEvent("ADDON_LOADED")
    end
end)

-- Re-apply on player entering world to prevent UI overrides
local loadFrame = CreateFrame("Frame")
loadFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
loadFrame:SetScript("OnEvent", function()
    frame:ApplyFont()
end)