





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = Config
L0_1 = L0_1.CopyShop
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = {}
L1_1.ped = nil
L1_1.prop = nil
L1_1.blip = nil
L1_1.point = nil
L2_1 = {}
L2_1.E = 38
L2_1.G = 47
L2_1.H = 74
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.OpenControl
  if not L0_2 then
    L0_2 = "E"
  end
  L1_2 = L0_2
  L0_2 = L0_2.upper
  L0_2 = L0_2(L1_2)
  L1_2 = L2_1
  L0_2 = L1_2[L0_2]
  if not L0_2 then
    L0_2 = 38
  end
  return L0_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1.Npc
  if L0_2 then
    L0_2 = L0_1.Npc
    L0_2 = L0_2.Coords
    if L0_2 then
      goto lbl_14
    end
  end
  L0_2 = vec4
  L1_2 = 0.0
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  ::lbl_14::
  return L0_2
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1.UseBlip
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  L0_2 = L0_2()
  L1_2 = L0_1.Blip
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = AddBlipForCoord
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = SetBlipSprite
  L4_2 = L2_2
  L5_2 = L1_2.Sprite
  if not L5_2 then
    L5_2 = 186
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipColour
  L4_2 = L2_2
  L5_2 = L1_2.Colour
  if not L5_2 then
    L5_2 = 3
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipScale
  L4_2 = L2_2
  L5_2 = L1_2.Scale
  if not L5_2 then
    L5_2 = 0.8
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipAsShortRange
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = AddTextComponentString
  L4_2 = L1_2.Name
  if not L4_2 then
    L4_2 = "Copy keys"
  end
  L3_2(L4_2)
  L3_2 = EndTextCommandSetBlipName
  L4_2 = L2_2
  L3_2(L4_2)
  L1_1.blip = L2_2
end
function L6_1()
  local L0_2, L1_2
  L0_2 = L1_1.blip
  if L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L1_1.blip
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = RemoveBlip
      L1_2 = L1_1.blip
      L0_2(L1_2)
    end
  end
  L1_1.blip = nil
end
function L7_1()
  local L0_2, L1_2
  L0_2 = L1_1.prop
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L1_1.prop
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteEntity
      L1_2 = L1_1.prop
      L0_2(L1_2)
    end
  end
  L1_1.prop = nil
  L0_2 = L1_1.ped
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L1_1.ped
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeletePed
      L1_2 = L1_1.ped
      L0_2(L1_2)
    end
  end
  L1_1.ped = nil
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = L1_1.ped
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L1_1.ped
    L0_2 = L0_2(L1_2)
    if L0_2 then
      return
    end
  end
  L0_2 = L0_1.Npc
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L4_1
  L1_2 = L1_2()
  L2_2 = L0_2.Model
  if not L2_2 then
    L2_2 = "s_m_y_xmech_01"
  end
  L3_2 = lib
  L3_2 = L3_2.requestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreatePed
  L4_2 = 5
  L5_2 = joaat
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L8_2 = L8_2 - 1.0
  L9_2 = L1_2.w
  L10_2 = false
  L11_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = SetEntityInvincible
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetBlockingOfNonTemporaryEvents
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdoll
  L5_2 = L3_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetPedFleeAttributes
  L5_2 = L3_2
  L6_2 = 0
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L0_2.Animation
  if L4_2 then
    L4_2 = L0_2.Animation
    L4_2 = L4_2.Dict
    if L4_2 then
      L4_2 = L0_2.Animation
      L4_2 = L4_2.Clip
      if L4_2 then
        L4_2 = lib
        L4_2 = L4_2.requestAnimDict
        L5_2 = L0_2.Animation
        L5_2 = L5_2.Dict
        L4_2(L5_2)
        L4_2 = TaskPlayAnim
        L5_2 = L3_2
        L6_2 = L0_2.Animation
        L6_2 = L6_2.Dict
        L7_2 = L0_2.Animation
        L7_2 = L7_2.Clip
        L8_2 = 3.0
        L9_2 = -8.0
        L10_2 = -1
        L11_2 = L0_2.Animation
        L11_2 = L11_2.Flag
        if not L11_2 then
          L11_2 = 63
        end
        L12_2 = 0
        L13_2 = false
        L14_2 = false
        L15_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
  L4_2 = L0_2.Prop
  if L4_2 then
    L4_2 = L0_2.Prop
    L4_2 = L4_2.Model
    if L4_2 then
      L4_2 = lib
      L4_2 = L4_2.requestModel
      L5_2 = L0_2.Prop
      L5_2 = L5_2.Model
      L4_2(L5_2)
      L4_2 = CreateObject
      L5_2 = joaat
      L6_2 = L0_2.Prop
      L6_2 = L6_2.Model
      L5_2 = L5_2(L6_2)
      L6_2 = L1_2.x
      L7_2 = L1_2.y
      L8_2 = L1_2.z
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = AttachEntityToEntity
      L6_2 = L4_2
      L7_2 = L3_2
      L8_2 = GetPedBoneIndex
      L9_2 = L3_2
      L10_2 = L0_2.Prop
      L10_2 = L10_2.Bone
      if not L10_2 then
        L10_2 = 28422
      end
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L0_2.Prop
      L9_2 = L9_2.Rotation
      L9_2 = L9_2.x
      L10_2 = L0_2.Prop
      L10_2 = L10_2.Rotation
      L10_2 = L10_2.y
      L11_2 = L0_2.Prop
      L11_2 = L11_2.Rotation
      L11_2 = L11_2.z
      L12_2 = L0_2.Prop
      L12_2 = L12_2.Offset
      L12_2 = L12_2.x
      L13_2 = L0_2.Prop
      L13_2 = L13_2.Offset
      L13_2 = L13_2.y
      L14_2 = L0_2.Prop
      L14_2 = L14_2.Offset
      L14_2 = L14_2.z
      L15_2 = true
      L16_2 = true
      L17_2 = false
      L18_2 = true
      L19_2 = 0
      L20_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L1_1.prop = L4_2
    end
  end
  L1_1.ped = L3_2
end
function L9_1()
  local L0_2, L1_2
  L0_2 = lib
  L0_2 = L0_2.hideContext
  L1_2 = false
  L0_2(L1_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = Notification
  L2_2 = i18n
  L2_2 = L2_2.t
  L3_2 = A0_2.message
  if not L3_2 then
    L3_2 = "copyshop.error_generic"
  end
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.type
  if not L3_2 then
    L3_2 = "error"
  end
  L1_2(L2_2, L3_2)
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "vehiclekeys:server:copyshop:getPlayerKeys"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L0_2.keys
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L0_1.Prices
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = {}
  L4_2 = {}
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "copyshop.copy_nearby_vehicle"
  L7_2 = {}
  L8_2 = L2_2.CopyNearbyVehicleKey
  if not L8_2 then
    L8_2 = 0
  end
  L7_2.price = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.title = L5_2
  L4_2.icon = "car"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = lib
    L0_3 = L0_3.getClosestVehicle
    L1_3 = GetEntityCoords
    L2_3 = cache
    L2_3 = L2_3.ped
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1.InteractDistance
    if not L2_3 then
      L2_3 = 2.0
    end
    L3_3 = true
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 and 0 ~= L0_3 then
      L1_3 = DoesEntityExist
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_30
      end
    end
    L1_3 = Notification
    L2_3 = i18n
    L2_3 = L2_3.t
    L3_3 = "copyshop.error_no_vehicle"
    L2_3 = L2_3(L3_3)
    L3_3 = "error"
    do return L1_3(L2_3, L3_3) end
    ::lbl_30::
    L1_3 = lib
    L1_3 = L1_3.callback
    L1_3 = L1_3.await
    L2_3 = "vehiclekeys:server:copyshop:copyNearbyVehicleKey"
    L3_3 = false
    L4_3 = Utils
    L4_3 = L4_3.GetVehiclePlate
    L5_3 = L0_3
    L4_3 = L4_3(L5_3)
    L5_3 = Utils
    L5_3 = L5_3.GetVehicleModelName
    L6_3 = L0_3
    L5_3, L6_3 = L5_3(L6_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L2_3 = L10_1
    L3_3 = L1_3
    L2_3(L3_3)
  end
  L4_2.onSelect = L5_2
  L5_2 = {}
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "copyshop.buy_plate"
  L8_2 = {}
  L9_2 = L2_2.Plate
  if not L9_2 then
    L9_2 = 0
  end
  L8_2.price = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.title = L6_2
  L5_2.icon = "id-card"
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = lib
    L0_3 = L0_3.callback
    L0_3 = L0_3.await
    L1_3 = "vehiclekeys:server:copyshop:buyItem"
    L2_3 = false
    L3_3 = "plate"
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = L10_1
    L2_3 = L0_3
    L1_3(L2_3)
  end
  L5_2.onSelect = L6_2
  L6_2 = {}
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = "copyshop.buy_screwdriver"
  L9_2 = {}
  L10_2 = L2_2.Screwdriver
  if not L10_2 then
    L10_2 = 0
  end
  L9_2.price = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.title = L7_2
  L6_2.icon = "screwdriver-wrench"
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = lib
    L0_3 = L0_3.callback
    L0_3 = L0_3.await
    L1_3 = "vehiclekeys:server:copyshop:buyItem"
    L2_3 = false
    L3_3 = "screwdriver"
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = L10_1
    L2_3 = L0_3
    L1_3(L2_3)
  end
  L6_2.onSelect = L7_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = #L1_2
  if L4_2 > 0 then
    L4_2 = #L3_2
    L4_2 = L4_2 + 1
    L5_2 = {}
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "copyshop.copy_from_owned"
    L8_2 = {}
    L9_2 = L2_2.CopyFromOwnedKey
    if not L9_2 then
      L9_2 = 0
    end
    L8_2.price = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.title = L6_2
    L5_2.icon = "key"
    L5_2.menu = "vehiclekeys_copyshop_owned_keys"
    L3_2[L4_2] = L5_2
    L4_2 = {}
    L5_2 = ipairs
    L6_2 = L1_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = #L4_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L13_2 = "%s [%s]"
      L14_2 = L13_2
      L13_2 = L13_2.format
      L15_2 = L10_2.model
      if not L15_2 then
        L15_2 = "UNKNOWN"
      end
      L16_2 = L10_2.plate
      if not L16_2 then
        L16_2 = "UNKNOWN"
      end
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2.title = L13_2
      L12_2.icon = "key"
      function L13_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = lib
        L0_3 = L0_3.callback
        L0_3 = L0_3.await
        L1_3 = "vehiclekeys:server:copyshop:copyFromOwnedKey"
        L2_3 = false
        L3_3 = L10_2.plate
        L4_3 = L10_2.model
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        L1_3 = L10_1
        L2_3 = L0_3
        L1_3(L2_3)
      end
      L12_2.onSelect = L13_2
      L4_2[L11_2] = L12_2
    end
    L5_2 = lib
    L5_2 = L5_2.registerContext
    L6_2 = {}
    L6_2.id = "vehiclekeys_copyshop_owned_keys"
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "copyshop.owned_keys_title"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.menu = "vehiclekeys_copyshop_menu"
    L6_2.options = L4_2
    L5_2(L6_2)
  end
  L4_2 = lib
  L4_2 = L4_2.registerContext
  L5_2 = {}
  L5_2.id = "vehiclekeys_copyshop_menu"
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "copyshop.title"
  L6_2 = L6_2(L7_2)
  L5_2.title = L6_2
  L5_2.options = L3_2
  L6_2 = L9_1
  L5_2.onExit = L6_2
  L4_2(L5_2)
  L4_2 = lib
  L4_2 = L4_2.showContext
  L5_2 = "vehiclekeys_copyshop_menu"
  L4_2(L5_2)
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = L0_1.UseTarget
    if L0_2 then
      L0_2 = target
      if L0_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L0_2 = L4_1
  L0_2 = L0_2()
  L0_2 = L0_2.xyz
  L1_2 = target
  L2_2 = L1_2
  L1_2 = L1_2.destroyZones
  L3_2 = "vehiclekeys_copyshop"
  L1_2(L2_2, L3_2)
  L1_2 = target
  L2_2 = L1_2
  L1_2 = L1_2.addBoxZone
  L3_2 = "vehiclekeys_copyshop"
  L4_2 = "main"
  L5_2 = L0_2
  L6_2 = {}
  L7_2 = {}
  L7_2.icon = "fas fa-key"
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = "copyshop.target_label"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = L11_1
    L0_3()
  end
  L7_2.action = L8_2
  L6_2[1] = L7_2
  L7_2 = L0_1.InteractDistance
  if not L7_2 then
    L7_2 = 2.0
  end
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L13_1 = CreateThread
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L5_1
  L0_2()
  L0_2 = L4_1
  L0_2 = L0_2()
  L1_2 = L0_2.xyz
  L2_2 = L3_1
  L2_2 = L2_2()
  L3_2 = L0_1.OpenControl
  if not L3_2 then
    L3_2 = "E"
  end
  L4_2 = L3_2
  L3_2 = L3_2.upper
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.UseTarget
  L4_2 = L0_1.UseTarget
  L4_2 = not L4_2 or L4_2
  L5_2 = lib
  L5_2 = L5_2.points
  L5_2 = L5_2.new
  L6_2 = {}
  L6_2.coords = L1_2
  L7_2 = L0_1.PedRenderDistance
  if not L7_2 then
    L7_2 = 10.0
  end
  L6_2.distance = L7_2
  L5_2 = L5_2(L6_2)
  L1_1.point = L5_2
  L5_2 = L1_1.point
  function L6_2(A0_3)
    local L1_3
    L1_3 = L8_1
    L1_3()
  end
  L5_2.onEnter = L6_2
  L5_2 = L1_1.point
  function L6_2(A0_3)
    local L1_3
    L1_3 = L7_1
    L1_3()
    L1_3 = L9_1
    L1_3()
  end
  L5_2.onExit = L6_2
  L5_2 = L1_1.point
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L4_2
    if not L1_3 then
      return
    end
    L1_3 = GetEntityCoords
    L2_3 = cache
    L2_3 = L2_3.ped
    L1_3 = L1_3(L2_3)
    L2_3 = L1_2
    L2_3 = L1_3 - L2_3
    L2_3 = #L2_3
    L3_3 = L0_1.TextUiDistance
    if not L3_3 then
      L3_3 = 2.0
    end
    if L2_3 > L3_3 then
      return
    end
    L3_3 = DrawText3D
    L4_3 = L0_2.x
    L5_3 = L0_2.y
    L6_3 = L0_2.z
    L6_3 = L6_3 + 1.0
    L7_3 = i18n
    L7_3 = L7_3.t
    L8_3 = "copyshop.textui_open"
    L9_3 = {}
    L10_3 = L3_2
    L9_3.key = L10_3
    L7_3 = L7_3(L8_3, L9_3)
    L8_3 = "vehiclekeys_copyshop_text"
    L9_3 = L3_2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L3_3 = IsControlJustReleased
    L4_3 = 0
    L5_3 = L2_2
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      L3_3 = L11_1
      L3_3()
    end
  end
  L5_2.nearby = L6_2
  L5_2 = L12_1
  L5_2()
end
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "onResourceStop"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = target
  if L1_2 then
    L1_2 = target
    L2_2 = L1_2
    L1_2 = L1_2.destroyZones
    L3_2 = "vehiclekeys_copyshop"
    L1_2(L2_2, L3_2)
  end
  L1_2 = L6_1
  L1_2()
  L1_2 = L7_1
  L1_2()
end
L13_1(L14_1, L15_1)






