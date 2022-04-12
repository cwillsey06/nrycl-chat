-- Enumeration.lua
-- Coltrane Willsey
-- 2022-04-11 [08:34]

local EnumList = require(script.Parent.Parent.Packages.enumlist)

local Enumeration = {}

Enumeration.State = EnumList.new("State", {
    "Dead",
    "Sleeping",
    "Loading",
    "Alive"
})

return Enumeration