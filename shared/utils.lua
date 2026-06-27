





local L0_1, L1_1, L2_1
L0_1 = Utils
if not L0_1 then
  L0_1 = {}
end
Utils = L0_1
L0_1 = {}
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = ""
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^%s*(.-)%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end
L1_1.Trim = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.Trim
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L3_2 = L2_2
  L2_2 = L2_2.upper
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2(L2_2, L3_2)
end
L1_1.NormalizePlate = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.Trim
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L3_2 = L2_2
  L2_2 = L2_2.upper
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2(L2_2, L3_2)
end
L1_1.NormalizeModel = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  if A0_2 < 0 then
    return A0_2
  end
  L1_2 = 2147483647
  if A0_2 > L1_2 then
    L1_2 = A0_2 - 4294967296
    return L1_2
  end
  return A0_2
end
L1_1.NormalizeVehicleHash = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^-?%d+$"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L1_1.IsVehicleHash = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.NormalizeVehicleHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return L2_2
  end
  if L1_2 < 0 then
    L4_2 = L1_2 + 4294967296
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    return L3_2
  end
  L4_2 = L1_2 - 4294967296
  L3_2 = L0_1
  L3_2 = L3_2[L4_2]
  return L3_2
end
L1_1.GetCachedVehicleModel = L2_1
L1_1 = Utils
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizeModel
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.NormalizeVehicleHash
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L0_1
  L4_2[L3_2] = L2_2
  if L3_2 < 0 then
    L5_2 = L3_2 + 4294967296
    L4_2 = L0_1
    L4_2[L5_2] = L2_2
  else
    L5_2 = L3_2 - 4294967296
    L4_2 = L0_1
    L4_2[L5_2] = L2_2
  end
end
L1_1.CacheVehicleModelHash = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.IsVehicleHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.GetCachedVehicleModel
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return L1_2
    end
    L2_2 = Utils
    L2_2 = L2_2.NormalizeModel
    L3_2 = tostring
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    return L2_2(L3_2, L4_2)
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModel
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.ResolveVehicleModel = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = ""
  do return L1_2 end
  ::lbl_12::
  L1_2 = Utils
  L1_2 = L1_2.NormalizePlate
  L2_2 = GetVehicleNumberPlateText
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2(L2_2, L3_2)
end
L1_1.GetVehiclePlate = L2_1
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = ""
  do return L1_2 end
  ::lbl_12::
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModel
  L2_2 = GetDisplayNameFromVehicleModel
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1.GetVehicleModelName = L2_1






