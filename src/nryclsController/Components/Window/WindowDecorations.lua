-- WindowDecorations.lua
-- Coltrane Willsey
-- 2022-04-15 [10:07]

local Packages = script.Parent.Parent.Parent.Packages
local Roact = require(Packages.roact)

function WindowDecorations(props)
    return Roact.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(33,33,33);
        BorderSizePixel = 0;
        Size = UDim2.new(1, 0, 0, 14);
    }, {
        RightPanel = Roact.createElement("Frame", {
            Size = UDim2.fromScale(0.5, 1);
        }, {
            List = Roact.createElement("UIListLayout", {
                HorizontalAlignment = Enum.HorizontalAlignment.Right;
                FillDirection = Enum.FillDirection.Horizontal;
            })

        })
    })
end

return WindowDecorations