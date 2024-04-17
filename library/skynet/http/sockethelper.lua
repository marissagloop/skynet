---@meta
---@class skynet.http.sockethelper
local sockethelper = {}

---@param fd number
---@param pre string|nil
---@return fun(sz:number):string
function sockethelper.readfunc(fd, pre) end

return sockethelper
