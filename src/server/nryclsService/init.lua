-- init.lua
-- Coltrane Willsey
-- 2022-04-11 [01:42]

local nryclsService = {}
nryclsService.__index = nryclsService
nryclsService.Client = {}

function nryclsService:Init()
    nryclsService:Start()
end

function nryclsService:Start()
end

return nryclsService
