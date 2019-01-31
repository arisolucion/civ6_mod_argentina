--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_CIVILIZATION_LEU_ARGENTINA',	'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,											Description)
VALUES	('TRAIT_CIVILIZATION_LEU_ARGENTINA',	'LOC_TRAIT_CIVILIZATION_LEU_ARGENTINA_NAME',	'LOC_TRAIT_CIVILIZATION_LEU_ARGENTINA_DESCRIPTION');

-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(TraitType,												CivilizationType)
VALUES	('TRAIT_CIVILIZATION_LEU_ARGENTINA',					'CIVILIZATION_LEU_ARGENTINA');

-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_LEU_ARGENTINA', 	'LEU_ARGENTINA_MUSIC_PRODUCTION'),
		('TRAIT_CIVILIZATION_LEU_ARGENTINA', 	'LEU_ARGENTINA_MUSIC_SLOT'),
		('TRAIT_CIVILIZATION_LEU_ARGENTINA', 	'LEU_ARGENTINA_MUSIC_PASTURE_CITIES');

-------------------------------------
-- ImprovementModifiers
-------------------------------------
--INSERT INTO ImprovementModifiers
--		(ImprovementType,					ModifierID)
--VALUES	('IMPROVEMENT_PASTURE',				'LEU_ARGENTINA_MUSIC_PASTURES');

--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------					
INSERT INTO Modifiers			
		(ModifierId,									ModifierType,												RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('LEU_ARGENTINA_MUSIC_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',			0,			0,			null),
		('LEU_ARGENTINA_MUSIC_SLOT',					'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_GREAT_WORK_SLOTS',		0,			0,			null),	
		('LEU_ARGENTINA_MUSIC_PASTURE_CITIES',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			0,			0,			'REQ_LEU_ARG_PLOT_ADJACENT_TO_PASTURE');
		

-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,								CollectionType,						EffectType)
VALUES	('MODIFIER_LEU_ARG_PLOT_ATTACH_MODIFIER',	'COLLECTION_PLAYER_PLOT_YIELDS',		'EFFECT_ATTACH_MODIFIER');
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('MODIFIER_LEU_ARG_PLOT_ATTACH_MODIFIER',	'KIND_MODIFIER');

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES	('LEU_ARGENTINA_MUSIC_PRODUCTION',		'GreatWorkObjectType',		'GREATWORKOBJECT_MUSIC'),
		('LEU_ARGENTINA_MUSIC_PRODUCTION',		'YieldType',				'YIELD_PRODUCTION'),
		('LEU_ARGENTINA_MUSIC_PRODUCTION',		'YieldChange',				4),
		('LEU_ARGENTINA_MUSIC_SLOT',			'BuildingType',				'BUILDING_MONUMENT'),
		('LEU_ARGENTINA_MUSIC_SLOT',			'GreatWorkSlotType',		'GREATWORKSLOT_MUSIC'),
		('LEU_ARGENTINA_MUSIC_SLOT',			'Amount',					2),
		('LEU_ARGENTINA_MUSIC_PASTURE_CITIES',		'GreatPersonClassType',		'GREAT_PERSON_CLASS_MUSICIAN'),
		('LEU_ARGENTINA_MUSIC_PASTURE_CITIES',		'Amount',						2);


--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType)
VALUES	('REQ_LEU_IS_PASTURE',		'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,			RequirementId)
VALUES	('REQ_LEU_IS_PASTURE',	'LEU_IS_PASTURE');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 			RequirementType,					Inverse)
VALUES	('LEU_IS_PASTURE',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',		0);
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 		Name,					Value)
VALUES	('LEU_IS_PASTURE', 	'ImprovementType',		'IMPROVEMENT_PASTURE');

--==========================================================================================================================
--==========================================================================================================================