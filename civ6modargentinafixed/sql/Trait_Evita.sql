--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_LEU_EVITA',	'TRAIT_LEADER_LEU_EVITA');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('TRAIT_LEADER_LEU_EVITA',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,										Description)
VALUES	('TRAIT_LEADER_LEU_EVITA',	'LOC_TRAIT_LEADER_LEU_EVITA_NAME',		'LOC_TRAIT_LEADER_LEU_EVITA_DESCRIPTION');
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_LEU_EVITA',	'LEU_EVITA_CITIZEN_ON_THEATER'),
		('TRAIT_LEADER_LEU_EVITA',	'LEU_EVITA_CITIZEN_ON_INDUSTRIAL'),
		('TRAIT_LEADER_LEU_EVITA',	'LEU_EVITA_FOOD_DISTRICTS'),
		('TRAIT_LEADER_LEU_EVITA',	'LEU_EVITA_TOURISM_DISTRICTS');



-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,													RunOnce,	Permanent,		OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('LEU_EVITA_CITIZEN_ON_THEATER',	'MODIFIER_LEU_CITIZEN_ON_DISTRICT',								0,			0,				null,					'REQ_LEU_EVITA_HAS_THEATER'),
		('LEU_EVITA_CITIZEN_ON_INDUSTRIAL',	'MODIFIER_LEU_CITIZEN_ON_DISTRICT',								0,			0,				null,					'REQ_LEU_EVITA_HAS_INDUSTRIAL'),
		('LEU_EVITA_FOOD_DISTRICTS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',				0,			0,				null,					'REQ_LEU_EVITA_IS_THEATER_OR_INDUSTRIAL'),
		('LEU_EVITA_TOURISM_DISTRICTS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_TOURISM_CHANGE',				0,			0,				null,					'REQ_LEU_EVITA_IS_THEATER_OR_INDUSTRIAL');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value,					Extra,		Type)
VALUES	('LEU_EVITA_CITIZEN_ON_THEATER',		'Amount',			1,						null,		'ARQTYPE_IDENTITY'),
		('LEU_EVITA_CITIZEN_ON_INDUSTRIAL',		'Amount',			1,						null,		'ARQTYPE_IDENTITY'),
		('LEU_EVITA_TOURISM_DISTRICTS',			'Amount',			2,						null,		'ARQTYPE_IDENTITY'),
		('LEU_EVITA_FOOD_DISTRICTS',			'YieldType',		'YIELD_FOOD',			null,		'ARQTYPE_IDENTITY'),
		('LEU_EVITA_FOOD_DISTRICTS',			'Amount',			2,						null,		'ARQTYPE_IDENTITY');
		
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Types
		(Type,									Kind)	
VALUES	('MODIFIER_LEU_CITIZEN_ON_DISTRICT',	'KIND_MODIFIER');
-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,							CollectionType,					EffectType)	
VALUES	('MODIFIER_LEU_CITIZEN_ON_DISTRICT',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_POPULATION');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('REQ_LEU_EVITA_IS_THEATER_OR_INDUSTRIAL',		'LEU_EVITA_DISTRICT_IS_THEATER'),
		('REQ_LEU_EVITA_IS_THEATER_OR_INDUSTRIAL',		'LEU_EVITA_DISTRICT_IS_INDUSTRIAL'),
		('REQ_LEU_EVITA_HAS_INDUSTRIAL',				'LEU_EVITA_HAS_DISTRICT_INDUSTRIAL'),
		('REQ_LEU_EVITA_HAS_THEATER',					'LEU_EVITA_HAS_DISTRICT_THEATER');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('REQ_LEU_EVITA_IS_THEATER_OR_INDUSTRIAL',		'REQUIREMENTSET_TEST_ANY'),
		('REQ_LEU_EVITA_HAS_INDUSTRIAL',				'REQUIREMENTSET_TEST_ANY'),
		('REQ_LEU_EVITA_HAS_THEATER',					'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType,								Inverse)
VALUES	('LEU_EVITA_DISTRICT_IS_THEATER',		'REQUIREMENT_DISTRICT_TYPE_MATCHES',			0),
		('LEU_EVITA_DISTRICT_IS_INDUSTRIAL',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',			0),
		('LEU_EVITA_HAS_DISTRICT_INDUSTRIAL',	'REQUIREMENT_CITY_HAS_DISTRICT',				0),
		('LEU_EVITA_HAS_DISTRICT_THEATER',		'REQUIREMENT_CITY_HAS_DISTRICT',				0);
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value)
VALUES	('LEU_EVITA_DISTRICT_IS_THEATER',			'DistrictType',			'DISTRICT_THEATER'),
		('LEU_EVITA_DISTRICT_IS_INDUSTRIAL',		'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE'),
		('LEU_EVITA_HAS_DISTRICT_THEATER',			'DistrictType',			'DISTRICT_THEATER'),
		('LEU_EVITA_HAS_DISTRICT_INDUSTRIAL',		'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE');
--==========================================================================================================================
--==========================================================================================================================