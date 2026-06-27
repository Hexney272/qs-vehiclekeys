





local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = Config
L0_1 = L0_1.Tracker
if not L0_1 then
  L0_1 = {}
end
L1_1 = L0_1.Enabled
if true ~= L1_1 then
  return
end
L1_1 = MySQL
L1_1 = L1_1.query
L1_1 = L1_1.await
L2_1 = [[
    CREATE TABLE IF NOT EXISTS vehiclekeys_trackers (
        plate VARCHAR(16) NOT NULL,
        model VARCHAR(64) NOT NULL,
        installed_by VARCHAR(80) NOT NULL,
        installed_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (plate),
        KEY idx_vehiclekeys_trackers_installed_by (installed_by)
    )
]]
L1_1(L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = true == A0_2
  L2_2.ok = L3_2
  L2_2.message = A1_2
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = sv_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getAllKeys
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = Utils
    L8_2 = L8_2.NormalizePlate
    L9_2 = L3_2[L7_2]
    L9_2 = L9_2.plate
    L8_2 = L8_2(L9_2)
    if "" ~= L8_2 then
      L9_2 = L1_2[L8_2]
      if not L9_2 then
        L1_2[L8_2] = true
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L2_2[L9_2] = L8_2
      end
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = sfr
  L2_2 = L1_2
  L1_2 = L1_2.getIdentifier
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = "source_%s"
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
  end
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = nil
  L5_2 = #L3_2
  if L5_2 > 0 then
    L5_2 = "?%s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = string
    L7_2 = L7_2.rep
    L8_2 = ",?"
    L9_2 = #L3_2
    L9_2 = L9_2 - 1
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = "SELECT plate, model, installed_by FROM vehiclekeys_trackers WHERE installed_by = ? OR plate IN (%s)"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = {}
    L8_2 = L1_2
    L7_2[1] = L8_2
    L8_2 = 1
    L9_2 = #L3_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = #L7_2
      L12_2 = L12_2 + 1
      L13_2 = L3_2[L11_2]
      L7_2[L12_2] = L13_2
    end
    L8_2 = MySQL
    L8_2 = L8_2.query
    L8_2 = L8_2.await
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L4_2 = L8_2 or L4_2
    if not L8_2 then
      L8_2 = {}
      L4_2 = L8_2
    end
  else
    L5_2 = MySQL
    L5_2 = L5_2.query
    L5_2 = L5_2.await
    L6_2 = "SELECT plate, model, installed_by FROM vehiclekeys_trackers WHERE installed_by = ?"
    L7_2 = {}
    L8_2 = L1_2
    L7_2[1] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2 or L4_2
    if not L5_2 then
      L5_2 = {}
      L4_2 = L5_2
    end
  end
  L5_2 = {}
  L6_2 = 1
  L7_2 = #L4_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L4_2[L9_2]
    L11_2 = Utils
    L11_2 = L11_2.NormalizePlate
    L12_2 = L10_2.plate
    L11_2 = L11_2(L12_2)
    L12_2 = Utils
    L12_2 = L12_2.NormalizeModel
    L13_2 = L10_2.model
    L12_2 = L12_2(L13_2)
    L13_2 = L2_2[L11_2]
    L13_2 = true == L13_2
    L14_2 = L0_1.RequireOwnedVehicle
    if L14_2 and not L13_2 then
      L14_2 = L10_2.installed_by
      if L14_2 ~= L1_2 then
        goto lbl_108
      end
    end
    L14_2 = #L5_2
    L14_2 = L14_2 + 1
    L15_2 = {}
    L15_2.plate = L11_2
    L15_2.model = L12_2
    L5_2[L14_2] = L15_2
    ::lbl_108::
  end
  return L5_2
end
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1.RequireOwnedVehicle
  if L3_2 then
    L3_2 = sv_inventory
    L4_2 = L3_2
    L3_2 = L3_2.getKey
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = true
  return L3_2
end
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:list"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:locate"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = L1_1
    L4_2 = false
    L5_2 = "tracker.error_generic"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = L3_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.plate
    if L8_2 == L2_2 then
      L8_2 = {}
      L8_2.ok = true
      L8_2.message = "tracker.success_locate"
      L9_2 = L3_2[L7_2]
      L8_2.data = L9_2
      return L8_2
    end
  end
  L4_2 = L1_1
  L5_2 = false
  L6_2 = "tracker.error_not_installed"
  return L4_2(L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:isInstalled"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L3_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.plate
    if L8_2 == L2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L4_2 = false
  return L4_2
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:canOpenMenu"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.TrackerItemName
  if not L1_2 or "" == L1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = sfr
  L3_2 = L2_2
  L2_2 = L2_2.getItem
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = L2_2.count
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = 0
  ::lbl_19::
  L3_2 = L3_2 > 0
  return L3_2
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:install"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  if A1_2 then
    L3_2 = A1_2.plate
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = ""
  ::lbl_9::
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizeModel
  if A1_2 then
    L4_2 = A1_2.model
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = ""
  ::lbl_18::
  L3_2 = L3_2(L4_2)
  if "" == L2_2 or "" == L3_2 then
    L4_2 = L1_1
    L5_2 = false
    L6_2 = "tracker.error_install_failed"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L4_1
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = L1_1
    L5_2 = false
    L6_2 = "tracker.error_not_owned"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L0_1.GPSItemName
  if L4_2 then
    L5_2 = sfr
    L6_2 = L5_2
    L5_2 = L5_2.getItem
    L7_2 = A0_2
    L8_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_51
    end
  end
  L5_2 = nil
  ::lbl_51::
  if L5_2 then
    L6_2 = L5_2.count
    if L6_2 then
      goto lbl_57
    end
  end
  L6_2 = 0
  ::lbl_57::
  if not L4_2 or "" == L4_2 or L6_2 <= 0 then
    L7_2 = L1_1
    L8_2 = false
    L9_2 = "tracker.error_missing_gps_item"
    return L7_2(L8_2, L9_2)
  end
  L7_2 = MySQL
  L7_2 = L7_2.single
  L7_2 = L7_2.await
  L8_2 = "SELECT plate FROM vehiclekeys_trackers WHERE plate = ? LIMIT 1"
  L9_2 = {}
  L10_2 = L2_2
  L9_2[1] = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = L1_1
    L9_2 = false
    L10_2 = "tracker.error_already_installed"
    return L8_2(L9_2, L10_2)
  end
  L8_2 = sfr
  L9_2 = L8_2
  L8_2 = L8_2.removeItem
  L10_2 = A0_2
  L11_2 = L4_2
  L12_2 = 1
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L9_2 = L1_1
    L10_2 = false
    L11_2 = "tracker.error_install_failed"
    return L9_2(L10_2, L11_2)
  end
  L9_2 = sfr
  L10_2 = L9_2
  L9_2 = L9_2.getIdentifier
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = "source_%s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2)
  end
  L10_2 = MySQL
  L10_2 = L10_2.update
  L10_2 = L10_2.await
  L11_2 = [[
            INSERT INTO vehiclekeys_trackers (plate, model, installed_by)
            VALUES (?, ?, ?)
            ON DUPLICATE KEY UPDATE
                model = VALUES(model),
                installed_by = VALUES(installed_by),
                updated_at = CURRENT_TIMESTAMP
        ]]
  L12_2 = {}
  L13_2 = L2_2
  L14_2 = L3_2
  L15_2 = L9_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L10_2(L11_2, L12_2)
  L10_2 = L1_1
  L11_2 = true
  L12_2 = "tracker.success_installed"
  return L10_2(L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "vehiclekeys:server:tracker:remove"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  if A1_2 then
    L3_2 = A1_2.plate
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = ""
  ::lbl_9::
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.NormalizeModel
  if A1_2 then
    L4_2 = A1_2.model
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = ""
  ::lbl_18::
  L3_2 = L3_2(L4_2)
  if "" == L2_2 or "" == L3_2 then
    L4_2 = L1_1
    L5_2 = false
    L6_2 = "tracker.error_remove_failed"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L4_1
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = L1_1
    L5_2 = false
    L6_2 = "tracker.error_not_owned"
    return L4_2(L5_2, L6_2)
  end
  L4_2 = MySQL
  L4_2 = L4_2.single
  L4_2 = L4_2.await
  L5_2 = "SELECT plate FROM vehiclekeys_trackers WHERE plate = ? LIMIT 1"
  L6_2 = {}
  L7_2 = L2_2
  L6_2[1] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = L1_1
    L6_2 = false
    L7_2 = "tracker.error_not_installed"
    return L5_2(L6_2, L7_2)
  end
  L5_2 = MySQL
  L5_2 = L5_2.update
  L5_2 = L5_2.await
  L6_2 = "DELETE FROM vehiclekeys_trackers WHERE plate = ?"
  L7_2 = {}
  L8_2 = L2_2
  L7_2[1] = L8_2
  L5_2(L6_2, L7_2)
  L5_2 = L0_1.GPSItemName
  if L5_2 then
    L5_2 = L0_1.GPSItemName
    if "" ~= L5_2 then
      L5_2 = sfr
      L6_2 = L5_2
      L5_2 = L5_2.addItem
      L7_2 = A0_2
      L8_2 = L0_1.GPSItemName
      L9_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
  L5_2 = L1_1
  L6_2 = true
  L7_2 = "tracker.success_removed"
  return L5_2(L6_2, L7_2)
end
L5_1(L6_1, L7_1)






