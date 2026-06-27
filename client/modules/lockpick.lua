





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = false
L1_1 = {}
L2_1 = nil
L3_1 = pairs
L4_1 = Config
L4_1 = L4_1.Lockpick
if L4_1 then
  L4_1 = Config
  L4_1 = L4_1.Lockpick
  L4_1 = L4_1.Whitelist
  if L4_1 then
    goto lbl_18
  end
end
L4_1 = {}
::lbl_18::
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
for L7_1, L8_1 in L3_1, L4_1, L5_1, L6_1 do
  L9_1 = type
  L10_1 = L8_1
  L9_1 = L9_1(L10_1)
  if "string" == L9_1 and "" ~= L8_1 then
    L9_1 = joaat
    L10_1 = L8_1
    L9_1 = L9_1(L10_1)
    L1_1[L9_1] = true
  end
end
L3_1 = {}
L3_1[2] = true
L3_1[3] = true
L3_1[5] = true
L3_1[7] = true
function L4_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = Config
    L1_2 = L1_2.Lockpick
    if L1_2 then
      L1_2 = Config
      L1_2 = L1_2.Lockpick
      L1_2 = L1_2.AdvancedItem
      if L1_2 then
        goto lbl_13
      end
    end
    L1_2 = "caradvancedlockpick"
    ::lbl_13::
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Lockpick
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Lockpick
    L1_2 = L1_2.Item
    if L1_2 then
      goto lbl_24
    end
  end
  L1_2 = "carlockpick"
  ::lbl_24::
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L1_2 = L2_2[L1_2]
  L1_2 = true == L1_2
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetVehicleDoorLockStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L1_2 = L2_2[L1_2]
  L1_2 = true == L1_2
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "vehiclekeys:server:canStartHotwire"
  L3_2 = false
  L4_2 = "lockpick"
  L5_2 = true == A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L4_2 = true == L1_2
  L5_2 = L2_2 or L5_2
  if not L2_2 then
    L5_2 = 0
  end
  L6_2 = L3_2 or L6_2
  if not L3_2 then
    L6_2 = 0
  end
  return L4_2, L5_2, L6_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 <= 0 then
    return
  end
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 100
  L1_2 = L1_2(L2_2, L3_2)
  if A0_2 < L1_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "vehiclekeys:server:dispatch"
  L3_2 = {}
  L4_2 = i18n
  L4_2 = L4_2.t
  L5_2 = "notify.dispatch_title"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = i18n
  L4_2 = L4_2.t
  L5_2 = "notify.dispatch_lockpick"
  L4_2 = L4_2(L5_2)
  L3_2.message = L4_2
  L4_2 = GetEntityCoords
  L5_2 = cache
  L5_2 = L5_2.ped
  L4_2 = L4_2(L5_2)
  L3_2.coords = L4_2
  L1_2(L2_2, L3_2)
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 <= 0 then
    return
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 100
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 < L2_2 then
    return
  end
  L2_2 = SetVehicleAlarm
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = StartVehicleAlarm
  L3_2 = A0_2
  L2_2(L3_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "vehiclekeys:server:lockpick:hasItem"
  L3_2 = false
  L4_2 = true == A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = true == L1_2
  return L1_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L2_1 = L2_2
  L2_2 = TriggerServerEvent
  L3_2 = "vehiclekeys:server:lockpickConsumeItem"
  L4_2 = true == A0_2
  L5_2 = true == A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 3000
  while true do
    L3_2 = L2_1
    if nil ~= L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = L2_1
  L4_2 = nil
  L2_1 = L4_2
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L3_2.reason
  if "kept" == L4_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.lockpick_item_kept"
    L5_2 = L5_2(L6_2)
    L6_2 = "info"
    L4_2(L5_2, L6_2)
    return L3_2
  end
  L4_2 = L3_2.reason
  if "removed" == L4_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.lockpick_item_broke"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
  end
  return L3_2
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Config
  L1_2 = L1_2.Lockpick
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L1_2.Enabled
  if true ~= L2_2 then
    return
  end
  L2_2 = L0_1
  if L2_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.lockpick_in_progress"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = cache
  L2_2 = L2_2.vehicle
  if L2_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.cannot_lockpick_inside"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = lib
  L3_2 = L3_2.getClosestVehicle
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2.Distance
  if not L5_2 then
    L5_2 = 4.0
  end
  L6_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 and 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_64
    end
  end
  L4_2 = Notification
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "notify.no_vehicle"
  L5_2 = L5_2(L6_2)
  L6_2 = "error"
  do return L4_2(L5_2, L6_2) end
  ::lbl_64::
  L4_2 = L5_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.lockpick_whitelisted"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L6_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.lockpick_not_locked"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L7_1
  L5_2 = true == A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  if not L4_2 then
    L7_2 = Notification
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.lockpick_need_police"
    L10_2 = {}
    L10_2.current = L5_2
    L10_2.required = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = "error"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = L10_1
  L8_2 = true == A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = Notification
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.lockpick_missing_item"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = true
  L0_1 = L7_2
  L7_2 = lib
  L7_2 = L7_2.skillCheck
  L8_2 = L1_2.SkillCheck
  if not L8_2 then
    L8_2 = {}
    L9_2 = "easy"
    L10_2 = "easy"
    L11_2 = "medium"
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
  end
  L7_2 = L7_2(L8_2)
  L8_2 = false
  L0_1 = L8_2
  if not L7_2 then
    L8_2 = L11_1
    L9_2 = true == A0_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = L9_1
    L9_2 = L3_2
    L10_2 = L1_2.AlarmChance
    if not L10_2 then
      L10_2 = 0
    end
    L8_2(L9_2, L10_2)
    L8_2 = L8_1
    L9_2 = L1_2.DispatchChance
    if not L9_2 then
      L9_2 = 0
    end
    L8_2(L9_2)
    L8_2 = Notification
    L9_2 = i18n
    L9_2 = L9_2.t
    L10_2 = "notify.lockpick_failed"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    return L8_2(L9_2, L10_2)
  end
  L8_2 = DoorLogic
  L9_2 = L3_2
  L10_2 = true
  L11_2 = 2
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L9_1
  L9_2 = L3_2
  L10_2 = L1_2.AlarmChance
  if not L10_2 then
    L10_2 = 0
  end
  L8_2(L9_2, L10_2)
  L8_2 = L8_1
  L9_2 = L1_2.DispatchChance
  if not L9_2 then
    L9_2 = 0
  end
  L8_2(L9_2)
  L8_2 = L11_1
  L9_2 = true == A0_2
  L10_2 = true
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L9_2 = L8_2.reason
    if "missing_item" == L9_2 then
      L9_2 = DoorLogic
      L10_2 = L3_2
      L11_2 = true
      L12_2 = 1
      L13_2 = true
      L14_2 = true
      L15_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = Notification
      L10_2 = i18n
      L10_2 = L10_2.t
      L11_2 = "notify.lockpick_missing_item"
      L10_2 = L10_2(L11_2)
      L11_2 = "error"
      return L9_2(L10_2, L11_2)
    end
  end
  L9_2 = L1_2.GiveKeyOnSuccess
  if true == L9_2 then
    L9_2 = TriggerServerEvent
    L10_2 = "vehiclekeys:server:giveKey"
    L11_2 = Utils
    L11_2 = L11_2.GetVehiclePlate
    L12_2 = L3_2
    L11_2 = L11_2(L12_2)
    L12_2 = Utils
    L12_2 = L12_2.GetVehicleModelName
    L13_2 = L3_2
    L12_2 = L12_2(L13_2)
    L13_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = Notification
  L10_2 = i18n
  L10_2 = L10_2.t
  L11_2 = "notify.lockpick_success"
  L10_2 = L10_2(L11_2)
  L11_2 = "success"
  L9_2(L10_2, L11_2)
end
UseLockpick = L12_1
L12_1 = RegisterNetEvent
L13_1 = "vehiclekeys:client:onLockpickItemResult"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = true == A0_2
  L2_2.removed = L3_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L2_2.reason = L3_2
  L2_1 = L2_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "vehiclekeys:client:useLockpick"
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = UseLockpick
  L2_2 = true == A0_2
  L1_2(L2_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "lockpick"
function L14_1()
  local L0_2, L1_2
  L0_2 = UseLockpick
  L1_2 = false
  L0_2(L1_2)
end
L15_1 = false
L12_1(L13_1, L14_1, L15_1)
L12_1 = exports
L13_1 = "UseLockpick"
L14_1 = UseLockpick
L12_1(L13_1, L14_1)






