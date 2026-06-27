# qs-vehiclekeys — Commands

All command names and key mappings are configurable in [config/main.lua](../config/main.lua).
Default key bindings can be rebound by each player from **Settings → Key Bindings → FiveM**.

| Command | Default Key | Arguments | Description |
|---------|-------------|-----------|-------------|
| `/usekey` | `U` | — | Lock / unlock the nearest vehicle you have keys for. |
| `/hotwire` | `H` | — | Attempt to hotwire the vehicle you are in. |
| `/stealnpckey` | `G` | — | Try to steal the key from an NPC driver. |
| `/keytransfer` | `F7` | — | Open the key transfer menu (give keys to a nearby player). |
| `/givekeys` | — | `[playerId]` | Give keys for your current vehicle to a player. Uses the nearest player if no ID is given. |
| `/engine` | `M` | — | Toggle the engine of the vehicle you are in. |
| `/lockpick` | — | — | Start the lockpick minigame on the nearest vehicle. |
| `/tracker` | `K` | — | Open the GPS tracker menu. |
| `/diagnostic` | — | — | Scan / run diagnostics on the nearest vehicle. |
| `/anchor` | — | — | Toggle the anchor on the boat you are in. |
| `/vkadmin` | `F6` | — | Open the admin vehicle list / key panel. |
| `/vehiclekeys_interaction` | `F4` | — | Open the VehicleKeys interaction menu (custom client). |

---

## Notes

### Key mappings
The default keys are set in `Config.KeyMappings`:

```lua
Config.KeyMappings = {
    UseVehicleKey     = 'U',
    HotwireVehicle    = 'H',
    StealNpcDriverKey = 'G',
    ToggleEngine      = 'M'
}
```

### Configurable command names
Some commands read their name from the config and can be renamed:

| Command | Config field |
|---------|--------------|
| `/vkadmin` | `Config.AdminPanel.CommandName` |
| `/tracker` | `Config.Tracker.MenuCommand` (key: `Config.Tracker.MenuKey`, default `K`) |
| `/diagnostic` | `Config.Diagnostic.CommandName` |
| `/anchor` | `Config.Anchor.CommandName` |

### Key mappings that must be enabled
A few key bindings are **off by default** and only register when enabled in the config:

- `/vkadmin` key (`F6`) — requires `Config.AdminPanel.EnableKeyMapping = true`.
- `/tracker` key (`K`) — requires `Config.Tracker.EnableMenuKeyMapping = true`.

The commands themselves always work; only the bound key is optional.

---

See also: [docs.md](docs.md) for exports and events, and [items.md](items.md) for item definitions.
