---@meta
---@class qbx_core
exports.qbx_core = {}

--- —[ bridge qb server: functions ]—
-- Add or change (a) field(s) in the QBCore table
---@deprecated
---@param fieldName string
---@param data any
---@return boolean success
---@return string message
function exports.qbx_core:SetField(fieldName, data) end