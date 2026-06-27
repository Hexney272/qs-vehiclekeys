





Config                          = {}

--──────────────────────────────────────────────────────────────────────────────
-- Language Selection                                                          [EDIT]
-- [INFO] Choose your preferred language. Files in locales/* (you can add your own).
-- ar, bg, bn, ca, cs, da, de, el, en, es, et, fa, fi, fr, he, hi, hr, hu, id, it,
-- ja, ko, lt, lv, ms, nl, no, pl, pt, ro, ru, sk, sl, sv, sw, th, tr, uk, ur, vi, zh
--──────────────────────────────────────────────────────────────────────────────
Config.Locale                   = 'en'
Config.Path                     = 'nui://qs-vehiclekeys/web/' -- Base NUI path for the web UI (don't change unless you rename the resource).
Config.ImagePath                = Config.Path .. 'images/'    -- Folder where UI images are loaded from.

-- Maps the resource name of each supported framework to its internal key.
local frameworks                = {
    ['es_extended'] = 'esx',
    ['qb-core'] = 'qb',
    ['qbx_core'] = 'qb'
}

-- Maps the resource name of each supported inventory to its internal key.
local inventories               = {
    ['ox_inventory'] = 'ox',
    ['qb-inventory'] = 'qb',
    ['qs-inventory'] = 'qs',
    ['codem-inventory'] = 'codem',
    ['tgiann-inventory'] = 'tgiann'
}

-- Auto-detects which framework/inventory is running; falls back to 'standalone'.
Config.Framework                = DependencyCheck(frameworks) or 'standalone'
Config.Inventory                = DependencyCheck(inventories) or 'standalone'

Config.VehicleKeysItem          = 'vehiclekeys'     -- Inventory item used as a normal vehicle key.
Config.AdminKeyItem             = 'adminvehiclekey' -- Master key item that unlocks any vehicle.
Config.OnlyAdminsCanUseAdminKey = true              -- true = only admins can use the master key, even if others have the item.

Config.LockDistance             = 20.0              -- Max distance (meters) to lock/unlock a vehicle remotely.
Config.UseCommandKeyDistance    = 5.0               -- Max distance to use the key via command/keybind on a nearby vehicle.

-- Default keybinds for the main actions (players can rebind in GTA settings).
Config.KeyMappings              = {
    UseVehicleKey = 'U',     -- Lock/unlock the nearest owned vehicle.
    HotwireVehicle = 'H',    -- Start hotwiring a vehicle you don't have keys for.
    StealNpcDriverKey = 'G', -- Steal keys from an NPC driver.
    ToggleEngine = 'M'       -- Turn the engine on/off.
}

-- In-game admin panel to give/manage keys.
Config.AdminPanel               = {
    Enabled = true,
    CommandName = 'vkadmin',
    EnableKeyMapping = false,
    Key = 'F6',
    PageSize = 30
}

-- Lost-key recovery: talk to an NPC to get a replacement key for an owned vehicle.
Config.KeyRecovery              = {
    Enabled = true,
    NPCs = {
        {
            coords = vec4(214.219788, -817.727478, 30.661499, 249.448822), -- Position + heading of the NPC.
            model = 'cs_bankman'                                           -- Ped model for the NPC.
        }
    },
    TextUiDistance = 2.0,      -- Distance to show the "press to interact" prompt.
    InteractionDistance = 2.0, -- Distance allowed to actually interact.
    OpenControl = 'E'          -- Key used to open the recovery menu.
}

-- Key usage visuals (animation + prop) grouped like crime-style config blocks.
Config.KeySettings              = {
    Animation = {
        Dict = 'anim@mp_player_intmenu@key_fob@', -- Animation dictionary.
        Clip = 'fob_click_fp',                    -- Animation clip name.
        Duration = 900,                           -- How long the animation plays (ms).
        Flag = 48                                 -- Animation flags.
    },
    Prop = {
        Model = 'p_car_keys_01' -- Key prop shown in the player's hand.
    }
}

Config.Sounds                   = true      -- Enable key/lock sound effects.
Config.SoundsDisableDefault     = false     -- true = mute GTA's native lock sound.
Config.SoundsVolume             = 0.3       -- Sound volume (0.0 - 1.0).
Config.SoundsFileName           = 'carkeys' -- Sound file name (in the web/sounds folder).
Config.SoundsDistance           = 4.0       -- Distance the sound can be heard from.

--──────────────────────────────────────────────────────────────────────────────
-- Targeting Settings                                                          [EDIT]
-- [INFO] Define interaction method and hitbox dimensions.
--──────────────────────────────────────────────────────────────────────────────
Config.TargetWidth              = 5.0   -- [EDIT] Interaction area width.
Config.TargetHeight             = 5.0   -- [EDIT] Interaction area height.
Config.UseTarget                = false -- [EDIT] true = qb-target/ox_target | false = disable target system.
Config.ZoneDebug                = false -- Draw target zones for debugging.

-- Default toggle states for the on-screen UI elements.
Config.NuiDefaultState          = {
    radialEnabled = true, -- Show the radial menu.
    textUiEnabled = true  -- Show text UI prompts.
}

-- Jobs treated as police (used for dispatch alerts and police-gated actions).
Config.PoliceJobs               = {
    police = true
}

Config.Dispatch                 = 'default' -- Dispatch system to use: default | qs-dispatch | qs-smartphone | origen

-- Per-dispatch settings used to send theft alerts to police.
Config.DispatchSettings         = {
    Default = {
        Blip = {
            Sprite = 161,      -- Blip icon.
            Colour = 1,        -- Blip color.
            Scale = 1.2,       -- Blip size.
            DurationMs = 20000 -- How long the blip stays on the map (ms).
        }
    },
    QsDispatch = {
        Code = '10-42',            -- Radio code shown in the alert.
        Snippet = 'Vehicle Theft', -- Short alert description.
        Blip = {
            Sprite = 490,
            Scale = 1.5,
            Colour = 1,
            DurationMs = 3 * 60 * 1000 -- 3 minutes.
        }
    },
    Origen = {
        Type = 'GENERAL' -- Alert category for origen_police.
    }
}

-- Hotwiring: steal a vehicle without keys via a minigame.
Config.Hotwire                  = {
    Enabled = true,
    Duration = 10000,                          -- Time the action takes (ms).
    SkillCheck = { 'easy', 'easy', 'medium' }, -- ox_lib skillcheck difficulty sequence.
    GiveKeyOnSuccess = true,                   -- Give a key when the hotwire succeeds.
    RequirePolice = false,                     -- Require police online to allow hotwiring.
    MinimumPolice = 0,                         -- Minimum police online required.
    DispatchChance = 35                        -- % chance to alert police on attempt.
}

-- Lockpicking: break into a locked vehicle using a lockpick item.
Config.Lockpick                 = {
    Enabled = true,
    Item = 'carlockpick',                      -- Standard lockpick item.
    AdvancedItem = 'caradvancedlockpick',      -- Advanced lockpick item.
    Distance = 4.0,                            -- Max distance to lockpick a vehicle.
    Duration = 12000,                          -- Time the action takes (ms).
    SkillCheck = { 'easy', 'easy', 'medium' }, -- Skillcheck difficulty sequence.
    RequirePolice = true,                      -- Require police online to allow lockpicking.
    MinimumPolice = 0,                         -- Minimum police online required.
    AdvancedBypassPolice = true,               -- Advanced lockpick ignores the police requirement.
    DispatchChance = 45,                       -- % chance to alert police on attempt.
    AlarmChance = 35,                          -- % chance to trigger the car alarm.
    KeepChance = 50,                           -- % chance to keep the lockpick on success.
    RemoveOnFail = true,                       -- Remove standard lockpick when failing.
    RemoveAdvancedOnFail = true,               -- Remove advanced lockpick when failing.
    GiveKeyOnSuccess = false,                  -- Give a key on success (false = only unlocks).
    Whitelist = {                              -- Vehicles that can't be lockpicked (e.g. bicycles).
        'bmx',
        'cruiser',
        'enduro',
        'fixter',
        'scorcher',
        'tribike',
        'tribike2',
        'tribike3'
    }
}

-- Automatically locks parked NPC/world vehicles so they require keys to enter.
Config.NpcVehicleLock           = {
    Enabled = true,
    ScanDistance = 40.0, -- Radius (meters) to scan for vehicles to lock.
    ScanInterval = 2500, -- How often to scan (ms).
    LockedState = 2      -- Native lock state to apply (2 = locked).
}

-- Vehicle models/classes that should never be auto-locked (uncomment to use).
Config.NoLockVehicles           = {
    -- 'police',
    -- 'ambulance'
}

-- Steal keys directly from an NPC who is driving a vehicle.
Config.NpcDriverKeySteal        = {
    Enabled = true,
    Duration = 5000,          -- Time the action takes (ms).
    Cooldown = 6000,          -- Cooldown between attempts (ms).
    MaxDistance = 12.0,       -- Max distance to target an NPC driver.
    ShootChance = 25,         -- % chance the NPC shoots back.
    ProgressCanCancel = true, -- Allow cancelling the progress bar.
    NpcFleeDistance = 300.0,  -- How far the NPC flees after being robbed.
    RequirePolice = true,     -- Require police online to allow this.
    MinimumPolice = 2,        -- Minimum police online required.
    DispatchChance = 60,      -- % chance to alert police.
    ForceNpcExit = true       -- Force the NPC out of the vehicle.
}

-- Engine behavior and key requirements.
Config.Engine                   = {
    RequireKey = true,                    -- Need a key to start the engine.
    KeepEngineOn = true,                  -- Keep the engine running when exiting the vehicle.
    MaintainSteeringAngle = true,         -- Keep wheels turned when leaving the vehicle.
    DisableAutoStartWithAccelerate = true -- Prevent starting the engine just by accelerating.
}

-- License plate changing system.
Config.Plate                    = {
    Enabled = true,
    Letters = 3,                 -- Number of letters in generated plates.
    Numbers = 3,                 -- Number of numbers in generated plates.
    UseSpace = true,             -- Add a space between letters and numbers.
    ChangeDuration = 5000,       -- Time to change a plate (ms).
    RequireScrewdriver = true,   -- Require a screwdriver tool to change plates.
    RequireOwnedVehicle = true,  -- Only allow changing plates on owned vehicles.
    UseBootForTarget = false,    -- Place the target zone on the boot instead of the plate.
    ItemName = 'plate',          -- Plate item name.
    ToolItemName = 'screwdriver' -- Tool item required to change plates.
}

-- GPS tracker that can be installed on vehicles to locate them later.
Config.Tracker                  = {
    Enabled = true,
    GPSItemName = 'vehiclegps',         -- Item used to locate a tracked vehicle.
    TrackerItemName = 'vehicletracker', -- Item installed on the vehicle.
    RequireOwnedVehicle = true,         -- Only install on owned vehicles.
    UseTarget = true,                   -- Use the target system to install/remove.
    UseBootForTarget = false,           -- Place the target zone on the boot.
    InstallDistance = 3.0,              -- Max distance to install (meters).
    RemoveDistance = 2.5,               -- Max distance to remove (meters).
    InstallDuration = 2500,             -- Install time (ms).
    RemoveDuration = 2500,              -- Remove time (ms).
    LocateDuration = 20000,             -- How long the locate blip lasts (ms).
    EnableMenuKeyMapping = false,       -- true = bind a key to open the tracker menu.
    MenuCommand = 'tracker',            -- Command to open the tracker menu.
    MenuKey = 'K',                      -- Key used when EnableMenuKeyMapping is true.
    RemoveMinigame = {                  -- Optional skillcheck when removing a tracker.
        Enabled = true,
        SkillCheck = { 'easy', 'easy', 'medium' }
    },
    Blip = { -- Blip shown when locating a vehicle.
        Sprite = 161,
        Colour = 1,
        Display = 2,
        Scale = 1.1,
        ShortRange = false
    }
}

-- Vehicle diagnostic tool (check engine/health, window tint, etc.).
Config.Diagnostic               = {
    Enabled = true,
    NeedKey = false, -- Require keys to run a diagnostic.
    AllowedJobs = {  -- Jobs allowed to run diagnostics.
        mechanic = true,
        police = true
    },
    AllowedTintJobs = { -- Jobs allowed to measure window tint.
        mechanic = true,
        police = true
    },
    UseCommand = true,          -- Allow opening via command.
    CommandName = 'diagnostic', -- Command name.
    UseTarget = true,           -- Allow opening via target system.
    TargetDistance = 2.5,       -- Max distance for the target.
    FindVehicleDistance = 5.0,  -- Max distance to detect a vehicle.
    ScanDuration = 5000,        -- Diagnostic scan time (ms).
    TintMeasureDuration = 5000, -- Tint measure time (ms).
    TempUnit = 'c',             -- Temperature unit: 'c' or 'f'.
    RefreshWhileOpen = 1500     -- How often the panel refreshes data (ms).
}

-- Vehicle anchor: lock a boat/vehicle in place so it can't drift or be moved.
Config.Anchor                   = {
    Enabled = true,
    CommandName = 'anchor',  -- Command to toggle the anchor.
    SpeedLimitMps = 2.0,     -- Max speed (m/s) allowed to anchor.
    ProgressDuration = 1500, -- Time the action takes (ms).
    AllowCancel = true,      -- Allow cancelling the progress bar.
    UseSound = true,         -- Play a sound when anchoring.
    Animation = {
        Dict = 'melee@unarmed@streamed_variations',
        Clip = 'plyr_takedown_front_slap'
    }
}

-- Copy Shop: NPC where players can duplicate keys and buy related items.
Config.CopyShop                 = {
    Enabled = true,
    TextUiDistance = 2.0,                                                                    -- Distance to show the interact prompt.
    InteractDistance = 2.0,                                                                  -- Distance allowed to interact.
    PedRenderDistance = 10.0,                                                                -- Distance at which the NPC spawns/renders.
    UseBlip = true,                                                                          -- Show a map blip for the shop.
    UseTarget = true,                                                                        -- Allow interacting via target system.
    OpenControl = 'E',                                                                       -- Key used to open the shop.
    Npc = {
        Model = 's_m_y_xmech_01',                                                            -- Ped model.
        Coords = vec4(-31.402076721191, -1647.4393310547, 29.282875061035, 68.450233459473), -- Position + heading.
        Animation = {
            Dict = 'move_weapon@jerrycan@generic',
            Clip = 'idle',
            Flag = 63
        },
        Prop = { -- Prop attached to the NPC.
            Model = 'imp_prop_tool_box_01a',
            Bone = 28422,
            Rotation = vec3(0.370000, 0.020000, 0.000000),
            Offset = vec3(90.000000, 0.000000, -90.000000)
        }
    },
    Blip = {
        Name = 'Copy keys', -- Blip label.
        Sprite = 186,
        Colour = 3,
        Scale = 0.8
    },
    Prices = {                                                 -- Cost of each service/item.
        CopyNearbyVehicleKey = 500,                            -- Copy a key for a nearby vehicle.
        CopyFromOwnedKey = 250,                                -- Copy a key you already own.
        Plate = 500,                                           -- Buy a plate item.
        Screwdriver = 150                                      -- Buy a screwdriver item.
    },
    Account = Config.Framework == 'esx' and 'money' or 'cash', -- Account charged (auto by framework).
    Items = {
        Plate = Config.Plate.ItemName,                         -- Plate item (synced with Config.Plate).
        Screwdriver = Config.Plate.ToolItemName                -- Screwdriver item (synced with Config.Plate).
    }
}

Config.Debug                    = true -- Enable debug prints/logs (turn off in production).






