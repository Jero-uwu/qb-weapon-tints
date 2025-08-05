local QBCore = exports['qb-core']:GetCoreObject()

-- 🎨 Apply tint when the weapon is equipped
RegisterNetEvent("jt-weapontints:apply", function(weapon, tint)
    local ped = PlayerPedId()
    local weaponHash = GetHashKey(weapon)
    Wait(300)
    if HasPedGotWeapon(ped, weaponHash, false) then
        SetPedWeaponTintIndex(ped, weaponHash, tint)
    end
end)
