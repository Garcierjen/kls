-- [       kls.lua         ]

local config_content = [[
-- [ note: config for kls -garcierjen ]
-- [ AUTO GENERATED                   ]
-- [ filename: config.lua             ] 
-- DO NOT OBFUSCATE OR COMPILE TO LUAC

local m = {}

m.defaultmode = 1 -- [ note: 1 for cli, 2 for tui ]

return m
]]

local config

local function file_exists(path)
    local f = io.open(path, "r")
    if f then 
        f:close() 
        return true 
    end
    return false
end

if file_exists("config.lua") then
    config = require("config")
else
    print("Config file does not exist. Creating a new one...")
    local file, err = io.open("config.lua", "w")
    if file then
        file:write(config_content)
        file:close()
        config = dofile("config.lua") 
    else
        print("Error creating config file: " .. tostring(err))
    end
end

local colord = require("colord")
local prettytext = require("prettytext")

local function warn(text)
    io.write(colord:bit16setcolor("default","default","graphic","bold"))
    io.write(colord:b256setcolor(130,"fg").."Warning : "..colord:reset()..tostring(text))
    io.flush()
end

local function main()
    for i = 1, 256 do
        io.write(colord:b256setcolor(i-1,"bg").." "..tostring(i-1).." ")
        io.flush()
    end
    io.write(colord:reset())
    io.write(colord:bit16setcolor("default","default","graphic","bold").."\nkls test : "..colord:reset())
    io.write(colord:b256setcolor(155,"fg"))
    io.flush()
    prettytext:spinning(5)
    io.write(colord:reset(),colord:eraseall())
    io.write(colord:cursorsethome())
    io.flush()
    prettytext:typewrite(colord:b256setcolor(13,"fg").."supercalifragilisticexpialidocious!\n",2)
    prettytext:typewrite(colord:b256setcolor(13,"fg").."\nThe quick brown fox jumps over the lazy dog.\n",2)
    warn("lua slop detected.\n")
    io.write(colord:reset())
    io.flush()
    warn("if everything looks weird, try reconfigure the config.lua")
    return 0
end

main()