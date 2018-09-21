UPDATE core_admin_user SET password = "PLAINTEXT:adminadmin", locale="en", password_max_valid_date="2019-01-01 00:00:00" WHERE id_user = 1;


-- override site properties
REPLACE INTO core_datastore VALUES ('portal.site.site_property.name', 'Homeless Shelters of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.author', 'City of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.locale.default', 'en');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.copyright', 'Copyright &copyright; City of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.description', '<description>');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.keywords', '<keywords>');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.email', 'lutece-dev@paris.fr');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.noreply_email', 'no-reply@paris.fr');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.home_url', 'jsp/site/Portal.jsp?page=shelters');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.back_images', '\'images/admin/skin/bg_images1.jpg\',  \'images/admin/skin/bg_images2.jpg\' , \'images/admin/skin/bg_images3.jpg\'');

-- override plugin status
REPLACE INTO core_datastore VALUES ('core.plugins.status.html.installed' ,'true' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.html.pool' ,'portal' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.shelters.installed' ,'true' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.shelters.pool' ,'portal' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.systeminfo.installed' ,'true' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.rest.installed' ,'true' );


 
INSERT INTO core_admin_workgroup
(workgroup_key, workgroup_description)
VALUES
("ProjectPLASE", "Project PLASE"),
("FellowshipOfLights", "Fellowship of Lights"),
("SalvationArmyBoothHouseShelter", "Salvation Army - Booth House Shelter"),
("PrisonersAidAssociationOfMaryland", "Prisoner's Aid Association of Maryland"),
("MannaHouse", "Manna House"),
("CodeBlueShelterBaltimore", "Code Blue Shelter Baltimore - Weinberg Housing and Resource Center"),
("OurDailyBread", "Our Daily Bread"),
("MySistersPlace", "My Sister's Place"),
("MarylandCenterforVeteransEducationandTraining", "Maryland Center for Veterans Education and Training"),
("WomenAffairsOfAlmumtahinahHomeInc", "Women Affairs of Almumtahinah Home Inc(AMH)"),
("MarianHouse", "Marian House"),
("BaltimoreRescueMission", "Baltimore Rescue Mission"),
("HelpingUpMission", "Helping Up Mission"),
("KarisHome", "Karis Home"),
("HelpingOtherPeopleThroughEmpowermentInc", "Helping Other People through Empowerment, Inc."),
("SarahsHopeMountStreet", "Sarah's Hope Mount Street"),
("MissionPossibleMinistriesShelterForMen", "Mission Possible Ministries Shelter For Men"),
("BeaGaddyFamilyCenterHomelessServices", "Bea Gaddy Family Center Homeless Services"),
("BeaGaddysFamilyCenterInc", "Bea Gaddy's Family Center, Inc."),
("BeansAndBreadOutreachCenter", "Beans and Bread Outreach Center"),
("BaltimoreOutreachServicesEmergencyShelter", "Baltimore Outreach Services Emergency Shelter"),
("PleasantHousingSupportiveHousing", "Pleasant Housing Supportive Housing"),
("SouthBaltimoreStation", "South Baltimore Station"),
("BonSecoursWomensResourcesAndDayShelter", "Bon Secours Women's Resources And Day Shelter"),
("AmericanRescueWorkers", "American Rescue Workers"),
("AgapeHouseHomelessServices", "Agape House Homeless Services"),
("MiCasaSuCasaSupportiveHousingProgram", "Mi Casa Su Casa Supportive Housing Program"),
("HouseofRuth", "House of Ruth"),
("HyacinthIndependentTransitionalLivingHomeInc", "Hyacinth Independent/Transitional Living Home, INC"),
("ProjectPLASEMainOffice", "Project PLASE Main Office"),
("BrendaHouseOfPromisingFutures", "Brenda House of Promising Futures"),
("HolBrockEstatesAssistedLiving", "HolBrock Estates Assisted Living"),
("MuslimatAlNisaa", "Muslimat Al Nisaa"),
("WestsideEmergencyMensShelter", "Westside Emergency Men's Shelter"),
("TurnaroundInc", "Turnaround, Inc."),
("FamilyCrisisCenter", "Family Crisis Center");

-- Creating all the users in charge of the shelters
INSERT INTO core_admin_user
(id_user, access_code, last_name, first_name, email, status, password, locale, level_user, reset_password, accessibility_mode, password_max_valid_date, account_max_valid_date, nb_alerts_sent, last_login, workgroup_key) 
VALUES
(5, "john1", "Doe", "John", "johndoe1@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(6, "john2", "Doe", "John", "johndoe2@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(7, "john3", "Doe", "John", "johndoe3@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(8, "john4", "Doe", "John", "johndoe4@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(9, "john5", "Doe", "John", "johndoe5@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(10, "john6", "Doe", "John", "johndoe6@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(11, "john7", "Doe", "John", "johndoe7@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(12, "john8", "Doe", "John", "johndoe8@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(13, "john9", "Doe", "John", "johndoe9@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(14, "john10", "Doe", "John", "johndoe10@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(15, "john11", "Doe", "John", "johndoe11@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(16, "john12", "Doe", "John", "johndoe12@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(17, "john13", "Doe", "John", "johndoe13@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(18, "john14", "Doe", "John", "johndoe14@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(19, "john15", "Doe", "John", "johndoe15@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(20, "john16", "Doe", "John", "johndoe16@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(21, "john17", "Doe", "John", "johndoe17@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(22, "john18", "Doe", "John", "johndoe18@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(23, "john19", "Doe", "John", "johndoe19@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(24, "john20", "Doe", "John", "johndoe20@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(25, "john21", "Doe", "John", "johndoe21@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(26, "john22", "Doe", "John", "johndoe22@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(27, "john23", "Doe", "John", "johndoe23@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(28, "john24", "Doe", "John", "johndoe24@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(29, "john25", "Doe", "John", "johndoe25@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(30, "john26", "Doe", "John", "johndoe26@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(31, "john27", "Doe", "John", "johndoe27@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(32, "john28", "Doe", "John", "johndoe28@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(33, "john29", "Doe", "John", "johndoe29@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(34, "john30", "Doe", "John", "johndoe30@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(35, "john31", "Doe", "John", "johndoe31@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(36, "john32", "Doe", "John", "johndoe32@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(37, "john33", "Doe", "John", "johndoe33@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(38, "john34", "Doe", "John", "johndoe34@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(39, "john35", "Doe", "John", "johndoe35@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all"),
(40, "john36", "Doe", "John", "johndoe36@johndoe.com", 0, "PLAINTEXT:johnjohn", "en", 1, 0, 0, "2019-01-01 00:00:00", "1568573366125", 0, "1980-01-01 00:00:00", "all");

-- assigning the newly created user to a new workgroup we just created
insert into core_admin_workgroup_user
(workgroup_key, id_user) 
VALUES
("ProjectPLASE", 5),
("FellowshipOfLights", 6),
("SalvationArmyBoothHouseShelter", 7),
("PrisonersAidAssociationOfMaryland", 8),
("MannaHouse", 9),
("CodeBlueShelterBaltimore", 10),
("OurDailyBread", 11),
("MySistersPlace", 12),
("MarylandCenterforVeteransEducationandTraining", 13),
("WomenAffairsOfAlmumtahinahHomeInc", 14),
("MarianHouse", 15),
("BaltimoreRescueMission", 16),
("HelpingUpMission", 17),
("KarisHome", 18),
("HelpingOtherPeopleThroughEmpowermentInc", 19),
("SarahsHopeMountStreet", 20),
("MissionPossibleMinistriesShelterForMen", 21),
("BeaGaddyFamilyCenterHomelessServices", 22),
("BeaGaddysFamilyCenterInc", 23),
("BeansAndBreadOutreachCenter", 24),
("BaltimoreOutreachServicesEmergencyShelter", 25),
("PleasantHousingSupportiveHousing", 26),
("SouthBaltimoreStation", 27),
("BonSecoursWomensResourcesAndDayShelter", 28),
("AmericanRescueWorkers", 29),
("AgapeHouseHomelessServices", 30),
("MiCasaSuCasaSupportiveHousingProgram", 31),
("HouseofRuth", 32),
("HyacinthIndependentTransitionalLivingHomeInc", 33),
("ProjectPLASEMainOffice", 34),
("BrendaHouseOfPromisingFutures", 35),
("HolBrockEstatesAssistedLiving", 36),
("MuslimatAlNisaa", 37),
("WestsideEmergencyMensShelter", 38),
("TurnaroundInc", 39),
("FamilyCrisisCenter", 40),

("ProjectPLASE", 1),
("FellowshipOfLights", 1),
("SalvationArmyBoothHouseShelter", 1),
("PrisonersAidAssociationOfMaryland", 1),
("MannaHouse", 1),
("CodeBlueShelterBaltimore", 1),
("OurDailyBread", 1),
("MySistersPlace", 1),
("MarylandCenterforVeteransEducationandTraining", 1),
("WomenAffairsOfAlmumtahinahHomeInc", 1),
("MarianHouse", 1),
("BaltimoreRescueMission", 1),
("HelpingUpMission", 1),
("KarisHome", 1),
("HelpingOtherPeopleThroughEmpowermentInc", 1),
("SarahsHopeMountStreet", 1),
("MissionPossibleMinistriesShelterForMen", 1),
("BeaGaddyFamilyCenterHomelessServices", 1),
("BeaGaddysFamilyCenterInc", 1),
("BeansAndBreadOutreachCenter", 1),
("BaltimoreOutreachServicesEmergencyShelter", 1),
("PleasantHousingSupportiveHousing", 1),
("SouthBaltimoreStation", 1),
("BonSecoursWomensResourcesAndDayShelter", 1),
("AmericanRescueWorkers", 1),
("AgapeHouseHomelessServices", 1),
("MiCasaSuCasaSupportiveHousingProgram", 1),
("HouseofRuth", 1),
("HyacinthIndependentTransitionalLivingHomeInc", 1),
("ProjectPLASEMainOffice", 1),
("BrendaHouseOfPromisingFutures", 1),
("HolBrockEstatesAssistedLiving", 1),
("MuslimatAlNisaa", 1),
("WestsideEmergencyMensShelter", 1),
("TurnaroundInc", 1),
("FamilyCrisisCenter", 1);

insert into core_user_right
(id_right, id_user)
VALUES 
("SHELTERS_BED_MANAGEMENT", 5),
("SHELTERS_BED_MANAGEMENT", 6),
("SHELTERS_BED_MANAGEMENT", 7),
("SHELTERS_BED_MANAGEMENT", 8),
("SHELTERS_BED_MANAGEMENT", 9),
("SHELTERS_BED_MANAGEMENT", 10),
("SHELTERS_BED_MANAGEMENT", 11),
("SHELTERS_BED_MANAGEMENT", 12),
("SHELTERS_BED_MANAGEMENT", 13),
("SHELTERS_BED_MANAGEMENT", 14),
("SHELTERS_BED_MANAGEMENT", 15),
("SHELTERS_BED_MANAGEMENT", 16),
("SHELTERS_BED_MANAGEMENT", 17),
("SHELTERS_BED_MANAGEMENT", 18),
("SHELTERS_BED_MANAGEMENT", 19),
("SHELTERS_BED_MANAGEMENT", 20),
("SHELTERS_BED_MANAGEMENT", 21),
("SHELTERS_BED_MANAGEMENT", 22),
("SHELTERS_BED_MANAGEMENT", 23),
("SHELTERS_BED_MANAGEMENT", 24),
("SHELTERS_BED_MANAGEMENT", 25),
("SHELTERS_BED_MANAGEMENT", 26),
("SHELTERS_BED_MANAGEMENT", 27),
("SHELTERS_BED_MANAGEMENT", 28),
("SHELTERS_BED_MANAGEMENT", 29),
("SHELTERS_BED_MANAGEMENT", 30),
("SHELTERS_BED_MANAGEMENT", 31),
("SHELTERS_BED_MANAGEMENT", 32),
("SHELTERS_BED_MANAGEMENT", 33),
("SHELTERS_BED_MANAGEMENT", 34),
("SHELTERS_BED_MANAGEMENT", 35),
("SHELTERS_BED_MANAGEMENT", 36),
("SHELTERS_BED_MANAGEMENT", 37),
("SHELTERS_BED_MANAGEMENT", 38),
("SHELTERS_BED_MANAGEMENT", 39),
("SHELTERS_BED_MANAGEMENT", 40);
