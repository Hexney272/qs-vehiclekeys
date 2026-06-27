





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = cache
  L0_2 = L0_2.ped
  L1_2 = cache
  L1_2 = L1_2.vehicle
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.KeySettings
  L1_2 = L1_2.Animation
  L2_2 = Config
  L2_2 = L2_2.KeySettings
  L2_2 = L2_2.Prop
  L3_2 = L1_2.Dict
  L4_2 = L1_2.Clip
  L5_2 = L1_2.Duration
  L6_2 = L1_2.Flag
  L7_2 = L2_2.Model
  L8_2 = lib
  L8_2 = L8_2.playAnim
  L9_2 = L0_2
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = 8.0
  L13_2 = -8.0
  L14_2 = L5_2
  L15_2 = L6_2
  L16_2 = 0
  L17_2 = false
  L18_2 = 0
  L19_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = lib
  L8_2 = L8_2.requestModel
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = CreateObject
  L9_2 = joaat
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = AttachEntityToEntity
  L10_2 = L8_2
  L11_2 = L0_2
  L12_2 = GetPedBoneIndex
  L13_2 = L0_2
  L14_2 = 28422
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = -0.02
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = true
  L20_2 = true
  L21_2 = false
  L22_2 = true
  L23_2 = 1
  L24_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L9_2 = SetTimeout
  L10_2 = L5_2
  function L11_2()
    local L0_3, L1_3
    L0_3 = DoesEntityExist
    L1_3 = L8_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = L8_2
      L0_3(L1_3)
    end
    L0_3 = ClearPedTasks
    L1_3 = L0_2
    L0_3(L1_3)
  end
  L9_2(L10_2, L11_2)
end
L1_1 = false
L2_1 = false
L3_1 = false
L4_1 = 0
L5_1 = {}
L6_1 = false
L7_1 = {}
L8_1 = {}
L9_1 = {}
L10_1 = {}
L11_1 = pairs
L12_1 = Config
L12_1 = L12_1.NoLockVehicles
if not L12_1 then
  L12_1 = {}
end
L11_1, L12_1, L13_1, L14_1 = L11_1(L12_1)
for L15_1, L16_1 in L11_1, L12_1, L13_1, L14_1 do
  L17_1 = type
  L18_1 = L16_1
  L17_1 = L17_1(L18_1)
  if "string" == L17_1 and "" ~= L16_1 then
    L17_1 = joaat
    L18_1 = L16_1
    L17_1 = L17_1(L18_1)
    L7_1[L17_1] = true
  end
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = SetVehicleLights
    L6_2 = A0_2
    L7_2 = 2
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 140
    L5_2(L6_2)
    L5_2 = SetVehicleLights
    L6_2 = A0_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 140
    L5_2(L6_2)
  end
  L1_2 = SetVehicleLights
  L2_2 = A0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = lib
  L3_2 = L3_2.getClosestVehicle
  L4_2 = L2_2
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = Config
    L5_2 = L5_2.UseCommandKeyDistance
  end
  L6_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2
  L4_2 = nil
  L5_2 = ipairs
  L6_2 = GetActivePlayers
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = PlayerId
    L11_2 = L11_2()
    if L10_2 ~= L11_2 then
      L11_2 = GetPlayerPed
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if 0 ~= L11_2 then
        L12_2 = DoesEntityExist
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = GetEntityCoords
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L12_2 = L2_2 - L12_2
          L12_2 = #L12_2
          if L3_2 >= L12_2 then
            L3_2 = L12_2
            L13_2 = GetPlayerServerId
            L14_2 = L10_2
            L13_2 = L13_2(L14_2)
            L4_2 = L13_2
          end
        end
      end
    end
  end
  return L4_2
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "vehiclekeys:server:hasKey"
  L4_2 = false
  L5_2 = A0_2
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = true == L2_2
  return L3_2
end
GetKey = L14_1
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 and 0 ~= A0_2 then
    L6_2 = DoesEntityExist
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  A1_2 = true == A1_2
  A3_2 = true == A3_2
  A4_2 = true == A4_2
  A5_2 = true == A5_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = GetVehicleDoorLockStatus
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
  end
  if 1 == L6_2 or 0 == L6_2 then
    L7_2 = 2
    if L7_2 then
      goto lbl_40
    end
  end
  L7_2 = 1
  ::lbl_40::
  if not A1_2 then
    L8_2 = L0_1
    L8_2()
  end
  if not A4_2 then
    L8_2 = Config
    L8_2 = L8_2.SoundsDisableDefault
    if not L8_2 then
      if 2 == L7_2 then
        L8_2 = PlayVehicleDoorCloseSound
        L9_2 = A0_2
        L10_2 = 1
        L8_2(L9_2, L10_2)
      else
        L8_2 = PlayVehicleDoorOpenSound
        L9_2 = A0_2
        L10_2 = 0
        L8_2(L9_2, L10_2)
      end
    end
    L8_2 = Config
    L8_2 = L8_2.Sounds
    if L8_2 then
      L8_2 = TriggerServerEvent
      L9_2 = "InteractSound_SV:PlayWithinDistance"
      L10_2 = Config
      L10_2 = L10_2.SoundsDistance
      L11_2 = Config
      L11_2 = L11_2.SoundsFileName
      L12_2 = Config
      L12_2 = L12_2.SoundsVolume
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L8_2 = SetVehicleDoorsLocked
  L9_2 = A0_2
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = TriggerServerEvent
  L9_2 = "vehiclekeys:server:setVehLockState"
  L10_2 = NetworkGetNetworkIdFromEntity
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  if not A5_2 then
    L8_2 = L11_1
    L9_2 = A0_2
    L8_2(L9_2)
  end
  if not A3_2 then
    if 2 == L7_2 then
      L8_2 = "notify.locked"
      if L8_2 then
        goto lbl_98
      end
    end
    L8_2 = "notify.unlocked"
    ::lbl_98::
    L9_2 = Notification
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if 2 == L7_2 then
      L11_2 = "error"
      if L11_2 then
        goto lbl_109
      end
    end
    L11_2 = "success"
    ::lbl_109::
    L9_2(L10_2, L11_2)
  end
end
DoorLogic = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = -1
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetVehicleDoorLockStatus
  L2_2 = A0_2
  return L1_2(L2_2)
end
GetDoorState = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L7_1
  L1_2 = L2_2[L1_2]
  L1_2 = true == L1_2
  return L1_2
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Utils
  L1_2 = L1_2.GetVehiclePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.GetVehicleModelName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "%s:%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L1_2
  L6_2 = L2_2
  return L3_2(L4_2, L5_2, L6_2)
end
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = L15_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L9_1
  L2_2[L1_2] = true
end
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L15_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L10_1
  L4_2 = L4_2[L2_2]
  if not A1_2 and L4_2 then
    L5_2 = L4_2.at
    L5_2 = L3_2 - L5_2
    L6_2 = 5000
    if L5_2 < L6_2 then
      L5_2 = L4_2.value
      return L5_2
    end
  end
  L5_2 = Utils
  L5_2 = L5_2.GetVehiclePlate
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = Utils
  L6_2 = L6_2.GetVehicleModelName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetKey
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L10_1
  L9_2 = {}
  L10_2 = true == L7_2
  L9_2.value = L10_2
  L9_2.at = L3_2
  L8_2[L2_2] = L9_2
  L8_2 = true == L7_2
  return L8_2
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L9_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L17_1
  L3_2 = A0_2
  return L2_2(L3_2)
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetVehicleEngineOn
  L2_2 = A0_2
  L3_2 = true
  L4_2 = true
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetVehicleUndriveable
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetVehicleNeedsToBeHotwired
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "vehiclekeys:server:canStartHotwire"
  L3_2 = false
  L4_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2)
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
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 <= 0 then
    return
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 100
  L2_2 = L2_2(L3_2, L4_2)
  if A0_2 < L2_2 then
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "vehiclekeys:server:dispatch"
  L4_2 = {}
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "notify.dispatch_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.message = A1_2
  L5_2 = GetEntityCoords
  L6_2 = cache
  L6_2 = L6_2.ped
  L5_2 = L5_2(L6_2)
  L4_2.coords = L5_2
  L2_2(L3_2, L4_2)
end
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = Config
  L0_2 = L0_2.Hotwire
  L0_2 = L0_2.Enabled
  if L0_2 then
    L0_2 = L2_1
    if not L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = L1_1
  if L0_2 then
    L0_2 = Notification
    L1_2 = i18n
    L1_2 = L1_2.t
    L2_2 = "notify.hotwire_in_progress"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    return L0_2(L1_2, L2_2)
  end
  L0_2 = cache
  L0_2 = L0_2.ped
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.no_vehicle"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = GetPedInVehicleSeat
  L3_2 = L1_2
  L4_2 = -1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= L0_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.not_driver"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.GetVehiclePlate
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.GetVehicleModelName
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetKey
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.already_has_key"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L20_1
  L5_2 = "hotwire"
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  if not L4_2 then
    L7_2 = Notification
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.hotwire_need_police"
    L10_2 = {}
    L10_2.current = L5_2
    L10_2.required = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = "error"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = true
  L1_1 = L7_2
  L7_2 = Config
  L7_2 = L7_2.Hotwire
  L7_2 = L7_2.SkillCheck
  if not L7_2 then
    L7_2 = {}
    L8_2 = "easy"
    L9_2 = "easy"
    L10_2 = "medium"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
  end
  L8_2 = lib
  L8_2 = L8_2.skillCheck
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = false
  L1_1 = L9_2
  if not L8_2 then
    L9_2 = L21_1
    L10_2 = Config
    L10_2 = L10_2.Hotwire
    L10_2 = L10_2.DispatchChance
    if not L10_2 then
      L10_2 = 0
    end
    L11_2 = i18n
    L11_2 = L11_2.t
    L12_2 = "notify.dispatch_hotwire"
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = Notification
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = "notify.hotwire_failed"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = L16_1
  L10_2 = L1_2
  L9_2(L10_2)
  L9_2 = L19_1
  L10_2 = L1_2
  L9_2(L10_2)
  L9_2 = Config
  L9_2 = L9_2.Hotwire
  L9_2 = L9_2.GiveKeyOnSuccess
  if L9_2 then
    L9_2 = TriggerServerEvent
    L10_2 = "vehiclekeys:server:giveKey"
    L11_2 = L2_2
    L12_2 = L3_2
    L13_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = L21_1
  L10_2 = Config
  L10_2 = L10_2.Hotwire
  L10_2 = L10_2.DispatchChance
  if not L10_2 then
    L10_2 = 0
  end
  L11_2 = i18n
  L11_2 = L11_2.t
  L12_2 = "notify.dispatch_hotwire"
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = Notification
  L10_2 = i18n
  L10_2 = L10_2.t
  L11_2 = "notify.hotwire_success"
  L10_2 = L10_2(L11_2)
  L11_2 = "success"
  L9_2(L10_2, L11_2)
end
TryHotwireCurrentVehicle = L22_1
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = Config
  L0_2 = L0_2.NpcDriverKeySteal
  L0_2 = L0_2.Enabled
  if not L0_2 then
    return
  end
  L0_2 = L3_1
  if L0_2 then
    L0_2 = Notification
    L1_2 = i18n
    L1_2 = L1_2.t
    L2_2 = "notify.steal_in_progress"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    return L0_2(L1_2, L2_2)
  end
  L0_2 = IsPedArmed
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 6
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = Notification
    L1_2 = i18n
    L1_2 = L1_2.t
    L2_2 = "notify.need_weapon"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    return L0_2(L1_2, L2_2)
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L4_1
  if L0_2 < L1_2 then
    L1_2 = math
    L1_2 = L1_2.max
    L2_2 = 1
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = L4_1
    L4_2 = L4_2 - L0_2
    L4_2 = L4_2 / 1000
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.steal_cooldown"
    L5_2 = {}
    L5_2.seconds = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L1_2 = GetEntityPlayerIsFreeAimingAt
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L2_2()
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if L1_2 and 0 ~= L2_2 then
    L3_2 = IsEntityAPed
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_82
    end
  end
  L3_2 = Notification
  L4_2 = i18n
  L4_2 = L4_2.t
  L5_2 = "notify.aim_npc_driver"
  L4_2 = L4_2(L5_2)
  L5_2 = "error"
  do return L3_2(L4_2, L5_2) end
  ::lbl_82::
  L3_2 = IsPedAPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "notify.aim_npc_driver"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = GetVehiclePedIsIn
  L4_2 = L2_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if 0 ~= L3_2 then
    L4_2 = GetPedInVehicleSeat
    L5_2 = L3_2
    L6_2 = -1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == L2_2 then
      goto lbl_115
    end
  end
  L4_2 = Notification
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "notify.aim_npc_driver"
  L5_2 = L5_2(L6_2)
  L6_2 = "error"
  do return L4_2(L5_2, L6_2) end
  ::lbl_115::
  L4_2 = tonumber
  L5_2 = Config
  L5_2 = L5_2.NpcDriverKeySteal
  L5_2 = L5_2.MaxDistance
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 12.0
  end
  L5_2 = GetEntityCoords
  L6_2 = cache
  L6_2 = L6_2.ped
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityCoords
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 - L6_2
  L5_2 = #L5_2
  if L4_2 < L5_2 then
    L6_2 = Notification
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "notify.steal_too_far"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = Utils
  L6_2 = L6_2.GetVehiclePlate
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = Utils
  L7_2 = L7_2.GetVehicleModelName
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetKey
  L9_2 = L6_2
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L8_2 = Notification
    L9_2 = i18n
    L9_2 = L9_2.t
    L10_2 = "notify.already_has_key"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    return L8_2(L9_2, L10_2)
  end
  L8_2 = L6_2 or L8_2
  if "" == L6_2 or not L6_2 then
    L8_2 = "entity:%s"
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = L3_2
    L8_2 = L8_2(L9_2, L10_2)
  end
  L9_2 = L5_1
  L9_2 = L9_2[L8_2]
  if L9_2 then
    L9_2 = Notification
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = "notify.steal_already_robbed"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = L20_1
  L10_2 = "npc_steal"
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  if not L9_2 then
    L12_2 = Notification
    L13_2 = i18n
    L13_2 = L13_2.t
    L14_2 = "notify.hotwire_need_police"
    L15_2 = {}
    L15_2.current = L10_2
    L15_2.required = L11_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = "error"
    return L12_2(L13_2, L14_2)
  end
  L12_2 = math
  L12_2 = L12_2.max
  L13_2 = 0
  L14_2 = tonumber
  L15_2 = Config
  L15_2 = L15_2.NpcDriverKeySteal
  L15_2 = L15_2.Cooldown
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = 0
  end
  L12_2 = L12_2(L13_2, L14_2)
  L12_2 = L0_2 + L12_2
  L4_1 = L12_2
  L12_2 = L5_1
  L12_2[L8_2] = true
  L12_2 = math
  L12_2 = L12_2.min
  L13_2 = 100
  L14_2 = math
  L14_2 = L14_2.max
  L15_2 = 0
  L16_2 = tonumber
  L17_2 = Config
  L17_2 = L17_2.NpcDriverKeySteal
  L17_2 = L17_2.ShootChance
  L16_2 = L16_2(L17_2)
  if not L16_2 then
    L16_2 = 0
  end
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2, L16_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if L12_2 > 0 then
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = 100
    L13_2 = L13_2(L14_2)
    if L12_2 >= L13_2 then
      L13_2 = GiveWeaponToPed
      L14_2 = L2_2
      L15_2 = 453432689
      L16_2 = 60
      L17_2 = false
      L18_2 = true
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = SetCurrentPedWeapon
      L14_2 = L2_2
      L15_2 = 453432689
      L16_2 = true
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = SetBlockingOfNonTemporaryEvents
      L14_2 = L2_2
      L15_2 = false
      L13_2(L14_2, L15_2)
      L13_2 = ClearPedTasks
      L14_2 = L2_2
      L13_2(L14_2)
      L13_2 = TaskCombatPed
      L14_2 = L2_2
      L15_2 = cache
      L15_2 = L15_2.ped
      L16_2 = 0
      L17_2 = 16
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L13_2 = L21_1
      L14_2 = Config
      L14_2 = L14_2.NpcDriverKeySteal
      L14_2 = L14_2.DispatchChance
      if not L14_2 then
        L14_2 = 0
      end
      L15_2 = i18n
      L15_2 = L15_2.t
      L16_2 = "notify.dispatch_carjacking"
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = Notification
      L14_2 = i18n
      L14_2 = L14_2.t
      L15_2 = "notify.steal_resisted"
      L14_2 = L14_2(L15_2)
      L15_2 = "error"
      return L13_2(L14_2, L15_2)
    end
  end
  L13_2 = Config
  L13_2 = L13_2.NpcDriverKeySteal
  L13_2 = L13_2.ForceNpcExit
  if L13_2 then
    L13_2 = TaskLeaveVehicle
    L14_2 = L2_2
    L15_2 = L3_2
    L16_2 = 256
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = Wait
    L14_2 = 900
    L13_2(L14_2)
  end
  L13_2 = SetBlockingOfNonTemporaryEvents
  L14_2 = L2_2
  L15_2 = true
  L13_2(L14_2, L15_2)
  L13_2 = TaskHandsUp
  L14_2 = L2_2
  L15_2 = Config
  L15_2 = L15_2.NpcDriverKeySteal
  L15_2 = L15_2.Duration
  L15_2 = L15_2 + 4000
  L16_2 = cache
  L16_2 = L16_2.ped
  L17_2 = -1
  L18_2 = true
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = Notification
  L14_2 = i18n
  L14_2 = L14_2.t
  L15_2 = "notify.steal_surrender"
  L14_2 = L14_2(L15_2)
  L15_2 = "info"
  L13_2(L14_2, L15_2)
  L13_2 = true
  L3_1 = L13_2
  L13_2 = lib
  L13_2 = L13_2.progressCircle
  L14_2 = {}
  L15_2 = Config
  L15_2 = L15_2.NpcDriverKeySteal
  L15_2 = L15_2.Duration
  L14_2.duration = L15_2
  L14_2.position = "bottom"
  L14_2.useWhileDead = false
  L15_2 = Config
  L15_2 = L15_2.NpcDriverKeySteal
  L15_2 = L15_2.ProgressCanCancel
  L15_2 = false ~= L15_2
  L14_2.canCancel = L15_2
  L15_2 = i18n
  L15_2 = L15_2.t
  L16_2 = "notify.steal_progress"
  L15_2 = L15_2(L16_2)
  L14_2.label = L15_2
  L15_2 = {}
  L15_2.move = true
  L15_2.car = true
  L15_2.combat = true
  L14_2.disable = L15_2
  L15_2 = {}
  L15_2.dict = "missheistdockssetup1clipboard@idle_a"
  L15_2.clip = "idle_a"
  L14_2.anim = L15_2
  L13_2 = L13_2(L14_2)
  L14_2 = false
  L3_1 = L14_2
  if not L13_2 then
    L14_2 = SetBlockingOfNonTemporaryEvents
    L15_2 = L2_2
    L16_2 = false
    L14_2(L15_2, L16_2)
    L14_2 = DoesEntityExist
    L15_2 = L2_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = IsPedDeadOrDying
      L15_2 = L2_2
      L16_2 = true
      L14_2 = L14_2(L15_2, L16_2)
      if not L14_2 then
        L14_2 = ClearPedTasks
        L15_2 = L2_2
        L14_2(L15_2)
      end
    end
    L14_2 = Notification
    L15_2 = i18n
    L15_2 = L15_2.t
    L16_2 = "notify.steal_cancelled"
    L15_2 = L15_2(L16_2)
    L16_2 = "error"
    return L14_2(L15_2, L16_2)
  end
  L14_2 = TriggerServerEvent
  L15_2 = "vehiclekeys:server:giveKey"
  L16_2 = L6_2
  L17_2 = L7_2
  L18_2 = false
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = L21_1
  L15_2 = Config
  L15_2 = L15_2.NpcDriverKeySteal
  L15_2 = L15_2.DispatchChance
  if not L15_2 then
    L15_2 = 0
  end
  L16_2 = i18n
  L16_2 = L16_2.t
  L17_2 = "notify.dispatch_carjacking"
  L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2)
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L14_2 = Notification
  L15_2 = i18n
  L15_2 = L15_2.t
  L16_2 = "notify.steal_success"
  L15_2 = L15_2(L16_2)
  L16_2 = "success"
  L14_2(L15_2, L16_2)
  L14_2 = DoesEntityExist
  L15_2 = L2_2
  L14_2 = L14_2(L15_2)
  if L14_2 then
    L14_2 = IsPedDeadOrDying
    L15_2 = L2_2
    L16_2 = true
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L14_2 = SetBlockingOfNonTemporaryEvents
      L15_2 = L2_2
      L16_2 = false
      L14_2(L15_2, L16_2)
      L14_2 = ClearPedTasks
      L15_2 = L2_2
      L14_2(L15_2)
      L14_2 = TaskSmartFleePed
      L15_2 = L2_2
      L16_2 = cache
      L16_2 = L16_2.ped
      L17_2 = tonumber
      L18_2 = Config
      L18_2 = L18_2.NpcDriverKeySteal
      L18_2 = L18_2.NpcFleeDistance
      L17_2 = L17_2(L18_2)
      if not L17_2 then
        L17_2 = 300.0
      end
      L18_2 = -1
      L19_2 = true
      L20_2 = true
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L14_2 = SetPedKeepTask
      L15_2 = L2_2
      L16_2 = true
      L14_2(L15_2, L16_2)
    end
  end
end
TryStealNpcDriverKey = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = nil
  L4_2 = Utils
  L4_2 = L4_2.NormalizePlate
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.NormalizeModel
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if "" ~= L4_2 then
    L6_2 = L12_1
    L7_2 = Config
    L7_2 = L7_2.LockDistance
    L6_2 = L6_2(L7_2)
    if L6_2 and 0 ~= L6_2 then
      L7_2 = Utils
      L7_2 = L7_2.GetVehiclePlate
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = Utils
      L8_2 = L8_2.GetVehicleModelName
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L4_2 and ("" == L5_2 or L8_2 == L5_2) then
        L3_2 = L6_2
      end
    end
  else
    L6_2 = L12_1
    L7_2 = Config
    L7_2 = L7_2.UseCommandKeyDistance
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  end
  if L3_2 and 0 ~= L3_2 then
    L6_2 = DoesEntityExist
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_60
    end
  end
  L6_2 = Notification
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "notify.no_vehicle"
  L7_2 = L7_2(L8_2)
  L8_2 = "error"
  do return L6_2(L7_2, L8_2) end
  ::lbl_60::
  L6_2 = GetEntityCoords
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityCoords
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L6_2 = #L6_2
  L7_2 = Config
  L7_2 = L7_2.UseCommandKeyDistance
  if L6_2 > L7_2 then
    L7_2 = Notification
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.too_far"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = Utils
  L7_2 = L7_2.GetVehiclePlate
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = Utils
  L8_2 = L8_2.GetVehicleModelName
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = GetKey
  L10_2 = L7_2
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = Notification
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = "notify.not_owned"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = DoorLogic
  L10_2 = L3_2
  L11_2 = false
  L12_2 = nil
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

UseCommandKey = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L6_1
  if L1_2 then
    L1_2 = false
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "notify.transfer_in_progress"
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "notify.invalid_data"
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  end
  L1_2 = tonumber
  L2_2 = A0_2.targetId
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A0_2.plate
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizeModel
  L4_2 = A0_2.model
  L3_2 = L3_2(L4_2)
  if not L1_2 or L1_2 < 1 or "" == L2_2 or "" == L3_2 then
    L4_2 = false
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.invalid_data"
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    return L4_2, L5_2, L6_2, L7_2, L8_2
  end
  L4_2 = true
  L6_1 = L4_2
  L4_2 = lib
  L4_2 = L4_2.progressCircle
  L5_2 = {}
  L5_2.duration = 1700
  L5_2.position = "bottom"
  L5_2.useWhileDead = false
  L5_2.canCancel = true
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "notify.transfer_progress"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L6_2 = {}
  L6_2.move = true
  L6_2.car = true
  L6_2.combat = true
  L5_2.disable = L6_2
  L6_2 = {}
  L6_2.dict = "mp_common"
  L6_2.clip = "givetake1_a"
  L5_2.anim = L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L6_1 = L5_2
  if not L4_2 then
    L5_2 = false
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.transfer_cancelled"
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2
  end
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "vehiclekeys:server:keytransfer:transfer"
  L7_2 = false
  L8_2 = {}
  L8_2.targetId = L1_2
  L8_2.plate = L2_2
  L8_2.model = L3_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = true == L5_2
  L8_2 = L6_2
  return L7_2, L8_2
end
RequestKeyTransfer = L22_1
L22_1 = RegisterNetEvent
L23_1 = "vehiclekeys:client:useNearestKey"
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L3_2 = L12_1
    L4_2 = Config
    L4_2 = L4_2.UseCommandKeyDistance
    L3_2 = L3_2(L4_2)
    if not L3_2 or 0 == L3_2 then
      L4_2 = Notification
      L5_2 = i18n
      L5_2 = L5_2.t
      L6_2 = "notify.no_vehicle"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      return L4_2(L5_2, L6_2)
    end
    L4_2 = DoorLogic
    L5_2 = L3_2
    L6_2 = true
    L7_2 = nil
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.admin_granted"
    L5_2 = L5_2(L6_2)
    L6_2 = "success"
    return L4_2(L5_2, L6_2)
  end
  L3_2 = UseCommandKey
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "vehiclekeys:client:keytransfer:success"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = A0_2.targetName
    if L1_2 then
      goto lbl_7
    end
  end
  L1_2 = "?"
  ::lbl_7::
  L2_2 = Notification
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "notify.transfer_success"
  L5_2 = {}
  L5_2.player = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "success"
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "vehiclekeys:client:keytransfer:received"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = A0_2.fromName
    if L1_2 then
      goto lbl_7
    end
  end
  L1_2 = "?"
  ::lbl_7::
  L2_2 = Notification
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "notify.transfer_received"
  L5_2 = {}
  L5_2.player = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "success"
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "vehiclekeys:client:syncLockState"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = SetVehicleDoorsLocked
      L4_2 = L2_2
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterCommand
L23_1 = "usekey"
function L24_1()
  local L0_2, L1_2
  L0_2 = UseCommandKey
  L0_2()
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterKeyMapping
L23_1 = "usekey"
L24_1 = i18n
L24_1 = L24_1.t
L25_1 = "commands.usekey"
L24_1 = L24_1(L25_1)
L25_1 = "keyboard"
L26_1 = Config
L26_1 = L26_1.KeyMappings
L26_1 = L26_1.UseVehicleKey
L22_1(L23_1, L24_1, L25_1, L26_1)
L22_1 = RegisterCommand
L23_1 = "hotwire"
function L24_1()
  local L0_2, L1_2
  L0_2 = TryHotwireCurrentVehicle
  L0_2()
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterKeyMapping
L23_1 = "hotwire"
L24_1 = i18n
L24_1 = L24_1.t
L25_1 = "commands.hotwire"
L24_1 = L24_1(L25_1)
L25_1 = "keyboard"
L26_1 = Config
L26_1 = L26_1.KeyMappings
L26_1 = L26_1.HotwireVehicle
L22_1(L23_1, L24_1, L25_1, L26_1)
L22_1 = RegisterCommand
L23_1 = "stealnpckey"
function L24_1()
  local L0_2, L1_2
  L0_2 = TryStealNpcDriverKey
  L0_2()
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterKeyMapping
L23_1 = "stealnpckey"
L24_1 = i18n
L24_1 = L24_1.t
L25_1 = "commands.steal_npc_key"
L24_1 = L24_1(L25_1)
L25_1 = "keyboard"
L26_1 = Config
L26_1 = L26_1.KeyMappings
L26_1 = L26_1.StealNpcDriverKey
L22_1(L23_1, L24_1, L25_1, L26_1)
L22_1 = RegisterCommand
L23_1 = "keytransfer"
function L24_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "vehiclekeys:client:keytransfer:open"
  L0_2(L1_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterKeyMapping
L23_1 = "keytransfer"
L24_1 = i18n
L24_1 = L24_1.t
L25_1 = "commands.key_transfer"
L24_1 = L24_1(L25_1)
L25_1 = "keyboard"
L26_1 = "F7"
L22_1(L23_1, L24_1, L25_1, L26_1)
L22_1 = RegisterCommand
L23_1 = "givekeys"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if 0 == L2_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "notify.no_vehicle"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = tonumber
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A1_2[1]
  end
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = L13_1
    L5_2 = 8.0
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if not L3_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.target_not_found"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = Utils
  L4_2 = L4_2.GetVehiclePlate
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.GetVehicleModelName
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if "" == L4_2 or "" == L5_2 then
    L6_2 = Notification
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "notify.invalid_data"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = TriggerServerEvent
  L7_2 = "vehiclekeys:server:adminGiveKeys"
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = CreateThread
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = Config
    L0_2 = L0_2.NpcVehicleLock
    L0_2 = L0_2.Enabled
    if not L0_2 then
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    else
      L0_2 = cache
      L0_2 = L0_2.ped
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = Config
      L2_2 = L2_2.NpcVehicleLock
      L2_2 = L2_2.ScanDistance
      if not L2_2 then
        L2_2 = 40.0
      end
      L3_2 = Config
      L3_2 = L3_2.NpcVehicleLock
      L3_2 = L3_2.LockedState
      if not L3_2 then
        L3_2 = 2
      end
      L4_2 = pairs
      L5_2 = L8_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = DoesEntityExist
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = L8_1
          L10_2[L8_2] = nil
        end
      end
      L4_2 = ipairs
      L5_2 = GetGamePool
      L6_2 = "CVehicle"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L8_1
        L10_2 = L10_2[L9_2]
        if L10_2 then
        else
          L10_2 = GetEntityCoords
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          L10_2 = L10_2 - L1_2
          L10_2 = #L10_2
          if L2_2 < L10_2 then
          else
            L10_2 = L14_1
            L11_2 = L9_2
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L10_2 = L8_1
              L10_2[L9_2] = true
            else
              L10_2 = GetPedInVehicleSeat
              L11_2 = L9_2
              L12_2 = -1
              L10_2 = L10_2(L11_2, L12_2)
              if L10_2 > 0 then
                L11_2 = IsPedAPlayer
                L12_2 = L10_2
                L11_2 = L11_2(L12_2)
                if not L11_2 then
                  L11_2 = SetVehicleDoorsLocked
                  L12_2 = L9_2
                  L13_2 = L3_2
                  L11_2(L12_2, L13_2)
                  L11_2 = SetVehicleNeedsToBeHotwired
                  L12_2 = L9_2
                  L13_2 = true
                  L11_2(L12_2, L13_2)
                  L11_2 = L8_1
                  L11_2[L9_2] = true
                end
              end
            end
          end
        end
      end
      L4_2 = Wait
      L5_2 = Config
      L5_2 = L5_2.NpcVehicleLock
      L5_2 = L5_2.ScanInterval
      if not L5_2 then
        L5_2 = 2500
      end
      L4_2(L5_2)
    end
  end
end
L22_1(L23_1)
L22_1 = CreateThread
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 0
  while true do
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = GetVehiclePedIsIn
    L3_2 = L1_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L3_2 = GetPedInVehicleSeat
      L4_2 = L2_2
      L5_2 = -1
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 == L1_2 then
        goto lbl_21
      end
    end
    L0_2 = 0
    L3_2 = Wait
    L4_2 = 250
    L3_2(L4_2)
    goto lbl_105
    ::lbl_21::
    if L2_2 ~= L0_2 then
      L3_2 = L17_1
      L4_2 = L2_2
      L5_2 = true
      L3_2(L4_2, L5_2)
      L0_2 = L2_2
    end
    L3_2 = Config
    L3_2 = L3_2.Hotwire
    L3_2 = L3_2.Enabled
    if L3_2 then
      L3_2 = L2_1
      if not L3_2 then
        L3_2 = L18_1
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = SetVehicleNeedsToBeHotwired
          L4_2 = L2_2
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = SetVehicleUndriveable
          L4_2 = L2_2
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = GetIsVehicleEngineRunning
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = SetVehicleEngineOn
            L4_2 = L2_2
            L5_2 = false
            L6_2 = true
            L7_2 = true
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
          L3_2 = DisableControlAction
          L4_2 = 0
          L5_2 = 71
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = DisableControlAction
          L4_2 = 0
          L5_2 = 72
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = GetEntityCoords
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          L4_2 = DrawText3D
          L5_2 = L3_2.x
          L6_2 = L3_2.y
          L7_2 = L3_2.z
          L7_2 = L7_2 + 1.0
          L8_2 = i18n
          L8_2 = L8_2.t
          L9_2 = "drawtext.hotwire_hint"
          L10_2 = {}
          L11_2 = Config
          L11_2 = L11_2.KeyMappings
          L11_2 = L11_2.HotwireVehicle
          L10_2.key = L11_2
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = "vehiclekeys_hotwire_hint"
          L10_2 = Config
          L10_2 = L10_2.KeyMappings
          L10_2 = L10_2.HotwireVehicle
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
          L4_2 = Wait
          L5_2 = 0
          L4_2(L5_2)
        else
          L3_2 = Wait
          L4_2 = 150
          L3_2(L4_2)
        end
      else
        L3_2 = Wait
        L4_2 = 150
        L3_2(L4_2)
      end
    else
      L3_2 = SetVehicleUndriveable
      L4_2 = L2_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = Wait
      L4_2 = 150
      L3_2(L4_2)
    end
    ::lbl_105::
  end
end
L22_1(L23_1)
L22_1 = exports
L23_1 = "GiveKeys"
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerServerEvent
  L4_2 = "vehiclekeys:server:giveKey"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = true == A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "RemoveKeys"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "vehiclekeys:server:removeKey"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "GetKey"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetKey
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "DoorLogic"
L24_1 = DoorLogic
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "GetDoorState"
L24_1 = GetDoorState
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "RequestKeyTransfer"
L24_1 = RequestKeyTransfer
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "GiveKeysAuto"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 and 0 ~= L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "vehiclekeys:server:giveKey"
    L3_2 = Utils
    L3_2 = L3_2.GetVehiclePlate
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = Utils
    L4_2 = L4_2.GetVehicleModelName
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "RemoveKeysAuto"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 and 0 ~= L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "vehiclekeys:server:removeKey"
    L3_2 = Utils
    L3_2 = L3_2.GetVehiclePlate
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = Utils
    L4_2 = L4_2.GetVehicleModelName
    L5_2 = L0_2
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "GetKeyAuto"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 and 0 ~= L0_2 then
    L1_2 = GetKey
    L2_2 = Utils
    L2_2 = L2_2.GetVehiclePlate
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = Utils
    L3_2 = L3_2.GetVehicleModelName
    L4_2 = L0_2
    L3_2, L4_2 = L3_2(L4_2)
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = false
  return L1_2
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "CanUseVehicle"
function L24_1(A0_2)
  local L1_2, L2_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = L18_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "disableHotwire"
function L24_1(A0_2)
  local L1_2
  L1_2 = true == A0_2
  L2_1 = L1_2
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "UseRentalPapers"
function L24_1()
  local L0_2, L1_2
  L0_2 = false
  return L0_2
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "OpenCar"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DoorLogic
  L2_2 = A0_2
  L3_2 = false
  L4_2 = 2
  L5_2 = false
  L6_2 = false
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L22_1(L23_1, L24_1)
L22_1 = exports
L23_1 = "CloseCar"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DoorLogic
  L2_2 = A0_2
  L3_2 = false
  L4_2 = 1
  L5_2 = false
  L6_2 = false
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L22_1(L23_1, L24_1)






