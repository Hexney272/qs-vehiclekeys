





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = Config
L0_1 = L0_1.Diagnostic
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = {}
L1_1.open = false
L1_1.vehicle = 0
L1_1.lastTargetVehicle = 0
L2_1 = {}
L3_1 = {}
L4_1 = {}
L4_1.id = 0
L4_1.key = "front_left"
L5_1 = {}
L5_1.id = 1
L5_1.key = "front_right"
L6_1 = {}
L6_1.id = 4
L6_1.key = "rear_left"
L7_1 = {}
L7_1.id = 5
L7_1.key = "rear_right"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L2_1["4"] = L3_1
L3_1 = {}
L4_1 = {}
L4_1.id = 0
L4_1.key = "front_left"
L5_1 = {}
L5_1.id = 1
L5_1.key = "front_right"
L6_1 = {}
L6_1.id = 2
L6_1.key = "middle_left"
L7_1 = {}
L7_1.id = 3
L7_1.key = "middle_right"
L8_1 = {}
L8_1.id = 4
L8_1.key = "rear_left"
L9_1 = {}
L9_1.id = 5
L9_1.key = "rear_right"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L2_1["6"] = L3_1
function L3_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if "f" == A0_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A1_2 * 1.8
    L3_2 = L3_2 + 32
    L2_2 = L2_2(L3_2)
    L3_2 = "\194\176F"
    return L2_2, L3_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = "\194\176C"
  return L2_2, L3_2
end
function L5_1()
  local L0_2, L1_2
  L0_2 = cfr
  L1_2 = L0_2
  L0_2 = L0_2.getJobName
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = "unemployed"
  end
  return L0_2
end
function L6_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = next
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 then
      goto lbl_10
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_10::
  L1_2 = L5_1
  L1_2 = L1_2()
  L1_2 = A0_2[L1_2]
  L1_2 = true == L1_2
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetVehicleNumberOfWheels
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = tostring
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L2_2 = L3_2[L2_2]
  if not L2_2 then
    L2_2 = L2_1["4"]
  end
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = IsVehicleTyreBurst
    L10_2 = A0_2
    L11_2 = L8_2.id
    L12_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L11_2 = {}
    L12_2 = L8_2.key
    L11_2.key = L12_2
    if L9_2 then
      L12_2 = "burst"
      if L12_2 then
        goto lbl_37
      end
    end
    L12_2 = "ok"
    ::lbl_37::
    L11_2.status = L12_2
    L3_2[L10_2] = L11_2
  end
  return L3_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetVehicleMod
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetNumVehicleMods
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 <= 0 or L2_2 < 0 then
    L4_2 = L2_2
    L5_2 = L3_2
    L6_2 = 0
    return L4_2, L5_2, L6_2
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L2_2 + 1
  L5_2 = L5_2 / L3_2
  L5_2 = L5_2 * 100
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L3_1
  L8_2 = L4_2
  L9_2 = 0
  L10_2 = 100
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
  return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = Utils
  L1_2 = L1_2.GetVehiclePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.GetVehicleModelName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = GetVehicleFuelLevel
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 + 0.5
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = 100
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_1
  L5_2 = GetVehicleOilLevel
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.0
  L7_2 = 10.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_1
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L4_2 / 10.0
  L7_2 = L7_2 * 100
  L6_2 = L6_2(L7_2)
  L7_2 = 0
  L8_2 = 100
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L3_1
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = GetVehicleEngineHealth
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 / 10.0
  L8_2 = L8_2 + 0.5
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 100
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_1
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = GetVehicleBodyHealth
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 / 10.0
  L9_2 = L9_2 + 0.5
  L8_2 = L8_2(L9_2)
  L9_2 = 0
  L10_2 = 100
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_1
  L9_2 = L0_1.TempUnit
  if not L9_2 then
    L9_2 = "c"
  end
  L10_2 = L9_2
  L9_2 = L9_2.lower
  L9_2 = L9_2(L10_2)
  L10_2 = GetVehicleEngineTemperature
  L11_2 = A0_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L10_2(L11_2)
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L10_2 = L8_1
  L11_2 = A0_2
  L12_2 = 11
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L13_2 = L8_1
  L14_2 = A0_2
  L15_2 = 12
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
  L16_2 = L8_1
  L17_2 = A0_2
  L18_2 = 13
  L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
  L19_2 = L8_1
  L20_2 = A0_2
  L21_2 = 15
  L19_2, L20_2, L21_2 = L19_2(L20_2, L21_2)
  L22_2 = GetVehicleWindowTint
  L23_2 = A0_2
  L22_2 = L22_2(L23_2)
  L23_2 = IsToggleModOn
  L24_2 = A0_2
  L25_2 = 18
  L23_2 = L23_2(L24_2, L25_2)
  L24_2 = {}
  L24_2.plate = L1_2
  L24_2.model = L2_2
  L24_2.engineHealth = L6_2
  L24_2.bodyHealth = L7_2
  L24_2.fuelLevel = L3_2
  L24_2.oilLevel = L5_2
  L25_2 = {}
  L25_2.value = L8_2
  L25_2.unit = L9_2
  L24_2.temperature = L25_2
  L25_2 = L7_1
  L26_2 = A0_2
  L25_2 = L25_2(L26_2)
  L24_2.wheels = L25_2
  L25_2 = {}
  L25_2.level = L22_2
  L24_2.tint = L25_2
  L25_2 = {}
  L25_2.turbo = L23_2
  L26_2 = {}
  L26_2.index = L10_2
  L26_2.count = L11_2
  L26_2.progress = L12_2
  L25_2.engine = L26_2
  L26_2 = {}
  L26_2.index = L13_2
  L26_2.count = L14_2
  L26_2.progress = L15_2
  L25_2.brakes = L26_2
  L26_2 = {}
  L26_2.index = L16_2
  L26_2.count = L17_2
  L26_2.progress = L18_2
  L25_2.transmission = L26_2
  L26_2 = {}
  L26_2.index = L19_2
  L26_2.count = L20_2
  L26_2.progress = L21_2
  L25_2.suspension = L26_2
  L24_2.performance = L25_2
  return L24_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.NeedKey
  if L1_2 then
    L1_2 = GetKey
    L2_2 = Utils
    L2_2 = L2_2.GetVehiclePlate
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = Utils
    L3_2 = L3_2.GetVehicleModelName
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L1_2 = Notification
      L2_2 = i18n
      L2_2 = L2_2.t
      L3_2 = "diagnostic.error_need_key"
      L2_2 = L2_2(L3_2)
      L3_2 = "error"
      L1_2(L2_2, L3_2)
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = L6_1
  L2_2 = L0_1.AllowedJobs
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "diagnostic.error_not_allowed"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = L9_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_1.open = true
  L1_1.vehicle = A0_2
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = SendReactMessage
  L3_2 = "toggle_diagnostic"
  L4_2 = {}
  L4_2.visible = true
  L4_2.data = L1_2
  L2_2(L3_2, L4_2)
end
function L12_1()
  local L0_2, L1_2, L2_2
  L1_1.open = false
  L1_1.vehicle = 0
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendReactMessage
  L1_2 = "toggle_diagnostic"
  L2_2 = {}
  L2_2.visible = false
  L0_2(L1_2, L2_2)
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.getClosestVehicle
  L2_2 = GetEntityCoords
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = L0_1.FindVehicleDistance
    if not L3_2 then
      L3_2 = 5.0
    end
  end
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_26::
  return L1_2
end
L14_1 = {}
L15_1 = -1
L14_1[L15_1] = "diagnostic.tint_none"
L14_1[4] = "diagnostic.tint_light"
L14_1[3] = "diagnostic.tint_medium"
L14_1[2] = "diagnostic.tint_dark"
L14_1[1] = "diagnostic.tint_limo"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L6_1
  L1_2 = L0_1.AllowedTintJobs
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = Notification
    L1_2 = i18n
    L1_2 = L1_2.t
    L2_2 = "diagnostic.error_not_allowed_tint"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    return L0_2(L1_2, L2_2)
  end
  L0_2 = L13_1
  L1_2 = L0_1.FindVehicleDistance
  if not L1_2 then
    L1_2 = 5.0
  end
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "diagnostic.error_no_vehicle"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    return L1_2(L2_2, L3_2)
  end
  L1_2 = lib
  L1_2 = L1_2.progressCircle
  L2_2 = {}
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "diagnostic.tint_progress"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L3_2 = L0_1.TintMeasureDuration
  if not L3_2 then
    L3_2 = 5000
  end
  L2_2.duration = L3_2
  L2_2.position = "bottom"
  L2_2.useWhileDead = false
  L2_2.canCancel = true
  L3_2 = {}
  L3_2.car = true
  L3_2.move = true
  L3_2.combat = true
  L2_2.disable = L3_2
  L3_2 = {}
  L3_2.dict = "amb@world_human_security_shine_torch@male@idle_b"
  L3_2.clip = "idle_e"
  L2_2.anim = L3_2
  L3_2 = {}
  L3_2.bone = 60309
  L3_2.model = 211760048
  L4_2 = vec3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.pos = L4_2
  L4_2 = vec3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 80.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rot = L4_2
  L2_2.prop = L3_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "diagnostic.error_tint_cancelled"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = GetVehicleWindowTint
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L14_1
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = "diagnostic.tint_unknown"
  end
  L4_2 = Notification
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "diagnostic.success_tint_result"
  L7_2 = {}
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2.level = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = "info"
  L4_2(L5_2, L6_2)
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L13_1
  L1_2 = L0_1.FindVehicleDistance
  if not L1_2 then
    L1_2 = 5.0
  end
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "diagnostic.error_no_vehicle"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    return L1_2(L2_2, L3_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = lib
  L1_2 = L1_2.progressCircle
  L2_2 = {}
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "diagnostic.scan_progress"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L3_2 = L0_1.ScanDuration
  if not L3_2 then
    L3_2 = 5000
  end
  L2_2.duration = L3_2
  L2_2.position = "bottom"
  L2_2.useWhileDead = false
  L2_2.canCancel = true
  L3_2 = {}
  L3_2.car = true
  L3_2.move = true
  L3_2.combat = true
  L2_2.disable = L3_2
  L3_2 = {}
  L3_2.dict = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
  L3_2.clip = "idle_a"
  L2_2.anim = L3_2
  L3_2 = {}
  L3_2.model = -1585232418
  L4_2 = vec3
  L5_2 = -0.05
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.pos = L4_2
  L4_2 = vec3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rot = L4_2
  L2_2.prop = L3_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "diagnostic.error_scan_cancelled"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L11_1
  L3_2 = L0_2
  L2_2(L3_2)
end
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = L0_1.UseTarget
    if L0_2 then
      L0_2 = target
      if L0_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L0_2 = L13_1
  L1_2 = L0_1.FindVehicleDistance
  if not L1_2 then
    L1_2 = 5.0
  end
  L0_2 = L0_2(L1_2)
  L1_2 = L1_1.lastTargetVehicle
  if L0_2 == L1_2 then
    return
  end
  L1_1.lastTargetVehicle = L0_2
  L1_2 = target
  L2_2 = L1_2
  L1_2 = L1_2.destroyZones
  L3_2 = "vehiclekeys_diagnostic"
  L1_2(L2_2, L3_2)
  if 0 == L0_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = target
  L3_2 = L2_2
  L2_2 = L2_2.addBoxZone
  L4_2 = "vehiclekeys_diagnostic"
  L5_2 = "main"
  L6_2 = L1_2
  L7_2 = {}
  L8_2 = {}
  L8_2.icon = "fas fa-car-battery"
  L9_2 = i18n
  L9_2 = L9_2.t
  L10_2 = "diagnostic.target_scan_label"
  L9_2 = L9_2(L10_2)
  L8_2.label = L9_2
  function L9_2()
    local L0_3, L1_3
    L0_3 = L16_1
    L0_3()
  end
  L8_2.action = L9_2
  L9_2 = {}
  L9_2.icon = "fas fa-ruler-combined"
  L10_2 = i18n
  L10_2 = L10_2.t
  L11_2 = "diagnostic.target_tint_label"
  L10_2 = L10_2(L11_2)
  L9_2.label = L10_2
  function L10_2()
    local L0_3, L1_3
    L0_3 = L15_1
    L0_3()
  end
  L9_2.action = L10_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L8_2 = L0_1.TargetDistance
  if not L8_2 then
    L8_2 = 2.5
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L18_1 = RegisterNetEvent
L19_1 = "vehiclekeys:client:diagnostic:open"
function L20_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L0_2()
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "vehiclekeys:client:diagnostic:tint"
function L20_1()
  local L0_2, L1_2
  L0_2 = L15_1
  L0_2()
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "vehiclekeys:client:diagnostic:close"
function L20_1()
  local L0_2, L1_2
  L0_2 = L12_1
  L0_2()
end
L18_1(L19_1, L20_1)
L18_1 = L0_1.UseCommand
if L18_1 then
  L18_1 = RegisterCommand
  L19_1 = L0_1.CommandName
  if not L19_1 then
    L19_1 = "diagnostic"
  end
  function L20_1()
    local L0_2, L1_2
    L0_2 = L16_1
    L0_2()
  end
  L21_1 = false
  L18_1(L19_1, L20_1, L21_1)
end
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2
  while true do
    L0_2 = L17_1
    L0_2()
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L18_1(L19_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = L1_1.open
    if L0_2 then
      L0_2 = L1_1.vehicle
      if 0 ~= L0_2 then
        L0_2 = DoesEntityExist
        L1_2 = L1_1.vehicle
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = SendReactMessage
          L1_2 = "diagnostic:update"
          L2_2 = L9_1
          L3_2 = L1_1.vehicle
          L2_2, L3_2 = L2_2(L3_2)
          L0_2(L1_2, L2_2, L3_2)
          L0_2 = Wait
          L1_2 = L0_1.RefreshWhileOpen
          if not L1_2 then
            L1_2 = 1500
          end
          L0_2(L1_2)
      end
    end
    else
      L0_2 = Wait
      L1_2 = 500
      L0_2(L1_2)
    end
  end
end
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "onResourceStop"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = target
  if L1_2 then
    L1_2 = target
    L2_2 = L1_2
    L1_2 = L1_2.destroyZones
    L3_2 = "vehiclekeys_diagnostic"
    L1_2(L2_2, L3_2)
  end
  L1_2 = L12_1
  L1_2()
end
L18_1(L19_1, L20_1)
L18_1 = exports
L19_1 = "OpenDiagnostic"
L20_1 = L16_1
L18_1(L19_1, L20_1)






