--===================================================================================================================================================
-- VARGAS TRAIT FUNCTIONS
-- BasicDistrictDummyBuildingScript
--==================================================================================================================================================
-- INCLUDES
--==========================================================================================================================
include("Civ6Common.lua")
include("AdjacencyBonusSupport.lua")
print("Estancia scripts running")
--==========================================================================================================================
-- Variables
--==========================================================================================================================


local DistrictIndex = GameInfo.Districts["DISTRICT_LEU_ESTANCIA"].Index;
local DummyIndex = GameInfo.Buildings["BUILDING_LEU_ESTANCIA"].Index;

--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
--HasTrait
function HasTrait(leaderType, traitType)
	for row in GameInfo.LeaderTraits() do
		if (row.LeaderType == leaderType and row.TraitType == traitType) then return true end
	end
	return false
end
--==========================================================================================================================
-- Dummy Building Remover
--==========================================================================================================================

function CheckDistrict(playerID, districtID, cityID, districtX, districtY, districtType)
	if districtType == DistrictIndex then
		print("An Estancia was added to map")
		local player = Players[playerID]
		local pCity = player:GetCities():FindID(cityID)
		if pCity ~= nil then
			local pCityBuildings = pCity:GetBuildings();
			if pCityBuildings ~= nil then
				if pCityBuildings:HasBuilding(DummyIndex) == false then
					local plotIndex:number = Map.GetPlot(pCity:GetX(), pCity:GetY()):GetIndex();
					pCity:GetBuildQueue():CreateIncompleteBuilding(DummyIndex, plotIndex, 100);
					print("Adding Dummy to City")
				end
			end
		end
	end
end

Events.DistrictAddedToMap.Add(CheckDistrict);


--==============================================================================================================================
--==============================================================================================================================