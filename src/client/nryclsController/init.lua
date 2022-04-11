-- init.lua
-- Coltrane Willsey
-- 2022-04-11 [01:42]

local nryclsController = {}
nryclsController.__index = nryclsController

function nryclsController:Init()
    nryclsController:Start()
end

function nryclsController:Start()
end

return nryclsController
