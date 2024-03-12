---@meta
---@class qbx_core
exports.qbx_core = {}

--- —[ server: groups ]—
---Adds or overwrites jobs in shared/jobs.lua
---@param newJobs table<string, Job>
function exports.qbx_core:CreateJobs(newJobs) end

--- —[ server: groups ]—
-- Single Remove Job
---@param jobName string
---@return boolean success
---@return string message
function exports.qbx_core:RemoveJob(jobName) end

--- —[ server: groups ]—
---Adds or overwrites gangs in shared/gangs.lua
---@param newGangs table<string, Gang>
function exports.qbx_core:CreateGangs(newGangs) end

--- —[ server: groups ]—
-- Single Remove Gang
---@param gangName string
---@return boolean success
---@return string message
function exports.qbx_core:RemoveGang(gangName) end

--- —[ server: groups ]—
---@return table<string, Job>
function exports.qbx_core:GetJobs() end

--- —[ server: groups ]—
---@return table<string, Gang>
function exports.qbx_core:GetGangs() end

--- —[ server: groups ]—
---@param name string
---@return Job?
function exports.qbx_core:GetJob(name) end

--- —[ server: groups ]—
---@param name string
---@return Gang?
function exports.qbx_core:GetGang(name) end

--- —[ server: groups ]—
---@param name string
---@param data JobData
function exports.qbx_core:upsertJobData(name, data) end

--- —[ server: groups ]—
---@param name string
---@param data GangData
function exports.qbx_core:upsertGangData(name, data) end

--- —[ server: groups ]—
---@param name string
---@param grade integer
---@param data JobGradeData
function exports.qbx_core:upsertJobGrade(name, grade, data) end

--- —[ server: groups ]—
---@param name string
---@param grade integer
---@param data GangGradeData
function exports.qbx_core:upsertGangGrade(name, grade, data) end

--- —[ server: groups ]—
---@param name string
---@param grade integer
function exports.qbx_core:removeJobGrade(name, grade) end

--- —[ server: groups ]—
---@param name string
---@param grade integer
function exports.qbx_core:removeGangGrade(name, grade) end