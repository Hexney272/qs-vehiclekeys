





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 and not (A0_2 < 1) then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = {}
  L3_2 = {}
  L4_2 = 1
  L5_2 = #A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = Utils
    L9_2 = L9_2.IsVehicleHash
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = Utils
      L9_2 = L9_2.NormalizeVehicleHash
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = Utils
        L10_2 = L10_2.GetCachedVehicleModel
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = L3_2[L9_2]
          if not L10_2 then
            L3_2[L9_2] = true
            L10_2 = #L2_2
            L10_2 = L10_2 + 1
            L2_2[L10_2] = L9_2
          end
        end
      end
    end
  end
  L4_2 = #L2_2
  if 0 == L4_2 then
    return
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "vehiclekeys:client:resolveVehicleModelHashes"
  L6_2 = A0_2
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "table" ~= L5_2 then
    return
  end
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Utils
    L11_2 = L11_2.CacheVehicleModelHash
    L12_2 = L9_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
end
resolveVehicleModelsFromClient = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Utils
  L2_2 = L2_2.IsVehicleHash
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = resolveVehicleModelsFromClient
    L3_2 = A0_2
    L4_2 = {}
    L5_2 = A1_2
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.ResolveVehicleModel
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = "UNKNOWN"
    return L3_2
  end
  return L2_2
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = #A1_2
    if 0 ~= L2_2 then
      goto lbl_14
    end
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  do return L2_2 end
  ::lbl_14::
  L2_2 = {}
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L2_2
    L7_2 = L7_2 + 1
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.model
    L2_2[L7_2] = L8_2
  end
  L3_2 = resolveVehicleModelsFromClient
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = Utils
    L8_2 = L8_2.ResolveVehicleModel
    L9_2 = A1_2[L6_2]
    L9_2 = L9_2.model
    L8_2 = L8_2(L9_2)
    L7_2.model = L8_2
  end
  return A1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.playerIsAdmin
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = Notification
    L2_2 = A0_2
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "notify.no_permission"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetPlayerName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 and "" ~= L1_2 then
    return L1_2
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getUserName
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = tostring
  L5_2 = L2_2 or L5_2
  if not L2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  L5_2 = " "
  L6_2 = tostring
  L7_2 = L3_2 or L7_2
  if not L3_2 then
    L7_2 = ""
  end
  L6_2 = L6_2(L7_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = L4_2
  L4_2 = L4_2.gsub
  L6_2 = "^%s+"
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2
  L4_2 = L4_2.gsub
  L6_2 = "%s+$"
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2 or L5_2
  if "" == L4_2 or not L4_2 then
    L5_2 = "ID %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
  end
  return L5_2
end
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.AdminPanel
  if L0_2 then
    L0_2 = tonumber
    L1_2 = Config
    L1_2 = L1_2.AdminPanel
    L1_2 = L1_2.PageSize
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_13
    end
  end
  L0_2 = 30
  ::lbl_13::
  if not L0_2 or L0_2 < 1 then
    L0_2 = 30
  end
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L0_2
  return L1_2(L2_2)
end
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:admin:isAdmin"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.playerIsAdmin
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:admin:getStats"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.playerIsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
    L2_2.total = 0
    L2_2.inGarage = 0
    L2_2.outside = 0
    return L2_2
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getAdminVehicleStats
  L4_2 = Utils
  L4_2 = L4_2.Trim
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = {}
    L2_2.total = 0
    L2_2.inGarage = 0
    L2_2.outside = 0
  end
  return L2_2
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:admin:getPage"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.playerIsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = {}
    L2_2.vehicles = L3_2
    L2_2.total = 0
    L2_2.hasMore = false
    L2_2.page = 1
    L3_2 = L4_1
    L3_2 = L3_2()
    L2_2.pageSize = L3_2
    return L2_2
  end
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = tonumber
  L4_2 = A1_2.page
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 1
  end
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = tonumber
  L5_2 = A1_2.pageSize
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L4_1
    L4_2 = L4_2()
  end
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Utils
  L4_2 = L4_2.Trim
  L5_2 = A1_2.search
  if not L5_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.filter
  if not L5_2 then
    L5_2 = "all"
  end
  if "in" ~= L5_2 and "out" ~= L5_2 then
    L5_2 = "all"
  end
  L6_2 = L2_2 - 1
  L6_2 = L6_2 * L3_2
  L7_2 = sfr
  L8_2 = L7_2
  L7_2 = L7_2.getAdminVehiclesPage
  L9_2 = {}
  L9_2.search = L4_2
  L9_2.filter = L5_2
  L9_2.offset = L6_2
  L9_2.limit = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = {}
    L8_2 = {}
    L7_2.vehicles = L8_2
    L7_2.total = 0
  end
  L8_2 = L1_1
  L9_2 = A0_2
  L10_2 = L7_2.vehicles
  if not L10_2 then
    L10_2 = {}
  end
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = tonumber
  L10_2 = L7_2.total
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = 0
  end
  L10_2 = nil
  if 0 == L6_2 and L9_2 > 0 then
    L11_2 = #L8_2
    L11_2 = L6_2 + L11_2
    L10_2 = L9_2 > L11_2
  else
    L11_2 = #L8_2
    L10_2 = L3_2 <= L11_2
  end
  L11_2 = {}
  L11_2.vehicles = L8_2
  L11_2.total = L9_2
  L11_2.hasMore = L10_2
  L11_2.page = L2_2
  L11_2.pageSize = L3_2
  return L11_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "vehiclekeys:server:admin:giveKeyToOwner"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getAdminVehicleByPlate
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = Notification
    L4_2 = L1_2
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.admin_vehicle_not_found"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = type
  L4_2 = L2_2.ownerIdentifier
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = L2_2.ownerIdentifier
    if "" ~= L3_2 then
      goto lbl_40
    end
  end
  L3_2 = Notification
  L4_2 = L1_2
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "notify.admin_owner_invalid"
  L5_2 = L5_2(L6_2)
  L6_2 = "error"
  do return L3_2(L4_2, L5_2, L6_2) end
  ::lbl_40::
  L3_2 = sfr
  L4_2 = L3_2
  L3_2 = L3_2.getSourceFromIdentifier
  L5_2 = L2_2.ownerIdentifier
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = GetPlayerName
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_60
    end
  end
  L4_2 = Notification
  L5_2 = L1_2
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "notify.admin_owner_offline"
  L6_2 = L6_2(L7_2)
  L7_2 = "error"
  do return L4_2(L5_2, L6_2, L7_2) end
  ::lbl_60::
  L4_2 = L0_1
  L5_2 = L1_2
  L6_2 = L2_2.model
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = exports
  L5_2 = L5_2["qs-vehiclekeys"]
  L6_2 = L5_2
  L5_2 = L5_2.GiveServerKeys
  L7_2 = L3_2
  L8_2 = L2_2.plate
  L9_2 = L4_2
  L10_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if not L5_2 then
    L6_2 = Notification
    L7_2 = L1_2
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.transfer_target_has_key"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = Notification
  L7_2 = L1_2
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = "notify.admin_sent_key_owner"
  L10_2 = {}
  L11_2 = L3_1
  L12_2 = L3_2
  L11_2 = L11_2(L12_2)
  L10_2.player = L11_2
  L11_2 = L2_2.plate
  L10_2.plate = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Notification
  L7_2 = L3_2
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = "notify.admin_received_key"
  L10_2 = {}
  L11_2 = L3_1
  L12_2 = L1_2
  L11_2 = L11_2(L12_2)
  L10_2.player = L11_2
  L11_2 = L2_2.plate
  L10_2.plate = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "vehiclekeys:server:admin:getKeyForSelf"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getAdminVehicleByPlate
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = Notification
    L4_2 = L1_2
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "notify.admin_vehicle_not_found"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L0_1
  L4_2 = L1_2
  L5_2 = L2_2.model
  L3_2 = L3_2(L4_2, L5_2)
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
    L8_2 = "notify.transfer_target_has_key"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    return L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = Notification
  L6_2 = L1_2
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "notify.admin_received_key_self"
  L9_2 = {}
  L10_2 = L2_2.plate
  L9_2.plate = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "vehiclekeys:server:adminGiveKeys"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = L2_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  if A0_2 and not (A0_2 < 1) and A0_2 ~= L3_2 then
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  L4_2 = Notification
  L5_2 = L3_2
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "notify.target_not_found"
  L6_2 = L6_2(L7_2)
  L7_2 = "error"
  do return L4_2(L5_2, L6_2, L7_2) end
  ::lbl_32::
  L4_2 = Utils
  L4_2 = L4_2.NormalizePlate
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.NormalizeModel
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "" == L4_2 or "" == L5_2 then
    L6_2 = Notification
    L7_2 = L3_2
    L8_2 = i18n
    L8_2 = L8_2.t
    L9_2 = "notify.invalid_data"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = exports
  L6_2 = L6_2["qs-vehiclekeys"]
  L7_2 = L6_2
  L6_2 = L6_2.GiveServerKeys
  L8_2 = A0_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = Notification
  L7_2 = L3_2
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = "notify.key_granted"
  L10_2 = {}
  L11_2 = GetPlayerName
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L10_2.player = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
end
L5_1(L6_1, L7_1)






