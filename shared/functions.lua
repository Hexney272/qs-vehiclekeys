





local L0_1, L1_1, L2_1, L3_1
L0_1 = GetResourceMetadata
L1_1 = GetCurrentResourceName
L1_1 = L1_1()
L2_1 = "version"
L3_1 = 0
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Debug
    if L0_2 then
      L0_2 = {}
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = ...
      L0_2[1] = L1_2
      L0_2[2] = L2_2
      L0_2[3] = L3_2
      L0_2[4] = L4_2
      L0_2[5] = L5_2
      L0_2[6] = L6_2
      L0_2[7] = L7_2
      L0_2[8] = L8_2
      L1_2 = ipairs
      L2_2 = L0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = type
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if "table" == L7_2 then
          L7_2 = json
          L7_2 = L7_2.encode
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L0_2[L5_2] = L7_2
        end
      end
      L1_2 = print
      L2_2 = "^5[DEBUG %s]^7"
      L3_2 = L2_2
      L2_2 = L2_2.format
      L4_2 = L0_1
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = table
      L3_2 = L3_2.unpack
      L4_2 = L0_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
Debug = L1_1
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = "^5VEHICLEKEYS INFO:^0 "
  L1_2 = pairs
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = L0_2
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = "\t"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L0_2 = L7_2
    else
      L7_2 = L0_2
      L8_2 = tostring
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = "\t"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L0_2 = L7_2
    end
  end
  L1_2 = print
  L2_2 = L0_2
  L1_2(L2_2)
end
Info = L1_1
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = "^1VEHICLEKEYS ERROR:^0 "
  L1_2 = pairs
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = L0_2
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = "\t"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L0_2 = L7_2
    else
      L7_2 = L0_2
      L8_2 = tostring
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = "\t"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L0_2 = L7_2
    end
  end
  L1_2 = print
  L2_2 = L0_2
  L1_2(L2_2)
end
Error = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetResourceState
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.find
    L9_2 = "started"
    L7_2 = L7_2(L8_2, L9_2)
    if nil ~= L7_2 then
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
DependencyCheck = L1_1
L1_1 = table
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    L2_2 = false
    L3_2 = false
    return L2_2, L3_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = L7_2
      L9_2 = L6_2
      return L8_2, L9_2
    end
  end
  L2_2 = false
  L3_2 = false
  return L2_2, L3_2
end
L1_1.find = L2_1
L1_1 = table
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L1_1.includes = L2_1






