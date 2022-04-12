-- Padding.lua
-- Coltrane Willsey
-- 2022-04-12 [06:46]

local Packages = script.Parent.Parent.Packages
local Roact = require(Packages.roact)

function Padding(props)
    return Roact.createElement("UIPadding", {
        PaddingBottom = props.TBPadding;
        PaddingLeft = props.RLPadding;
        PaddingRight = props.RLPadding;
        PaddingTop = props.TBPadding;
    })
end

return Padding