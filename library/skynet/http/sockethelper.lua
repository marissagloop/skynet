---@meta
---@class skynet.http.sockethelper
local sockethelper = {}

function sockethelper.socket_error() end

-- 读取指定长度的内容
---@param fd number
---@param sz number
---@return string
function sockethelper.readbytes(fd, sz) end

---@param fd number
---@param content string
---@param sz number?
function sockethelper.writebytes(fd, content,sz) end

-- 返回读取指定长度的内容的函数
---@param fd number
---@param pre string|nil
---@return fun(sz:number):string
function sockethelper.readfunc(fd, pre) end

-- 返回写入内容的函数
---@param fd number
---@return fun(content:string)
function sockethelper.writefunc(fd) end

-- 读取所有内容
---@param fd number
---@return string
function sockethelper.readall(fd) end

-- 建立连接
---@param host string
---@param port number
---@param timeout number
function sockethelper.connect(host, port, timeout) end

-- 关闭连接
---@param fd number
function sockethelper.close(fd) end

-- 关闭连接
---@param fd number
function sockethelper.shutdown(fd) end

return sockethelper
