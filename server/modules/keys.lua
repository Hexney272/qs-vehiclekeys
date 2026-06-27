





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "" ~= L2_2
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sv_inventory
  L2_2 = L1_2
  L1_2 = L1_2.playerHasAdminKey
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.OnlyAdminsCanUseAdminKey
  if L1_2 then
    L1_2 = sfr
    L2_2 = L1_2
    L1_2 = L1_2.playerIsAdmin
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = true
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = Config
  L2_2 = L2_2.PoliceJobs
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.PoliceJobs
  L1_2 = L1_2[A0_2]
  L1_2 = true == L1_2
  return L1_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getPlayers
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L3_1
      L9_2 = sfr
      L10_2 = L9_2
      L9_2 = L9_2.getJobName
      L11_2 = L7_2
      L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L0_2 = L0_2 + 1
      end
    end
  end
  return L0_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if "npc_steal" == A0_2 then
    L2_2 = Config
    L2_2 = L2_2.NpcDriverKeySteal
    if not L2_2 then
      L2_2 = {}
    end
    return L2_2
  end
  if "lockpick" == A0_2 then
    L2_2 = Config
    L2_2 = L2_2.Lockpick
    if not L2_2 then
      L2_2 = {}
    end
    if true == A1_2 then
      L3_2 = L2_2.AdvancedBypassPolice
      if true == L3_2 then
        L3_2 = {}
        L3_2.RequirePolice = false
        L3_2.MinimumPolice = 0
        return L3_2
      end
    end
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Hotwire
  if not L2_2 then
    L2_2 = {}
  end
  return L2_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = ""
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizePlate
  L2_2 = GetVehicleNumberPlateText
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2(L2_2, L3_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 and "" ~= L1_2 then
    return L1_2
  end
  L2_2 = "ID %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerPed
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if 0 == L2_2 or 0 == L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityCoords
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2 - L5_2
  L6_2 = #L6_2
  L6_2 = L6_2 <= 8.0
  return L6_2
end
L9_1 = RegisterNetEvent
L10_1 = "vehiclekeys:server:giveKey"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = source
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = Notification
    L5_2 = L3_2
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.invalid_data"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = sv_inventory
  L5_2 = L4_2
  L4_2 = L4_2.addKey
  L6_2 = L3_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if not L4_2 and "already_has_key" ~= L5_2 then
    L6_2 = Notification
    L7_2 = L3_2
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.invalid_data"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "vehiclekeys:server:removeKey"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = L1_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = Notification
    L4_2 = L2_2
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.invalid_data"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.removeKey
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L5_2 = print
    L6_2 = "[qs-vehiclekeys] Key removal failed for player %s: plate=%s, model=%s, reason=%s"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L2_2
    L9_2 = Utils
    L9_2 = L9_2.NormalizePlate
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    L10_2 = Utils
    L10_2 = L10_2.NormalizeModel
    L11_2 = A1_2
    L10_2 = L10_2(L11_2)
    L11_2 = L4_2 or L11_2
    if not L4_2 then
      L11_2 = "unknown"
    end
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "vehiclekeys:server:giveKeyToPlayer"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = source
  L5_2 = L1_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = Notification
    L6_2 = L4_2
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "notify.invalid_data"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2
  if A0_2 and not (A0_2 < 1) then
    L5_2 = GetPlayerName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_39
    end
  end
  L5_2 = Notification
  L6_2 = L4_2
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "notify.invalid_data"
  L7_2 = L7_2(L8_2)
  L8_2 = "error"
  do return L5_2(L6_2, L7_2, L8_2) end
  ::lbl_39::
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getKey
  L7_2 = L4_2
  L8_2 = A1_2
  L9_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = L2_1
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = Notification
      L7_2 = L4_2
      L8_2 = i18n
      L8_2 = L8_2.t
      L9_2 = "notify.not_owned"
      L8_2 = L8_2(L9_2)
      L9_2 = "error"
      return L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = sv_inventory
  L7_2 = L6_2
  L6_2 = L6_2.addKey
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = Notification
  L7_2 = L4_2
  L8_2 = "Key transferred to %s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = GetPlayerName
  L11_2 = A0_2
  L10_2, L11_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:getPlayerKeys"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sv_inventory
  L2_2 = L1_2
  L1_2 = L1_2.getAllKeys
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:keytransfer:getData"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = {}
    L3_2 = {}
    L2_2.players = L3_2
    L3_2 = {}
    L2_2.keys = L3_2
    return L2_2
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = sfr
  L6_2 = L5_2
  L5_2 = L5_2.getPlayers
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 and L10_2 ~= A0_2 then
      L11_2 = GetPlayerName
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = GetPlayerPed
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if 0 ~= L11_2 then
          L12_2 = GetEntityCoords
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L12_2 = L2_2 - L12_2
          L12_2 = #L12_2
          if L12_2 <= 10.0 then
            L13_2 = #L3_2
            L13_2 = L13_2 + 1
            L14_2 = {}
            L14_2.id = L10_2
            L15_2 = L7_1
            L16_2 = L10_2
            L15_2 = L15_2(L16_2)
            L14_2.name = L15_2
            L15_2 = math
            L15_2 = L15_2.floor
            L16_2 = L12_2 * 10
            L15_2 = L15_2(L16_2)
            L15_2 = L15_2 / 10
            L14_2.distance = L15_2
            L3_2[L13_2] = L14_2
          end
        end
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L3_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.distance
    L3_3 = A1_3.distance
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L4_2.players = L3_2
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getAllKeys
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.keys = L5_2
  return L4_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:keytransfer:transfer"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = false
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.invalid_data"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
    return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L2_2 = tonumber
  L3_2 = A1_2.targetId
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2.plate
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizeModel
  L5_2 = A1_2.model
  L4_2 = L4_2(L5_2)
  if L2_2 and not (L2_2 < 1) then
    L5_2 = GetPlayerName
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_38
    end
  end
  L5_2 = false
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "notify.target_not_found"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  do return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 end
  ::lbl_38::
  if L2_2 == A0_2 then
    L5_2 = false
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.transfer_self"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L5_2 = L1_1
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = false
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.invalid_data"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L5_2 = L8_1
  L6_2 = A0_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = false
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.target_too_far"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getKey
  L7_2 = A0_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = L2_1
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = false
      L7_2 = i18n
      L7_2 = L7_2.t
      L8_2 = "notify.not_owned"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
      return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    end
  end
  L6_2 = sv_inventory
  L7_2 = L6_2
  L6_2 = L6_2.addKey
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = false
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L6_2 and "already_has_key" ~= L7_2 then
    L8_2 = false
    L9_2 = i18n
    L9_2 = L9_2.t
    L10_2 = "notify.transfer_failed"
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
    return L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  if "already_has_key" == L7_2 then
    L8_2 = false
    L9_2 = i18n
    L9_2 = L9_2.t
    L10_2 = "notify.transfer_target_has_key"
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
    return L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L8_2 = TriggerClientEvent
  L9_2 = "vehiclekeys:client:keytransfer:success"
  L10_2 = A0_2
  L11_2 = {}
  L12_2 = L7_1
  L13_2 = L2_2
  L12_2 = L12_2(L13_2)
  L11_2.targetName = L12_2
  L11_2.plate = L3_2
  L11_2.model = L4_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = TriggerClientEvent
  L9_2 = "vehiclekeys:client:keytransfer:received"
  L10_2 = L2_2
  L11_2 = {}
  L12_2 = L7_1
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L11_2.fromName = L12_2
  L11_2.plate = L3_2
  L11_2.model = L4_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = true
  L9_2 = i18n
  L9_2 = L9_2.t
  L10_2 = "notify.transfer_success"
  L11_2 = {}
  L12_2 = L7_1
  L13_2 = L2_2
  L12_2 = L12_2(L13_2)
  L11_2.player = L12_2
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
  return L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:hasKey"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getKey
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_1
  L4_2 = A0_2
  return L3_2(L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:getKeysItemMetadata"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizeModel
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "" == L3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L2_1
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = {}
    L5_2.plate = L3_2
    L6_2 = L4_2 or L6_2
    if "" == L4_2 or not L4_2 then
      L6_2 = "ADMIN_VEHICLE"
    end
    L5_2.model = L6_2
    L5_2.isAdmin = true
    return L5_2
  end
  if "" == L4_2 then
    L5_2 = sv_inventory
    L6_2 = L5_2
    L5_2 = L5_2.getAllKeys
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.plate
      if L12_2 == L3_2 then
        return L11_2
      end
    end
    L6_2 = false
    return L6_2
  end
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getKey
  L7_2 = A0_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = false
  end
  return L5_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "vehiclekeys:server:setVehLockState"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "number" == L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L3_2 = SetVehicleDoorsLocked
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L6_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "" ~= L3_2 then
    L4_2 = L0_1
    L4_2[L3_2] = A1_2
  end
  L4_2 = TriggerClientEvent
  L5_2 = "vehiclekeys:client:syncLockState"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:getVehicleLockStateByPlate"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L2_2 = L3_2[L2_2]
  if not L2_2 then
    L2_2 = nil
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:getPoliceCount"
function L11_1()
  local L0_2, L1_2
  L0_2 = L4_1
  return L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "vehiclekeys:server:canStartHotwire"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L5_1
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = "hotwire"
  end
  L5_2 = true == A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L4_1
  L4_2 = L4_2()
  if L3_2 then
    L5_2 = L3_2.MinimumPolice
    if L5_2 then
      goto lbl_18
    end
  end
  L5_2 = 0
  ::lbl_18::
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = L3_2.RequirePolice
    L6_2 = true == L6_2
  end
  if L6_2 and L4_2 < L5_2 then
    L7_2 = false
    L8_2 = L4_2
    L9_2 = L5_2
    return L7_2, L8_2, L9_2
  end
  L7_2 = true
  L8_2 = L4_2
  L9_2 = L5_2
  return L7_2, L8_2, L9_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "vehiclekeys:server:dispatch"
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = DispatchVehicleKeys
  L1_2 = L1_2(L2_2)
  if "function" ~= L1_2 then
    return
  end
  L1_2 = DispatchVehicleKeys
  L2_2 = A0_2
  L1_2(L2_2)
end

L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L1_1
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = sv_inventory
  L5_2 = L4_2
  L4_2 = L4_2.addKey
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = true == L4_2
  return L5_2
end
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.removeKey
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = true == L3_2
  return L4_2
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getKey
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = false ~= L3_2
  return L3_2
end
L12_1 = exports
L13_1 = "GiveServerKeys"
L14_1 = L9_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "RemoveServerKeys"
L14_1 = L10_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "GetServerKey"
L14_1 = L11_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "GiveKeysServer"
L14_1 = L9_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "RemoveKeysServer"
L14_1 = L10_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "GetKeyServer"
L14_1 = L11_1
L12_1(L13_1, L14_1)






