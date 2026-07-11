-- [ note: config for kls -garcierjen ]
-- [ filename: config.lua ] 

local m = {}

m.defaultmode = 1 -- [ note: 1 for cli, 2 for tui ]

m.ESC = "Hexadecimal" -- [ note: On different OS have their own ANSI Escape can be change to ]
                      -- [ "Octal", "Ctrl-Key", "Unicode", "Hexadecimal", "Decimal"          ]
                      -- ANSI Escape Sequences doc : https://gist.github.com/ConnerWill/d4b6c776b509add763e17f9f113fd25b
            
return m