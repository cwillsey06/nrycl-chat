-- Log.lua
-- Coltrane Willsey
-- 2022-04-12 [05:54]

local Packages = script.Parent.Parent.Packages
local Roact = require(Packages.roact)

function Log(props)
    local _text = ''
    if typeof(props.Text) == "table" then
        for i, v in ipairs(props.Text) do
            if i == #props.Text then
                _text ..= v
            else
                _text ..= v..'\n'
            end
        end
    else
        _text = tostring(props.Text)
    end

    return Roact.createElement("TextLabel", {
        BackgroundTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Top;
        AutomaticSize = Enum.AutomaticSize.Y;
        Size = UDim2.fromScale(1, 0);
        TextColor3 = props.Color or Color3.new(0,0,0);
        Text = _text;
    })
end

return Log