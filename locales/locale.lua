





local resourceName = GetCurrentResourceName()
local defaultRaw = LoadResourceFile(resourceName, 'locales/en.json')
local defaultLocale = defaultRaw and json.decode(defaultRaw) or {}

local selectedRaw = LoadResourceFile(resourceName, ('locales/%s.json'):format(Config.Locale))
local selectedLocale = selectedRaw and json.decode(selectedRaw) or {}

if not selectedRaw then
    print(('^3[qs-vehiclekeys]^7 Locale %s not found, fallback en.json'):format(Config.Locale))
end

for key, value in pairs(defaultLocale) do
    if selectedLocale[key] == nil then
        selectedLocale[key] = value
    end
end

_T = selectedLocale

local function translate(path, params)
    local value = _T
    for part in path:gmatch('[^.]+') do
        value = value and value[part]
        if value == nil then
            return 'missing_' .. path
        end
    end

    if type(value) ~= 'string' then
        return value
    end

    if params then
        for k, v in pairs(params) do
            value = value:gsub('{{' .. k .. '}}', tostring(v))
        end
    end

    return value
end

_G['i18n'] = { t = translate }






