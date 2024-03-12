---@meta
---@class qbx_core
exports.qbx_core = {}

--- —[ server: main ]—
---@return table<string, Vehicle>
function exports.qbx_core:GetVehiclesByName() end

--- —[ server: main ]—
---@return table<number, Vehicle>
function exports.qbx_core:GetVehiclesByHash() end

--- —[ server: main ]—
---@return table<string, Vehicle[]>
function exports.qbx_core:GetVehiclesByCategory() end

--- —[ server: main ]—
---@return table<number, Weapon>
function exports.qbx_core:GetWeapons() end

--- —[ server: main ]—
---@return table<string, vector4>
function GetLocations() end