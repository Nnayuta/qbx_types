---@meta
---@class qbx_core
exports.qbx_core = {}

--- —[ client: groups ]—
---@return table<string, Job>
function exports.qbx_core:GetJobs() end

--- —[ client: groups ]—
---@return table<string, Gang>
function exports.qbx_core:GetGangs() end

--- —[ client: groups ]—
---@param name string
---@return Job?
function exports.qbx_core:GetJob(name) end

--- —[ client: groups ]—
---@param name string
---@return Gang?
function exports.qbx_core:GetGang(name) end