





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = Config
L0_1 = L0_1.Plate
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.NormalizePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "" == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1.Letters
  if not L2_2 then
    L2_2 = 3
  end
  L3_2 = L0_1.Numbers
  if not L3_2 then
    L3_2 = 3
  end
  L4_2 = L2_2 + L3_2
  L5_2 = L0_1.UseSpace
  if L5_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_26
    end
  end
  L5_2 = 0
  ::lbl_26::
  L4_2 = L4_2 + L5_2
  L5_2 = #L1_2
  L5_2 = L5_2 == L4_2
  return L5_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.RequireOwnedVehicle
  if true ~= L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.GetVehiclePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.GetVehicleModelName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetKey
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Utils
  L1_2 = L1_2.NormalizePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "plate.error_invalid_target"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = lib
  L2_2 = L2_2.getClosestVehicle
  L3_2 = GetEntityCoords
  L4_2 = cache
  L4_2 = L4_2.ped
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.UseCommandKeyDistance
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_45
    end
  end
  L3_2 = Notification
  L4_2 = i18n
  L4_2 = L4_2.t
  L5_2 = "plate.error_vehicle_not_found"
  L4_2 = L4_2(L5_2)
  L5_2 = "error"
  do return L3_2(L4_2, L5_2) end
  ::lbl_45::
  L3_2 = Utils
  L3_2 = L3_2.GetVehiclePlate
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.GetVehicleModelName
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L3_2 == L1_2 then
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "plate.error_same_plate"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = L2_1
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "plate.error_not_owned"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "vehiclekeys:server:plate:hasTool"
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "plate.error_missing_tool"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = lib
  L5_2 = L5_2.progressCircle
  L6_2 = {}
  L7_2 = L0_1.ChangeDuration
  if not L7_2 then
    L7_2 = 5000
  end
  L6_2.duration = L7_2
  L6_2.position = "bottom"
  L6_2.useWhileDead = false
  L6_2.canCancel = true
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "plate.progress_apply"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L7_2 = {}
  L7_2.move = true
  L7_2.car = true
  L7_2.combat = true
  L6_2.disable = L7_2
  L7_2 = {}
  L7_2.dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  L7_2.clip = "machinic_loop_mechandplayer"
  L6_2.anim = L7_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = Notification
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "plate.error_cancelled"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = lib
  L6_2 = L6_2.callback
  L6_2 = L6_2.await
  L7_2 = "vehiclekeys:server:plate:apply"
  L8_2 = false
  L9_2 = {}
  L10_2 = NetworkGetNetworkIdFromEntity
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L9_2.vehicleNetId = L10_2
  L9_2.targetPlate = L1_2
  L9_2.oldPlate = L3_2
  L9_2.model = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = L6_2.ok
    if true == L7_2 then
      goto lbl_164
    end
  end
  L7_2 = Notification
  L8_2 = i18n
  L8_2 = L8_2.t
  if L6_2 then
    L9_2 = L6_2.message
    if L9_2 then
      goto lbl_160
    end
  end
  L9_2 = "plate.error_generic"
  ::lbl_160::
  L8_2 = L8_2(L9_2)
  L9_2 = "error"
  do return L7_2(L8_2, L9_2) end
  ::lbl_164::
  L7_2 = Notification
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = L6_2.message
  L8_2 = L8_2(L9_2)
  L9_2 = "success"
  L7_2(L8_2, L9_2)
end
UsePlate = L3_1
L3_1 = RegisterNetEvent
L4_1 = "vehiclekeys:client:plate:use"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = A0_2.metadata
    if L1_2 then
      goto lbl_7
    end
  end
  L1_2 = A0_2
  ::lbl_7::
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.plate
  end
  if not L2_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "plate.error_invalid_target"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = UsePlate
  L4_2 = L2_2
  L3_2(L4_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "vehiclekeys:client:plate:sync"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = SetVehicleNumberPlateText
      L4_2 = L2_2
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "UsePlate"
L5_1 = UsePlate
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "GetPlateFormat"
function L5_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = L0_1.Letters
  if not L1_2 then
    L1_2 = 3
  end
  L0_2.PlateLetters = L1_2
  L1_2 = L0_1.Numbers
  if not L1_2 then
    L1_2 = 3
  end
  L0_2.PlateNumbers = L1_2
  L1_2 = L0_1.UseSpace
  L1_2 = true == L1_2
  L0_2.PlateUseSpace = L1_2
  return L0_2
end
L3_1(L4_1, L5_1)






