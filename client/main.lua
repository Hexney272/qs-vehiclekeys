





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = A0_2
  L3_2.data = A1_2
  L2_2(L3_2)
end
SendReactMessage = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.Locale
  L1_2 = {}
  L2_2 = {}
  L1_2[L0_2] = L2_2
  L2_2 = L1_2[L0_2]
  L3_2 = _T
  L2_2.translation = L3_2
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if "category_down" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "NAV_UP_DOWN"
    L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "item_down" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Object_Collect_Remote"
    L4_2 = "GTAO_FM_Events_Soundset"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "finish" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Menu_Accept"
    L4_2 = "Phone_SoundSet_Default"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "cancel" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "MP_IDLE_KICK"
    L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "admin_active" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Hack_Success"
    L4_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "admin_disable" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Hack_Failed"
    L4_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "hover_down" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Highlight_Accept"
    L4_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "hover_up" == A0_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Highlight_Error"
    L4_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "vehiclekeys:server:keytransfer:getData"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L0_2.players
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L0_2.keys
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendReactMessage
  L4_2 = "toggle_keytransfer"
  L5_2 = {}
  L5_2.visible = true
  L6_2 = {}
  L6_2.players = L1_2
  L6_2.keys = L2_2
  L5_2.data = L6_2
  L3_2(L4_2, L5_2)
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = interaction
  if L0_2 then
    L0_2 = interaction
    L0_2 = L0_2.visible
    if L0_2 then
      L0_2 = interaction
      L1_2 = L0_2
      L0_2 = L0_2.close
      L0_2(L1_2)
    end
  end
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendReactMessage
  L1_2 = "toggle_keytransfer"
  L2_2 = {}
  L2_2.visible = false
  L3_2 = {}
  L4_2 = {}
  L3_2.players = L4_2
  L4_2 = {}
  L3_2.keys = L4_2
  L2_2.data = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = SendReactMessage
  L1_2 = "toggle_adminvehiclelist"
  L2_2 = {}
  L2_2.visible = false
  L0_2(L1_2, L2_2)
end
CloseUI = L4_1
L4_1 = RegisterNUICallback
L5_1 = "close"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CloseUI
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "initialized"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L2_2 = _T
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 200
    L2_2(L3_2)
  end
  L2_2 = L0_1
  L2_2, L3_2 = L2_2()
  L4_2 = SendReactMessage
  L5_2 = "onUiReady"
  L6_2 = {}
  L6_2.languageName = L2_2
  L6_2.resources = L3_2
  L7_2 = {}
  L8_2 = Config
  L8_2 = L8_2.Debug
  L7_2.debug = L8_2
  L8_2 = GetResourceMetadata
  L9_2 = GetCurrentResourceName
  L9_2 = L9_2()
  L10_2 = "version"
  L11_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.version = L8_2
  L8_2 = Config
  L8_2 = L8_2.ImagePath
  L7_2.imagePath = L8_2
  L8_2 = Config
  L8_2 = L8_2.Path
  L9_2 = "sounds/"
  L8_2 = L8_2 .. L9_2
  L7_2.soundPath = L8_2
  L6_2.config = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = true
  L1_1 = L4_2
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L6_2 = L1_1
  L5_2.initialized = L6_2
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "play_sound"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:close"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CloseUI
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:diagnosticClose"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "vehiclekeys:client:diagnostic:close"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:keyTransferClose"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CloseUI
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:keyTransferRequest"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = type
  L3_2 = RequestKeyTransfer
  L2_2 = L2_2(L3_2)
  if "function" ~= L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L3_2.ok = false
    L4_2 = i18n
    L4_2 = L4_2.t
    L5_2 = "notify.transfer_failed"
    L4_2 = L4_2(L5_2)
    L3_2.message = L4_2
    L2_2(L3_2)
    return
  end
  L2_2 = RequestKeyTransfer
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = lib
    L4_2 = L4_2.callback
    L4_2 = L4_2.await
    L5_2 = "vehiclekeys:server:keytransfer:getData"
    L6_2 = false
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = {}
    end
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = true
    L6_2.message = L3_2
    L7_2 = L4_2.players
    if not L7_2 then
      L7_2 = {}
    end
    L6_2.players = L7_2
    L7_2 = L4_2.keys
    if not L7_2 then
      L7_2 = {}
    end
    L6_2.keys = L7_2
    L5_2(L6_2)
    return
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L6_2 = L3_2 or L6_2
  if not L3_2 then
    L6_2 = i18n
    L6_2 = L6_2.t
    L7_2 = "notify.transfer_failed"
    L6_2 = L6_2(L7_2)
  end
  L5_2.message = L6_2
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ui:keyTransferRefresh"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "vehiclekeys:server:keytransfer:getData"
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L5_2 = L2_2.players
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.players = L5_2
  L5_2 = L2_2.keys
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.keys = L5_2
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "vehiclekeys:client:keytransfer:open"
function L6_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2()
end
L4_1(L5_1, L6_1)






