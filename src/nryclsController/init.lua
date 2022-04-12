-- init.lua
-- Coltrane Willsey
-- 2022-04-11 [01:42]

local Packages = script.Packages
local RoactRodux = require(Packages.roactrodux)
local Promise = require(Packages.promise)
local Roact = require(Packages.roact)
local Rodux = require(Packages.rodux)

local Util = script.Util
local Enumeration = require(Util.Enumeration)

local Components = script.Components
local Window = require(Components.Window)
local ChatBase = require(Components.ChatBase)

local nryclsController = {}
nryclsController.__index = nryclsController
nryclsController.Interface = nil

function nryclsController:Init()
    nryclsController.Interface = Roact.createElement("ScreenGui", {
        Name = "nrycls-inteface",
        IgnoreGuiInset = true
    }, {
        Window = Roact.createElement(Window, {
            Content = Roact.createElement(ChatBase);
        })
    })

    nryclsController:Start()
end

function nryclsController:Start()
    Roact.mount(nryclsController.Interface, game.Players.LocalPlayer.PlayerGui)
end

task.defer(function()
    nryclsController:Init()
end)

return nryclsController
