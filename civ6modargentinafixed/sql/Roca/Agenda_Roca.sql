--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- HistoricalAgendas
---------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,			AgendaType)
VALUES	('LEADER_LEU_ROCA',	'AGENDA_LEU_ROCA');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('TRAIT_AGENDA_LEU_ROCA',	'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,				Name,							Description)
VALUES	('AGENDA_LEU_ROCA',		'LOC_AGENDA_LEU_ROCA_NAME',	'LOC_AGENDA_LEU_ROCA_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,							Name,										Description)
VALUES	('TRAIT_AGENDA_LEU_ROCA',		'LOC_AGENDA_LEU_ROCA_NAME',	'LOC_AGENDA_LEU_ROCA_DESCRIPTION');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,			TraitType)
VALUES	('AGENDA_LEU_ROCA',	'TRAIT_AGENDA_LEU_ROCA');	
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Leu_Roca_Units'),
		('Leu_Roca_Improvements');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,												AgendaType,						System)
VALUES	('ExpansionistCitySettlement',							'TRAIT_AGENDA_LEU_ROCA',		'SettlementPreferences'),
		('ClearingBarbCampLoverClearingBarbCampPreference',		'TRAIT_AGENDA_LEU_ROCA',		'PseudoYields'),
		('Leu_Roca_Units',										'TRAIT_AGENDA_LEU_ROCA',		'Units'),
		('Leu_Roca_Improvements',								'TRAIT_AGENDA_LEU_ROCA',		'Improvements');

-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,					Item)
VALUES	('Leu_Roca_Units',			'UNIT_MILITARY_ENGINEER'),
		('Leu_Roca_Improvements',	'IMPROVEMENT_FORT');

-------------------------------------		
-- TraitModifiers
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,						ModifierId)
VALUES	('TRAIT_AGENDA_LEU_ROCA',		'LEU_ROCA_HATES_ADJACENT'),
		('TRAIT_AGENDA_LEU_ROCA',		'LEU_ROCA_HATES_UNADVANCED');

-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('LEU_ROCA_HATES_ADJACENT',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_NEAR_CULTURE_BORDER'),
		('LEU_ROCA_HATES_UNADVANCED',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_HAS_LOW_SCIENCE');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
-------------------------------------
-- RequirementSets
-------------------------------------
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value,												Extra,				Type)
VALUES	('LEU_ROCA_HATES_ADJACENT',						'InitialValue',					-9,													null,				'ARGTYPE_IDENTITY'),
		('LEU_ROCA_HATES_ADJACENT',						'StatementKey',					'LOC_DIPLO_WARNING_LEADER_LEU_ROCA_REASON_BORDERS',	null,				'ARGTYPE_IDENTITY'),
		('LEU_ROCA_HATES_ADJACENT',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_ROCA_BORDERS',				null,				'ARGTYPE_IDENTITY'),
		('LEU_ROCA_HATES_UNADVANCED',					'InitialValue',					-9,													null,				'ARGTYPE_IDENTITY'),
		('LEU_ROCA_HATES_UNADVANCED',					'StatementKey',					'LOC_DIPLO_WARNING_LEADER_LEU_ROCA_REASON_TECH',	null,				'ARGTYPE_IDENTITY'),
		('LEU_ROCA_HATES_UNADVANCED',					'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_ROCA_TECH',					null,				'ARGTYPE_IDENTITY');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_LEU_ROCA',		'AGENDA_CITY_STATE_ALLY'),
		('AGENDA_LEU_ROCA',		'AGENDA_CITY_STATE_PROTECTOR'),
		('AGENDA_LEU_ROCA',		'AGENDA_ENVIRONMENTALIST'),
		('AGENDA_LEU_ROCA',		'AGENDA_DEVOUT');
	
INSERT INTO AgendaPreferredLeaders
		(AgendaType,				LeaderType)
VALUES	('AGENDA_DARWINIST',		'LEADER_LEU_ROCA'),
		('AGENDA_CIVILIZED',		'LEADER_LEU_ROCA');

--==========================================================================================================================
--==========================================================================================================================

