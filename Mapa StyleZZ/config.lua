-- The Forgotten Server Config

	-- Account manager
	accountManager = "yes"
	namelockManager = "no"
	newPlayerChooseVoc = "yes"
	newPlayerSpawnPosX = 442
	newPlayerSpawnPosY = 548
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 1
	newPlayerLevel = 350
	newPlayerMagicLevel = 9
	generateAccountNumber = "no"

	-- Banishments
	notationsToBan = 5
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 7 * 24 * 60 * 60
	finalBanLength = 30 * 24 * 60 * 60
	ipBanishmentLength = 1 * 24 * 60 * 60
	broadcastBanishments = "yes"
	killsToBan = 180
	maxViolationCommentSize = 300

	-- Battle
	-- NOTE: loginProtectionPeriod is the famous Tibia anti-magebomb system.
	worldType = "pvp"
	hotkeyAimbotEnabled = "yes"
	protectionLevel = 100
	pvpTileIgnoreLevelAndVocationProtection = "yes"
	killsToRedSkull = 70
	pzLocked = 10000
	criticalHitChance = 25
	displayCriticalHitNotify = "no"
	removeWeaponAmmunition = "no"
	removeWeaponCharges = "yes"
	removeRuneCharges = "no"
	timeToDecreaseFrags = 90000
	whiteSkullTime = 100000
	noDamageToSameLookfeet = "no"
	experienceByKillingPlayers = "yes"
	showHealingDamage = "yes"
	fieldOwnershipDuration = 10 * 100
	stopAttackingAtExit = "no"
	oldConditionAccuracy = "no"
	loginProtectionPeriod = 10

	-- Connection config
	worldId = 0
	ip = "54.94.138.107"
	port = 7171
	loginTries = 10
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = "100"
	motd = "Bem Vindo!"
	displayOnOrOffAtCharlist = "no"
	onePlayerOnlinePerAccount = "yes"
	allowClones = 0
	serverName = "StyleZZ Server"
	loginMessage = "Bem Vindo!~"
	adminLogsEnabled = "no"
	statusTimeout = 5 * 60 * 1000
	replaceKickOnLogin = "yes"
	forceSlowConnectionsToDisconnect = "yes"
	loginOnlyWithLoginServer = "no"

	-- Database
	-- NOTE: sqlFile is used only by sqlite database, and sqlKeepAlive by mysql database.
	-- To disable sqlKeepAlive such as mysqlReadTimeout use 0 value.
	sqlType = "sqlite"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = "root"
	sqlPass = ""
	sqlDatabase = "FoxWorld OT Server"
	sqlFile = "forgottenserver.s3db"
	sqlKeepAlive = 0
	mysqlReadTimeout = 3
	optimizeDatabaseAtStartup = "yes"
	passwordType = "plain"

	-- Deathlist
	deathListEnabled = "yes"
	maxDeathRecords = 5

	-- Guilds
	ingameGuildManagement = "yes"
	levelToFormGuild = 100
	guildNameMinLength = 4
	guildNameMaxLength = 25

	-- Highscores
	highscoreDisplayPlayers = 100
	updateHighscoresAfterMinutes = 2

	-- Houses
	buyableAndSellableHouses = "yes"
	housesPerAccount = 3
	levelToBuyHouse = 200
	houseRentAsPrice = "no"
	housePriceAsRent = "no"
	housePriceEachSQM = 100000
	houseRentPeriod = "never"

	-- Item usage
	timeBetweenActions = 200
	timeBetweenExActions = 1000

	-- Map
	-- NOTE: storeTrash costs more memory, but will perform alot faster cleaning.
	-- useHouseDataStorage usage may be found at README.
	mapName = "Foxworld"
	mapAuthor = "L"
	randomizeTiles = "yes"
	useHouseDataStorage = "no"
	storeTrash = "yes"
	cleanProtectedZones = "yes"

	-- Miscellaneous
	-- NOTE: defaultPriority works only on Windows
	-- promptExceptionTracerErrorBox works only with precompiled support feature,
	-- called "exception tracer" (__EXCEPTION_TRACER__ flag).
	defaultPriority = "normal"
	maxMessageBuffer = 4
	kickIdlePlayerAfterMinutes = 9999
	allowChangeOutfit = "yes"
	allowChangeColors = "yes"
	disableOutfitsForPrivilegedPlayers = "no"
	displayGamemastersWithOnlineCommand = "no"
	bankSystem = "yes"
	saveGlobalStorage = "yes"
	displaySkillLevelOnAdvance = "no"
	spellNameInsteadOfWords = "no"
	emoteSpells = "no"
	expireReportsAfterReads = 1
	promptExceptionTracerErrorBox = "yes"

	-- Premium account
	freePremium = "yes"
	removePremiumOnInit = "yes"
	premiumForPromotion = "yes"
	blessingsOnlyPremium = "yes"
	houseNeedPremium = "yes"
	bedsRequirePremium = "yes"

	-- Rates
	-- NOTE: experienceStages configuration is located in data/XML/stages.xml.
	rateExperience = 25
	rateSkill = 300
	rateMagic = 100
	rateLoot = 5
	rateSpawn = 5
	experienceStages = "no"

	-- Party
	-- NOTE experienceShareLevelDifference is float number.
	-- 0.66666666666667 is highestLevel * 2 / 3
	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 0.66666666666667
	extraPartyExperienceLimit = 20
	extraPartyExperiencePercent = 5

	-- Global save
	-- NOTE: globalSaveHour means like 03:00, not that it will save every 3 hours,
	-- if you want such a system please check out data/globalevents/globalevents.xml.
	globalSaveEnabled = "no"
	globalSaveHour = 8
	shutdownAtGlobalSave = "no"
	cleanMapAtGlobalSave = "no"

	-- Spawns
	deSpawnRange = 2
	deSpawnRadius = 50

	-- Summons
	maxPlayerSummons = 2
	teleportAllSummons = "no"
	teleportPlayerSummons = "no"

	-- Status
	ownerName = "Jean Slayer"
	ownerEmail = "@otland.net"
	url = "http://otland.net/"
	location = "Brasil"

	-- Logs
	-- NOTE: This kind of logging does not work in GUI version.
	-- For such, please compile the software with __GUI_LOGS__ flag.
	outLogName = "server/out.log"
	errorLogName = "server/error.log"
	truncateLogsOnStartup = "yes"
