--==========================================================================================================================
-- Units
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_CIVILIZATION_UNIT_LEU_GAUCHO',		'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,							Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_LEU_GAUCHO',		'LOC_UNIT_LEU_GAUCHO_NAME',		'LOC_UNIT_LEU_GAUCHO_DESCRIPTION');

-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(TraitType,										CivilizationType)
VALUES	('TRAIT_CIVILIZATION_UNIT_LEU_GAUCHO',			'CIVILIZATION_LEU_ARGENTINA');
-----------------------------------------------------------------------------------
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('UNIT_LEU_GAUCHO',			'KIND_UNIT');
-----------------------------------------------------------------------------------
-- Units
-----------------------------------------------------------------------------------
INSERT INTO Units
			(UnitType,				Name, 							Description, 						TraitType,								Combat, 	BaseMoves,	Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, PromotionClass,					Maintenance, MandatoryObsoleteTech, PrereqCivic,	Range,	RangedCombat)
SELECT 		'UNIT_LEU_GAUCHO',		'LOC_UNIT_LEU_GAUCHO_NAME',		'LOC_UNIT_LEU_GAUCHO_DESCRIPTION',	'TRAIT_CIVILIZATION_UNIT_LEU_GAUCHO',	Combat,		4,			300, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, 'PROMOTION_CLASS_RECON',	Maintenance, MandatoryObsoleteTech, 'CIVIC_CIVIL_ENGINEERING',	1,		62
FROM Units WHERE UnitType = 'UNIT_RANGER';
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_LEU_GAUCHO',			UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_RANGER';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_LEU_GAUCHO',			AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES		('UNIT_LEU_GAUCHO',			'UNIT_RANGER');
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,						Tag)
SELECT 		'UNIT_LEU_GAUCHO',			Tag
FROM TypeTags WHERE Type = 'UNIT_RANGER';

INSERT INTO TypeTags
			(Type,						Tag)
VALUES		('UNIT_LEU_GAUCHO',			'CLASS_LEU_GAUCHO'),
			('UNIT_LEU_GAUCHO',			'CLASS_RANGED_CAVALRY'),
			('ABILITY_LEU_GAUCHO',		'CLASS_LEU_GAUCHO');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,						Vocabulary)
VALUES		('CLASS_LEU_GAUCHO',		'ABILITY_CLASS');
--==========================================================================================================================
-- Abilities
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_LEU_GAUCHO',				'KIND_ABILITY');
-------------------------------------
-- UnitAbilities
-------------------------------------					
INSERT INTO UnitAbilities			
		(UnitAbilityType,			Name,								Description)
VALUES	('ABILITY_LEU_GAUCHO',		'LOC_ABILITY_LEU_GAUCHO_NAME',		'LOC_ABILITY_LEU_GAUCHO_DESCRIPTION');

--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------					
INSERT INTO Modifiers			
		(ModifierId,										ModifierType,								SubjectRequirementSetId)
VALUES	('LEU_GAUCHO_COMBAT_BONUS',						'MODIFIER_LEU_UNIT_ADJUST_HEAL_PER_TURN',			'REQ_GAUCHO_REQUIREMENTS');
-------------------------------------
-- DynamicModifiers
------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,										CollectionType,						EffectType)
VALUES	('MODIFIER_LEU_UNIT_ADJUST_HEAL_PER_TURN',		'COLLECTION_OWNER',					'EFFECT_ADJUST_UNIT_HEALING_MODIFIERS');
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('MODIFIER_LEU_UNIT_ADJUST_HEAL_PER_TURN',	'KIND_MODIFIER');

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('LEU_GAUCHO_COMBAT_BONUS',			'Amount',			10),
		('LEU_GAUCHO_COMBAT_BONUS',			'Type',				'ALL');
			
-------------------------------------
-- ModifierString
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId, Context, Text)
VALUES ('LEU_GAUCHO_COMBAT_BONUS',		'Preview',		'LOC_ABILITY_GAUCHO_BONUS');
		
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('REQ_GAUCHO_REQUIREMENTS',							'REQUIREMENTSET_TEST_ANY');	
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 				RequirementType)
VALUES	('UNIT_IS_GAUCHO',				'REQUIREMENT_UNIT_TYPE_MATCHES'),
		('GAUCHO_IS_ON_FARM',			'REQUIREMENT_ATTACKER_PLOT_IMPROVEMENT_TYPE_MATCHES'),
		('GAUCHO_IS_ON_PASTURE',		'REQUIREMENT_ATTACKER_PLOT_IMPROVEMENT_TYPE_MATCHES');

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('UNIT_IS_CAVALRY_REQUIREMENTS',		'UNIT_IS_GAUCHO'),
		('REQ_GAUCHO_REQUIREMENTS',				'GAUCHO_IS_ON_FARM'),
		('REQ_GAUCHO_REQUIREMENTS',				'GAUCHO_IS_ON_PASTURE');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 					Name,					Value)
VALUES	('UNIT_IS_GAUCHO',					'UnitType',				'UNIT_LEU_GAUCHO'),
		('GAUCHO_IS_ON_FARM', 				'ImprovementType',		'IMPROVEMENT_FARM'),
		('GAUCHO_IS_ON_PASTURE',			'ImprovementType',		'IMPROVEMENT_PASTURE');


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------