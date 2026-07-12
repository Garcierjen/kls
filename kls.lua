-- [ note: This will get progessively more complex and WILL make alot of technical dev ]
-- [       so please refactor every month or two. -garcierjen                          ]
-- [       kls.lua                                                                     ]

local config = require("config")
local colord = require("colord")
local prettytext = require("prettytext")
local socket = require('socket')

local function main()
    prettytext:typewrite(colord:b256setcolor(123, 'fg').."hello world!\n"..colord:reset(),1)
    prettytext:typewrite(colord:b256setcolor(123, 'fg')..socket._VERSION..colord:reset(), 1)
    io.write(colord:bit16setcolor("default","default","graphic","bold").."\nkls test : "..colord:reset())
    io.write(colord:b256setcolor(155,"fg"))
    prettytext:spinning(5)
    io.write(colord:reset())
    prettytext:typewrite(colord:b256setcolor(40,"fg").."\nsupercalifragilisticexpialidocious",2)
    io.write(colord:reset())
    return 0
end

main()