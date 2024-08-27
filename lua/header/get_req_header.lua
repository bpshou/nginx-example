local function get_req_header(key)
    local h = ngx.req.get_headers()
    if h[key] then
        return h[key]
    end
    return ""
end

-- 可变变量（入参）
local arg = { ... }

return get_req_header(arg[1])
