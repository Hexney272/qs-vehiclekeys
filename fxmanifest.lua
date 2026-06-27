





fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '3.0.8'
name 'qs-vehiclekeys'
author 'Quasar Store'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/functions.lua',
    'shared/utils.lua',
    'config/main.lua',
    'locales/locale.lua',
}

client_scripts {
    'custom/client.lua',
    'client/custom/**',
    'client/modules/**',
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'custom/server.lua',
    'server/custom/**',
    'server/modules/**',
    'server/main.lua',
}

-- ui_page 'http://localhost:3005/'
ui_page 'web/build/index.html'

files {
    'web/build/**',
    'web/images/**',
    'locales/*.json',
    'custom/**',
}

ox_libs {
    'table',
    'math'
}

dependencies {
    '/onesync',
    'ox_lib',
}

escrow_ignore {
    'client/custom/**',
    'server/custom/**',
    'custom/**/*',
    'config/*',
    'locales/*',
    'types.lua',
}

dependency '/assetpacks'






