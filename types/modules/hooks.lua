---@meta

---@class qbx_core
exports.qbx_core = {}

--- —[ modules: hooks ]—
---Registers a callback function to be triggered by a resource. Returning false from the callback function cancels the event
---@param event string
---@param cb any
---@return integer hookId
function exports.qbx_core:registerHook(event, cb) end

--- —[ modules: hooks ]—
---Remove a previously registered hook by its id
---@param id number hookId
function exports.qbx_core:removeHooks(id) end