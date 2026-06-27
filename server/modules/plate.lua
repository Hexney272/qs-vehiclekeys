





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = Config
L0_1 = L0_1.Plate
if not L0_1 then
  L0_1 = {}
end
L1_1 = {}
L2_1 = {}
L3_1 = 65
L4_1 = 90
L5_1 = 1
for L6_1 = L3_1, L4_1, L5_1 do
  L7_1 = #L1_1
  L7_1 = L7_1 + 1
  L8_1 = string
  L8_1 = L8_1.char
  L9_1 = L6_1
  L8_1 = L8_1(L9_1)
  L1_1[L7_1] = L8_1
end
L3_1 = 48
L4_1 = 57
L5_1 = 1
for L6_1 = L3_1, L4_1, L5_1 do
  L7_1 = #L2_1
  L7_1 = L7_1 + 1
  L8_1 = string
  L8_1 = L8_1.char
  L9_1 = L6_1
  L8_1 = L8_1(L9_1)
  L2_1[L7_1] = L8_1
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = true == A0_2
  L2_2.ok = L3_2
  L2_2.message = A1_2
  return L2_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L2_2
    L7_2 = L7_2 + 1
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = 1
    L10_2 = #A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = A1_2[L8_2]
    L2_2[L7_2] = L8_2
  end
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  return L3_2(L4_2)
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L4_1
  L1_2 = L0_1.Letters
  if not L1_2 then
    L1_2 = 3
  end
  L2_2 = L1_1
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L4_1
  L2_2 = L0_1.Numbers
  if not L2_2 then
    L2_2 = 3
  end
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1.UseSpace
  if L2_2 then
    L2_2 = " "
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = ""
  ::lbl_22::
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = "%s%s%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L0_2
  L7_2 = L2_2
  L8_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 0
  L1_2 = 1
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = 1
    L7_2 = 20
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L0_2 = L0_2 + 1
      L10_2 = #L5_2
      L10_2 = L10_2 + 1
      L11_2 = L5_1
      L11_2 = L11_2()
      L5_2[L10_2] = L11_2
    end
    L6_2 = sfr
    L7_2 = L6_2
    L6_2 = L6_2.getTakenPlates
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 1
    L8_2 = #L5_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L5_2[L10_2]
      if "" ~= L11_2 then
        L12_2 = L6_2[L11_2]
        if not L12_2 then
          L12_2 = L11_2
          L13_2 = L0_2
          return L12_2, L13_2
        end
      end
    end
  end
  L1_2 = ""
  L2_2 = L0_2
  return L1_2, L2_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getInventory
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L10_2 = L9_2.name
      L11_2 = L0_1.ItemName
      if L10_2 == L11_2 then
        L10_2 = L9_2.metadata
        if not L10_2 then
          L10_2 = L9_2.info
        end
        L11_2 = Utils
        L11_2 = L11_2.NormalizePlate
        if L10_2 then
          L12_2 = L10_2.plate
          if L12_2 then
            goto lbl_35
          end
        end
        L12_2 = ""
        ::lbl_35::
        L11_2 = L11_2(L12_2)
        if L11_2 == L3_2 then
          L12_2 = {}
          L13_2 = L9_2.slot
          if not L13_2 then
            L13_2 = L9_2.slotId
            if not L13_2 then
              L13_2 = tonumber
              L14_2 = L8_2
              L13_2 = L13_2(L14_2)
            end
          end
          L12_2.slot = L13_2
          L13_2 = L10_2 or L13_2
          if not L10_2 then
            L13_2 = {}
          end
          L12_2.metadata = L13_2
          return L12_2
        end
      end
    end
  end
  L4_2 = nil
  return L4_2
end
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = sv_inventory
  L5_2 = L4_2
  L4_2 = L4_2.getAllKeys
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = Utils
  L5_2 = L5_2.NormalizePlate
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = Utils
  L6_2 = L6_2.NormalizePlate
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = Utils
  L7_2 = L7_2.NormalizeModel
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  L8_2 = ipairs
  L9_2 = L4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.plate
    if L14_2 == L5_2 then
      L14_2 = L13_2.model
      if L14_2 == L7_2 then
        L14_2 = sv_inventory
        L15_2 = L14_2
        L14_2 = L14_2.removeKey
        L16_2 = A0_2
        L17_2 = L13_2.plate
        L18_2 = L13_2.model
        L14_2(L15_2, L16_2, L17_2, L18_2)
        L14_2 = sv_inventory
        L15_2 = L14_2
        L14_2 = L14_2.addKey
        L16_2 = A0_2
        L17_2 = L6_2
        L18_2 = L7_2
        L19_2 = true
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
end
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = A0_2
  end
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizePlate
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.gsub
  L7_2 = "%s+"
  L8_2 = ""
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = GetResourceState
  L7_2 = "qs-advancedgarages"
  L6_2 = L6_2(L7_2)
  if "started" == L6_2 then
    L6_2 = pcall
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = exports
      L0_3 = L0_3["qs-advancedgarages"]
      L1_3 = L0_3
      L0_3 = L0_3.updateVehiclePlate
      L2_3 = L3_2
      L3_3 = L4_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L6_2(L7_2)
  end
  L6_2 = Config
  L6_2 = L6_2.Inventory
  if "ox" == L6_2 then
    L6_2 = pcall
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = exports
      L0_3 = L0_3.ox_inventory
      L1_3 = L0_3
      L0_3 = L0_3.UpdateVehicle
      L2_3 = L3_2
      L3_3 = L4_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L6_2(L7_2)
  else
    L6_2 = Config
    L6_2 = L6_2.Inventory
    if "qs" == L6_2 then
      L6_2 = pcall
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = exports
        L0_3 = L0_3["qs-inventory"]
        L1_3 = L0_3
        L0_3 = L0_3.UpdateVehiclePlate
        L2_3 = L3_2
        L3_3 = L4_2
        L0_3(L1_3, L2_3, L3_3)
      end
      L6_2(L7_2)
    end
  end
  L6_2 = pcall
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = MySQL
    L0_3 = L0_3.update
    L0_3 = L0_3.await
    L1_3 = [[
            UPDATE vehiclekeys_trackers
            SET plate = ?
            WHERE plate = ?
               OR REPLACE(plate, ' ', '') = ?
        ]]
    L2_3 = {}
    L3_3 = L4_2
    L4_3 = L3_2
    L5_3 = L5_2
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L0_3(L1_3, L2_3)
  end
  L6_2(L7_2)
  L6_2 = {}
  L7_2 = "UPDATE trunkitems SET plate = ? WHERE plate = ?"
  L8_2 = "UPDATE gloveboxitems SET plate = ? WHERE plate = ?"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = pcall
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = MySQL
      L0_3 = L0_3.update
      L0_3 = L0_3.await
      L2_3 = L10_2
      L1_3 = L6_2
      L1_3 = L1_3[L2_3]
      L2_3 = {}
      L3_3 = L4_2
      L4_3 = L3_2
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L0_3(L1_3, L2_3)
    end
    L11_2(L12_2)
  end
  L7_2 = TriggerEvent
  L8_2 = "vehiclekeys:server:plateChanged"
  L9_2 = L3_2
  L10_2 = L4_2
  L7_2(L8_2, L9_2, L10_2)
end
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "vehiclekeys:server:plate:isTaken"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = sfr
  L4_2 = L3_2
  L3_2 = L3_2.isPlateTaken
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "vehiclekeys:server:plate:generate"
function L12_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2 = L0_2()
  if "" == L0_2 then
    L1_2 = nil
    return L1_2
  end
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "vehiclekeys:server:plate:hasTool"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.RequireScrewdriver
  if true ~= L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.getItem
  L3_2 = A0_2
  L4_2 = L0_1.ToolItemName
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = L1_2.count
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = 0
  ::lbl_17::
  L2_2 = L2_2 > 0
  return L2_2
end
L10_1(L11_1, L12_1)
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "vehiclekeys:server:plate:apply"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.vehicleNetId
  end
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  if A1_2 then
    L4_2 = A1_2.targetPlate
    if L4_2 then
      goto lbl_12
    end
  end
  L4_2 = ""
  ::lbl_12::
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizePlate
  if A1_2 then
    L5_2 = A1_2.oldPlate
    if L5_2 then
      goto lbl_21
    end
  end
  L5_2 = ""
  ::lbl_21::
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.NormalizeModel
  if A1_2 then
    L6_2 = A1_2.model
    if L6_2 then
      goto lbl_30
    end
  end
  L6_2 = ""
  ::lbl_30::
  L5_2 = L5_2(L6_2)
  L6_2 = type
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if "number" ~= L6_2 or "" == L3_2 or "" == L4_2 or "" == L5_2 then
    L6_2 = L3_1
    L7_2 = false
    L8_2 = "plate.error_invalid_data"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = NetworkGetEntityFromNetworkId
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if 0 ~= L6_2 then
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_62
    end
  end
  L7_2 = L3_1
  L8_2 = false
  L9_2 = "plate.error_vehicle_not_found"
  do return L7_2(L8_2, L9_2) end
  ::lbl_62::
  L7_2 = GetPlayerPed
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if 0 == L7_2 then
    L8_2 = L3_1
    L9_2 = false
    L10_2 = "plate.error_vehicle_not_found"
    return L8_2(L9_2, L10_2)
  end
  L8_2 = GetEntityCoords
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = GetEntityCoords
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 - L9_2
  L8_2 = #L8_2
  L9_2 = Config
  L9_2 = L9_2.UseCommandKeyDistance
  L9_2 = L9_2 + 3.0
  if L8_2 > L9_2 then
    L9_2 = L3_1
    L10_2 = false
    L11_2 = "plate.error_too_far"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = L0_1.RequireOwnedVehicle
  if L9_2 then
    L9_2 = sv_inventory
    L10_2 = L9_2
    L9_2 = L9_2.getKey
    L11_2 = A0_2
    L12_2 = L4_2
    L13_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if not L9_2 then
      L9_2 = L3_1
      L10_2 = false
      L11_2 = "plate.error_not_owned"
      return L9_2(L10_2, L11_2)
    end
  end
  L9_2 = sfr
  L10_2 = L9_2
  L9_2 = L9_2.isPlateTaken
  L11_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 then
    L9_2 = L3_1
    L10_2 = false
    L11_2 = "plate.error_plate_taken"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = L7_1
  L10_2 = A0_2
  L11_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L10_2 = L3_1
    L11_2 = false
    L12_2 = "plate.error_missing_plate_item"
    return L10_2(L11_2, L12_2)
  end
  L10_2 = sfr
  L11_2 = L10_2
  L10_2 = L10_2.removeItem
  L12_2 = A0_2
  L13_2 = L0_1.ItemName
  L14_2 = 1
  L15_2 = L9_2.metadata
  L16_2 = L9_2.slot
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if not L10_2 then
    L11_2 = L3_1
    L12_2 = false
    L13_2 = "plate.error_consume_failed"
    return L11_2(L12_2, L13_2)
  end
  L11_2 = sfr
  L12_2 = L11_2
  L11_2 = L11_2.addItem
  L13_2 = A0_2
  L14_2 = L0_1.ItemName
  L15_2 = 1
  L16_2 = nil
  L17_2 = {}
  L17_2.plate = L4_2
  L17_2.description = L4_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if not L11_2 then
    L12_2 = L3_1
    L13_2 = false
    L14_2 = "plate.error_return_failed"
    return L12_2(L13_2, L14_2)
  end
  L12_2 = sfr
  L13_2 = L12_2
  L12_2 = L12_2.updateVehiclePlate
  L14_2 = L4_2
  L15_2 = L3_2
  L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2)
  if not L12_2 then
    L14_2 = L0_1.RequireOwnedVehicle
    if L14_2 then
      L14_2 = L3_1
      L15_2 = false
      L16_2 = "plate.error_db_update"
      return L14_2(L15_2, L16_2)
    end
  end
  if L12_2 then
    L14_2 = L9_1
    L15_2 = L4_2
    L16_2 = L3_2
    L17_2 = L13_2
    L14_2(L15_2, L16_2, L17_2)
  end
  L14_2 = SetVehicleNumberPlateText
  L15_2 = L6_2
  L16_2 = L3_2
  L14_2(L15_2, L16_2)
  L14_2 = TriggerClientEvent
  L15_2 = "vehiclekeys:client:plate:sync"
  L16_2 = -1
  L17_2 = L2_2
  L18_2 = L3_2
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = L8_1
  L15_2 = A0_2
  L16_2 = L4_2
  L17_2 = L3_2
  L18_2 = L5_2
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = L3_1
  L15_2 = true
  L16_2 = "plate.success_changed"
  return L14_2(L15_2, L16_2)
end
L10_1(L11_1, L12_1)






