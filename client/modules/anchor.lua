





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = Config
L0_1 = L0_1.Anchor
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.UseSound
  if not L1_2 then
    return
  end
  if A0_2 then
    L1_2 = "anchordown"
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = "anchorup"
  ::lbl_11::
  L2_2 = TriggerServerEvent
  L3_2 = "InteractSound_SV:PlayWithinDistance"
  L4_2 = 10.0
  L5_2 = L1_2
  L6_2 = 0.6
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = Notification
  L2_2 = i18n
  L2_2 = L2_2.t
  L3_2 = "anchor.error_not_boat"
  L2_2 = L2_2(L3_2)
  L3_2 = "error"
  L1_2(L2_2, L3_2)
  L1_2 = false
  do return L1_2 end
  ::lbl_19::
  L1_2 = IsPedInAnyBoat
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "anchor.error_not_boat"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = GetPedInVehicleSeat
  L2_2 = A0_2
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = cache
  L2_2 = L2_2.ped
  if L1_2 ~= L2_2 then
    L1_2 = Notification
    L2_2 = i18n
    L2_2 = L2_2.t
    L3_2 = "anchor.error_not_driver"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1.SpeedLimitMps
  if not L1_2 then
    L1_2 = 2.0
  end
  L2_2 = GetEntitySpeed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L1_2 < L2_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "anchor.error_slow_down"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = Notification
    L1_2 = i18n
    L1_2 = L1_2.t
    L2_2 = "anchor.error_busy"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    L0_2(L1_2, L2_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L3_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  L1_1 = L1_2
  L1_2 = IsBoatAnchoredAndFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = not L1_2
  if L2_2 then
    L3_2 = i18n
    L3_2 = L3_2.t
    L4_2 = "anchor.progress_lower"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_43
    end
  end
  L3_2 = i18n
  L3_2 = L3_2.t
  L4_2 = "anchor.progress_raise"
  L3_2 = L3_2(L4_2)
  ::lbl_43::
  L4_2 = L0_1.Animation
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = lib
  L5_2 = L5_2.progressCircle
  L6_2 = {}
  L7_2 = L0_1.ProgressDuration
  if not L7_2 then
    L7_2 = 1500
  end
  L6_2.duration = L7_2
  L6_2.position = "bottom"
  L6_2.useWhileDead = false
  L7_2 = L0_1.AllowCancel
  L7_2 = false ~= L7_2
  L6_2.canCancel = L7_2
  L7_2 = {}
  L7_2.move = true
  L7_2.car = true
  L7_2.combat = true
  L6_2.disable = L7_2
  L7_2 = {}
  L8_2 = L4_2.Dict
  if not L8_2 then
    L8_2 = "melee@unarmed@streamed_variations"
  end
  L7_2.dict = L8_2
  L8_2 = L4_2.Clip
  if not L8_2 then
    L8_2 = "plyr_takedown_front_slap"
  end
  L7_2.clip = L8_2
  L6_2.anim = L7_2
  L6_2.label = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = false
    L1_1 = L6_2
    L6_2 = Notification
    L7_2 = i18n
    L7_2 = L7_2.t
    L8_2 = "anchor.error_cancelled"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L6_2(L7_2, L8_2)
    L6_2 = false
    return L6_2
  end
  L6_2 = SetBoatAnchor
  L7_2 = L0_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = SetBoatFrozenWhenAnchored
  L7_2 = L0_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = SetForcedBoatLocationWhenAnchored
  L7_2 = L0_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = L2_1
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = Notification
  L7_2 = i18n
  L7_2 = L7_2.t
  if L2_2 then
    L8_2 = "anchor.success_lowered"
    if L8_2 then
      goto lbl_123
    end
  end
  L8_2 = "anchor.success_raised"
  ::lbl_123::
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L6_2(L7_2, L8_2)
  L6_2 = false
  L1_1 = L6_2
  L6_2 = true
  return L6_2
end
ToggleBoatAnchor = L4_1
L4_1 = RegisterCommand
L5_1 = L0_1.CommandName
if not L5_1 then
  L5_1 = "anchor"
end
function L6_1()
  local L0_2, L1_2
  L0_2 = ToggleBoatAnchor
  L0_2()
end
L7_1 = false
L4_1(L5_1, L6_1, L7_1)
L4_1 = AddEventHandler
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = false
  L1_1 = L1_2
  L1_2 = ClearPedTasks
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "ToggleBoatAnchor"
L6_1 = ToggleBoatAnchor
L4_1(L5_1, L6_1)






