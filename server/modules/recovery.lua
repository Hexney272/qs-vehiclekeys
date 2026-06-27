





local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getAllKeys
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = Utils
    L9_2 = L9_2.NormalizePlate
    L10_2 = L8_2.plate
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = true
      return L9_2
    end
  end
  L4_2 = false
  return L4_2
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = sfr
  L4_2 = L3_2
  L3_2 = L3_2.getRecoveryOwnedVehicles
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = Utils
    L9_2 = L9_2.NormalizePlate
    L10_2 = L8_2.plate
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      return L8_2
    end
  end
  L4_2 = nil
  return L4_2
end
L2_1 = lib
L2_1 = L2_1.callback
L2_1 = L2_1.register
L3_1 = "vehiclekeys:server:recovery:getOwnedVehicles"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.getRecoveryOwnedVehicles
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = {}
  L2_2.vehicles = L1_2
  return L2_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "vehiclekeys:server:recovery:recoverKey"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = L1_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = Notification
    L4_2 = L1_2
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "recovery.not_owned"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L0_1
  L4_2 = L1_2
  L5_2 = L2_2.plate
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = Notification
    L4_2 = L1_2
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "recovery.already_has_key"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.IsVehicleHash
  L4_2 = L2_2.model
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = resolveVehicleModelsFromClient
    L4_2 = L1_2
    L5_2 = {}
    L6_2 = L2_2.model
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.ResolveVehicleModel
  L4_2 = L2_2.model
  L3_2 = L3_2(L4_2)
  if "" == L3_2 then
    L3_2 = "UNKNOWN"
  end
  L4_2 = exports
  L4_2 = L4_2["qs-vehiclekeys"]
  L5_2 = L4_2
  L4_2 = L4_2.GiveServerKeys
  L6_2 = L1_2
  L7_2 = L2_2.plate
  L8_2 = L3_2
  L9_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if not L4_2 then
    L5_2 = Notification
    L6_2 = L1_2
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "recovery.recover_failed"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = Notification
  L6_2 = L1_2
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "recovery.recover_success"
  L9_2 = {}
  L10_2 = L2_2.plate
  L9_2.plate = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
end
L2_1(L3_1, L4_1)






