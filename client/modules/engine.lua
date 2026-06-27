





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L0_1.transitionVehicle = 0
L0_1.transitionEngineOn = false
L0_1.transitionSteering = 0.0
L0_1.transitionLastSteering = 0.0
L1_1 = {}
L0_1.steeringCache = L1_1
L1_1 = {}
L0_1.manualEngineState = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true == A0_2 or 1 == A0_2
  return L1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0 ~= A0_2
  return L1_2
end
function L3_1(A0_2)
  local L1_2
  L1_2 = L0_1.manualEngineState
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.manualEngineState
  L3_2 = true == A1_2
  L2_2[A0_2] = L3_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Engine
  L1_2 = L1_2.RequireKey
  if true ~= L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = exports
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.CanUseVehicle
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = true == L1_2
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
  end
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_17::
  if nil == A1_2 then
    L3_2 = L2_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = L5_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = Notification
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "notify.engine_no_permission"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = L1_1
  L4_2 = GetIsVehicleEngineRunning
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2
  if nil == L4_2 then
    L4_2 = not L3_2
  end
  L5_2 = L4_1
  L6_2 = L2_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = SetVehicleEngineOn
  L6_2 = L2_2
  L7_2 = L4_2
  L8_2 = true
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetVehicleUndriveable
  L6_2 = L2_2
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.engine_started"
    L6_2 = L6_2(L7_2)
    L7_2 = "success"
    L5_2(L6_2, L7_2)
  else
    L5_2 = Notification
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.engine_stopped"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L5_2(L6_2, L7_2)
  end
  L5_2 = true
  return L5_2
end
ToggleEngine = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = GetVehiclePedIsIn
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
  end
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_19::
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = true == L2_2
    return L3_2
  end
  L3_2 = L1_1
  L4_2 = GetIsVehicleEngineRunning
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  return L3_2(L4_2, L5_2)
end
IsEngineRunning = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if 0 ~= L0_2 then
    L1_2 = L2_1
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = 75
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = GetVehicleSteeringAngle
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L0_1.transitionLastSteering = L1_2
      end
      L0_1.transitionVehicle = L0_2
      L1_2 = L3_1
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if nil ~= L1_2 then
        L0_1.transitionEngineOn = L1_2
      else
        L2_2 = L1_1
        L3_2 = GetIsVehicleEngineRunning
        L4_2 = L0_2
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L0_1.transitionEngineOn = L2_2
      end
      L2_2 = GetVehicleSteeringAngle
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L0_1.transitionSteering = L2_2
      L3_2 = math
      L3_2 = L3_2.abs
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = 0.2
      if L3_2 > L4_2 then
        L0_1.transitionLastSteering = L2_2
      end
      return
    end
  end
  L1_2 = L0_1.transitionVehicle
  if 0 == L1_2 then
    return
  end
  L1_2 = L0_1.transitionVehicle
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Engine
    L2_2 = L2_2.KeepEngineOn
    if L2_2 then
      L2_2 = L0_1.transitionEngineOn
      if L2_2 then
        L2_2 = CreateThread
        function L3_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L0_3 = 1
          L1_3 = 10
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = DoesEntityExist
            L5_3 = L1_2
            L4_3 = L4_3(L5_3)
            if not L4_3 then
              break
            end
            L4_3 = L4_1
            L5_3 = L1_2
            L6_3 = true
            L4_3(L5_3, L6_3)
            L4_3 = SetVehicleEngineOn
            L5_3 = L1_2
            L6_3 = true
            L7_3 = true
            L8_3 = false
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = SetVehicleUndriveable
            L5_3 = L1_2
            L6_3 = false
            L4_3(L5_3, L6_3)
            L4_3 = Wait
            L5_3 = 100
            L4_3(L5_3)
          end
        end
        L2_2(L3_2)
      end
    end
    L2_2 = Config
    L2_2 = L2_2.Engine
    L2_2 = L2_2.MaintainSteeringAngle
    if L2_2 then
      L2_2 = L0_1.transitionSteering
      L3_2 = math
      L3_2 = L3_2.abs
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = 0.2
      if L3_2 <= L4_2 then
        L2_2 = L0_1.transitionLastSteering
      end
      L3_2 = L0_1.steeringCache
      L4_2 = {}
      L4_2.angle = L2_2
      L5_2 = GetGameTimer
      L5_2 = L5_2()
      L5_2 = L5_2 + 15000
      L4_2.expireAt = L5_2
      L3_2[L1_2] = L4_2
      L3_2 = SetVehicleSteeringAngle
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L0_1.transitionVehicle = 0
  L0_1.transitionEngineOn = false
  L0_1.transitionSteering = 0.0
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Config
  L0_2 = L0_2.Engine
  L0_2 = L0_2.MaintainSteeringAngle
  if not L0_2 then
    return
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = L0_1.manualEngineState
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = L0_1.manualEngineState
      L7_2[L5_2] = nil
    else
      L7_2 = L1_1
      L8_2 = GetIsVehicleEngineRunning
      L9_2 = L5_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L6_2 and L7_2 then
        L8_2 = L0_1.manualEngineState
        L8_2[L5_2] = nil
      else
      end
    end
  end
  L1_2 = pairs
  L2_2 = L0_1.steeringCache
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2.expireAt
      if not (L0_2 >= L7_2) then
        goto lbl_51
      end
    end
    L7_2 = L0_1.steeringCache
    L7_2[L5_2] = nil
    goto lbl_79
    ::lbl_51::
    L7_2 = GetPedInVehicleSeat
    L8_2 = L5_2
    L9_2 = -1
    L7_2 = L7_2(L8_2, L9_2)
    if 0 ~= L7_2 then
      L8_2 = cache
      L8_2 = L8_2.ped
      if L7_2 ~= L8_2 then
        L8_2 = L0_1.steeringCache
        L8_2[L5_2] = nil
    end
    else
      L8_2 = cache
      L8_2 = L8_2.ped
      if L7_2 == L8_2 then
      else
        L8_2 = GetEntitySpeed
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        L9_2 = 0.6
        if L8_2 < L9_2 then
          L8_2 = SetVehicleSteeringAngle
          L9_2 = L5_2
          L10_2 = L6_2.angle
          L8_2(L9_2, L10_2)
        end
      end
    end
    ::lbl_79::
  end
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Config
  L0_2 = L0_2.Engine
  L0_2 = L0_2.DisableAutoStartWithAccelerate
  if true ~= L0_2 then
    return
  end
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if 0 ~= L0_2 then
    L1_2 = L2_1
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L1_2 = L5_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if true == L1_2 then
    return
  end
  L2_2 = IsEngineRunning
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = DisableControlAction
    L3_2 = 0
    L4_2 = 71
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2
  while true do
    L0_2 = L6_1
    L0_2()
    L0_2 = L7_1
    L0_2()
    L0_2 = L8_1
    L0_2()
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L9_1(L10_1)
L9_1 = RegisterCommand
L10_1 = "engine"
function L11_1()
  local L0_2, L1_2
  L0_2 = ToggleEngine
  L0_2()
end
L12_1 = false
L9_1(L10_1, L11_1, L12_1)
L9_1 = RegisterKeyMapping
L10_1 = "engine"
L11_1 = i18n
L11_1 = L11_1.t
L12_1 = "commands.toggle_engine"
L11_1 = L11_1(L12_1)
L12_1 = "keyboard"
L13_1 = Config
L13_1 = L13_1.KeyMappings
L13_1 = L13_1.ToggleEngine
L9_1(L10_1, L11_1, L12_1, L13_1)
L9_1 = exports
L10_1 = "toggleEngine"
L11_1 = ToggleEngine
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "isEngineRunning"
L11_1 = IsEngineRunning
L9_1(L10_1, L11_1)






