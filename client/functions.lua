------- Pulling Essentials ------
VORPcore = {}
TriggerEvent("getCore", function(core)
  VORPcore = core
end)
VORPutils = {}
TriggerEvent("getUtils", function(utils)
  VORPutils = utils
end)
------ Pulling Essentials ------
TriggerEvent("menuapi:getData", function(call)
  MenuData = call
end)
BccUtils = exports['bcc-utils'].initiate()
MiniGame = exports['bcc-minigames'].initiate()

----- Setting RelationShip ----
function relationshipsetup(ped, relint) --ped and player relationship setter, rail int is 1-5 1 being friend 5 being hate
  SetRelationshipBetweenGroups(relint, GetPedRelationshipGroupHash(ped), joaat('PLAYER'))
end

-------- Get Players Function --------
function GetPlayers()
  TriggerServerEvent("bcc-ranch:GetPlayers")
  local playersData = {}
  RegisterNetEvent("bcc-ranch:SendPlayers", function(result)
    playersData = result
  end)
  while next(playersData) == nil do
    Wait(10)
  end
  return playersData
end

function DelPedsForTable(table) --will delete all peds in the table
  for k, v in pairs(table) do
    DeletePed(v)
  end
end

function SetRelAndFollowPlayer(table) --will set the peds relation with player and then have ped follow player
  for k, v in pairs(table) do
    relationshipsetup(v, 1)
    TaskFollowToOffsetOfEntity(v, PlayerPedId(), 5, 5, 0, 1, -1, 5, true, true, Config.RanchSetup.AnimalsWalkOnly, true, true, true)
  end
end