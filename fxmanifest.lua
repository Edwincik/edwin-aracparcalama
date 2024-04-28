fx_version 'cerulean'
game 'gta5'
description 'Vehicle Shredding'
version '1.0.0'

shared_scripts {
   '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua'
}
server_scripts {
	'server/*'
}

client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/*'
}

lua54 'yes'
escrow_ignore {
    'config.lua',
    'locales/en.lua',
    'locales/*.lua'
}

