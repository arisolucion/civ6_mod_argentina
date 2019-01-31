--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_LEU_ROCA',	'TRAIT_LEADER_LEU_ROCA');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('TRAIT_LEADER_LEU_ROCA',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			 
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,										Description)
VALUES	('TRAIT_LEADER_LEU_ROCA',	'LOC_TRAIT_LEADER_LEU_ROCA_NAME',		'LOC_TRAIT_LEADER_LEU_ROCA_DESCRIPTION');

-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_LEU_ROCA',	'LEU_ROCA_GRANT_UNIT_BORDER_BONUS');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType,								RunOnce,	Permanent,		OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('LEU_ROCA_GRANT_UNIT_BORDER_BONUS',		'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',	0,			0,				null,					null),
		('LEU_ROCA_UNIT_BORDER_BONUS',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		0,			0,				null,					'REQ_LEU_IS_ADJ_BORDER');


INSERT INTO ModifierStrings
		(ModifierId, Context, Text)
VALUES ('LEU_ROCA_UNIT_BORDER_BONUS',		'Preview',		'LOC_ABILITY_LEU_ROCA_DESCRIPTION');

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value,										Extra,		Type)
VALUES	('LEU_ROCA_GRANT_UNIT_BORDER_BONUS',		'ModifierId',		'LEU_ROCA_UNIT_BORDER_BONUS',				null,		'ARGTYPE_IDENTITY'),
		('LEU_ROCA_UNIT_BORDER_BONUS',				'Amount',			10,											null,		'ARGTYPE_IDENTITY');
	
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('REQ_LEU_IS_ADJ_BORDER',						'UNIT_ADJACENT_TO_OWNER_TERRITORY_REQUIREMENT');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('REQ_LEU_IS_ADJ_BORDER',					'REQUIREMENTSET_TEST_ANY');
--==========================================================================================================================
--==========================================================================================================================