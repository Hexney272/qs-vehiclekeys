





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = Config
L0_1 = L0_1.Tracker
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = {}
L2_1 = {}
L1_1.tracked = L2_1
L2_1 = {}
L1_1.modelCount = L2_1
L1_1.locateBlip = nil
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetResourceState
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.ox_target
  L2_2 = L1_2
  L1_2 = L1_2.removeModel
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetResourceState
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = {}
  L2_2.icon = "fas fa-satellite-dish"
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "tracker.target_remove_label"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L3_2 = L0_1.RemoveDistance
  if not L3_2 then
    L3_2 = 2.5
  end
  L2_2.distance = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = Utils
    L1_3 = L1_3.GetVehiclePlate
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = "" ~= L1_3
    return L2_3
  end
  L2_2.canInteract = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = A0_3.entity
      if L1_3 then
        goto lbl_7
      end
    end
    L1_3 = 0
    ::lbl_7::
    if 0 ~= L1_3 then
      L2_3 = DoesEntityExist
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_22
      end
    end
    L2_3 = Notification
    L3_3 = i18n
    L3_3 = L3_3.t
    L4_3 = "tracker.error_no_vehicle"
    L3_3 = L3_3(L4_3)
    L4_3 = "error"
    do return L2_3(L3_3, L4_3) end
    ::lbl_22::
    L2_3 = Utils
    L2_3 = L2_3.GetVehiclePlate
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = L1_1.tracked
    L3_3 = L3_3[L2_3]
    if not L3_3 then
      L4_3 = Notification
      L5_3 = i18n
      L5_3 = L5_3.t
      L6_3 = "tracker.error_not_installed"
      L5_3 = L5_3(L6_3)
      L6_3 = "error"
      return L4_3(L5_3, L6_3)
    end
    L4_3 = TriggerEvent
    L5_3 = "vehiclekeys:client:tracker:removeByPlate"
    L6_3 = L3_3.plate
    L7_3 = L3_3.model
    L4_3(L5_3, L6_3, L7_3)
  end
  L2_2.onSelect = L3_2
  L1_2[1] = L2_2
  L2_2 = L0_1.UseBootForTarget
  if L2_2 then
    L2_2 = L1_2[1]
    L3_2 = {}
    L4_2 = "boot"
    L3_2[1] = L4_2
    L2_2.bones = L3_2
  end
  L2_2 = exports
  L2_2 = L2_2.ox_target
  L3_2 = L2_2
  L2_2 = L2_2.addModel
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1.locateBlip
  if L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L1_1.locateBlip
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = RemoveBlip
      L1_2 = L1_1.locateBlip
      L0_2(L1_2)
    end
  end
  L1_1.locateBlip = nil
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = Utils
    L8_2 = L8_2.NormalizePlate
    L9_2 = L7_2.plate
    L8_2 = L8_2(L9_2)
    L9_2 = Utils
    L9_2 = L9_2.NormalizeModel
    L10_2 = L7_2.model
    L9_2 = L9_2(L10_2)
    if "" ~= L8_2 and "" ~= L9_2 then
      L10_2 = {}
      L10_2.plate = L8_2
      L10_2.model = L9_2
      L1_2[L8_2] = L10_2
      L10_2 = joaat
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L2_2[L10_2]
      if not L11_2 then
        L11_2 = 0
      end
      L11_2 = L11_2 + 1
      L2_2[L10_2] = L11_2
    end
  end
  L3_2 = L0_1.UseTarget
  if L3_2 then
    L3_2 = GetResourceState
    L4_2 = "ox_target"
    L3_2 = L3_2(L4_2)
    if "started" == L3_2 then
      L3_2 = pairs
      L4_2 = L1_1.modelCount
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L2_2[L7_2]
        if not L9_2 then
          L9_2 = L2_1
          L10_2 = L7_2
          L9_2(L10_2)
        end
      end
      L3_2 = pairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L1_1.modelCount
        L9_2 = L9_2[L7_2]
        if not L9_2 then
          L9_2 = L3_1
          L10_2 = L7_2
          L9_2(L10_2)
        end
      end
    end
  end
  L1_1.tracked = L1_2
  L1_1.modelCount = L2_2
end
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "vehiclekeys:server:tracker:list"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L5_1
  L2_2 = L0_2
  L1_2(L2_2)
  return L0_2
end
function L7_1(A0_2)
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
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizeModel
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "" == L2_2 or "" == L3_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "tracker.error_remove_failed"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L0_1.RemoveMinigame
  if L4_2 then
    L4_2 = L0_1.RemoveMinigame
    L4_2 = L4_2.Enabled
    if L4_2 then
      L4_2 = lib
      L4_2 = L4_2.skillCheck
      L5_2 = L0_1.RemoveMinigame
      L5_2 = L5_2.SkillCheck
      if not L5_2 then
        L5_2 = {}
        L6_2 = "easy"
        L7_2 = "easy"
        L8_2 = "medium"
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        L5_2[3] = L8_2
      end
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = Notification
        L6_2 = i18n
        L6_2 = L6_2.t
        L7_2 = "tracker.error_minigame_failed"
        L6_2 = L6_2(L7_2)
        L7_2 = "error"
        return L5_2(L6_2, L7_2)
      end
    end
  end
  L4_2 = lib
  L4_2 = L4_2.progressCircle
  L5_2 = {}
  L6_2 = L0_1.RemoveDuration
  if not L6_2 then
    L6_2 = 2500
  end
  L5_2.duration = L6_2
  L5_2.position = "bottom"
  L5_2.useWhileDead = false
  L5_2.canCancel = true
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = "tracker.remove_progress"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L6_2 = {}
  L6_2.move = true
  L6_2.car = true
  L6_2.combat = true
  L5_2.disable = L6_2
  L6_2 = {}
  L6_2.dict = "veh@break_in@0h@p_m_one@"
  L6_2.clip = "low_force_entry_ds"
  L5_2.anim = L6_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "tracker.error_generic"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "vehiclekeys:server:tracker:remove"
  L7_2 = false
  L8_2 = {}
  L8_2.plate = L2_2
  L8_2.model = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 then
    L6_2 = L5_2.ok
    if true == L6_2 then
      goto lbl_118
    end
  end
  L6_2 = Notification
  L7_2 = i18n
  L7_2 = L7_2.t
  if L5_2 then
    L8_2 = L5_2.message
    if L8_2 then
      goto lbl_114
    end
  end
  L8_2 = "tracker.error_remove_failed"
  ::lbl_114::
  L7_2 = L7_2(L8_2)
  L8_2 = "error"
  do return L6_2(L7_2, L8_2) end
  ::lbl_118::
  L6_2 = Notification
  L7_2 = i18n
  L7_2 = L7_2.t
  L8_2 = L5_2.message
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L6_2(L7_2, L8_2)
  L6_2 = L6_1
  L6_2()
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = lib
  L0_2 = L0_2.getClosestVehicle
  L1_2 = GetEntityCoords
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.InstallDistance
  if not L2_2 then
    L2_2 = 3.0
  end
  L3_2 = true
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 and 0 ~= L0_2 then
    L1_2 = DoesEntityExist
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_30
    end
  end
  L1_2 = Notification
  L2_2 = i18n
  L2_2 = L2_2.t
  L3_2 = "tracker.error_no_vehicle"
  L2_2 = L2_2(L3_2)
  L3_2 = "error"
  do return L1_2(L2_2, L3_2) end
  ::lbl_30::
  L1_2 = Utils
  L1_2 = L1_2.GetVehiclePlate
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.GetVehicleModelName
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if "" == L1_2 or "" == L2_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "tracker.error_install_failed"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = L0_1.RequireOwnedVehicle
  if L3_2 then
    L3_2 = GetKey
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = Notification
      L4_2 = i18n
      L4_2 = L4_2.t
      L5_2 = "tracker.error_not_owned"
      L4_2 = L4_2(L5_2)
      L5_2 = "error"
      return L3_2(L4_2, L5_2)
    end
  end
  L3_2 = lib
  L3_2 = L3_2.progressCircle
  L4_2 = {}
  L5_2 = L0_1.InstallDuration
  if not L5_2 then
    L5_2 = 2500
  end
  L4_2.duration = L5_2
  L4_2.position = "bottom"
  L4_2.useWhileDead = false
  L4_2.canCancel = true
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "tracker.install_progress"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L5_2 = {}
  L5_2.move = true
  L5_2.car = true
  L5_2.combat = true
  L4_2.disable = L5_2
  L5_2 = {}
  L5_2.dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  L5_2.clip = "machinic_loop_mechandplayer"
  L4_2.anim = L5_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "tracker.error_generic"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "vehiclekeys:server:tracker:install"
  L6_2 = false
  L7_2 = {}
  L7_2.plate = L1_2
  L7_2.model = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L5_2 = L4_2.ok
    if true == L5_2 then
      goto lbl_134
    end
  end
  L5_2 = Notification
  L6_2 = i18n
  L6_2 = L6_2.t
  if L4_2 then
    L7_2 = L4_2.message
    if L7_2 then
      goto lbl_130
    end
  end
  L7_2 = "tracker.error_install_failed"
  ::lbl_130::
  L6_2 = L6_2(L7_2)
  L7_2 = "error"
  do return L5_2(L6_2, L7_2) end
  ::lbl_134::
  L5_2 = Notification
  L6_2 = i18n
  L6_2 = L6_2.t
  L7_2 = L4_2.message
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L5_2(L6_2, L7_2)
  L5_2 = L6_1
  L5_2()
end
UseGpsTrackerItem = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "vehiclekeys:server:tracker:locate"
  L3_2 = false
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = L1_2.ok
    if true == L2_2 then
      goto lbl_26
    end
  end
  L2_2 = Notification
  L3_2 = i18n
  L3_2 = L3_2.t
  if L1_2 then
    L4_2 = L1_2.message
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = "tracker.error_generic"
  ::lbl_22::
  L3_2 = L3_2(L4_2)
  L4_2 = "error"
  do return L2_2(L3_2, L4_2) end
  ::lbl_26::
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = L1_2.data
  if L3_2 then
    L3_2 = L1_2.data
    L3_2 = L3_2.plate
    if L3_2 then
      goto lbl_36
    end
  end
  L3_2 = A0_2
  ::lbl_36::
  L2_2 = L2_2(L3_2)
  L3_2 = L7_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    L4_2 = Notification
    L5_2 = i18n
    L5_2 = L5_2.t
    L6_2 = "tracker.error_vehicle_not_found"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_1
  L5_2()
  L5_2 = L0_1.Blip
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = AddBlipForCoord
  L7_2 = L4_2.x
  L7_2 = L7_2 + 0.0
  L8_2 = L4_2.y
  L8_2 = L8_2 + 0.0
  L9_2 = L4_2.z
  L9_2 = L9_2 + 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = SetBlipSprite
  L8_2 = L6_2
  L9_2 = L5_2.Sprite
  if not L9_2 then
    L9_2 = 161
  end
  L7_2(L8_2, L9_2)
  L7_2 = SetBlipColour
  L8_2 = L6_2
  L9_2 = L5_2.Colour
  if not L9_2 then
    L9_2 = 1
  end
  L7_2(L8_2, L9_2)
  L7_2 = SetBlipDisplay
  L8_2 = L6_2
  L9_2 = L5_2.Display
  if not L9_2 then
    L9_2 = 2
  end
  L7_2(L8_2, L9_2)
  L7_2 = SetBlipScale
  L8_2 = L6_2
  L9_2 = L5_2.Scale
  if not L9_2 then
    L9_2 = 1.1
  end
  L7_2(L8_2, L9_2)
  L7_2 = SetBlipAsShortRange
  L8_2 = L6_2
  L9_2 = L5_2.ShortRange
  L9_2 = true == L9_2
  L7_2(L8_2, L9_2)
  L7_2 = PulseBlip
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = BeginTextCommandSetBlipName
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = AddTextComponentString
  L8_2 = "Tracker [%s]"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L2_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = EndTextCommandSetBlipName
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = SetNewWaypoint
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L7_2(L8_2, L9_2)
  L1_1.locateBlip = L6_2
  L7_2 = Notification
  L8_2 = i18n
  L8_2 = L8_2.t
  L9_2 = "tracker.success_locate"
  L8_2 = L8_2(L9_2)
  L9_2 = "success"
  L7_2(L8_2, L9_2)
  L7_2 = SetTimeout
  L8_2 = L0_1.LocateDuration
  if not L8_2 then
    L8_2 = 20000
  end
  function L9_2()
    local L0_3, L1_3
    L0_3 = L1_1.locateBlip
    L1_3 = L6_2
    if L0_3 == L1_3 then
      L0_3 = L4_1
      L0_3()
    end
  end
  L7_2(L8_2, L9_2)
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "vehiclekeys:server:tracker:canOpenMenu"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "tracker.error_missing_tracker_item"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    return L1_2(L2_2, L3_2)
  end
  L1_2 = L6_1
  L1_2 = L1_2()
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = Notification
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "tracker.menu_empty"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
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
    L9_2.icon = "satellite-dish"
    L10_2 = i18n
    L10_2 = L10_2.t
    L11_2 = "tracker.menu_item_title"
    L12_2 = {}
    L13_2 = L7_2.model
    L12_2.model = L13_2
    L13_2 = L7_2.plate
    L12_2.plate = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.title = L10_2
    function L10_2()
      local L0_3, L1_3
      L0_3 = L9_1
      L1_3 = L7_2.plate
      L0_3(L1_3)
    end
    L9_2.onSelect = L10_2
    L2_2[L8_2] = L9_2
  end
  L3_2 = lib
  L3_2 = L3_2.registerContext
  L4_2 = {}
  L4_2.id = "vehiclekeys_tracker_menu"
  L5_2 = i18n
  L5_2 = L5_2.t
  L6_2 = "tracker.menu_title"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.options = L2_2
  L3_2(L4_2)
  L3_2 = lib
  L3_2 = L3_2.showContext
  L4_2 = "vehiclekeys_tracker_menu"
  L3_2(L4_2)
end
OpenTrackerMenu = L10_1
L10_1 = RegisterNetEvent
L11_1 = "vehiclekeys:client:tracker:useGps"
function L12_1()
  local L0_2, L1_2
  L0_2 = UseGpsTrackerItem
  L0_2()
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "vehiclekeys:client:tracker:openMenu"
function L12_1()
  local L0_2, L1_2
  L0_2 = OpenTrackerMenu
  L0_2()
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "vehiclekeys:client:tracker:removeByPlate"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L8_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = L0_1.MenuCommand
if not L11_1 then
  L11_1 = "tracker"
end
function L12_1()
  local L0_2, L1_2
  L0_2 = OpenTrackerMenu
  L0_2()
end
L13_1 = false
L10_1(L11_1, L12_1, L13_1)
L10_1 = L0_1.EnableMenuKeyMapping
if L10_1 then
  L10_1 = RegisterKeyMapping
  L11_1 = L0_1.MenuCommand
  if not L11_1 then
    L11_1 = "tracker"
  end
  L12_1 = i18n
  L12_1 = L12_1.t
  L13_1 = "commands.tracker_menu"
  L12_1 = L12_1(L13_1)
  L13_1 = "keyboard"
  L14_1 = L0_1.MenuKey
  if not L14_1 then
    L14_1 = "K"
  end
  L10_1(L11_1, L12_1, L13_1, L14_1)
end
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L6_1
  L0_2()
  while true do
    L0_2 = Wait
    L1_2 = 30000
    L0_2(L1_2)
    L0_2 = L6_1
    L0_2()
  end
end
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "onResourceStop"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L4_1
  L1_2()
  L1_2 = L0_1.UseTarget
  if L1_2 then
    L1_2 = GetResourceState
    L2_2 = "ox_target"
    L1_2 = L1_2(L2_2)
    if "started" == L1_2 then
      L1_2 = pairs
      L2_2 = L1_1.modelCount
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L2_1
        L8_2 = L5_2
        L7_2(L8_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "UseGpsTrackerItem"
L12_1 = UseGpsTrackerItem
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "OpenTrackerMenu"
L12_1 = OpenTrackerMenu
L10_1(L11_1, L12_1)






