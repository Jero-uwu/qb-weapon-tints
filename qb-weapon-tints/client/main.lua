local QBCore = exports['qb-core']:GetCoreObject()

-- 🎨 Apply tint when the weapon is equipped
RegisterNetEvent("qb-weapon-tints:apply", function(weapon, tint)
    local ped = PlayerPedId()
    local weaponHash = GetHashKey(weapon)
    Wait(300)
    if HasPedGotWeapon(ped, weaponHash, false) then
        SetPedWeaponTintIndex(ped, weaponHash, tint)
    end
end)
