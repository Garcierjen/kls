local m = {}

---wait in second
---@param t number
function m:wait(t)
    local start = os.clock()
    while os.clock() - start < t do end
end


--typewrite effect
---@param text string
---@param time number
function m:typewrite(text, time)
    local len = string.len(text)
    if len == 0 then return end
    local del = time / len
    for i = 1, len do
        local char = string.sub(text, i, i) 
        io.write(char)
        io.flush()
        m:wait(del)
    end
end

return m