---@meta
---@class qbx_core
exports.qbx_core = {}

---@return table<string, Vehicle>
function exports.qbx_core:GetVehiclesByName() end

---@return table<string, Vehicle>
function exports.qbx_core:GetVehiclesByHash() end

---@return table<string, Vehicle[]>
function exports.qbx_core:GetVehiclesByCategory() end

---@return table<number, Weapon>
function exports.qbx_core:GetWeapons() end

---@return table<string, vector4>
function exports.qbx_core:GetLocations() end