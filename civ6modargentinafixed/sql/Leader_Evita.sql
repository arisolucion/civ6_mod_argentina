--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				ForegroundImage,					PlayDawnOfManAudio,		BackgroundImage)
VALUES	('LEADER_LEU_EVITA',		'LEADER_LEU_EVITA_NEUTRAL.dds',		0,						'LEADER_LEU_EVITA_BACKGROUND.dds');	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 			(Type,						BackgroundImage)
-- VALUES	('LEADER_LEU_EVITA',		'FALLBACK_NEUTRAL_LEU_EVITA.dds');
--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,			PrimaryColor, 									SecondaryColor,								TextColor)
VALUES	('LEADER_LEU_EVITA',	'Unique',		'COLOR_PLAYER_LEUGI_LEU_EVITA_BACKGROUND',		'COLOR_PLAYER_LEUGI_LEU_EVITA_FOREGROUND', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 											Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_LEUGI_LEU_EVITA_BACKGROUND',		0.13,	0.6,	0.74,	1),
		('COLOR_PLAYER_LEUGI_LEU_EVITA_FOREGROUND',		1,		0.85,	0.3,	1);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_LEU_EVITA',	'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_LEU_EVITA',			'LOC_LEADER_LEU_EVITA_NAME',		'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_LEU_EVITA',	'LOC_PEDIA_LEADERS_PAGE_LEU_EVITA_QUOTE');	

-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
 		(LeaderType,			ReligionType)
VALUES	('LEADER_LEU_EVITA',	'RELIGION_CATHOLICISM');

--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,				CapitalName)
VALUES  ('LEADER_LEU_EVITA',	'CIVILIZATION_LEU_ARGENTINA',	'LOC_CITY_NAME_LEU_ARGENTINA_01');

--==========================================================================================================================
--==========================================================================================================================

--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,			X,		Y)
VALUES	('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_EVITA',		'GiantEarth',		160,	14),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_EVITA',		'GreatestEarthMap',	29,		9),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_EVITA',		'LargestEarth',		216,	22),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_EVITA',		'CordiformEarth',	19,		8);

INSERT OR REPLACE INTO StartPosition
		(Civilization,					MapName,			X,		Y)
VALUES	('CIVILIZATION_BUENOS_AIRES',	'GiantEarth',		162,	17),
		('CIVILIZATION_BUENOS_AIRES',	'GreatestEarthMap',	29,		13),
		('CIVILIZATION_BUENOS_AIRES',	'LargestEarth',		219,	24),
		('CIVILIZATION_BUENOS_AIRES',	'CordiformEarth',	20,		10);

--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 		default null,
	GovernmentType											text 	 			default null,
	LeaderTitle												text				default null,
	PolicyType  											text 		 		default null,
	UseFeminine												boolean				default 0,
	TitleIsFullName											boolean				default 0);	
	
INSERT INTO Leader_Titles
        (LeaderType,                 UseFeminine)
VALUES    ('LEADER_LEU_EVITA',            1);    
--==========================================================================================================================
--==========================================================================================================================