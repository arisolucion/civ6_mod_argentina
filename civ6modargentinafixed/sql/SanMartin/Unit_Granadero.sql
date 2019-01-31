--==========================================================================================================================
-- Units
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_LEADER_UNIT_LEU_GRANADERO',		'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,							Description)
VALUES	('TRAIT_LEADER_UNIT_LEU_GRANADERO',		'LOC_UNIT_LEU_GRANADERO_NAME',		'LOC_UNIT_LEU_GRANADERO_DESCRIPTION');

-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(TraitType,									LeaderType)
VALUES	('TRAIT_LEADER_UNIT_LEU_GRANADERO',			'LEADER_LEU_SANMARTIN');
-----------------------------------------------------------------------------------
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('UNIT_LEU_GRANADERO',			'KIND_UNIT');
-----------------------------------------------------------------------------------
-- Units
-----------------------------------------------------------------------------------
INSERT INTO Units
			(UnitType,					Name, 								Description, 							TraitType,									Combat, 	BaseMoves,	Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, PromotionClass,	Maintenance, MandatoryObsoleteTech, PrereqCivic,			RangedCombat,	Range)
SELECT 		'UNIT_LEU_GRANADERO',		'LOC_UNIT_LEU_GRANADERO_NAME',		'LOC_UNIT_LEU_GRANADERO_DESCRIPTION',	'TRAIT_LEADER_UNIT_LEU_GRANADERO',			Combat,		BaseMoves,	Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, PromotionClass,	Maintenance, MandatoryObsoleteTech, 'CIVIC_NATIONALISM',	55,				1
FROM Units WHERE UnitType = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_LEU_GRANADERO',			UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_LEU_GRANADERO',			AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES		('UNIT_LEU_GRANADERO',			'UNIT_CAVALRY');

-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,						Vocabulary)
VALUES		('CLASS_LEU_GRANADERO',		'ABILITY_CLASS');

-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,						Tag)
SELECT 		'UNIT_LEU_GRANADERO',		Tag
FROM TypeTags WHERE Type = 'UNIT_CAVALRY';

INSERT INTO TypeTags
			(Type,						Tag)
VALUES		('UNIT_LEU_GRANADERO',			'CLASS_LEU_GRANADERO'),
			('ABILITY_SAMURAI',		'CLASS_LEU_GRANADERO');

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------