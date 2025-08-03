fx_version 'cerulean'
game 'gta5'

description 'Weapon Tint System - Admin only + Metadata tint saving'
author 'JeroTua'

dependency 'qb-core'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'shared/tints.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@qb-core/server/main.lua',
    'server/main.lua'
}

-- Load all custom skin files from skins folder
files {
    'skins/**/stream/**',
    'skins/**/weapons.meta',
    'skins/**/weaponcomponents.meta'
}

data_file 'WEAPONINFO_FILE_PATCH' 'skins/**/weapons.meta'
data_file 'WEAPONCOMPONENTSINFO_FILE' 'skins/**/weaponcomponents.meta'
