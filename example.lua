-- [ note: This will get progessively more complex and WILL make alot of technical dev ]
-- [       so please refactor every month or two. -garcierjen                          ]
-- [       kls.lua                                                                     ]

local config = require("config")
local colord = require("colord")
local prettytext = require("prettytext")
local socket = require('socket')

local function main()
    prettytext:typewrite(colord:b256setcolor(123, 'fg').."hello world!\n"..colord:reset(),1)
    prettytext:wait(1)
    prettytext:typewrite(colord:b256setcolor(123, 'fg').."\n"..colord:reset(),1)
    prettytext:typewrite(colord:b256setcolor(123, 'fg')..socket._VERSION..colord:reset(), 1)
    io.write(colord:bit16setcolor("margenta","default","fg","normal"))
    prettytext:spinning(10)
    return 0;
end

main()