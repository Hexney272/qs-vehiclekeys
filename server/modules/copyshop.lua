





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = Config
L0_1 = L0_1.CopyShop
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = Config
L1_1 = L1_1.Plate
if not L1_1 then
  L1_1 = {}
end
L2_1 = {}
L3_1 = {}
L4_1 = 65
L5_1 = 90
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L8_1 = #L2_1
  L8_1 = L8_1 + 1
  L9_1 = string
  L9_1 = L9_1.char
  L10_1 = L7_1
  L9_1 = L9_1(L10_1)
  L2_1[L8_1] = L9_1
end
L4_1 = 48
L5_1 = 57
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L8_1 = #L3_1
  L8_1 = L8_1 + 1
  L9_1 = string
  L9_1 = L9_1.char
  L10_1 = L7_1
  L9_1 = L9_1(L10_1)
  L3_1[L8_1] = L9_1
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
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = L1_1.Letters
  if not L0_2 then
    L0_2 = 3
  end
  L1_2 = L1_1.Numbers
  if not L1_2 then
    L1_2 = 3
  end
  L2_2 = L1_1.UseSpace
  L2_2 = true == L2_2
  L3_2 = 1
  L4_2 = 5
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = 1
    L9_2 = 20
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = #L7_2
      L12_2 = L12_2 + 1
      L13_2 = Utils
      L13_2 = L13_2.NormalizePlate
      L14_2 = "%s%s%s"
      L15_2 = L14_2
      L14_2 = L14_2.format
      L16_2 = L4_1
      L17_2 = L0_2
      L18_2 = L2_1
      L16_2 = L16_2(L17_2, L18_2)
      if L2_2 then
        L17_2 = " "
        if L17_2 then
          goto lbl_41
        end
      end
      L17_2 = ""
      ::lbl_41::
      L18_2 = L4_1
      L19_2 = L1_2
      L20_2 = L3_1
      L18_2, L19_2, L20_2 = L18_2(L19_2, L20_2)
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L7_2[L12_2] = L13_2
    end
    L8_2 = sfr
    L9_2 = L8_2
    L8_2 = L8_2.getTakenPlates
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = 1
    L10_2 = #L7_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L7_2[L12_2]
      if "" ~= L13_2 then
        L14_2 = L8_2[L13_2]
        if not L14_2 then
          return L13_2
        end
      end
    end
  end
  L3_2 = ""
  return L3_2
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  L4_2 = true == A0_2
  L3_2.ok = L4_2
  L3_2.message = A1_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    if A0_2 then
      L4_2 = "success"
      if L4_2 then
        goto lbl_17
      end
    end
    L4_2 = "error"
  end
  ::lbl_17::
  L3_2.type = L4_2
  return L3_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 <= 0 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L0_1.Account
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "esx" == L2_2 then
      L2_2 = "money"
      if L2_2 then
        goto lbl_16
      end
    end
    L2_2 = "cash"
  end
  ::lbl_16::
  L3_2 = sfr
  L4_2 = L3_2
  L3_2 = L3_2.getPlayerFromId
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "esx" == L4_2 then
    L4_2 = 0
    if "money" == L2_2 then
      L5_2 = L3_2.getMoney
      if L5_2 then
        L5_2 = L3_2.getMoney
        L5_2 = L5_2()
        L4_2 = L5_2
    end
    else
      L5_2 = L3_2.getAccount
      if L5_2 then
        L5_2 = L3_2.getAccount
        L6_2 = L2_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          goto lbl_47
        end
      end
      L5_2 = nil
      ::lbl_47::
      if L5_2 then
        L6_2 = L5_2.money
        if L6_2 then
          L4_2 = L6_2
          goto lbl_53
        end
      end
      L4_2 = 0
    end
    ::lbl_53::
    if A1_2 > L4_2 then
      L5_2 = false
      return L5_2
    end
    if "money" == L2_2 then
      L5_2 = L3_2.removeMoney
      if L5_2 then
        L5_2 = L3_2.removeMoney
        L6_2 = A1_2
        L5_2(L6_2)
    end
    else
      L5_2 = L3_2.removeAccountMoney
      L6_2 = L2_2
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
    end
    L5_2 = true
    return L5_2
  end
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "qb" == L4_2 then
    L4_2 = L3_2.PlayerData
    if L4_2 then
      L4_2 = L3_2.PlayerData
      L4_2 = L4_2.money
      if L4_2 then
        L4_2 = L3_2.PlayerData
        L4_2 = L4_2.money
        L4_2 = L4_2[L2_2]
        if L4_2 then
          goto lbl_89
        end
      end
    end
    L4_2 = 0
    ::lbl_89::
    if A1_2 > L4_2 then
      L5_2 = false
      return L5_2
    end
    L5_2 = L3_2.Functions
    L5_2 = L5_2.RemoveMoney
    L6_2 = L2_2
    L7_2 = A1_2
    return L5_2(L6_2, L7_2)
  end
  L4_2 = false
  return L4_2
end
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "vehiclekeys:server:copyshop:getPlayerKeys"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = sv_inventory
  L3_2 = L2_2
  L2_2 = L2_2.getAllKeys
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.keys = L2_2
  return L1_2
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "vehiclekeys:server:copyshop:buyItem"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L0_1.Items
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = L0_1.Prices
  if not L3_2 then
    L3_2 = {}
  end
  if "plate" == A1_2 then
    L4_2 = L2_2.Plate
    if L4_2 then
      goto lbl_22
    end
  end
  if "screwdriver" == A1_2 then
    L4_2 = L2_2.Screwdriver
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = nil
  ::lbl_22::
  if "plate" == A1_2 then
    L5_2 = L3_2.Plate
    if L5_2 then
      goto lbl_39
    end
    L5_2 = 0
    if L5_2 then
      goto lbl_39
    end
  end
  if "screwdriver" == A1_2 then
    L5_2 = L3_2.Screwdriver
    if L5_2 then
      goto lbl_39
    end
    L5_2 = 0
    if L5_2 then
      goto lbl_39
    end
  end
  L5_2 = nil
  ::lbl_39::
  if not L4_2 or nil == L5_2 then
    L6_2 = L6_1
    L7_2 = false
    L8_2 = "copyshop.error_invalid_action"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = L7_1
  L7_2 = A0_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = L6_1
    L7_2 = false
    L8_2 = "copyshop.error_no_money"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = nil
  if "plate" == A1_2 then
    L7_2 = L5_1
    L7_2 = L7_2()
    if not L7_2 or "" == L7_2 then
      L8_2 = L6_1
      L9_2 = false
      L10_2 = "plate.error_generate_failed"
      return L8_2(L9_2, L10_2)
    end
    L8_2 = {}
    L8_2.plate = L7_2
    L8_2.description = L7_2
    L6_2 = L8_2
  end
  L7_2 = sfr
  L8_2 = L7_2
  L7_2 = L7_2.addItem
  L9_2 = A0_2
  L10_2 = L4_2
  L11_2 = 1
  L12_2 = nil
  L13_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L7_2 then
    L8_2 = L6_1
    L9_2 = false
    L10_2 = "copyshop.error_add_item"
    return L8_2(L9_2, L10_2)
  end
  L8_2 = L6_1
  L9_2 = true
  L10_2 = "copyshop.success_buy_item"
  return L8_2(L9_2, L10_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "vehiclekeys:server:copyshop:copyNearbyVehicleKey"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizeModel
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "" == L3_2 or "" == L4_2 then
    L5_2 = L6_1
    L6_2 = false
    L7_2 = "copyshop.error_invalid_vehicle"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getKey
  L7_2 = A0_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = L6_1
    L6_2 = false
    L7_2 = "copyshop.error_not_owned"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = L0_1.Prices
  if L5_2 then
    L5_2 = L0_1.Prices
    L5_2 = L5_2.CopyNearbyVehicleKey
    if L5_2 then
      goto lbl_39
    end
  end
  L5_2 = 0
  ::lbl_39::
  L6_2 = L7_1
  L7_2 = A0_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = L6_1
    L7_2 = false
    L8_2 = "copyshop.error_no_money"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = sv_inventory
  L7_2 = L6_2
  L6_2 = L6_2.addKey
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L6_2 then
    L7_2 = L6_1
    L8_2 = false
    L9_2 = "copyshop.error_copy_failed"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = L6_1
  L8_2 = true
  L9_2 = "copyshop.success_copy_key"
  return L7_2(L8_2, L9_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "vehiclekeys:server:copyshop:copyFromOwnedKey"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Utils
  L3_2 = L3_2.NormalizePlate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.NormalizeModel
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "" == L3_2 or "" == L4_2 then
    L5_2 = L6_1
    L6_2 = false
    L7_2 = "copyshop.error_invalid_vehicle"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = sv_inventory
  L6_2 = L5_2
  L5_2 = L5_2.getKey
  L7_2 = A0_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = L6_1
    L6_2 = false
    L7_2 = "copyshop.error_not_owned"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = L0_1.Prices
  if L5_2 then
    L5_2 = L0_1.Prices
    L5_2 = L5_2.CopyFromOwnedKey
    if L5_2 then
      goto lbl_39
    end
  end
  L5_2 = 0
  ::lbl_39::
  L6_2 = L7_1
  L7_2 = A0_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = L6_1
    L7_2 = false
    L8_2 = "copyshop.error_no_money"
    return L6_2(L7_2, L8_2)
  end
  L6_2 = sv_inventory
  L7_2 = L6_2
  L6_2 = L6_2.addKey
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L6_2 then
    L7_2 = L6_1
    L8_2 = false
    L9_2 = "copyshop.error_copy_failed"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = L6_1
  L8_2 = true
  L9_2 = "copyshop.success_copy_key"
  return L7_2(L8_2, L9_2)
end
L8_1(L9_1, L10_1)






