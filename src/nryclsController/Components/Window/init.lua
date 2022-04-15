-- init.lua
-- Coltrane Willsey
-- 2022-04-15 [10:07]

local Packages = script.Parent.Parent.Packages
local Snapdragon = require(Packages.snapdragon)
local Roact = require(Packages.roact)

local Padding = require(script.Parent.Padding)
local WindowDecorations = require(script.WindowDecorations)

function Window(props)
    return Roact.createElement("Frame", {
        Position = UDim2.fromOffset(8, 44);
        AutomaticSize = Enum.AutomaticSize.XY;
    }, {
        WindowDecorations = Roact.createElement(WindowDecorations, {
            
        });
        ContentWrapper = Roact.createElement("Frame", {
            BackgroundTransparency = 1;
            Position = UDim2.fromOffset(0, 14);
            AutomaticSize = Enum.AutomaticSize.XY;
            Size = UDim2.new(1, 0, 1, -14);
        }, {
            Padding = Roact.createElement(Padding, {
                TBPadding = UDim.new(0, 1);
                RLPadding = UDim.new(0, 1);
            });
            Content = props.Content
        })
    })
end

return Window