





local L0_1, L1_1, L2_1
L0_1 = _G
L1_1 = _G
L1_1 = L1_1.interaction
if not L1_1 then
  L1_1 = {}
end
L0_1.interaction = L1_1
L0_1 = interaction
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.data = A1_2
  A0_2.onClose = A2_2
  A0_2.visible = true
  L3_2 = table
  L3_2 = L3_2.map
  L4_2 = A1_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = {}
    L2_3 = A0_3.icon
    L1_3.icon = L2_3
    L2_3 = A0_3.title
    L1_3.title = L2_3
    return L1_3
  end
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = SendReactMessage
  L5_2 = "toggle_actions"
  L6_2 = {}
  L6_2.visible = true
  L6_2.data = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = SetNuiFocus
  L5_2 = true
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetNuiFocusKeepInput
  L5_2 = true
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = A0_2.visible
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 32
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 33
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 34
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 35
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 249
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L4_2(L5_2)
end
L0_1.open = L1_1
L0_1 = interaction
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.visible
  if not L1_2 then
    return
  end
  A0_2.visible = false
  L1_2 = SetNuiFocusKeepInput
  L2_2 = false
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendReactMessage
  L2_2 = "toggle_actions"
  L3_2 = {}
  L3_2.visible = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.onClose
  if L1_2 then
    L1_2 = A0_2.onClose
    L1_2()
  end
end
L0_1.close = L1_1
L0_1 = RegisterNUICallback
L1_1 = "click_action"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = interaction
  L2_2 = L2_2.data
  if not L2_2 then
    return
  end
  A0_2 = A0_2 + 1
  L2_2 = interaction
  L2_2 = L2_2.data
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.onSelect
    if L3_2 then
      L3_2 = L2_2.onSelect
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "close_actions"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = interaction
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)






