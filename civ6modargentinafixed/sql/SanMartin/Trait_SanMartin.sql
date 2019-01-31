--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_LEU_SANMARTIN',	'TRAIT_LEADER_LEU_SANMARTIN');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('TRAIT_LEADER_LEU_SANMARTIN',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,										Description)
VALUES	('TRAIT_LEADER_LEU_SANMARTIN',	'LOC_TRAIT_LEADER_LEU_SANMARTIN_NAME',		'LOC_TRAIT_LEADER_LEU_SANMARTIN_DESCRIPTION');

-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_LEU_SANMARTIN',	'LEU_SANMARTIN_MOUNTED_MOUNTAINS'),
		('TRAIT_LEADER_LEU_SANMARTIN',	'LEU_SANMARTIN_MOUNTED_GENERALS_ATTACH'),
		('TRAIT_LEADER_LEU_SANMARTIN',	'LEU_SANMARTIN_MOUNTED_MUSICIANS_ATTACH');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,														RunOnce,	Permanent,		OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('LEU_SANMARTIN_MOUNTED_MOUNTAINS',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',								0,			1,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS'),
		('LEU_SANMARTIN_MOUNTED_GENERALS_ATTACH',		'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',							0,			1,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS'),
		('LEU_SANMARTIN_MOUNTED_GENERALS',				'MODIFIER_PLAYER_UNIT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL',			0,			0,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS'),
		('LEU_SANMARTIN_MOUNTED_MUSICIANS_ATTACH',		'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',							0,			1,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS'),
		('LEU_SANMARTIN_MOUNTED_MUSICIANS',				'MODIFIER_PLAYER_UNIT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL',			0,			0,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,						Value)
VALUES	('LEU_SANMARTIN_MOUNTED_MOUNTAINS',			'AbilityType',				'ABILITY_MOUNTAIN_MOVE_ALLOWED'),
		('LEU_SANMARTIN_MOUNTED_GENERALS_ATTACH',	'ModifierId',				'LEU_SANMARTIN_MOUNTED_GENERALS'),
		('LEU_SANMARTIN_MOUNTED_MUSICIANS_ATTACH',	'ModifierId',				'LEU_SANMARTIN_MOUNTED_MUSICIANS'),
		('LEU_SANMARTIN_MOUNTED_GENERALS',			'GreatPersonClassType',		'GREAT_PERSON_CLASS_GENERAL'),
		('LEU_SANMARTIN_MOUNTED_GENERALS',			'Amount',					10),
		('LEU_SANMARTIN_MOUNTED_MUSICIANS',			'GreatPersonClassType',		'GREAT_PERSON_CLASS_MUSICIAN'),
		('LEU_SANMARTIN_MOUNTED_MUSICIANS',			'Amount',					15);

	
