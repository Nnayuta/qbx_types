---@meta
---@class qb-core-object
exports['qb-core'] = {}

---@class qb-core
local QBCore = {}

---comment
---@return qb-core
function exports['qb-core']:GetCoreObject() end


--- —[ bridge qb server: functions ]—
-- Add or change (a) field(s) in the QBCore table
---@deprecated
---@param fieldName string
---@param data any
---@return boolean success
---@return string message
function QBCore:SetField(fieldName, data) end