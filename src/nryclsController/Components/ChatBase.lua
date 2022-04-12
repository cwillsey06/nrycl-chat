-- ChatBase.lua
-- Coltrane Willsey
-- 2022-04-12 [06:01]

local Packages = script.Parent.Parent.Packages
local Roact = require(Packages.roact)

local Components = script.Parent
local ChatBox = require(Components.ChatBox)
local Padding = require(Components.Padding)

function ChatBase(props)
    return Roact.createElement("Frame", {
        BackgroundTransparency = 0.8;
        BackgroundColor3 = Color3.new(0,0,0);
        BorderSizePixel = 0;
        Size = UDim2.fromOffset(420, 280)
    }, {
        Padding = Roact.createElement(Padding, {
            TBPadding = UDim.new(0, 4);
            RLPadding = UDim.new(0, 6);
        });
        ChatBox = Roact.createElement(ChatBox)
    })
end

return ChatBase