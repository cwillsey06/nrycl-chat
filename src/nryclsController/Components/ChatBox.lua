-- ChatBox.lua
-- Coltrane Willsey
-- 2022-04-12 [06:44]

local Packages = script.Parent.Parent.Packages
local Roact = require(Packages.roact)

local Components = script.Parent
local Padding = require(Components.Padding)

function ChatBox(props)
    return Roact.createFragment(Roact.createElement("TextBox", {
        ZIndex = 2;
        AnchorPoint = Vector2.new(0, 1);
        Position = UDim2.fromScale(0, 1);
        BackgroundTransparency = 0.95;
        BackgroundColor3 = Color3.new(1,1,1);
        AutomaticSize = Enum.AutomaticSize.Y;
        Size = UDim2.fromScale(1, 0);
        ClearTextOnFocus = false;
        TextXAlignment = Enum.TextXAlignment.Left; 
        TextColor3 = Color3.new(1,1,1);
        PlaceholderText = "Click here or press '/' to chat";
        TextWrapped = true;
        LineHeight = 1.2;
        Text = '';

        [Roact.Change.Text] = function(object)
            local maxText = 32
            if object.Text >= maxText then
                object.Text = object.Text:sub(0, maxText);
            end
        end;
        [Roact.Event.Focused] = function(object)
            if object.Focused then
                object.PlaceholderText = "Type literally anything."
            end
        end;
        [Roact.Event.FocusLost] = function(object)
            if object.Focused then
                object.PlaceholderText = "Click here or press '/' to chat"
            end
        end;
    }, {
        Padding = Roact.createElement(Padding, {
            TBPadding = UDim.new(0, 4);
            RLPadding = UDim.new(0, 6);
        });
    }))
end

return ChatBox