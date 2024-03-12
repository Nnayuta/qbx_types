---@meta

---@class qbx_core
exports.qbx_core = {}

--- —[ server: functions ]—
---@param identifier Identifier
---@return integer source of the player with the matching identifier or 0 if no player found
function exports.qbx_core:GetSource(identifier) end

--- —[ server: functions ]—
---@param source Source|string source or identifier of the player
---@return Player
function exports.qbx_core:GetPlayer(source) end

--- —[ server: functions ]—
---@param citizenid string
---@return Player?
function exports.qbx_core:GetPlayerByCitizenId(citizenid) end

--- —[ server: functions ]—
---@param number string
---@return Player?
function exports.qbx_core:GetPlayerByPhone(number) end

--- —[ server: functions ]—
---Will return an array of QB Player class instances
---unlike the GetPlayers() wrapper which only returns IDs
---@return table<Source, Player>
function exports.qbx_core:GetQBPlayers() end

--- —[ server: functions ]—
---Gets a list of all on duty players of a specified job and the number
---@param job string name
---@return integer
---@return Source[]
function exports.qbx_core:GetDutyCountJob(job) end

--- —[ server: functions ]—
---Gets a list of all on duty players of a specified job type and the number
---@param type string
---@return integer
---@return Source[]
function exports.qbx_core:GetDutyCountType(type) end

--- —[ server: functions ]—
-- Returns the objects related to buckets, first returned value is the player buckets, second one is entity buckets
---@return table
---@return table
function exports.qbx_core:GetBucketObjects() end

--- —[ server: functions ]—
-- Will set the provided player id / source into the provided bucket id
---@param source Source
---@param bucket integer
---@return boolean
function exports.qbx_core:SetPlayerBucket(source, bucket) end

--- —[ server: functions ]—
-- Will set any entity into the provided bucket, for example peds / vehicles / props / etc.
---@param entity integer
---@param bucket integer
---@return boolean
function exports.qbx_core:SetEntityBucket(entity, bucket) end

--- —[ server: functions ]—
-- Will return an array of all the player ids inside the current bucket
---@param bucket integer
---@return Source[]|boolean
function exports.qbx_core:GetPlayersInBucket(bucket) end

--- —[ server: functions ]—
-- Will return an array of all the entities inside the current bucket (not for player entities, use GetPlayersInBucket for that)
---@param bucket integer
---@return boolean | integer[]
function exports.qbx_core:GetEntitiesInBucket(bucket) end

--- —[ server: functions ]—
-- Items
---@param item string name
---@param data fun(source: Source, item: unknown)
function exports.qbx_core:CreateUseableItem(item, data) end

--- —[ server: functions ]—
---@param item string name
---@return unknown
function exports.qbx_core:CanUseItem(item) end

--- —[ server: functions ]—
-- Check if player is whitelisted, kept like this for backwards compatibility or future plans
---@param source Source
---@return boolean
function exports.qbx_core:IsWhitelisted(source) end

---@deprecated use cfg ACEs instead
---@param source Source
---@param permission string
function exports.qbx_core:AddPermission(source, permission) end

--- —[ server: functions ]—
-- Checking for Permission Level
---@deprecated use IsPlayerAceAllowed
---@param source Source
---@param permission string|string[]
---@return boolean
function exports.qbx_core:HasPermission(source, permission) end

--- —[ server: functions ]—
---@deprecated use cfg ACEs instead
---@param source Source
---@return table<string, boolean>
function exports.qbx_core:GetPermission(source) end

--- —[ server: functions ]—
-- Opt in or out of admin reports
---@param source Source
---@return boolean
function exports.qbx_core:IsOptin(source) end

--- —[ server: functions ]—
---Opt in or out of admin reports
---@param source Source
function exports.qbx_core:ToggleOptin(source) end

--- —[ server: functions ]—
-- Check if player is banned
---@param source Source
---@return boolean
---@return string? playerMessage
function exports.qbx_core:IsPlayerBanned(source) end

--- —[ server: functions ]—
---@see client/lua:Notify
function exports.qbx_core:Notify(source, text, notifyType, duration, subTitle, notifyPosition, notifyStyle, notifyIcon, notifyIconColor) end

--- —[ server: functions ]—
---@param InvokingResource string
---@return string version
function exports.qbx_core:GetCoreVersion(InvokingResource) end

--- —[ server: functions ]—
---@param playerId Source server id
---@param origin string reason
function exports.qbx_core:ExploitBan(playerId, origin) end