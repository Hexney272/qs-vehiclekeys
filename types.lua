





---@class ServerFramework
---@field getPlayerFromId fun(self: ServerFramework, source: number): table
---@field getIdentifier fun(self: ServerFramework, source: number): string
---@field registerUsableItem fun(self: ServerFramework, item: string, cb: function)
---@field playerIsAdmin fun(self: ServerFramework, source: number): boolean
---@field getPlayers fun(self: ServerFramework): table
---@field getJobName fun(self: ServerFramework, source: number): string
---@field removeItem fun(self: ServerFramework, source: number, item: string, count?: number, metadata?: table, slot?: number): boolean
---@field addItem fun(self: ServerFramework, source: number, item: string, count?: number, slot?: number, info?: table): boolean
---@field getInventory fun(self: ServerFramework, source: number): table
---@field getItem fun(self: ServerFramework, source: number, item: string): { count: number }
---@field isPlateTaken fun(self: ServerFramework, plate: string): boolean
---@field getTakenPlates fun(self: ServerFramework, plates: string[]): table<string, boolean>
---@field updateVehiclePlate fun(self: ServerFramework, oldPlate: string, newPlate: string): boolean, string|nil
---@field getAdminVehicleStats fun(self: ServerFramework, search: string): { total: number, inGarage: number, outside: number }
---@field getAdminVehiclesPage fun(self: ServerFramework, params: table): { vehicles: table[], total: number }
---@field getAdminVehicleByPlate fun(self: ServerFramework, plate: string): table?
---@field getSourceFromIdentifier fun(self: ServerFramework, identifier: string): number?
---@field getUserName fun(self: ServerFramework, source: number): string, string
---@field getRecoveryOwnedVehicles fun(self: ServerFramework, source: number): table[]

---@class ClientFramework
---@field getPlayerData fun(self: ClientFramework): table
---@field getIdentifier fun(self: ClientFramework): string
---@field getJobName fun(self: ClientFramework): string
---@field getPlayers fun(self: ClientFramework): table






