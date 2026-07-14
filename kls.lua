-- [ note: This will get progessively more complex and WILL make alot of technical dev ]
-- [       so please refactor every month or two. -garcierjen                          ]
-- [       kls.lua                                                                     ]

local config = require("config")
local colord = require("colord")
local prettytext = require("prettytext")
local socket = require('socket')

local function main()
    for i = 1, 256 do
        io.write(colord:b256setcolor(i-1,"bg").." "..tostring(i-1).." ")
    end
    io.write(colord:reset())
    io.write(colord:bit16setcolor("default","default","graphic","bold").."\nkls test : "..colord:reset())
    io.write(colord:b256setcolor(155,"fg"))
    prettytext:spinning(5)
    io.write(colord:reset())
    prettytext:typewrite(colord:b256setcolor(40,"fg").."\nsupercalifragilisticexpialidocious\n",2)
    io.write(colord:reset())
    return 0
end

main()