--==========================================================================================================================
-- Districts
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_LEADER_DISTRICT_LEU_ESTANCIA',		'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,							Description)
VALUES	('TRAIT_LEADER_DISTRICT_LEU_ESTANCIA',		'LOC_DISTRICT_LEU_ESTANCIA_NAME',		'LOC_DISTRICT_LEU_ESTANCIA_DESCRIPTION');

-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(TraitType,										LeaderType)
VALUES	('TRAIT_LEADER_DISTRICT_LEU_ESTANCIA',			'LEADER_LEU_ROCA');
------------------------------------------------------------------------------------
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('DISTRICT_LEU_ESTANCIA',			'KIND_DISTRICT');
-----------------------------------------------------------------------------------
-- Districts
-----------------------------------------------------------------------------------
INSERT INTO Districts
			(DistrictType,					Name,									Description,									TraitType,									Cost,		PrereqTech,							Aqueduct,		PlunderType,			PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier,	Housing,	Entertainment,	OnePerCity,		HitPoints,	Maintenance)
SELECT		'DISTRICT_LEU_ESTANCIA',		'LOC_DISTRICT_LEU_ESTANCIA_NAME',		'LOC_DISTRICT_LEU_ESTANCIA_DESCRIPTION',		'TRAIT_LEADER_DISTRICT_LEU_ESTANCIA',		Cost/2,		'TECH_HORSEBACK_RIDING',			Aqueduct,		'PLUNDER_CULTURE',		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier,	Housing,	1,	OnePerCity,		HitPoints,	Maintenance
FROM Districts WHERE DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------------------------------------------
-- DistrictReplaces
-----------------------------------------------------------------------------------
INSERT INTO DistrictReplaces
			(CivUniqueDistrictType,				ReplacesDistrictType)
VALUES		('DISTRICT_LEU_ESTANCIA',			'DISTRICT_ENCAMPMENT');
-----------------------------------------------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
			(DistrictType,				GreatPersonClassType,				PointsPerTurn)
VALUES 		('DISTRICT_LEU_ESTANCIA',	'GREAT_PERSON_CLASS_GENERAL',		1);
-----------------------------------------------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------------------------------------------
INSERT INTO District_TradeRouteYields
			(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
VALUES 		('DISTRICT_LEU_ESTANCIA',	'YIELD_FOOD',		0.0,					1.0,								1.0);
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
			(DistrictType,						YieldChangeId)
VALUES 		('DISTRICT_LEU_ESTANCIA',			'Estancia_Adj_Pastures'),
			('DISTRICT_LEU_ESTANCIA',			'Estancia_Adj_Forts');
-----------------------------------------------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,						YieldType,				YieldChange,		TilesRequired,	OtherDistrictAdjacent,		AdjacentImprovement)
VALUES	('Estancia_Adj_Pastures',		'LOC_PASTURE_ESTANCIA_PRODUCTION',	'YIELD_FOOD',		1,					1,				0,							'IMPROVEMENT_PASTURE'),
		('Estancia_Adj_Forts',			'LOC_FORT_ESTANCIA_PRODUCTION',		'YIELD_FOOD',		1,					1,				0,							'IMPROVEMENT_FORT');
-----------------------------------------------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------------------------------------------
--INSERT INTO District_CitizenYieldChanges
--			(DistrictType,						YieldType,			YieldChange)
--VALUES 		('DISTRICT_LEU_ESTANCIA',			'YIELD_FOOD',		4);
-----------------------------------------------------------------------------------
-- District_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO District_ValidTerrains
		(DistrictType,				TerrainType)
VALUES	('DISTRICT_LEU_ESTANCIA',	'TERRAIN_GRASS'),
		('DISTRICT_LEU_ESTANCIA',	'TERRAIN_PLAINS'),
		('DISTRICT_LEU_ESTANCIA',	'TERRAIN_TUNDRA');
-----------------------------------------------------------------------------------
-- DistrictModifiers
-----------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
			(DistrictType,						ModifierId)
VALUES 		('DISTRICT_LEU_ESTANCIA',			'LEU_ESTANCIA_ENGINEER_BONUS'),
			('DISTRICT_LEU_ESTANCIA',			'LEU_ESTANCIA_BORDER_BONUS'),
			('DISTRICT_LEU_ESTANCIA',			'LEU_ESTANCIA_DUMMY_BUILDING');

--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,											SubjectRequirementSetId)
VALUES	('LEU_ESTANCIA_ENGINEER_BONUS',		'MODIFIER_LEU_SINGLE_CITY_UNIT_PRODUCTION',				null),
		('LEU_ESTANCIA_BORDER_BONUS',		'MODIFIER_LEU_SINGLE_CITY_BORDER_EXPANSION',			null),
		('LEU_ESTANCIA_DUMMY_BUILDING',		'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY',			null);

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,					Value)
VALUES	('LEU_ESTANCIA_ENGINEER_BONUS',		'UnitType',				'UNIT_MILITARY_ENGINEER'),
		('LEU_ESTANCIA_ENGINEER_BONUS',		'Amount',				25),
		('LEU_ESTANCIA_BORDER_BONUS',		'Amount',				25),
		('LEU_ESTANCIA_DUMMY_BUILDING',		'BuildingType',			'BUILDING_LEU_ESTANCIA');

--==========================================================================================================================
-- DynamicModifiers
--==========================================================================================================================
INSERT OR REPLACE INTO Types	
		(Type,													Kind)
VALUES	('MODIFIER_LEU_SINGLE_CITY_UNIT_PRODUCTION',			'KIND_MODIFIER'),
		('MODIFIER_LEU_SINGLE_CITY_BORDER_EXPANSION',			'KIND_MODIFIER');

INSERT OR REPLACE INTO DynamicModifiers
		(ModifierType,										CollectionType,					EffectType)
VALUES	('MODIFIER_LEU_SINGLE_CITY_UNIT_PRODUCTION',		'COLLECTION_OWNER',				'EFFECT_ADJUST_UNIT_PRODUCTION'),
		('MODIFIER_LEU_SINGLE_CITY_BORDER_EXPANSION',		'COLLECTION_OWNER',				'EFFECT_ADJUST_CITY_CULTURE_BORDER_EXPANSION');
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
-------------------------------------
-- Requirements
-------------------------------------
-------------------------------------
-- RequirementArguments
-------------------------------------
--==========================================================================================================================
-- Dummy Building
--==========================================================================================================================
INSERT INTO Buildings
		(BuildingType,					Name,									Cost,			InternalOnly,		EnabledByReligion,	PrereqDistrict,			PurchaseYield,			MustPurchase)
VALUES	('BUILDING_LEU_ESTANCIA',		'LOC_DISTRICT_LEU_ESTANCIA_NAME',		200,			1,					1,					'DISTRICT_CITY_CENTER',	'YIELD_CULTURE',		1);

INSERT INTO Types	
		(Type,						Kind)
VALUES	('BUILDING_LEU_ESTANCIA',		'KIND_BUILDING');	

INSERT INTO Unit_BuildingPrereqs
		(Unit,							PrereqBuilding,					NumSupported)
VALUES	('UNIT_MILITARY_ENGINEER',		'BUILDING_LEU_ESTANCIA',		-1);

--==========================================================================================================================
--==========================================================================================================================