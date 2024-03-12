---@meta
---@class qbx_core
exports.qbx_core = {}

--- —[ server: player ]—
---@param source Source
---@param citizenid? string
---@param newData? PlayerEntity
---@return boolean success
function exports.qbx_core:Login(source, citizenid, newData) end

--- —[ server: player ]—
---@param citizenid string
---@return Player? player if found in storage
function exports.qbx_core:GetOfflinePlayer(citizenid) end

--- —[ server: player ]—
---@param jobName string
---@param job Job
---@param grade integer
---@return PlayerJob
function exports.qbx_core:toPlayerJob(jobName, job, grade) end

--- —[ server: player ]—
---Sets a player's job to be primary only if they already have it.
---@param citizenid string
---@param jobName string
function exports.qbx_core:setPlayerPrimaryJob(citizenid, jobName) end

--- —[ server: player ]—
---Adds a player to the job or overwrites their grade for a job already held
---@param citizenid string
---@param jobName string
---@param grade integer
function exports.qbx_core:AddPlayerToJob(citizenid, jobName, grade) end

--- —[ server: player ]—
---If the job removed from is primary, sets the primary job to unemployed.
---@param citizenid string
---@param jobName string
function exports.qbx_core:removePlayerFromJob(citizenid, jobName) end

--- —[ server: player ]—
---Sets a player's gang to be primary only if they already have it.
---@param citizenid string
---@param gangName string
function exports.qbx_core:setPlayerPrimaryGang(citizenid, gangName) end

--- —[ server: player ]—
---Adds a player to the gang or overwrites their grade if already in the gang
---@param citizenid string
---@param gangName string
---@param grade integer
function exports.qbx_core:AddPlayerToGang(citizenid, gangName, grade) end

--- —[ server: player ]—
---Remove a player from a gang, setting them to the default no gang.
---@param citizenid string
---@param gangName string
function exports.qbx_core:removePlayerFromGang(citizenid, gangName) end

--- —[ server: player ]—
---@param source? integer if player is online
---@param playerData? PlayerEntity|PlayerData
---@return Player player
function exports.qbx_core:CheckPlayerData(source, playerData) end

--- —[ server: player ]—
---On player logout
---@param source Source
function exports.qbx_core:Logout(source) end


--- —[ server: player ]—
---Create a new character
---Don't touch any of this unless you know what you are doing
---Will cause major issues!
---@param playerData PlayerData
---@param Offline boolean
---@return Player player
function exports.qbx_core:CreatePlayer(playerData, Offline) end

--- —[ server: player ]—
---Save player info to database (make sure citizenid is the primary key in your database)
---@param source Source
function exports.qbx_core:Save(source) end

--- —[ server: player ]—
---@param playerData PlayerEntity
function exports.qbx_core:SaveOffline(playerData) end

--- —[ server: player ]—
---@param source Source
---@param citizenid string
function exports.qbx_core:DeleteCharacter(source, citizenid) end

--- —[ server: player ]—
---@param citizenid string
function exports.qbx_core:ForceDeleteCharacter(citizenid) end

--- —[ server: player ]—
---Generate unique values for player identifiers
---@param type UniqueIdType The type of unique value to generate
---@return string | number UniqueVal unique value generated
function exports.qbx_core:GenerateUniqueIdentifier(type) end