-- Preset == testing

local a, b
do
    local function c(a)
        local b = ""
        for c = 1, #a, 1 do
            b = b .. a[c]
        end
        return b
    end
    local d = math.floor
    local e = math.random
    local f = table
    local g = f.remove
    local h = string.char
    local i = 0
    local j = 2
    local k = {}
    local l = {}
    local m = 0
    local n = {}
    for a = 1, 256, 1 do
        n[a] = a
    end
    repeat
        local a = e(1, #n)
        local b = g(n, a)
        l[b] = h(b - 1)
    until #n == 0
    local o = {}
    local function p()
        if #o == 0 then
            i = (i * 256061 + 7139048701) % 4294967296
            repeat
                j = (j * 19) % 257
            until j ~= 1
            local a = j % 32
            local b = (d(i / 2 ^ (13 - (j - a) / 32)) % 4294967296) / 2 ^ a
            local c = d((b % 1) * 4294967296) + d(b)
            local e = c % 65536
            local f = (c - e) / 65536
            local g = e % 256
            local h = (e - g) / 256
            local k = f % 256
            local l = (f - k) / 256
            o = {g, h, k, l}
        end
        return g(o)
    end
    local q = {}
    a = setmetatable({}, {__index = q, __metatable = nil})
    function b(a, b)
        local d = q
        local e = 5899
        if not d[b] then
            o = {}
            local f = l
            i = b % 4294967296
            j = b % 255 + 2
            local g = #a
            local h = {}
            for b = 1, g, 1 do
                local c = a:byte(b)
                e = ((c + p()) + e) % 256
                h[b] = f[e + 1]
            end
            d[b] = c(h)
        end
        if type(d[b]) == f then
            local a = d[b]
            local c = ""
            for b = 1, #a, 1 do
                local d = a:sub(b, b)
                local f = d:byte()
                local g = (f - (p() + e)) % 256
                c = c .. l[g + 1]
            end
            d[b] = c
        end
        return b
    end
end
print(a[b("\180\048\012\026\135\098\079\033\181\t\179\201\094\124\017\238", 1352425927)])
local c = 100000
print(a[b("\249\v\241\247\098\019\245\230\127\005\076\134", 193418387)] .. tostring(c))
local d = {[a[b("\056\121\076\132\n\253\201", 2959137600)]] = function()
        for c = 1, c, 1 do
            (function()
                if false then
                    print(a[b("\072\253\232\220\199\250\165\175\037\188", 3534067611)])
                end
            end)()
        end
    end, [a[b("\242\134\015\074\132\177\138\238", 4015375344)]] = function()
        local d = {}
        for c = 1, c, 1 do
            d[tostring(c)] = a[b("\056\113\225~\105\247\250\235\248\237-", 1119763148)] .. tostring(c)
        end
    end, [a[b("\058\a\084\144\131\001\214\020", 3274966175)]] = function()
        local a = {}
        for b = 1, c, 1 do
            a[1] = a[tostring(b)]
        end
    end, [a[b("\083\143\121\240\080\080\006\252\064\233\254\239\243", 2481951307)]] = function()
        local function a()
        end
        for b = 1, c, 1 do
            a()
        end
    end, [a[b("\243\017\245\226\078\005\241\122\150~", 136225511)]] = function()
        local a = 0
        for b = 1, c, 1 do
            a = a + b
        end
    end, [a[b("\069\252\071\119\101\249\185\067\244\239\175\221\153\247\224\239\190\224\127", 1209056025)]] = function()
        local d = a[b("", 3876663342)]
        for a = 1, c, 1 do
            d = d .. tostring(a)
        end
    end}
local e = os[a[b("\105\000\156\200", 1986214464)]]()
for c, d in pairs(d) do
    print(c .. a[b("\165\083\113\134\097\197\025\220\243", 3311981597)])
    local e = os[a[b("\029\245\245\149", 842238683)]]()
    d()
    print(
        a[b("\213\110\132\245\213", 1770728122)],
        os[a[b("\043\245\211\081", 1643480862)]]() - e .. a[b("\168", 1449980210)]
    )
end
print(
    a[b("\121\022\084\237\171\151\069\204\253\088\213", 1149888872)],
    os[a[b("\016\185\004\124", 2182914114)]]() - e .. a[b("\072", 4116749894)]
)
