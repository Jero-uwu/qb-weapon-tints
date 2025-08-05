local QBCore = exports['qb-core']:GetCoreObject()

-- /giveweapontint [id] [weapon_name] [tint_name]
QBCore.Commands.Add('giveweapontint', 'Give player weapon with tint (Admin/God only)', {
    { name = 'id', help = 'Player ID' },
    { name = 'weapon', help = 'Weapon name (e.g., weapon_pistol)' },
    { name = 'tint', help = 'Tint name (e.g., pink, jerospecial)' },
}, true, function(source, args)
    local src = source
    local id = tonumber(args[1])
    local weapon = tostring(args[2])
    local tintName = tostring(args[3])

    -- ✅ Permission check
    local allowed = IsPlayerAceAllowed(src, "admin") or IsPlayerAceAllowed(src, "god")
    if not allowed then
        TriggerClientEvent('QBCore:Notify', src, 'You don\'t have permission to use this command.', 'error')
        return
    end

    local tintIndex = WeaponTints[tintName]
    if not tintIndex then
        TriggerClientEvent('QBCore:Notify', src, 'Invalid tint name.', 'error')
        return
    end

    local Player = QBCore.Functions.GetPlayer(id)
    if not Player then
        TriggerClientEvent('QBCore:Notify', src, 'Invalid player ID.', 'error')
        return
    end

    Player.Functions.AddItem(weapon, 1, false, { tint = tintIndex })
    TriggerClientEvent('QBCore:Notify', id, 'You received a '..weapon..' with '..tintName..' tint!', 'success')
    TriggerClientEvent('QBCore:Notify', src, 'Weapon given successfully.', 'success')
end)
