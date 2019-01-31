--==========================================================================================================================
-- Districts
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_LEU_ARRABAL',		'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,							Description)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_LEU_ARRABAL',		'LOC_DISTRICT_LEU_ARRABAL_NAME',		'LOC_DISTRICT_LEU_ARRABAL_DESCRIPTION');

-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(TraitType,										CivilizationType)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_LEU_ARRABAL',			'CIVILIZATION_LEU_ARGENTINA');
------------------------------------------------------------------------------------
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('DISTRICT_LEU_ARRABAL',			'KIND_DISTRICT');
-----------------------------------------------------------------------------------
-- Districts
-----------------------------------------------------------------------------------
INSERT INTO Districts
			(DistrictType,						Name,										Description,										TraitType,					Cost,		PrereqCivic,		Aqueduct,		PlunderType,			PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier,	Housing,	Entertainment,	OnePerCity)
SELECT		'DISTRICT_LEU_ARRABAL',		'LOC_DISTRICT_LEU_ARRABAL_NAME',		'LOC_DISTRICT_LEU_ARRABAL_DESCRIPTION',		'TRAIT_CIVILIZATION_DISTRICT_LEU_ARRABAL',		Cost/2,		PrereqCivic,		Aqueduct,		'PLUNDER_CULTURE',		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier,	Housing,	0,				0
FROM Districts WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';
-----------------------------------------------------------------------------------
-- AppealHousingChanges
-----------------------------------------------------------------------------------

INSERT INTO AppealHousingChanges
		(DistrictType,				MinimumValue,		AppealChange,		Description)
VALUES	('DISTRICT_LEU_ARRABAL',	4,					2,					'LOC_TOOLTIP_ARRABAL_APPEAL_BREATHTAKING'),
		('DISTRICT_LEU_ARRABAL',	2,					1,					'LOC_TOOLTIP_ARRABAL_APPEAL_CHARMING'),
		('DISTRICT_LEU_ARRABAL',	-1,					0,					'LOC_TOOLTIP_ARRABAL_APPEAL_AVERAGE'),
		('DISTRICT_LEU_ARRABAL',	-3,					-1,					'LOC_TOOLTIP_ARRABAL_APPEAL_UNINVITING'),
		('DISTRICT_LEU_ARRABAL',	-100,					-2,				'LOC_TOOLTIP_ARRABAL_APPEAL_DISGUSTING');

-----------------------------------------------------------------------------------
-- DistrictReplaces
-----------------------------------------------------------------------------------
INSERT INTO DistrictReplaces
			(CivUniqueDistrictType,					ReplacesDistrictType)
VALUES		('DISTRICT_LEU_ARRABAL',			'DISTRICT_NEIGHBORHOOD');
-----------------------------------------------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
			(DistrictType,				GreatPersonClassType,				PointsPerTurn)
VALUES 		('DISTRICT_LEU_ARRABAL',	'GREAT_PERSON_CLASS_MUSICIAN',		1);
-----------------------------------------------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------------------------------------------
INSERT INTO District_TradeRouteYields
			(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
VALUES 		('DISTRICT_LEU_ARRABAL',	'YIELD_PRODUCTION',	1.0,					1.0,								1.0);
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
			(DistrictType,							YieldChangeId)
VALUES 		('DISTRICT_LEU_ARRABAL',			'Arrabal_Adj_Districts');
-----------------------------------------------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,						YieldType,				YieldChange,		TilesRequired,	OtherDistrictAdjacent,		AdjacentImprovement)
VALUES	('Arrabal_Adj_Districts',		'LOC_DISTRICT_ARRABAL_PRODUCTION',	'YIELD_PRODUCTION',		1,					2,				1,							null),
		('Arrabal_Adj_Pastures',		'LOC_PASTURE_ARRABAL_PRODUCTION',	'YIELD_PRODUCTION',		1,					1,				0,							'IMPROVEMENT_PASTURE');
-----------------------------------------------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------------------------------------------
INSERT INTO District_CitizenYieldChanges
			(DistrictType,							YieldType,		YieldChange)
VALUES 		('DISTRICT_LEU_ARRABAL',			'YIELD_PRODUCTION',		1);
-----------------------------------------------------------------------------------
-- DistrictModifiers
-----------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
			(DistrictType,						ModifierId)
VALUES 		('DISTRICT_LEU_ARRABAL',			'LEU_ARRABAL_MUSIC_DISTRICTS');

--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,										SubjectRequirementSetId)
VALUES	('LEU_ARRABAL_MUSIC_DISTRICTS',		'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',		'REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT'),
		('LEU_ARRABAL_MUSIC_PASTURE',		'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',		'REQ_LEU_ARG_PLOT_ADJACENT_TO_PASTURE');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('LEU_ARRABAL_MUSIC_DISTRICTS',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_MUSICIAN'),
		('LEU_ARRABAL_MUSIC_DISTRICTS',		'Amount',						1),
		('LEU_ARRABAL_MUSIC_PASTURE',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_MUSICIAN'),
		('LEU_ARRABAL_MUSIC_PASTURE',		'Amount',						1);

--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',						'REQUIREMENTSET_TEST_ANY'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_PASTURE',						'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('REQ_LEU_ARG_PLOT_ADJACENT_TO_PASTURE',			'LEU_ARG_ADJ_PASTURE'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_HOLY_SITE'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_CAMPUS'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_ENCAMPMENT'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_THEATER'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_INDUSTRIAL'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_COMMERCIAL'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_HARBOR'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_CITY_CENTER'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_AERODROME'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_AQUEDUCT'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_ARRABAL'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_ENTERTAINMENT'),
		('REQ_LEU_ARG_PLOT_ADJACENT_TO_DISTRICT',          'LEU_ARG_ADJ_SPACEPORT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 					RequirementType)
VALUES	('LEU_ARG_ADJ_HOLY_SITE',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_CAMPUS',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_ENCAMPMENT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_THEATER',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_INDUSTRIAL',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_COMMERCIAL',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_HARBOR',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_CITY_CENTER',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_AERODROME',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_AQUEDUCT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_ARRABAL',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_ENTERTAINMENT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_SPACEPORT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('LEU_ARG_ADJ_PASTURE',			'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 						Name,					Value)
VALUES	('LEU_ARG_ADJ_HOLY_SITE', 				'DistrictType',			'DISTRICT_HOLY_SITE'),
		('LEU_ARG_ADJ_CITY_CENTER',				'DistrictType',			'DISTRICT_CITY_CENTER'),
		('LEU_ARG_ADJ_CAMPUS',					'DistrictType',			'DISTRICT_CAMPUS'),
		('LEU_ARG_ADJ_ENCAMPMENT',				'DistrictType',			'DISTRICT_ENCAMPMENT'),
		('LEU_ARG_ADJ_HARBOR',					'DistrictType',			'DISTRICT_HARBOR'),
		('LEU_ARG_ADJ_AERODROME',				'DistrictType',			'DISTRICT_AERODROME'),
		('LEU_ARG_ADJ_COMMERCIAL',				'DistrictType',			'DISTRICT_COMMERCIAL_HUB'),
		('LEU_ARG_ADJ_ENTERTAINMENT',			'DistrictType',			'DISTRICT_ENTERTAINMENT_COMPLEX'),
		('LEU_ARG_ADJ_THEATER',					'DistrictType',			'DISTRICT_THEATER'),
		('LEU_ARG_ADJ_INDUSTRIAL',				'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE'),
		('LEU_ARG_ADJ_ARRABAL',					'DistrictType',			'DISTRICT_LEU_ARRABAL'),
		('LEU_ARG_ADJ_AQUEDUCT',				'DistrictType',			'DISTRICT_AQUEDUCT'),
		('LEU_ARG_ADJ_PASTURE',					'ImprovementType',		'IMPROVEMENT_PASTURE'),
		('LEU_ARG_ADJ_SPACEPORT',				'DistrictType',			'DISTRICT_SPACEPORT');
--==========================================================================================================================
--==========================================================================================================================