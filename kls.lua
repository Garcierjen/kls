-- [ note: This will get progessively more complex and WILL make alot of technical dev ]
-- [       so please refactor every month or two. -garcierjen                          ]
-- [       kls.lua                                                                     ]

local config = require("config")
local colord = require("colord")
local prettytext = require("prettytext")

local function main()
    prettytext:typewrite(colord:b256setcolor(123, 'fg').."hello world!\n",1)
    prettytext:wait(1)
    prettytext:typewrite(colord:b256setcolor(123, 'fg').."kuy\n",1)
    return 0
end

main()