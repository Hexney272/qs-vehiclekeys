





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = A0_2.metadata
    if not L1_2 then
      L1_2 = A0_2.info
    end
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.getInventory
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = L8_2.name
      L10_2 = Config
      L10_2 = L10_2.VehicleKeysItem
      if L9_2 == L10_2 then
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L10_2 = {}
        L11_2 = L8_2.slot
        if not L11_2 then
          L11_2 = L8_2.slotId
          if not L11_2 then
            L11_2 = tonumber
            L12_2 = L7_2
            L11_2 = L11_2(L12_2)
          end
        end
        L10_2.slot = L11_2
        L11_2 = L8_2.metadata
        if not L11_2 then
          L11_2 = L8_2.info
        end
        L10_2.metadata = L11_2
        L2_2[L9_2] = L10_2
      end
    end
  end
  return L2_2
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A0_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A0_2.plate
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizePlate
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 == L4_2
  return L3_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A0_2.plate
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 == L3_2
  return L2_2
end
L4_1 = sv_inventory
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L1_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2 or L5_2
  if not L2_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L0_1
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L11_2 = L10_2.plate
      if L11_2 then
        L11_2 = L10_2.model
        if L11_2 then
          L11_2 = #L3_2
          L11_2 = L11_2 + 1
          L12_2 = {}
          L13_2 = L9_2.slot
          L12_2.slot = L13_2
          L13_2 = Utils
          L13_2 = L13_2.NormalizePlate
          L14_2 = L10_2.plate
          L13_2 = L13_2(L14_2)
          L12_2.plate = L13_2
          L13_2 = Utils
          L13_2 = L13_2.NormalizeModel
          L14_2 = L10_2.model
          L13_2 = L13_2(L14_2)
          L12_2.model = L13_2
          L3_2[L11_2] = L12_2
        end
      end
    end
  end
  return L3_2
end
L4_1.getAllKeys = L5_1
L4_1 = sv_inventory
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.AdminKeyItem
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getItem
  L4_2 = A1_2
  L5_2 = Config
  L5_2 = L5_2.AdminKeyItem
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = L2_2.count
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = 0
  ::lbl_19::
  L4_2 = L3_2 > 0
  return L4_2
end
L4_1.playerHasAdminKey = L5_1
L4_1 = sv_inventory
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = L1_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = L4_2 or L6_2
  if not L4_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L0_1
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = L2_1
    L13_2 = L11_2
    L14_2 = A2_2
    L15_2 = A3_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    if L12_2 then
      if L11_2 then
        L12_2 = L11_2.plate
        if L12_2 then
          goto lbl_27
        end
      end
      L12_2 = ""
      ::lbl_27::
      if L11_2 then
        L13_2 = L11_2.model
        if L13_2 then
          goto lbl_33
        end
      end
      L13_2 = ""
      ::lbl_33::
      L14_2 = {}
      L15_2 = L10_2.slot
      L14_2.slot = L15_2
      L15_2 = Utils
      L15_2 = L15_2.NormalizePlate
      L16_2 = L12_2
      L15_2 = L15_2(L16_2)
      L14_2.plate = L15_2
      L15_2 = Utils
      L15_2 = L15_2.NormalizeModel
      L16_2 = L13_2
      L15_2 = L15_2(L16_2)
      L14_2.model = L15_2
      return L14_2
    end
  end
  L5_2 = false
  return L5_2
end
L4_1.getKey = L5_1
L4_1 = sv_inventory
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L1_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2 or L5_2
  if not L3_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L0_1
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = L3_1
    L12_2 = L10_2
    L13_2 = A2_2
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      if L10_2 then
        L11_2 = L10_2.plate
        if L11_2 then
          goto lbl_26
        end
      end
      L11_2 = ""
      ::lbl_26::
      if L10_2 then
        L12_2 = L10_2.model
        if L12_2 then
          goto lbl_32
        end
      end
      L12_2 = ""
      ::lbl_32::
      L13_2 = {}
      L14_2 = L9_2.slot
      L13_2.slot = L14_2
      L14_2 = Utils
      L14_2 = L14_2.NormalizePlate
      L15_2 = L11_2
      L14_2 = L14_2(L15_2)
      L13_2.plate = L14_2
      L14_2 = Utils
      L14_2 = L14_2.NormalizeModel
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      L13_2.model = L14_2
      return L13_2
    end
  end
  L4_2 = false
  return L4_2
end
L4_1.getKeyByPlate = L5_1
L4_1 = sv_inventory
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Utils
  L5_2 = L5_2.NormalizePlate
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = Utils
  L6_2 = L6_2.NormalizeModel
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if "" == L5_2 or "" == L6_2 then
    L7_2 = false
    L8_2 = "invalid_data"
    return L7_2, L8_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.getKey
  L9_2 = A1_2
  L10_2 = L5_2
  L11_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if L7_2 and not A4_2 then
    L8_2 = false
    L9_2 = "already_has_key"
    return L8_2, L9_2
  end
  L8_2 = {}
  L8_2.plate = L5_2
  L8_2.model = L6_2
  L9_2 = "%s %s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L6_2
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.description = L9_2
  L9_2 = sfr
  L10_2 = L9_2
  L9_2 = L9_2.addItem
  L11_2 = A1_2
  L12_2 = Config
  L12_2 = L12_2.VehicleKeysItem
  L13_2 = 1
  L14_2 = nil
  L15_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if not L9_2 then
    L10_2 = false
    L11_2 = "add_failed"
    return L10_2, L11_2
  end
  L10_2 = true
  return L10_2
end
L4_1.addKey = L5_1
L4_1 = sv_inventory
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2
  L4_2 = A0_2.getKey
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.getKeyByPlate
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    if L4_2 then
      L5_2 = print
      L6_2 = "[qs-vehiclekeys] Plate-only fallback used for key removal: plate=%s, requested_model=%s, found_model=%s"
      L7_2 = L6_2
      L6_2 = L6_2.format
      L8_2 = Utils
      L8_2 = L8_2.NormalizePlate
      L9_2 = A2_2
      L8_2 = L8_2(L9_2)
      L9_2 = Utils
      L9_2 = L9_2.NormalizeModel
      L10_2 = A3_2
      L9_2 = L9_2(L10_2)
      L10_2 = L4_2.model
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
  if not L4_2 then
    L5_2 = false
    L6_2 = "key_not_found"
    return L5_2, L6_2
  end
  L5_2 = sfr
  L6_2 = L5_2
  L5_2 = L5_2.removeItem
  L7_2 = A1_2
  L8_2 = Config
  L8_2 = L8_2.VehicleKeysItem
  L9_2 = 1
  L10_2 = {}
  L11_2 = L4_2.plate
  L10_2.plate = L11_2
  L11_2 = L4_2.model
  L10_2.model = L11_2
  L11_2 = L4_2.slot
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L5_2 then
    L6_2 = false
    L7_2 = "remove_failed"
    return L6_2, L7_2
  end
  L6_2 = true
  return L6_2
end
L4_1.removeKey = L5_1
L4_1 = Config
L4_1 = L4_1.AdminKeyItem
if L4_1 then
  L4_1 = sfr
  L5_1 = L4_1
  L4_1 = L4_1.registerUsableItem
  L6_1 = Config
  L6_1 = L6_1.AdminKeyItem
  function L7_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    L1_2 = TriggerClientEvent
    L2_2 = "vehiclekeys:client:useNearestKey"
    L3_2 = A0_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L4_1(L5_1, L6_1, L7_1)
end
L4_1 = Config
L4_1 = L4_1.VehicleKeysItem
if L4_1 then
  L4_1 = sfr
  L5_1 = L4_1
  L4_1 = L4_1.registerUsableItem
  L6_1 = Config
  L6_1 = L6_1.VehicleKeysItem
  function L7_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L2_2 = A1_2 or nil
    if A1_2 then
      L2_2 = A1_2.metadata
      if not L2_2 then
        L2_2 = A1_2.info
      end
    end
    if not L2_2 then
      return
    end
    L3_2 = TriggerClientEvent
    L4_2 = "vehiclekeys:client:useNearestKey"
    L5_2 = A0_2
    L6_2 = false
    L7_2 = L2_2.plate
    L8_2 = L2_2.model
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L4_1(L5_1, L6_1, L7_1)
end
L4_1 = Config
L4_1 = L4_1.Lockpick
if not L4_1 then
  L4_1 = {}
end
L5_1 = L4_1.Enabled
if L5_1 then
  L5_1 = L4_1.Item
  if L5_1 then
    L5_1 = L4_1.Item
    if "" ~= L5_1 then
      L5_1 = sfr
      L6_1 = L5_1
      L5_1 = L5_1.registerUsableItem
      L7_1 = L4_1.Item
      function L8_1(A0_2)
        local L1_2, L2_2, L3_2, L4_2
        L1_2 = TriggerClientEvent
        L2_2 = "vehiclekeys:client:useLockpick"
        L3_2 = A0_2
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
      L5_1(L6_1, L7_1, L8_1)
    end
  end
  L5_1 = L4_1.AdvancedItem
  if L5_1 then
    L5_1 = L4_1.AdvancedItem
    if "" ~= L5_1 then
      L5_1 = L4_1.AdvancedItem
      L6_1 = L4_1.Item
      if L5_1 ~= L6_1 then
        L5_1 = sfr
        L6_1 = L5_1
        L5_1 = L5_1.registerUsableItem
        L7_1 = L4_1.AdvancedItem
        function L8_1(A0_2)
          local L1_2, L2_2, L3_2, L4_2
          L1_2 = TriggerClientEvent
          L2_2 = "vehiclekeys:client:useLockpick"
          L3_2 = A0_2
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
        end
        L5_1(L6_1, L7_1, L8_1)
      end
    end
  end
end
L5_1 = Config
L5_1 = L5_1.Plate
if not L5_1 then
  L5_1 = {}
end
L6_1 = L5_1.Enabled
if L6_1 then
  L6_1 = Config
  L6_1 = L6_1.Inventory
  if "ox" ~= L6_1 then
    L6_1 = L5_1.ItemName
    if L6_1 then
      L6_1 = L5_1.ItemName
      if "" ~= L6_1 then
        L6_1 = sfr
        L7_1 = L6_1
        L6_1 = L6_1.registerUsableItem
        L8_1 = L5_1.ItemName
        function L9_1(A0_2, A1_2)
          local L2_2, L3_2, L4_2, L5_2, L6_2
          L2_2 = A1_2 or nil
          if A1_2 then
            L2_2 = A1_2.metadata
            if not L2_2 then
              L2_2 = A1_2.info
            end
          end
          if not L2_2 then
            return
          end
          L3_2 = TriggerClientEvent
          L4_2 = "vehiclekeys:client:plate:use"
          L5_2 = A0_2
          L6_2 = L2_2
          L3_2(L4_2, L5_2, L6_2)
        end
        L6_1(L7_1, L8_1, L9_1)
      end
    end
  end
end
L6_1 = Config
L6_1 = L6_1.Tracker
if not L6_1 then
  L6_1 = {}
end
L7_1 = L6_1.Enabled
if L7_1 then
  L7_1 = Config
  L7_1 = L7_1.Inventory
  if "ox" ~= L7_1 then
    L7_1 = L6_1.GPSItemName
    if L7_1 then
      L7_1 = L6_1.GPSItemName
      if "" ~= L7_1 then
        L7_1 = sfr
        L8_1 = L7_1
        L7_1 = L7_1.registerUsableItem
        L9_1 = L6_1.GPSItemName
        function L10_1(A0_2)
          local L1_2, L2_2, L3_2
          L1_2 = TriggerClientEvent
          L2_2 = "vehiclekeys:client:tracker:useGps"
          L3_2 = A0_2
          L1_2(L2_2, L3_2)
        end
        L7_1(L8_1, L9_1, L10_1)
      end
    end
    L7_1 = L6_1.TrackerItemName
    if L7_1 then
      L7_1 = L6_1.TrackerItemName
      if "" ~= L7_1 then
        L7_1 = sfr
        L8_1 = L7_1
        L7_1 = L7_1.registerUsableItem
        L9_1 = L6_1.TrackerItemName
        function L10_1(A0_2)
          local L1_2, L2_2, L3_2
          L1_2 = TriggerClientEvent
          L2_2 = "vehiclekeys:client:tracker:openMenu"
          L3_2 = A0_2
          L1_2(L2_2, L3_2)
        end
        L7_1(L8_1, L9_1, L10_1)
      end
    end
  end
end






