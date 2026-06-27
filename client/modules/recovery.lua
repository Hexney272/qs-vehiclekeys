





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L2_1.E = 38
L2_1.G = 47
L2_1.H = 74
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = A0_2
    L2_2 = tostring
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2
  end
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "E"
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.upper
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L2_2 = 38
  end
  L3_2 = L1_2
  return L2_2, L3_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "vehiclekeys:server:recovery:getOwnedVehicles"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L0_2.vehicles
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "recovery.empty"
    L3_2 = L3_2(L4_2)
    L4_2 = "info"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = L7_2.label
    if not L10_2 then
      L10_2 = "%s [%s]"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L7_2.model
      if not L12_2 then
        L12_2 = "UNKNOWN"
      end
      L13_2 = L7_2.plate
      if not L13_2 then
        L13_2 = "UNKNOWN"
      end
      L10_2 = L10_2(L11_2, L12_2, L13_2)
    end
    L9_2.title = L10_2
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = "recovery.menu_item_description"
    L10_2 = L10_2(L11_2)
    L9_2.description = L10_2
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerServerEvent
      L1_3 = "vehiclekeys:server:recovery:recoverKey"
      L2_3 = L7_2.plate
      L0_3(L1_3, L2_3)
    end
    L9_2.onSelect = L10_2
    L2_2[L8_2] = L9_2
  end
  L3_2 = lib
  L3_2 = L3_2.registerContext
  L4_2 = {}
  L4_2.id = "vehiclekeys_recovery_menu"
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "recovery.menu_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.options = L2_2
  L3_2(L4_2)
  L3_2 = lib
  L3_2 = L3_2.showContext
  L4_2 = "vehiclekeys_recovery_menu"
  L3_2(L4_2)
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2.model
  if not L2_2 then
    L2_2 = "cs_bankman"
  end
  L3_2 = joaat
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = lib
  L4_2 = L4_2.requestModel
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = A1_2.coords
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = type
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if "vector4" == L9_2 then
    L9_2 = L4_2.x
    L10_2 = L4_2.y
    L11_2 = L4_2.z
    L8_2 = L4_2.w
    L7_2 = L11_2
    L6_2 = L10_2
    L5_2 = L9_2
  else
    L9_2 = type
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    if "vector3" == L9_2 then
      L9_2 = L4_2.x
      L10_2 = L4_2.y
      L11_2 = L4_2.z
      L8_2 = 0.0
      L7_2 = L11_2
      L6_2 = L10_2
      L5_2 = L9_2
    else
      L9_2 = type
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      if "table" == L9_2 then
        L9_2 = L4_2.x
        if not L9_2 then
          L9_2 = 0.0
        end
        L10_2 = L4_2.y
        if not L10_2 then
          L10_2 = 0.0
        end
        L11_2 = L4_2.z
        if not L11_2 then
          L11_2 = 0.0
        end
        L12_2 = L4_2.w
        L8_2 = L12_2 or L8_2
        if not L12_2 then
          L8_2 = 0.0
        end
        L7_2 = L11_2
        L6_2 = L10_2
        L5_2 = L9_2
      else
        return
      end
    end
  end
  L9_2 = CreatePed
  L10_2 = 4
  L11_2 = L3_2
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = L7_2 - 1.0
  L15_2 = L8_2 or L15_2
  if not L8_2 then
    L15_2 = 0.0
  end
  L16_2 = false
  L17_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if 0 == L9_2 then
    return
  end
  L10_2 = SetEntityInvincible
  L11_2 = L9_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = SetBlockingOfNonTemporaryEvents
  L11_2 = L9_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = FreezeEntityPosition
  L11_2 = L9_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = SetEntityAsMissionEntity
  L11_2 = L9_2
  L12_2 = true
  L13_2 = false
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L1_1
  L10_2[A0_2] = L9_2
end
L6_1 = CreateThread
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Config
  L0_2 = L0_2.KeyRecovery
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.KeyRecovery
    L0_2 = L0_2.Enabled
    if true == L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = Config
  L0_2 = L0_2.KeyRecovery
  L0_2 = L0_2.NPCs
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = Config
  L1_2 = L1_2.KeyRecovery
  L1_2 = L1_2.TextUiDistance
  if not L1_2 then
    L1_2 = 2.0
  end
  L2_2 = Config
  L2_2 = L2_2.KeyRecovery
  L2_2 = L2_2.InteractionDistance
  if not L2_2 then
    L2_2 = 2.0
  end
  L3_2 = L3_1
  L4_2 = Config
  L4_2 = L4_2.KeyRecovery
  L4_2 = L4_2.OpenControl
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = 1
  L6_2 = #L0_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L0_2[L8_2]
    L10_2 = L5_1
    L11_2 = L8_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = L9_2.coords
    L11_2 = nil
    L12_2 = type
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if "vector4" == L12_2 then
      L12_2 = vec3
      L13_2 = L10_2.x
      L14_2 = L10_2.y
      L15_2 = L10_2.z
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L12_2
    else
      L12_2 = type
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if "vector3" == L12_2 then
        L12_2 = vec3
        L13_2 = L10_2.x
        L14_2 = L10_2.y
        L15_2 = L10_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2 = L12_2
      else
        L12_2 = type
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        if "table" == L12_2 then
          L12_2 = vec3
          L13_2 = L10_2.x
          if not L13_2 then
            L13_2 = 0.0
          end
          L13_2 = L13_2 + 0.0
          L14_2 = L10_2.y
          if not L14_2 then
            L14_2 = 0.0
          end
          L14_2 = L14_2 + 0.0
          L15_2 = L10_2.z
          if not L15_2 then
            L15_2 = 0.0
          end
          L15_2 = L15_2 + 0.0
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          L11_2 = L12_2
        end
      end
    end
    if L11_2 then
      L12_2 = lib
      L12_2 = L12_2.points
      L12_2 = L12_2.new
      L13_2 = {}
      L13_2.coords = L11_2
      L13_2.distance = L1_2
      L12_2 = L12_2(L13_2)
      function L13_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L1_3 = DrawText3D
        L2_3 = L11_2.x
        L3_3 = L11_2.y
        L4_3 = L11_2.z
        L4_3 = L4_3 + 1.0
        L5_3 = i18n
        L5_3 = L5_3.t
        L6_3 = "recovery.hint"
        L7_3 = {}
        L8_3 = L4_2
        L7_3.key = L8_3
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = "vehiclekeys_recovery_%s"
        L7_3 = L6_3
        L6_3 = L6_3.format
        L8_3 = L8_2
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = L4_2
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L1_3 = GetEntityCoords
        L2_3 = cache
        L2_3 = L2_3.ped
        L1_3 = L1_3(L2_3)
        L2_3 = L11_2
        L2_3 = L1_3 - L2_3
        L2_3 = #L2_3
        L3_3 = L2_2
        if L2_3 <= L3_3 then
          L2_3 = IsControlJustReleased
          L3_3 = 0
          L4_3 = L3_2
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = L4_1
            L2_3()
          end
        end
      end
      L12_2.nearby = L13_2
      L13_2 = L0_1
      L13_2 = #L13_2
      L14_2 = L13_2 + 1
      L13_2 = L0_1
      L13_2[L14_2] = L12_2
    end
  end
end
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "onResourceStop"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = 1
  L2_2 = L1_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L5_2 = L5_2[L4_2]
    if L5_2 and 0 ~= L5_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
end
L6_1(L7_1, L8_1)






