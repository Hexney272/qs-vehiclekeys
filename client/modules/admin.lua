





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Utils
  L1_2 = L1_2.NormalizeVehicleHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = L1_2
  L2_2[1] = L3_2
  if L1_2 < 0 then
    L3_2 = #L2_2
    L3_2 = L3_2 + 1
    L4_2 = L1_2 + 4294967296
    L2_2[L3_2] = L4_2
  else
    L3_2 = #L2_2
    L3_2 = L3_2 + 1
    L4_2 = L1_2 - 4294967296
    L2_2[L3_2] = L4_2
  end
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetDisplayNameFromVehicleModel
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "string" == L8_2 and "" ~= L7_2 and "CARNOTFOUND" ~= L7_2 then
      L8_2 = Utils
      L8_2 = L8_2.NormalizeModel
      L9_2 = L7_2
      return L8_2(L9_2)
    end
  end
  L3_2 = nil
  return L3_2
end
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "vehiclekeys:client:resolveVehicleModelHashes"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return L1_2
  end
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = tonumber
    L7_2 = A0_2[L5_2]
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L0_1
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = tostring
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L1_2[L8_2] = L7_2
        L8_2 = Utils
        L8_2 = L8_2.NormalizeVehicleHash
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L9_2 = tostring
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          L1_2[L9_2] = L7_2
        end
        if L6_2 > 0 then
          L9_2 = tostring
          L10_2 = L6_2 - 4294967296
          L9_2 = L9_2(L10_2)
          L1_2[L9_2] = L7_2
        elseif L6_2 < 0 then
          L9_2 = tostring
          L10_2 = L6_2 + 4294967296
          L9_2 = L9_2(L10_2)
          L1_2[L9_2] = L7_2
        end
      end
    end
  end
  return L1_2
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Utils
  L1_2 = L1_2.NormalizePlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "" == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetGamePool
  L3_2 = "CVehicle"
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.GetVehiclePlate
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 == L1_2 then
        return L7_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = vec3
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * 2.0
  L5_2 = L5_2 - L6_2
  L6_2 = L2_2.y
  L7_2 = L3_2.y
  L7_2 = L7_2 * 2.0
  L6_2 = L6_2 - L7_2
  L7_2 = L2_2.z
  L7_2 = L7_2 + 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = SetEntityCoords
  L6_2 = L1_2
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = SetGameplayCamRelativeHeading
  L6_2 = 0.0
  L5_2(L6_2)
end
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendReactMessage
  L1_2 = "toggle_adminvehiclelist"
  L2_2 = {}
  L2_2.visible = true
  L0_2(L1_2, L2_2)
end
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListClose"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CloseUI
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListGetStats"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = A0_2.search
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = ""
  ::lbl_7::
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "vehiclekeys:server:admin:getStats"
  L5_2 = false
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = {}
    L3_2.total = 0
    L3_2.inGarage = 0
    L3_2.outside = 0
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L5_2.stats = L3_2
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListGetPage"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2 or nil
  if not A0_2 then
    L2_2 = {}
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "vehiclekeys:server:admin:getPage"
  L5_2 = false
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = {}
    L4_2 = {}
    L3_2.vehicles = L4_2
    L3_2.total = 0
    L3_2.hasMore = false
    L3_2.page = 1
    L3_2.pageSize = 30
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L6_2 = L3_2.vehicles
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.vehicles = L6_2
  L6_2 = L3_2.total
  if not L6_2 then
    L6_2 = 0
  end
  L5_2.total = L6_2
  L6_2 = L3_2.hasMore
  L6_2 = true == L6_2
  L5_2.hasMore = L6_2
  L6_2 = L3_2.page
  if not L6_2 then
    L6_2 = 1
  end
  L5_2.page = L6_2
  L6_2 = L3_2.pageSize
  if not L6_2 then
    L6_2 = 30
  end
  L5_2.pageSize = L6_2
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListGiveKeyToOwner"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.plate
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = ""
  ::lbl_7::
  L3_2 = TriggerServerEvent
  L4_2 = "vehiclekeys:server:admin:giveKeyToOwner"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListGetKeyForSelf"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.plate
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = ""
  ::lbl_7::
  L3_2 = TriggerServerEvent
  L4_2 = "vehiclekeys:server:admin:getKeyForSelf"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:adminVehicleListGotoVehicle"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L2_2 = A0_2.plate
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = ""
  ::lbl_7::
  L3_2 = L1_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.admin_vehicle_not_spawned"
    L6_2 = L6_2(L7_2)
    L5_2.message = L6_2
    L4_2(L5_2)
    return
  end
  L4_2 = L2_1
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = Config
L4_1 = L4_1.AdminPanel
if L4_1 then
  L4_1 = Config
  L4_1 = L4_1.AdminPanel
  L4_1 = L4_1.Enabled
  if L4_1 then
    L4_1 = RegisterCommand
    L5_1 = Config
    L5_1 = L5_1.AdminPanel
    L5_1 = L5_1.CommandName
    function L6_1()
      local L0_2, L1_2, L2_2, L3_2
      L0_2 = lib
      L0_2 = L0_2.callback
      L0_2 = L0_2.await
      L1_2 = "vehiclekeys:server:admin:isAdmin"
      L2_2 = false
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L1_2 = Notification
        L2_2 = i18n
        L2_2 = L2_2.t
        L3_2 = "notify.no_permission"
        L2_2 = L2_2(L3_2)
        L3_2 = "error"
        return L1_2(L2_2, L3_2)
      end
      L1_2 = L3_1
      L1_2()
    end
    L7_1 = false
    L4_1(L5_1, L6_1, L7_1)
    L4_1 = Config
    L4_1 = L4_1.AdminPanel
    L4_1 = L4_1.EnableKeyMapping
    if L4_1 then
      L4_1 = RegisterKeyMapping
      L5_1 = Config
      L5_1 = L5_1.AdminPanel
      L5_1 = L5_1.CommandName
      L6_1 = i18n
      L6_1 = L6_1.t
      L7_1 = "commands.admin_vehicle_list"
      L6_1 = L6_1(L7_1)
      L7_1 = "keyboard"
      L8_1 = Config
      L8_1 = L8_1.AdminPanel
      L8_1 = L8_1.Key
      L4_1(L5_1, L6_1, L7_1, L8_1)
    end
  end
end






