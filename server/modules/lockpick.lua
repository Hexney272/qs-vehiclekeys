





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Lockpick
  if not L0_2 then
    L0_2 = {}
  end
  return L0_2
end
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2()
  if A0_2 then
    L2_2 = L1_2.AdvancedItem
    if not L2_2 then
      L2_2 = L1_2.Item
      if not L2_2 then
        L2_2 = "caradvancedlockpick"
      end
    end
    return L2_2
  end
  L2_2 = L1_2.Item
  if not L2_2 then
    L2_2 = "carlockpick"
  end
  return L2_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getItem
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = L2_2.count
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = 0
  ::lbl_12::
  L4_2 = L3_2 > 0
  return L4_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2()
  L3_2 = tonumber
  L4_2 = L2_2.KeepChance
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L3_2
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 100
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  if A1_2 then
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 1
    L6_2 = 100
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L3_2 < L4_2
    return L5_2
  end
  if A0_2 then
    L4_2 = L2_2.RemoveAdvancedOnFail
    L4_2 = true == L4_2
    return L4_2
  end
  L4_2 = L2_2.RemoveOnFail
  L4_2 = true == L4_2
  return L4_2
end
L4_1 = lib
L4_1 = L4_1.callback
L4_1 = L4_1.register
L5_1 = "vehiclekeys:server:lockpick:hasItem"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = A0_2
  L4_2 = L1_1
  L5_2 = true == A1_2
  L4_2, L5_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "vehiclekeys:server:lockpickConsumeItem"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = true == A0_2
  L4_2 = L1_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_1
  L6_2 = L2_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "vehiclekeys:client:onLockpickItemResult"
    L7_2 = L2_2
    L8_2 = false
    L9_2 = "missing_item"
    return L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = L3_1
  L6_2 = L3_2
  L7_2 = true == A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "vehiclekeys:client:onLockpickItemResult"
    L8_2 = L2_2
    L9_2 = false
    L10_2 = "kept"
    return L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = sfr
  L7_2 = L6_2
  L6_2 = L6_2.removeItem
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = 1
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "vehiclekeys:client:onLockpickItemResult"
  L9_2 = L2_2
  L10_2 = true == L6_2
  if L6_2 then
    L11_2 = "removed"
    if L11_2 then
      goto lbl_57
    end
  end
  L11_2 = "remove_failed"
  ::lbl_57::
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L4_1(L5_1, L6_1)






