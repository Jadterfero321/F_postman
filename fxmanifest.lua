---@diagnostic disable: undefined-global
fx_version 'cerulean'
game 'gta5'

author 'tomaskoYT & Jadterfero321'
description 'Postman job by Jadterfero321'
version '1.0'
lua54 'yes'

client_scripts {
    'client/main.lua',
    'config.lua'
}

server_scripts {
    'server/main.lua',
    'config.lua'
}
shared_script '@es_extended/imports.lua'
shared_script '@ox_lib/init.lua'

