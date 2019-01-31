--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				ForegroundImage,					PlayDawnOfManAudio,		BackgroundImage)
VALUES	('LEADER_LEU_SANMARTIN',		'LEADER_LEU_SANMARTIN.dds',		0,						'LEADER_HOJO_BACKGROUND.dds');	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 			(Type,						BackgroundImage)
-- VALUES	('LEADER_LEU_SANMARTIN',		'FALLBACK_NEUTRAL_LEU_SANMARTIN.dds');
--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,			PrimaryColor, 									SecondaryColor,								TextColor)
VALUES	('LEADER_LEU_SANMARTIN',	'Unique',		'COLOR_PLAYER_LEUGI_LEU_SANMARTIN_BACKGROUND',		'COLOR_PLAYER_LEUGI_LEU_SANMARTIN_FOREGROUND', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 											Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_LEUGI_LEU_SANMARTIN_BACKGROUND',	0.19,	0.64,	0.73,	1),
		('COLOR_PLAYER_LEUGI_LEU_SANMARTIN_FOREGROUND',	1.00,	0.88,	0.88,	1);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_LEU_SANMARTIN',	'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_LEU_SANMARTIN',			'LOC_LEADER_LEU_SANMARTIN_NAME',		'LEADER_DEFAULT',	3);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_LEU_SANMARTIN',	'LOC_PEDIA_LEADERS_PAGE_LEU_SANMARTIN_QUOTE');	

-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
 		(LeaderType,				ReligionType)
VALUES	('LEADER_LEU_SANMARTIN',	'RELIGION_CATHOLICISM');

--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,				CapitalName)
VALUES  ('LEADER_LEU_SANMARTIN',	'CIVILIZATION_LEU_ARGENTINA',	'LOC_CITY_NAME_LEU_ARGENTINA_01');

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
VALUES	('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SANMARTIN',		'GiantEarth',		160,	14),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SANMARTIN',		'GreatestEarthMap',	29,		9),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SANMARTIN',		'LargestEarth',		216,	22),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SANMARTIN',		'CordiformEarth',	19,		8);

--==========================================================================================================================
--==========================================================================================================================