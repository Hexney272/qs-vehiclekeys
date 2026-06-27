## Client Exports

### Keys

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `GiveKeys` | `plate: string`, `model: string`, `bypassKeyCheck?: boolean` | — | Gives keys to the player |
| `RemoveKeys` | `plate: string`, `model: string` | — | Removes keys |
| `GetKey` | `plate: string`, `model?: string` | `boolean` | Checks if the player has the key |
| `GiveKeysAuto` | — | — | Gives keys for the current vehicle |
| `RemoveKeysAuto` | — | — | Removes keys for the current vehicle |
| `GetKeyAuto` | — | `boolean` | Checks if the player has the key for the current vehicle |
| `CanUseVehicle` | `vehicle: number` | `boolean` | Checks if the vehicle can be used (key / hotwire) |
| `RequestKeyTransfer` | `payload: { targetId: number, plate: string, model: string }` | `boolean`, `string?` | Starts a key transfer |
| `OpenCar` | `vehicle: number` | — | Unlocks the vehicle |
| `CloseCar` | `vehicle: number` | — | Locks the vehicle |
| `disableHotwire` | `disabled: boolean` | — | `true` disables hotwire, `false` re-enables it |

```lua
exports['qs-vehiclekeys']:GiveKeys('ABC123', 'sultan', false)
local hasKey = exports['qs-vehiclekeys']:GetKey('ABC123', 'sultan')

exports['qs-vehiclekeys']:disableHotwire(true)  -- block hotwire
exports['qs-vehiclekeys']:disableHotwire(false) -- allow hotwire again
```

### Lock

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `DoorLogic` | `vehicle: number`, `skipAnimation?: boolean`, `forcedDoorStatus?: number`, `skipNotification?: boolean`, `skipSound?: boolean`, `skipFlickerLights?: boolean` | — | Toggles lock state |
| `GetDoorState` | `vehicle: number` | `number` | Lock state (`-1` = invalid vehicle) |

```lua
exports['qs-vehiclekeys']:DoorLogic(vehicle, false, nil, false, false, false)
local state = exports['qs-vehiclekeys']:GetDoorState(vehicle)
```

### Engine

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `toggleEngine` | `forceState?: boolean`, `targetVehicle?: number` | `boolean` | Toggles or forces engine state |
| `isEngineRunning` | `vehicle?: number` | `boolean` | Checks if the engine is running |

```lua
exports['qs-vehiclekeys']:toggleEngine() -- toggle
exports['qs-vehiclekeys']:toggleEngine(true, vehicle) -- force on
```

### Lockpick

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `UseLockpick` | `isAdvanced?: boolean` | — | Starts lockpick on the nearest vehicle |

```lua
exports['qs-vehiclekeys']:UseLockpick(false)
exports['qs-vehiclekeys']:UseLockpick(true) -- advanced lockpick
```

### Plate

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `UsePlate` | `targetPlate: string` | — | Starts the plate change process |
| `GetPlateFormat` | — | `{ PlateLetters: number, PlateNumbers: number, PlateUseSpace: boolean }` | Plate format settings |

```lua
exports['qs-vehiclekeys']:UsePlate('ABC 123')
local format = exports['qs-vehiclekeys']:GetPlateFormat()
```

### GPS Tracker

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `UseGpsTrackerItem` | — | — | Installs a tracker on the nearest vehicle |
| `OpenTrackerMenu` | — | — | Opens the tracker menu |

```lua
exports['qs-vehiclekeys']:UseGpsTrackerItem()
exports['qs-vehiclekeys']:OpenTrackerMenu()
```

### Other

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `ToggleBoatAnchor` | — | `boolean` | Toggles boat anchor |
| `OpenDiagnostic` | — | — | Scans the nearest vehicle |
| `UseRentalPapers` | — | `boolean` | Not used currently (returns `false`) |

---

## Server Exports

| Export | Parameters | Returns | Description |
|--------|------------|---------|-------------|
| `GiveServerKeys` | `targetSource: number`, `plate: string`, `model: string`, `bypassKeyCheck?: boolean` | `boolean` | Gives keys to a player |
| `RemoveServerKeys` | `targetSource: number`, `plate: string`, `model: string` | `boolean` | Removes keys from a player |
| `GetServerKey` | `targetSource: number`, `plate: string`, `model: string` | `boolean` | Checks if a player has the key |

**Alias exports** (same functions):
- `GiveKeysServer` → `GiveServerKeys`
- `RemoveKeysServer` → `RemoveServerKeys`
- `GetKeyServer` → `GetServerKey`

```lua
-- Give keys from a garage script
local ok = exports['qs-vehiclekeys']:GiveServerKeys(source, plate, model, false)

-- Check for keys
local hasKey = exports['qs-vehiclekeys']:GetServerKey(source, plate, model)
```

---

## Server Events

Triggered from the client:

| Event | Parameters | Description |
|-------|------------|-------------|
| `vehiclekeys:server:giveKey` | `plate: string`, `model: string`, `bypassKeyCheck?: boolean` | Give keys |
| `vehiclekeys:server:removeKey` | `plate: string`, `model: string` | Remove keys |
| `vehiclekeys:server:giveKeyToPlayer` | `targetSource: number`, `plate: string`, `model: string`, `bypassKeyCheck?: boolean` | Give keys to another player |
| `vehiclekeys:server:setVehLockState` | `vehNetId: number`, `state: number` | Sync vehicle lock state |

```lua
-- Server-side (prefer exports)
TriggerEvent('vehiclekeys:server:giveKey', plate, model, false) -- wrong, this is a client event

-- Correct usage
exports['qs-vehiclekeys']:GiveServerKeys(source, plate, model, false)
```

---

## Client Events

Triggered from the server:

| Event | Parameters | Description |
|-------|------------|-------------|
| `vehiclekeys:client:useNearestKey` | `isAdmin?: boolean`, `plate?: string`, `model?: string` | Lock/unlock nearest vehicle |
| `vehiclekeys:client:syncLockState` | `vehNetId: number`, `state: number` | Sync lock state |
| `vehiclekeys:client:useLockpick` | `isAdvanced?: boolean` | Start lockpick |
| `vehiclekeys:notification` | `msg: string`, `kind?: string` | Show notification |

```lua
TriggerClientEvent('vehiclekeys:client:useNearestKey', source, false, plate, model)
TriggerClientEvent('vehiclekeys:notification', source, 'Keys received', 'success')
```

---

## Notes

- `plate` and `model` values are normalized (spaces / casing are cleaned).
- `model` is usually the spawn name (`sultan`, `adder`, etc.).
- Most client exports use async callbacks; functions like `GetKey` may wait briefly.
- Prefer server exports over triggering client events — they are safer and more reliable.
