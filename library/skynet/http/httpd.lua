---@meta

---@alias skynet.http.header table<string,string>

---@class skynet.http.httpd
local httpd = {}

---@param readbytes fun(sz:number):string
---@param bodylimit integer|nil
---@return integer statuscode, string url, string method, skynet.http.header header, string body
function httpd.read_request(readbytes, bodylimit) end

---@alias skynet.http.bodyfunc fun(sz:number?):string

---@param writefunc fun(str:string):integer
---@param statuscode integer
---@param bodyfunc skynet.http.bodyfunc | string | nil
---@param header table<string,string>?
---@return fun(ok:boolean,statuscode:string, url:string, method:string, header:skynet.http.header, body:string)
function httpd.write_response(writefunc,statuscode, bodyfunc, header) end

return httpd
