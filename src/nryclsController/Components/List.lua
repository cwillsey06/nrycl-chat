-- List.lua
-- Coltrane Willsey
-- 2022-04-12 [05:58]

local Packages = script.Parent.Parent.Packages
local Roact = require(Packages.roact)

function List()
    return Roact.createElement("UIListLayout")
end

return List