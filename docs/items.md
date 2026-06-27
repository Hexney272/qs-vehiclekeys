# qs-vehiclekeys — Items

This script uses **8 items**. Below are ready-to-paste definitions for **qb-inventory**, **qs-inventory** and **ox_inventory**.

> All item names are configurable in [config/main.lua](config/main.lua). If you rename them in the config, rename them here too.

| Item | Useable | Purpose |
|------|---------|---------|
| `vehiclekeys` | ✅ | Vehicle key (lock / unlock nearest vehicle). Holds `plate` + `model` metadata. |
| `adminvehiclekey` | ✅ | Admin master key — opens any vehicle. |
| `carlockpick` | ✅ | Basic lockpick — starts the lockpick minigame. |
| `caradvancedlockpick` | ✅ | Advanced lockpick — can bypass the police requirement. |
| `plate` | ✅ | License plate — used to change a vehicle's plate. |
| `screwdriver` | ❌ (tool) | Required to change a plate (`RequireScrewdriver`). |
| `vehiclegps` | ✅ | GPS — installs a tracker on the nearest vehicle. |
| `vehicletracker` | ✅ | Tracker device — opens the tracking menu. |

---

## qb-inventory

Add to `qb-core/shared/items.lua`:

```lua
['vehiclekeys']          = { ['name'] = 'vehiclekeys',          ['label'] = 'Vehicle Keys',           ['weight'] = 0,    ['type'] = 'item', ['image'] = 'vehiclekeys.png',          ['unique'] = true,  ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Keys to a vehicle' },
['adminvehiclekey']      = { ['name'] = 'adminvehiclekey',      ['label'] = 'Admin Vehicle Key',      ['weight'] = 0,    ['type'] = 'item', ['image'] = 'adminvehiclekey.png',      ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Master key that opens any vehicle' },
['carlockpick']          = { ['name'] = 'carlockpick',          ['label'] = 'Lockpick',               ['weight'] = 500,  ['type'] = 'item', ['image'] = 'carlockpick.png',          ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Used to break into vehicles' },
['caradvancedlockpick']  = { ['name'] = 'caradvancedlockpick',  ['label'] = 'Advanced Lockpick',      ['weight'] = 500,  ['type'] = 'item', ['image'] = 'caradvancedlockpick.png',  ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'A sturdier lockpick for tougher locks' },
['plate']                = { ['name'] = 'plate',                ['label'] = 'License Plate',          ['weight'] = 500,  ['type'] = 'item', ['image'] = 'plate.png',                ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'A vehicle license plate' },
['screwdriver']          = { ['name'] = 'screwdriver',          ['label'] = 'Screwdriver',            ['weight'] = 500,  ['type'] = 'item', ['image'] = 'screwdriver.png',          ['unique'] = false, ['useable'] = false, ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Handy for swapping plates' },
['vehiclegps']           = { ['name'] = 'vehiclegps',           ['label'] = 'Vehicle GPS',            ['weight'] = 500,  ['type'] = 'item', ['image'] = 'vehiclegps.png',           ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Installs a GPS tracker on a vehicle' },
['vehicletracker']       = { ['name'] = 'vehicletracker',       ['label'] = 'Vehicle Tracker',        ['weight'] = 500,  ['type'] = 'item', ['image'] = 'vehicletracker.png',       ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Locates a tracked vehicle' },
```

---

## qs-inventory

Add to `qs-inventory/shared/items.lua`:

```lua
['vehiclekeys']          = { ['name'] = 'vehiclekeys',          ['label'] = 'Vehicle Keys',           ['weight'] = 0,    ['type'] = 'item', ['image'] = 'vehiclekeys.png',          ['unique'] = true,  ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Keys to a vehicle' },
['adminvehiclekey']      = { ['name'] = 'adminvehiclekey',      ['label'] = 'Admin Vehicle Key',      ['weight'] = 0,    ['type'] = 'item', ['image'] = 'adminvehiclekey.png',      ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Master key that opens any vehicle' },
['carlockpick']          = { ['name'] = 'carlockpick',          ['label'] = 'Lockpick',               ['weight'] = 500,  ['type'] = 'item', ['image'] = 'carlockpick.png',          ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Used to break into vehicles' },
['caradvancedlockpick']  = { ['name'] = 'caradvancedlockpick',  ['label'] = 'Advanced Lockpick',      ['weight'] = 500,  ['type'] = 'item', ['image'] = 'caradvancedlockpick.png',  ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'A sturdier lockpick for tougher locks' },
['plate']                = { ['name'] = 'plate',                ['label'] = 'License Plate',          ['weight'] = 500,  ['type'] = 'item', ['image'] = 'plate.png',                ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'A vehicle license plate' },
['screwdriver']          = { ['name'] = 'screwdriver',          ['label'] = 'Screwdriver',            ['weight'] = 500,  ['type'] = 'item', ['image'] = 'screwdriver.png',          ['unique'] = false, ['useable'] = false, ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Handy for swapping plates' },
['vehiclegps']           = { ['name'] = 'vehiclegps',           ['label'] = 'Vehicle GPS',            ['weight'] = 500,  ['type'] = 'item', ['image'] = 'vehiclegps.png',           ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Installs a GPS tracker on a vehicle' },
['vehicletracker']       = { ['name'] = 'vehicletracker',       ['label'] = 'Vehicle Tracker',        ['weight'] = 500,  ['type'] = 'item', ['image'] = 'vehicletracker.png',       ['unique'] = false, ['useable'] = true,  ['shouldClose'] = true,  ['combinable'] = nil, ['description'] = 'Locates a tracked vehicle' },
```

---

## ox_inventory

Add to `ox_inventory/data/items.lua`:

```lua
['vehiclekeys'] = {
    label = 'Vehicle Keys',
    weight = 0,
    stack = false,
    close = true,
    description = 'Keys to a vehicle',
},

['adminvehiclekey'] = {
    label = 'Admin Vehicle Key',
    weight = 0,
    stack = false,
    close = true,
    description = 'Master key that opens any vehicle',
},

['carlockpick'] = {
    label = 'Lockpick',
    weight = 500,
    stack = true,
    close = true,
    description = 'Used to break into vehicles',
},

['caradvancedlockpick'] = {
    label = 'Advanced Lockpick',
    weight = 500,
    stack = true,
    close = true,
    description = 'A sturdier lockpick for tougher locks',
},

['plate'] = {
    label = 'License Plate',
    weight = 500,
    stack = true,
    close = true,
    description = 'A vehicle license plate',
},

['screwdriver'] = {
    label = 'Screwdriver',
    weight = 500,
    stack = true,
    close = true,
    description = 'Handy for swapping plates',
},

['vehiclegps'] = {
    label = 'Vehicle GPS',
    weight = 500,
    stack = true,
    close = true,
    description = 'Installs a GPS tracker on a vehicle',
},

['vehicletracker'] = {
    label = 'Vehicle Tracker',
    weight = 500,
    stack = true,
    close = true,
    description = 'Locates a tracked vehicle',
},
```

> **ox_inventory note:** ox does not use a `useable` flag — usable items are registered by the script itself via `exports.qs-vehiclekeys`. The `plate` item is intentionally **not** registered as usable under ox (handled differently); the other items still work as expected. Add matching item images to `ox_inventory/web/images/` (e.g. `vehiclekeys.png`).
