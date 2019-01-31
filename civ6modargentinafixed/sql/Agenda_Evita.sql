--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- HistoricalAgendas
---------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,			AgendaType)
VALUES	('LEADER_LEU_EVITA',	'AGENDA_LEU_EVITA');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('TRAIT_AGENDA_LEU_EVITA',	'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,				Name,							Description)
VALUES	('AGENDA_LEU_EVITA',		'LOC_AGENDA_LEU_EVITA_NAME',	'LOC_AGENDA_LEU_EVITA_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,							Name,										Description)
VALUES	('TRAIT_AGENDA_LEU_EVITA',		'LOC_AGENDA_LEU_EVITA_NAME',	'LOC_AGENDA_LEU_EVITA_DESCRIPTION');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,			TraitType)
VALUES	('AGENDA_LEU_EVITA',	'TRAIT_AGENDA_LEU_EVITA');	
-------------------------------------		
-- TraitModifiers
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,						ModifierId)
VALUES	('TRAIT_AGENDA_LEU_EVITA',		'LEU_EVITA_LIKES_OTHERS_POPULISM'),
		('TRAIT_AGENDA_LEU_EVITA',		'LEU_EVITA_HATES_OTHERS_ANTIPOPULISM');

-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('LEU_EVITA_LIKES_OTHERS_POPULISM',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'REQ_LEU_EVITA_AGENDA_POPULIST'),
		('LEU_EVITA_HATES_OTHERS_ANTIPOPULISM',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'REQ_LEU_EVITA_AGENDA_NOT_POPULIST');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('REQ_LEU_EVITA_AGENDA_POPULIST',		'REQUIRES_HAS_HIGH_HAPPINESS'),
		('REQ_LEU_EVITA_AGENDA_POPULIST',		'REQUIRES_HAS_HIGH_INDUSTRY'),
		('REQ_LEU_EVITA_AGENDA_NOT_POPULIST',	'REQUIRES_HAS_DIFFERENT_GOVERNMENT'),
		('REQ_LEU_EVITA_AGENDA_NOT_POPULIST',	'REQUIRES_HAS_LOW_HAPPINESS'),
		('REQ_LEU_EVITA_AGENDA_NOT_POPULIST',	'REQUIRES_HAS_LOW_INDUSTRY');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('REQ_LEU_EVITA_AGENDA_POPULIST',		'REQUIREMENTSET_TEST_ANY'),
		('REQ_LEU_EVITA_AGENDA_NOT_POPULIST',	'REQUIREMENTSET_TEST_ANY');

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,							Value,													Extra,				Type)
VALUES	('LEU_EVITA_LIKES_OTHERS_POPULISM',					'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('LEU_EVITA_LIKES_OTHERS_POPULISM',					'StatementKey',					'LOC_DIPLO_KUDO_LEADER_LEU_EVITA_REASON_ANY',			null,				'ARGTYPE_IDENTITY'),
		('LEU_EVITA_LIKES_OTHERS_POPULISM',					'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_EVITA_FRIEND',		null,				'ARGTYPE_IDENTITY'),
		('LEU_EVITA_HATES_OTHERS_ANTIPOPULISM',				'InitialValue',					-9,														null,				'ARGTYPE_IDENTITY'),
		('LEU_EVITA_HATES_OTHERS_ANTIPOPULISM',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_LEU_EVITA_REASON_ANY',		null,				'ARGTYPE_IDENTITY'),
		('LEU_EVITA_HATES_OTHERS_ANTIPOPULISM',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_EVITA_FOE',		null,				'ARGTYPE_IDENTITY');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_LEU_EVITA',		'AGENDA_MONEY_GRUBBER'),
		('AGENDA_LEU_EVITA',		'AGENDA_NUKE_LOVER'),
		('AGENDA_LEU_EVITA',		'AGENDA_DEVOUT');
		
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Leu_Evita_Districts');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,								AgendaType,						System)
VALUES	('Leu_Evita_Districts',					'TRAIT_AGENDA_LEU_EVITA',		'Districts'),
		('IndustryLoverIndustryPreference',		'TRAIT_AGENDA_LEU_EVITA',		'Yields'),
		('CultureLoverCulturePreference',		'TRAIT_AGENDA_LEU_EVITA',		'Yields'),
		('GreatPersonObsessedGreatPeople',		'TRAIT_AGENDA_LEU_EVITA',		'PseudoYields'),
		('FavorCulturalVictory',				'TRAIT_AGENDA_LEU_EVITA',		'Strategies');

-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,					Item)
VALUES	('Leu_Evita_Districts',		'DISTRICT_THEATER'),
		('Leu_Evita_Districts',		'DISTRICT_INDUSTRIAL_ZONE');

--==========================================================================================================================
--==========================================================================================================================

