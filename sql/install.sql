-- ============================================================================
-- qs-vehiclekeys SQL Setup for ESX
-- ============================================================================
-- Run this ONCE on your database before using qs-vehiclekeys.
-- This ensures the owned_vehicles table has all required columns.
-- ============================================================================

-- Add 'stored' column if it doesn't exist (tracks if vehicle is in garage or spawned)
-- 0 = vehicle is outside/spawned, 1 = vehicle is in garage
ALTER TABLE `owned_vehicles`
    ADD COLUMN IF NOT EXISTS `stored` INT(11) NOT NULL DEFAULT 1;

-- Ensure 'plate' column exists and is indexed
-- (Most ESX setups already have this, but just in case)
ALTER TABLE `owned_vehicles`
    ADD INDEX IF NOT EXISTS `idx_plate` (`plate`);

-- Ensure 'owner' column exists and is indexed for JOIN performance
ALTER TABLE `owned_vehicles`
    ADD INDEX IF NOT EXISTS `idx_owner` (`owner`);

-- ============================================================================
-- Verify your owned_vehicles table structure looks like this:
-- ============================================================================
-- If you have issues, compare your table to this expected structure:
--
-- CREATE TABLE IF NOT EXISTS `owned_vehicles` (
--     `plate` VARCHAR(12) NOT NULL,
--     `owner` VARCHAR(60) NOT NULL,
--     `vehicle` LONGTEXT DEFAULT NULL,
--     `stored` INT(11) NOT NULL DEFAULT 1,
--     `parking` VARCHAR(60) DEFAULT NULL,
--     `type` VARCHAR(20) NOT NULL DEFAULT 'car',
--     `job` VARCHAR(20) DEFAULT NULL,
--     PRIMARY KEY (`plate`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ============================================================================

-- ============================================================================
-- If you use the vehicle tracker feature, no extra table is needed.
-- Tracker data is stored in item metadata via ox_inventory.
-- ============================================================================
