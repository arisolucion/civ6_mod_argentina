--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				ForegroundImage,					PlayDawnOfManAudio,		BackgroundImage)
VALUES	('LEADER_LEU_ROCA',		'LEADER_LEU_ROCA.dds',		0,						'LEADER_DEFAULT_BACKGROUND.dds');	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 			(Type,						BackgroundImage)
-- VALUES	('LEADER_LEU_ROCA',		'FALLBACK_NEUTRAL_LEU_ROCA.dds');
--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,			PrimaryColor, 									SecondaryColor,								TextColor)
VALUES	('LEADER_LEU_ROCA',	'Unique',		'COLOR_PLAYER_LEUGI_LEU_ROCA_BACKGROUND',		'COLOR_PLAYER_LEUGI_LEU_ROCA_FOREGROUND', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 											Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_LEUGI_LEU_ROCA_BACKGROUND',	0.48,	0.43,	0.7,	1),
		('COLOR_PLAYER_LEUGI_LEU_ROCA_FOREGROUND',	0.95,	0.78,	0.21,	1);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_LEU_ROCA',	'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_LEU_ROCA',			'LOC_LEADER_LEU_ROCA_NAME',		'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_LEU_ROCA',	'LOC_PEDIA_LEADERS_PAGE_LEU_ROCA_QUOTE');	

-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
 		(LeaderType,			ReligionType)
VALUES	('LEADER_LEU_ROCA',	'RELIGION_CATHOLICISM');

--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,				CapitalName)
VALUES  ('LEADER_LEU_ROCA',	'CIVILIZATION_LEU_ARGENTINA',	'LOC_CITY_NAME_LEU_ARGENTINA_01');

--==========================================================================================================================
--==========================================================================================================================

--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,				MapName,			X,		Y)
VALUES	('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_ROCA',		'GiantEarth',		160,	14),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_ROCA',		'GreatestEarthMap',	29,		9),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_ROCA',		'LargestEarth',		216,	22),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_ROCA',		'CordiformEarth',	19,		8);


--==========================================================================================================================
--==========================================================================================================================