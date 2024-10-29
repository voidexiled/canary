--[[
Reserved player action storage key ranges (const.h)
	It is possible to place the storage in a quest door, so the player who has that storage will go through the door

	Reserved player action storage key ranges (const.h at the source)
	[10000000 - 20000000]
	[1000 - 1500]
	[2001 - 2011]

	Others reserved player action/storages
	[100] = unmovable/untrade/unusable items
	[101] = use pick floor
	[102] = well down action
	[103-120] = others keys action
	[103] = key 0010
	[303] = key 0303
	[1000] = level door. Here 1 must be used followed by the level.
	Example: 1010 = level 10, 1100 = level 100

	[3001-3008] = key 3001/3008
	[3012] = key 3012
	[3033] = key 3033
	[3100] = key 3100
	[3142] = key 3142
	[3200] = key 3200
	[3301] = key 3301
	[3302] = key 3302
	[3303] = key 3303
	[3304] = key 3304
	[3350] = key 3350
	[3520] = key 3520
	[3600] = key 3600
	[3610] = key 3610
	[3620] = key 3620
	[3650] = key 3650
	[3666] = key 3666
	[3667] = key 3667
	[3700] = key 3700
	[3701/3703] = key 3701/3703
	[3800/3802] = key 3800/3802
	[3899] = key 3899
	[3900] = key 3900
	[3909/3917] = key 3909/3917
	[3923] = key 3923
	[3925] = key 3925
	[3930] = key 3930
	[3932] = key 3932
	[3934] = key 3934
	[3935] = key 3935
	[3936] = key 3936
	[3938] = key 3938
	[3940] = key 3940
	[3950] = key 3950
	[3960] = key 3960
	[3980] = key 3980
	[3988] = key 3988
	[4001] = key 4001
	[4009] = key 4009
	[4022] = key 4022
	[4023] = key 4023
	[4033] = key 4033
	[4037] = key 4037
	[4055] = key 4055
	[4210] = key 4210
	[4501] = key 4501
	[4502] = key 4502
	[4503] = key 4503
	[4600] = key 4600
	[5000] = key 5000
	[5002] = key 5002
	[5010] = key 5010
	[5050] = key 5050
	[6010] = key 6010

	Questline = Storage through the Quest
]]
Storage = {
    -- General storages

    Dragonfetish = 30003,
    EdronRopeQuest = 30004,
    OrcKingGreeting = 30006,
    MarkwinGreeting = 30007,
    -- EmoteSpells Storage cannot be changed, it is set in source code
    EmoteSpells = 30008,
    WagonTicket = 30009,
    FirstMageWeapon = 30011,
    KawillBlessing = 30014,
    FountainOfLife = 30016,
    -- Promotion Storage cannot be changed, it is set in source code
    Promotion = 30018,
    RookgaardHints = 30019,
    RookgaardDestiny = 30020,
    EruaranGreeting = 30021,
    MaryzaCookbook = 30022,
    -- unused TrainerRoom = 30027,
    -- unused NpcSpawn = 30028,
    -- unused ExerciseDummyExhaust = 30029,
    ChayenneReward = 30033,
    SwampDiggingTimeout = 30034,
    Atrad = 30036,
    WayfarerOutfit = 30041,
    DreamOutfit = 30042,
    Percht1 = 30043,
    Percht2 = 30044,
    Percht3 = 30045,
    Irmana1 = 30046,
    Irmana2 = 30047,
    Navigator = 30048,
    DwarvenLegs = 30049,
    PrinceDrazzakTime = 30050,
    -- Reserved in Global.Storage.FamiliarSummonEvent10 = 30054
    -- Reserved in Global.Storage.FamiliarSummonEvent60 = 30055
    ChayenneKeyTime = 30056,
    FreeQuests = 30057,
    ShrineEntrance = 30060,
    PlayerWeaponReward = 30061,
    --[[
	Old storages
	Over time, this will be dropped and replaced by the table above
	]]
    DeeplingsWorldChange = {
        -- Reserved storage from 50000 - 50009
        Questline = 50000,
        FirstStage = 50001,
        SecondStage = 50002,
        ThirdStage = 50003,
        Crystal = 50004
    },
    Kilmaresh = {
        -- Reserved storage from 50015 - 50049
        Questline = 50015,
        First = {
            Title = 50016
        },
        Second = {
            Investigating = 50017
        },
        Third = {
            Recovering = 50018
        },
        Fourth = {
            Moe = 50019,
            MoeTimer = 50020
        },
        Fifth = {
            Memories = 50021,
            MemoriesShards = 50022
        },
        Sixth = {
            Favor = 50023,
            FourMasks = 50024,
            BlessedStatues = 50025
        },
        Set = {
            Ritual = 50026
        },
        Eighth = {
            Yonan = 50027,
            Narsai = 50028,
            Shimun = 50029,
            Tefrit = 50030
        },
        Nine = {
            Owl = 50031
        },
        Tem = {
            Bleeds = 50032
        },
        Eleven = {
            Basin = 50033
        },
        Twelve = {
            Boss = 50034,
            Bragrumol = 50035,
            Mozradek = 50036,
            Xogixath = 50037
        },
        Thirteen = {
            Fafnar = 50038,
            Lyre = 50039,
            Presente = 50040
        },
        Fourteen = {
            Remains = 50041
        },
        AccessDoor = 50043,
        CatacombDoors = 55047
    },
    TheSecretLibrary = {
        -- Reserved storage from 50050 - 50074
        TheOrderOfTheFalcon = {
            OberonTimer = 50050
        },
        LiquidDeath = 50051,
        Mota = 50052,
        MotaDoor = 50053,
        BasinDoor = 50054,
        SkullDoor = 50055,
        TheLament = 50056,
        GreenTel = 50057,
        BlueTel = 50058,
        BlackTel = 50059,
        PinkTel = 50060,
        Peacock = 50061,
        HighDry = 50062,
        FalconBastionAccess = 50063,
        FalconBastionChestsTimer = {
            Key0909 = 50064
        },
        MiniBosses = {
            GrandCommanderSoeren = 50065,
            PreceptorLazare = 50066,
            GrandChaplainGaunder = 50067,
            GrandCanonDominus = 50068,
            DazedLeafGolem = 50069
        },
        LowerBastionAccess = 50070,
        UndergroundBastionAccess = 50071,
        OberonAccess = 50072,
        ShortcutToBastion = 50073
    },
    DeeplingBosses = {
        -- Reserved storage from 50075 - 50079
        Jaul = 50075,
        Tanjis = 50076,
        Obujos = 50077,
        DeeplingStatus = 50078
    },
    DangerousDepths = {
        -- Reserved storage from 50080 - 50199
        Questline = 50080,
        Dwarves = {
            Status = 50081,
            Home = 50082, -- Mission
            Subterranean = 50083, -- Mission
            LostExiles = 50084,
            Prisoners = 50085,
            Organisms = 50086,
            TimeTaskHome = 50087,
            TimeTaskSubterranean = 50088
        },
        Scouts = {
            Status = 50090,
            Diremaw = 50091, -- Mission
            Growth = 50092, -- Mission
            DiremawsCount = 50093,
            GnomishChest = 50094,
            BarrelCount = 50095,
            FirstBarrel = 50096,
            SecondBarrel = 50097,
            ThirdBarrel = 50098,
            FourthBarrel = 50099,
            FifthBarrel = 50100,
            TimeTaskDiremaws = 50101,
            TimeTaskGrowth = 50102,
            Barrel = 50103,
            BarrelTimer = 50104
        },
        Gnomes = {
            Status = 50115,
            Ordnance = 50116, -- Mission
            Measurements = 50117, -- Mission
            Charting = 50118, -- Mission
            GnomeChartChest = 50119, -- Measurements
            GnomeChartPaper = 50120, -- Charting
            GnomesCount = 50121, -- Ordnance
            CrawlersCount = 50122, -- Ordnance
            LocationA = 50123, -- Measurements
            LocationB = 50124, -- Measurements
            LocationC = 50125, -- Measurements
            LocationD = 50126, -- Measurements
            LocationE = 50127, -- Measurements
            LocationCount = 50128, -- Measurements
            OldGate = 50129, -- Charting
            TheGaze = 50130, -- Charting
            LostRuin = 50131, -- Charting
            Outpost = 50132, -- Charting
            Bastion = 50133,
            -- Charting
            BrokenTower = 50134, -- Charting
            ChartingCount = 50135, -- Contador
            TimeTaskOrdnance = 50136,
            TimeTaskMeasurements = 50137,
            TimeTaskCharting = 50138
        },
        Access = {
            LavaPumpWarzoneVI = 50139,
            TimerWarzoneVI = 50140,
            LavaPumpWarzoneV = 50141,
            TimerWarzoneV = 50142,
            LavaPumpWarzoneIV = 50143,
            TimerWarzoneIV = 50144
        },
        Crystals = {
            WarzoneVI = {
                BigCrystal1 = 50155,
                BigCrystal2 = 50156,
                MediumCrystal1 = 50157,
                MediumCrystal2 = 50158,
                SmallCrystal1 = 50159,
                SmallCrystal2 = 50160
            },
            WarzoneV = {
                BigCrystal1 = 50165,
                BigCrystal2 = 50166,
                MediumCrystal1 = 50167,
                MediumCrystal2 = 50168,
                SmallCrystal1 = 50169,
                SmallCrystal2 = 50170
            },
            WarzoneIV = {
                BigCrystal1 = 50175,
                BigCrystal2 = 50176,
                MediumCrystal1 = 50177,
                MediumCrystal2 = 50178,
                SmallCrystal1 = 50179,
                SmallCrystal2 = 50180
            }
        },
        Bosses = {
            TheCountOfTheCore = 50185,
            TheDukeOfTheDepths = 50186,
            TheBaronFromBelow = 50187,
            TheCountOfTheCoreAchiev = 50188,
            TheDukeOfTheDepthsAchiev = 50189,
            TheBaronFromBelowAchiev = 50190,
            LastAchievement = 50191
        }
    },
    CultsOfTibia = {
        -- Reserved storage from 50200 - 50269
        Questline = 50200,
        Minotaurs = {
            EntranceAccessDoor = 50201,
            JamesfrancisTask = 50202,
            Mission = 50203,
            BossTimer = 50204,
            AccessDoor = 50205
        },
        MotA = {
            Mission = 50210,
            Stone1 = 50211,
            Stone2 = 50212,
            Stone3 = 50213,
            Answer = 50214,
            QuestionId = 50215,
            AccessDoorInvestigation = 50216,
            AccessDoorGareth = 50217,
            AccessDoorDenominator = 50218
        },
        Barkless = {
            Mission = 50225,
            sulphur = 50226,
            Tar = 50227,
            Ice = 50228,
            Death = 50229,
            Objects = 50230,
            Temp = 50231,
            BossTimer = 50232,
            TrialAccessDoor = 50243, -- 50233 is used by an ore wagon
            TarAccessDoor = 50234,
            AccessDoor = 50235,
            BossAccessDoor = 50236
        },
        Orcs = {
            Mission = 50240,
            LookType = 50241,
            BossTimer = 50242
        },
        Life = {
            Mission = 50245,
            BossTimer = 50246,
            AccessDoor = 50264
        },
        Humans = {
            Mission = 50250,
            Vaporized = 50251,
            Decaying = 50252,
            BossTimer = 50253
        },
        Misguided = {
            Mission = 50255,
            Monsters = 50256,
            Exorcisms = 50257,
            Time = 50258,
            BossTimer = 50259,
            AccessDoor = 50260
        },
        FinalBoss = {
            Mission = 50261,
            BossTimer = 50262,
            AccessDoor = 50263
        }
    },
    FirstDragon = {
        -- Reserved storage from 50350 - 50379
        Questline = 50350,
        DragonCounter = 50351,
        ChestCounter = 50352,
        SecretsCounter = 50355,
        GelidrazahAccess = 50356,
        DesertTile = 50358,
        StoneSculptureTile = 50359,
        SuntowerTile = 50360,
        Horn = 50362,
        Scale = 50363,
        Bones = 50364,
        Tooth = 50365,
        AccessCave = 50366,
        SomewhatBeatable = 50367,
        FirstDragonTimer = 50368,
        RewardFeather = 50369,
        RewardMask = 50370,
        RewardBackpack = 50371
    },
    HeroRathleton = {
        -- Reserved storage from 50400 - 50419
        QuestLine = 50400,
        VotesCasted = 50401,
        Rank = 50402,
        AccessDoor = 50403,
        AccessTeleport1 = 50404,
        AccessTeleport2 = 50405,
        AccessTeleport3 = 50406
    },
    ForgottenKnowledge = {
        -- Reserved storage from 50470 - 50519
        AccessDeath = 50470,
        AccessViolet = 50471,
        AccessEarth = 50472,
        AccessFire = 50473,
        AccessIce = 50474,
        AccessGolden = 50475,
        AccessLast = 50476,
        OldDesk = 50477,
        GirlPicture = 50478,
        SilverKey = 50479,
        Phial = 50480,
        BirdCounter = 50481,
        PlantCounter = 50482,
        GoldenServantCounter = 50483,
        DiamondServantCounter = 50484,
        AccessPortals = 50485,
        AccessMachine = 50486,
        LadyTenebrisKilled = 50488,
        LloydKilled = 50490,
        ThornKnightKilled = 50492,
        DragonkingKilled = 50494,
        HorrorKilled = 50496,
        TimeGuardianKilled = 50498,
        LastLoreKilled = 50501,
        BirdCage = 50502,
        AccessLavaTeleport = 50503,
        Ivalisse = 50504,
        Chalice = 50505,
        Tomes = 50506,
        BabyDragon = 50507,
        SpiderWeb = 50508,
        LloydEvent = 50509
    },
    SweetyCyclops = {
        -- Reserved storage from 50520 - 50529
        AmuletTimer = 50520,
        AmuletStatus = 50521
    },
    OutfitQuest = {
        -- Reserved storage from 50960 - 51039
        -- Until all outfit quests are completed
        DefaultStart = 50960,
        Ref = 50961,
        -- Golden Outfit
        GoldenOutfit = 51015,
        RoyalCostumeOutfit = 51026
    },
    TheHuntForTheSeaSerpent = {
        -- Reserved storage from 51410 - 51419
    },
    BanutaSecretTunnel = {
        -- Reserved storage from 51680 - 51689
        DeeperBanutaShortcut = 51680
    },
    HorestisTomb = {
        -- Reserved storage from 52020 - 52029
        JarFloor1 = 52020,
        JarFloor2 = 52021,
        JarFloor3 = 52022,
        JarFloor4 = 52023,
        JarFloor5 = 52024
    },
    Diapason = {
        -- Reserved storage from 52120 - 52129
        Lyre = 52120,
        LyreTimer = 52121,
        Edala = 52122,
        EdalaTimer = 52123
    },
    HallsOfHope = {
        -- Reserved storage from 52200 - 52219
        Questline = 52200,
        Reward1 = 52201,
        Reward2 = 52202,
        Reward3 = 52203,
        Reward4 = 52204,
        Reward5 = 52205
    },
    InsectoidCell = {
        -- Reserved storage from 52220 - 52249
        Questline = 52220,
        Reward1 = 52221,
        Reward2 = 52222,
        Reward3 = 52223,
        Reward4 = 52224,
        Reward5 = 52225,
        Reward6 = 52226,
        Reward7 = 52227,
        Reward8 = 52228,
        Reward9 = 52229,
        Reward10 = 52230,
        Reward11 = 52231,
        Reward12 = 52232,
        Reward13 = 52233,
        Reward14 = 52234,
        Reward15 = 52235,
        Reward16 = 52236
    },
    Dawnport = {
        -- Reserved storage from 52250 - 52289
        -- Reward items storages
        SorcererHealthPotion = 52251,
        SorcererManaPotion = 52252,
        SorcererLightestMissile = 52253,
        SorcererLightStoneShower = 52254,
        SorcererMeat = 52255,
        DruidHealthPotion = 52256,
        DruidManaPotion = 52257,
        DruidLightestMissile = 52258,
        DruidLightStoneShower = 52259,
        DruidMeat = 52260,
        PaladinHealthPotion = 52261,
        PaladinManaPotion = 52262,
        PaladinLightestMissile = 52263,
        PaladinLightStoneShower = 52264,
        PaladinMeat = 52265,
        KnightHealthPotion = 52266,
        KnightManaPotion = 52267,
        KnightMeat = 52268,
        Sorcerer = 52269,
        Druid = 52270,
        Paladin = 52271,
        Knight = 52272,
        DoorVocation = 52273,
        DoorVocationFinish = 52274,
        ChestRoomFinish = 52275,
        Tutorial = 52276,
        MessageStair = 52277,
        Lever = 52278,
        Mainland = 52279
    },
    GraveDanger = {
        -- Reserved storage from 52310 - 52339
        Questline = 52310,
        CobraBastion = {
            Questline = 52311
        }
    },
    TheMummysCurse = {
        -- Reserved storage from 52350 - 52359
        Time1 = 52351,
        Time2 = 52352,
        Time3 = 52353,
        Time4 = 52354
    },
    TheOrderOfTheLion = {
        -- Reserved storage 52360-52395 (TheRookieGuard)
        -- Reserved storage 52396-52410 (TheOrderOfTheLion)
        Drume = {
            Commander = 52396 -- Global
        }
    },
    -- News quest development
    -- These new structure will reserve ranges for each version. Please use accordingly.
    -- New storages
    Quest = {
        Key = {
            ID0010 = 103,
            ID0808 = 808,
            ID0909 = 909,
            ID3001 = 3001,
            ID3002 = 3002,
            ID3003 = 3003,
            ID3004 = 3004,
            ID3005 = 3005,
            ID3006 = 3006,
            ID3007 = 3007,
            ID3008 = 3008,
            ID3012 = 3012,
            ID3142 = 3142,
            ID3301 = 3301,
            ID3302 = 3302,
            ID3303 = 3303,
            ID3304 = 3304,
            ID3520 = 3520,
            ID3600 = 3600,
            ID3610 = 3610,
            ID3620 = 3620,
            ID3666 = 3666,
            ID3667 = 3667,
            ID3700 = 3700,
            ID3702 = 3702,
            ID3800 = 3800,
            ID3801 = 3801,
            ID3802 = 3802,
            ID3899 = 3899,
            ID3940 = 3940,
            ID3980 = 3980,
            ID4055 = 4055,
            ID4502 = 4502,
            ID4601 = 4601,
            ID4603 = 4603,
            ID5010 = 5010,
            ID6010 = 6010
        },
        -- Start of quests per version
        -- Use the reserved storage keys accordingly
        KeysUpdate = 39999,
        U5_0 = { -- update 5.0 - Reserved Storages 40000
            DeeperFibulaKey = 40000
        },
        PreU6_0 = { -- update pre-6.0 - Reserved Storages 40001 - 40020
            OrnamentedShield = {
                Rewards = {
                    OrnamentedShield = 40006
                }
            }
        },
        U6_1 = { -- update 6.1 - Reserved Storages 40031 - 40050
            EmperorsCookies = {
                Rewards = {
                    Cookies = 40031
                }
            },
            OrcFortress = {
                Rewards = {
                    KnightAxe = 40033,
                    KnightArmor = 40034,
                    FireSword = 40035
                }
            },
            Panpipe = {
                Rewards = {
                    Panpipe = 40036
                }
            }
        },
        U6_2 = { -- update 6.2 - Reserved Storages 40051 - 40070
            Draconia = {
                Rewards = {
                    BagWithWeapons = 40051,
                    BagWithAmulets = 40052
                }
            }
        },
        U6_4 = { -- update 6.4 - Reserved Storages 40071 - 40110
            BerserkerTreasure = {
                Rewards = {
                    WhitePearls = 40074
                }
            },
            DemonHelmet = {
                Rewards = {
                    SteelBoots = 40076,
                    DemonHelmet = 40077,
                    DemonShield = 40078
                }
            },
            OutlawCampQuest = 40079
        },
        U7_1 = { -- update 7.1 - Reserved Storages 40121 - 40140
            DragonTower = {
                Rewards = {
                    Backpack1 = 40123,
                    Backpack2 = 40124
                }
            }
        },
        U7_2 = { -- update 7.2 - Reserved Storages 40141 - 40200
            Behemoth = {
                Bag = 10061,
                GuardianHalberd = 10062,
                DemonShield = 10063,
                GoldenArmor = 10064
            },
            ParchmentRoom = {
                Bag = 10065
            },
            TheQueenOfTheBanshees = {
                Reward = {
                    StoneSkinAmulet = 10066,
                    StealthRing = 10067,
                    TowerShield = 10068,
                    GiantSword = 10069,
                    BootsOfHaste = 10070,
                    PlatinumCoin = 10071
                },
                QuestLine = 10072,
                FirstSeal = 10073,
                FirstSealDoor = 10074,
                SecondSeal = 10075,
                SecondSealDoor = 10076,
                ThirdSeal = 10077,
                ThirdSealDoor = 10078,
                ThirdSealWarlocks = 10079,
                FourthSeal = 10080,
                FourthSealDoor = 10081,
                FifthSeal = 10082,
                FifthSealDoor = 10083,
                FifthSealTile = 10084,
                SixthSeal = 10085,
                SixthSealDoor = 10086,
                LastSeal = 10087,
                LastSealDoor = 10088,
                BansheeDoor = 10089,
                FinalBattle = 10090
            }
        },
        U7_24 = { -- update 7.24 - Reserved Storages 40201 - 40350
            FamilyBrooch = {
                Brooch = 9000
            },
            MadMageRoom = {
                QuestLine = 10095,
                APrisoner = 10096
            },
            TheAnnihilator = {
                Reward = 10102
            },
            TheParadoxTower = {
                QuestLine = 10103,
                TheFearedHugo = 10104,
                FirstParadoxAcess = 10105,
                FavoriteColour = 10106,
                Mathemagics = 10107,
                Reward = {
                    Egg = 10108,
                    Gold = 10109,
                    Talon = 10110,
                    Wand = 10111
                }
            },
            ThePostmanMissions = {
                Mission01 = 10112,
                Mission02 = 10113,
                Mission03 = 10114,
                Mission04 = 10115,
                Mission05 = 10116,
                Mission06 = 10117,
                Mission07 = 10118,
                Mission08 = 10119,
                Mission09 = 10120,
                Mission10 = 10121,
                Rank = 10122,
                Door = 10123,
                TravelCarlin = 10124,
                TravelEdron = 10125,
                TravelVenore = 10126,
                TravelCormaya = 10127,
                MeasurementsBenjamin = 10128,
                MeasurementsKroox = 10129,
                MeasurementsDove = 10130,
                MeasurementsLiane = 10131,
                MeasurementsChrystal = 10132,
                MeasurementsOlrik = 10133
            },
            TheWhiteRavenMonastery = {
                QuestLog = 10134,
                Passage = 10135,
                Diary = 10136,
                Door = 10137
            },
            VoodooDoll = {}
        },
        U7_3 = { -- update 7.3 - Reserved Storages 40351 - 40400
            TheMedusaQuest = 40351,
            SerpentineTower = {
                WhitePearl = 40352
            }
        },
        U7_4 = { -- update 7.4 - Reserved Storages 40401 - 40600
            TheAncientTombs = {
                DefaultStart = 40401,
                VashresamunInstruments = 40402,
                VashresamunsDoor = 40403,
                MorguthisBlueFlameStorage1 = 40404,
                MorguthisBlueFlameStorage2 = 40405,
                MorguthisBlueFlameStorage3 = 40406,
                MorguthisBlueFlameStorage4 = 40407,
                MorguthisBlueFlameStorage5 = 40408,
                MorguthisBlueFlameStorage6 = 40409,
                MorguthisBlueFlameStorage7 = 40410,
                OmrucsTreasure = 40411,
                ThalasTreasure = 40412,
                DiphtrahsTreasure = 40413,
                MahrdisTreasure = 40414,
                VashresamunsTreasure = 40415,
                MorguthisTreasure = 40416,
                RahemosTreasure = 40417,
                ThalasSwitchesGlobalStorage = 40418,
                DiprathSwitchesGlobalStorage = 40419,
                AshmunrahSwitchesGlobalStorage = 40420,
                Diprath_sign1 = 40421,
                Diprath_sign2 = 40422,
                Diprath_sign3 = 40423,
                Diprath_sign4 = 40424,
                Diprath_sign5 = 40425,
                Diprath_sign6 = 40426,
                Diprath_sign7 = 40427,
                Diprath_sign8 = 40428
            },
            DjinnWar = {
                Factions = 40429,
                -- Reserved storage from 50620 - 50649
                Faction = {
                    Greeting = 40430,
                    MaridDoor = 40431,
                    EfreetDoor = 40432
                },
                RecievedLamp = 40433,
                -- Blue djinn
                MaridFaction = {
                    Start = 40434,
                    Mission01 = 40435,
                    Mission02 = 40436,
                    RataMari = 40437,
                    Mission03 = 40438,
                    DoorToLamp = 40439,
                    DoorToEfreetTerritory = 40440
                },
                -- Green djinn
                EfreetFaction = {
                    Start = 40441,
                    Mission01 = 40442,
                    Mission02 = 40443,
                    Mission03 = 40444,
                    DoorToLamp = 40445,
                    DoorToMaridTerritory = 40446
                }
            }
        },
        U7_5 = { -- update 7.5 - Reserved Storages 40601 - 40610
            ElephantTusk = 40601,
            SamsOldBackpack = {
                SamsOldBackpackNpc = 40602,
                SamsOldBackpackDoor = 40603
            }
        },
        U7_6 = { -- update 7.6 - Reserved Storages 40611 - 40760
            HydraEggQuest = 40611,
            TheApeCity = {
                Started = 40612,
                Questline = 40613,
                DworcDoor = 40614,
                ChorDoor = 40615,
                ParchmentDecyphering = 40616,
                FibulaDoor = 40617,
                WitchesCapSpot = 40618,
                CasksDoor = 40619,
                Casks = 40620,
                HolyApeHair = 40621,
                SnakeDestroyer = 40622,
                ShamanOufit = 40623,
                TheLargeAmphoras1 = 40624,
                TheLargeAmphoras2 = 40625,
                TheLargeAmphoras3 = 40626,
                TheLargeAmphoras4 = 40627,
                TheLargeAmphorasCooldown = 40628
            },
            ExplorerSociety = {
                QuestLine = 40629,
                SpectralStone = 40630,
                JoiningTheExplorers = 40631,
                TheIceDelivery = 40632,
                TheButterflyHunt = 40633,
                ThePlantCollection = 40634,
                TheLizardUrn = 40635,
                TheBonelordSecret = 40636,
                TheOrcPowder = 40637,
                CalassaQuest = 40638,
                TheMemoryStone = 40639,
                TheRuneWritings = 40640,
                TheEctoplasm = 40641,
                TheSpectralDress = 40642,
                TheSpectralStone = 40643,
                TheAstralPortals = 40644,
                TheIslandofDragons = 40645,
                TheIceMusic = 40646,
                BansheeDoor = 40647,
                BonelordsDoor = 40648,
                CalassaDoor = 40649,
                MemoryStoneDoor = 40650,
                ElvenDoor = 40651,
                OrcDoor = 40652,
                ChorurnDoor = 40653,
                DwacatraDoor = 40654,
                FamilyBroochDoor = 40655,
                TheElvenPoetry = 40656,
                SpectralStoneDoor = 40657,
                IceMusicDoor = 40658,
                ExplorerBrooch = 40659,
                SkullOfRatha = {
                    Bag1 = 40660,
                    Bag2 = 40661
                },
                GiantSmithHammer = {
                    Talon = 40662,
                    Hammer = 40663,
                    GoldCoin = 40664
                },
                Books = {
                    Cyclops = 40665,
                    Hengis = 40666
                }
            },
            OldParchment = 40667,
            WhisperMoss = 40668
        },
        U7_8 = { -- update 7.8 - Reserved Storages 40761 - 41000
            AssassinOutfits = {
                AssassinBaseOutfit = 40761,
                AssassinFirstAddon = 40762,
                AssassinSecondAddon = 40763
            },
            BarbarianOutfits = {
                BarbarianAddon = 40764,
                BarbarianAddonWaitTimer = 40765
            },
            BeggarOutfits = {
                BeggarOutfit = 40766,
                BeggarOutfitTimer = 40767,
                BeggarFirstAddonDoor = 40768,
                BeggarSecondAddon = 40769,
                BeggarOutfitTimerAddon = 40770
            },
            CitizenOutfitsRook = {
                MissionHatRook = 40771,
                AddonHatRook = 40772,
                MissionBackpackRook = 40773,
                AddonBackpackRook = 40774,
                AddonBackpackRookTimer = 40775
            },
            CitizenOutfits = {
                MissionHat = 40776,
                AddonHat = 40777,
                MissionBackpack = 40778,
                AddonBackpack = 40779,
                AddonBackpackTimer = 40780
            },
            DruidOutfitsRook = {
                DruidBodyAddonRook = 40781
            },
            DruidOutfits = {
                DruidHatAddon = 40782,
                DruidBodyAddon = 40783,
                DruidAmuletDoor = 40784,
                GriffinclawFlower = 40785,
                CeironsWaterskin = 40786,
                WolfToothChain = 40787
            },
            HunterOutfits = {
                HunterMusicSheet01 = 40788,
                HunterMusicSheet02 = 40789,
                HunterMusicSheet03 = 40790,
                HunterMusicSheet04 = 40791,
                HunterBodyAddon = 40792,
                HunterHatAddon = 40793,
                Hunter = {
                    AddonGlove = 40794,
                    AddonHat = 40795
                },
                ElaneCrossbow = 40796
            },
            KnightOutfits = {
                AddonSword = 40797,
                MissionHelmet = 40798,
                AddonHelmet = 40799,
                AddonHelmetTimer = 40800,
                RamsaysHelmetDoor = 40801,
                RamsaysHelmetChest = 40802
            },
            MageAndSummonerOutfits = {
                AddonWand = 40803,
                AddonBelt = 40804,
                MissionHatCloak = 40805,
                AddonHatCloak = 40806,
                AddonWandTimer = 40807
            },
            MarlinTrophy = 40808,
            NoblemanOutfits = {
                NoblemanFirstAddon = 40809,
                NoblemanSecondAddon = 40810
            },
            ObsidianKnife = 40811,
            OrientalOutfits = {
                FirstOrientalAddon = 40812,
                SecondOrientalAddon = 40813,
                OrientalDoor = 40814,
                CoralComb = 40815
            },
            PirateOutfits = {
                PirateBaseOutfit = 40816,
                PirateSabreAddon = 40817,
                PirateHatAddon = 40818
            },
            ShamanOutfits = {
                AddonStaffMask = 40819,
                MissionStaff = 40820,
                MissionMask = 40821
            },
            FriendsAndTraders = {
                DefaultStart = 40822,
                TheSweatyCyclops = 40823,
                TheMermaidMarina = 40824,
                TheBlessedStake = 40825,
                TheBlessedStakeWaitTime = 40826
            },
            TheShatteredIsles = {
                DefaultStart = 40827,
                TheGovernorDaughter = 40828,
                TheErrand = 40829,
                AccessToMeriana = 40830,
                APoemForTheMermaid = 40831,
                ADjinnInLove = 40832,
                AccessToLagunaIsland = 40833,
                AccessToGoroma = 40834,
                Shipwrecked = 40835,
                DragahsSpellbook = 40836,
                TheCounterspell = 40837,
                ReputationInSabrehaven = 40838,
                RaysMission1 = 40839,
                RaysMission2 = 40840,
                RaysMission3 = 40841,
                RaysMission4 = 40842,
                AccessToNargor = 40843,
                TortoiseEggNargorDoor = 40844,
                TortoiseEggNargorTime = 40845,
                YavernDoor = 40846,
                TavernMap1 = 40847,
                TavernMap2 = 40848,
                TavernMap3 = 40849
            },
            WarriorOutfits = {
                WarriorShoulderAddon = 40850,
                WarriorSwordAddon = 40851,
                WarriorShoulderTimer = 40852
            },
            WizardOutfits = 40853
        },
        U7_9 = { -- update 7.9 - Reserved Storages 41001 - 41150
            DreamersChallenge = {
                LeverNightmare1 = 41001,
                LeverNightmare2 = 41002,
                LeverNightmare3 = 41003,
                LeverBrotherhood1 = 41004,
                LeverBrotherhood2 = 41005,
                LeverBrotherhood3 = 41006,
                TicTac = 41007,
                BPLongSword = 41008,
                ChestBook = 41009,
                ChestsWine = 41010,
                Chests3SmallDiamond = 41011
            },
            NightmareOutfits = {
                Outfits = 41012,
                Door = 41013,
                KnightwatchTowerDoor = 41014
            },
            BrotherhoodOutfits = {
                Outfits = 41015,
                Door = 41016
            },
            ThePitsOfInferno = {
                ShortcutHubDoor = 41017,
                ShortcutLeverDoor = 41018,
                Pumin = 41019,
                ThroneInfernatil = 41020,
                ThroneTafariel = 41021,
                ThroneVerminor = 41022,
                ThroneApocalypse = 41023,
                ThroneBazir = 41024,
                ThroneAshfalor = 41025,
                ThronePumin = 41026,
                ChestTible = 41027,
                CorpseBook = 41028,
                CorpsePirateBP = 41029,
                RewardChestBP = 41030,
                RewardChestPlatinumCoins = 41031,
                RewardChestFrozenStarlight = 41032,
                RewardChestStuffed = 41033,
                RewardChestSoftBoots = 41034,
                RewardChestStaffAvengerArbalest = 41035
            }
        },
        U8_0 = { -- update 8.0 - Reserved Storages 41151 - 41350
            BarbarianArena = {
                Arena = 41151,
                PitDoor = 41152,
                QuestLogGreenhorn = 41153,
                QuestLogScrapper = 41154,
                QuestLogWarlord = 41155,
                RewardGreenhorn = 41156,
                RewardGreenhornWeapons = 41157,
                RewardGreenhornBP = 41158,
                RewardGreenhornPresent = 41159,
                RewardScrapper = 41160,
                RewardScrapperWeapons = 41161,
                RewardScrapperBP = 41162,
                RewardScrapperPresent = 41163,
                RewardWarlord = 41164,
                RewardWarlordWeapons = 41165,
                RewardWarlordBP = 41166,
                RewardWarlordPresent = 41167,
                TrophyGreenhorn = 41168,
                TrophyScrapper = 41169,
                TrophyWarlord = 41170,
                GreenhornDoor = 41171,
                ScrapperDoor = 41172,
                WarlordDoor = 41173
            },
            BarbarianTest = {
                Questline = 41174,
                Mission01 = 41175,
                Mission02 = 41176,
                Mission03 = 41177,
                MeadTotalSips = 41178,
                MeadSuccessSips = 41179
            },
            FishingBox = 41180,
            ShardsofAncientWinters = {
                Inukaya = 41271,
                Tyrsung = 41272,
                Okolnir = 41273,
                Helheim = 41274,
                FormorgarMines = 41275
            },
            TheIceIslands = {
                Questline = 41276,
                Mission01 = 41277, -- Befriending the Musher
                Mission02 = 41278, -- Nibelor 1: Breaking the Ice
                Mission03 = 41279, -- Nibelor 2: Ecological Terrorism
                Mission04 = 41280, -- Nibelor 3: Artful Sabotage
                Mission05 = 41281, -- Nibelor 4: Berserk Brewery
                Mission06 = 41282, -- Nibelor 5: Cure the Dogs
                Mission07 = 41283, -- The Secret of Helheim
                Mission08 = 41284, -- The Contact
                Mission09 = 41285, -- Formorgar Mines 1: The Mission
                Mission10 = 41286, -- Formorgar Mines 2: Ghostwhisperer
                Mission11 = 41287, -- Formorgar Mines 3: The Secret
                Mission12 = 41288, -- Formorgar Mines 4: Retaliation
                PaintSeal = 41289,
                SulphurLava = 41290,
                SporesMushroom = 41291,
                FrostbiteHerb = 41292,
                FlowerCactus = 41293,
                FlowerBush = 41294,
                MemoryCrystal = 41295,
                Obelisk01 = 41296,
                Obelisk02 = 41297,
                Obelisk03 = 41298,
                Obelisk04 = 41299,
                yakchalDoor = 41300,
                HuskyKill = 41301,
                HuskyKillStatus = 41302,
                FormorgarMinesDoor = 41303,
                FormorgarGlacierSkeleton = 41304,
                FormorgarGlacierChest = 41305,
                NorsemanOutfit = 41306,
                NoblemanFirstAddon = 41307,
                NoblemanSecondAddon = 41308,
                FormorgarMinesHoistSkeleton = 41309,
                FormorgarMinesHoistChest = 41310
            }
        },
        U8_1 = { -- update 8.1 - Reserved Storages 41351 - 41650
            KissingAPig = {},
            KosheiTheDeathless = {
                RewardDoor = 41351,
                KosheiTheDeathlessLegs = 41352,
                KosheiTheDeathlessGold = 41353,
                KosheiTheDeathlessPlatinum = 41354,
                KosheiAmuletPart1 = 41355,
                KosheiAmuletPart2 = 41356,
                KosheiAmuletPart3 = 41357,
                KosheiAmuletPart4 = 41358
            },
            RestInHallowedGround = {
                Questline = 41400,
                HolyWater = 41401,
                Graves = {
                    Grave1 = 41402,
                    Grave2 = 41403,
                    Grave3 = 41404,
                    Grave4 = 41405,
                    Grave5 = 41406,
                    Grave6 = 41407,
                    Grave7 = 41408,
                    Grave8 = 41409,
                    Grave9 = 41410,
                    Grave10 = 41411,
                    Grave11 = 41412,
                    Grave12 = 41413,
                    Grave13 = 41414,
                    Grave14 = 41415,
                    Grave15 = 41416,
                    Grave16 = 41417
                }
            },
            SecretService = {
                Quest = 41440,
                TBIMission01 = 41441,
                AVINMission01 = 41442,
                CGBMission01 = 41443,
                TBIMission02 = 41444,
                AVINMission02 = 41445,
                CGBMission02 = 41446,
                TBIMission03 = 41447,
                AVINMission03 = 41448,
                CGBMission03 = 41449,
                TBIMission04 = 41450,
                AVINMission04 = 41451,
                CGBMission04 = 41452,
                TBIMission05 = 41453,
                AVINMission05 = 41454,
                CGBMission05 = 41455,
                TBIMission06 = 41456,
                AVINMission06 = 41457,
                CGBMission06 = 41458,
                Mission07 = 41459,
                RottenTree = 41460,
                AHX17L89 = 41461,
                FamilySignetRing = 41462,
                MagicSpellbook = 41463,
                BuildingPlans = 41464,
                SuspiciousDocuments = 41465,
                Book = 41466,
                RottenHeartOfTree = 41467,
                LotteryTicket = 41468,
                PoemScroll = 41469,
                IntelligenceReports = 41470
            },
            StrongPotions = {
                Reward = 41471
            },
            TibiaTales = {
                DefaultStart = 41472,
                UltimateBoozeQuest = 41473,
                AgainstTheSpiderCult = 41474,
                AritosTask = 41475,
                ToAppeaseTheMightyQuest = 41476,
                IntoTheBonePit = 41477,
                TheExterminator = 41478,
                AritosTaskDoor = 41479
            },
            TheTravellingTrader = {
                Mission01 = 41480,
                Mission02 = 41481,
                Mission03 = 41482,
                Mission04 = 41483,
                Mission05 = 41484,
                Mission06 = 41485,
                Mission07 = 41486
            },
            ToBlindTheEnemy = {
                Questline = 41487,
                DwarvenShield = 41488,
                MorningStar = 41489,
                BP1 = 41490,
                BP2 = 41491
            },
            ToOutfoxAFoxQuest = {
                Questline = 41492,
                MiningHelmet = 41493
            },
            TowerDefenceQuest = {
                Questline = 41494,
                Door = 41495
            },
            WaterfallQuest = 41496,
            WhatAFoolishQuest = {
                Questline = 41500,
                Mission1 = 41501,
                Mission2 = 41502,
                Mission3 = 41503,
                Mission4 = 41504,
                Mission5 = 41505,
                Mission6 = 41506,
                Mission7 = 41507,
                Mission8 = 41508,
                Mission9 = 41509,
                Mission10 = 41510,
                Mission11 = 41511,
                PieBuying = 41512,
                PieBoxTimer = 41513,
                TriangleTowerDoor = 41514,
                EmperorBeardShave = 41515,
                JesterOutfit = 41516,
                WhoopeeCushion = 41517,
                QueenEloiseCatDoor = 41518,
                CatBasket = 41519,
                ScaredCarina = 41520,
                InflammableSulphur = 41521,
                SpecialLeaves = 41522,
                Cigar = 41523,
                Contract = 41524,
                CookieDelivery = {
                    SimonTheBeggar = 41525,
                    Markwin = 41526,
                    Ariella = 41527,
                    Hairycles = 41528,
                    Djinn = 41529,
                    AvarTar = 41530,
                    OrcKing = 41531,
                    Lorbas = 41532,
                    Wyda = 41533,
                    Hjaern = 41534
                },
                OldWornCloth = 41535,
                LostDisguise = 41536,
                ScaredKazzan = 41537,
                MagicalWatch = 41538,
                BagBookKnife = 41539
            }
        },
        U8_2 = { -- update 8.2 - Reserved Storages 41651 - 41900
            ElementalSpheres = {
                QuestLine = 41651,
                BossStorage = 41652,
                MachineGemCount = 41653,
                BossRoom = 41654,
                KnightBoss = 41655,
                SorcererBoss = 41656,
                PaladinBoss = 41657,
                DruidBoss = 41658,
                Machine1 = 41659,
                Machine2 = 41660,
                Machine3 = 41661,
                Machine4 = 41662
            },
            MachineryOfWar = {},
            TheBeginningQuest = {
                TutorialHintsStorage = 41670,
                SantiagoNpcGreetStorage = 41671,
                SantiagoQuestLog = 41672,
                ZirellaNpcGreetStorage = 41673,
                ZirellaQuestLog = 41674,
                CarlosNpcTradeStorage = 41675,
                CarlosNpcGreetStorage = 41676,
                CarlosQuestLog = 41677
            },
            TheDemonOak = {
                Done = 41678,
                Progress = 41679,
                Squares = 41680,
                AxeBlowsBird = 41681,
                AxeBlowsLeft = 41682,
                AxeBlowsRight = 41683,
                AxeBlowsFace = 41684
            },
            TheHuntForTheSeaSerpent = {
                QuestLine = 41685,
                SuccessSwitch = 41686,
                Bait = 41687,
                Direction = 41688,
                Access = 41689,
                FishForASerpent = 41690
            },
            TheInquisitionQuest = {
                Questline = 41691,
                Mission01 = 41692,
                Mission02 = 41693,
                Mission03 = 41694,
                Mission04 = 41695,
                Mission05 = 41696,
                Mission06 = 41697,
                Mission07 = 41698,
                RewardDoor = 41699,
                GrofGuard = 41700,
                KulagGuard = 41701,
                MilesGuard = 41702,
                TimGuard = 41703,
                WalterGuard = 41704,
                StorkusVampiredust = 41705,
                EnterTeleport = 41706,
                Reward = 41707,
                RewardRoomText = 41708,
                WitchesGrimoire = 41709
            },
            TheThievesGuildQuest = {
                Questline = 41710,
                Mission01 = 41711,
                Mission02 = 41712,
                Mission03 = 41713,
                Mission04 = 41714,
                Mission05 = 41715,
                Mission06 = 41716,
                Mission07 = 41717,
                Mission08 = 41718,
                Door = 41719,
                Reward = 41720,
                TheatreScript = 41721,
                RewardOasis = 41722,
                RewardBook = 41723,
                GoldenGoblet = 41724,
                CompromisingLetter = 41725,
                RewardEnd = 41726,
                StealFromThieves = 41727
            },
            TrollSabotageQuest = {
                Questline = 41728,
                JumpTimer = 41729
            },
            VampireHunterQuest = {
                Rank = 41730,
                Door = 41731,
                BloodSkull = 41732
            },
            TheMutatedPumpkin = {
                Skinned = 41733
            }
        },
        U8_4 = { -- update 8.4 - Reserved Storages 41901 - 42145
            BloodBrothers = {
                QuestLine = 41901,
                Mission01 = 41902,
                -- unused GarlicBread = 41903,
                Mission02 = 41904,
                Cookies = {
                    Serafin = 41905,
                    Lisander = 41906,
                    Ortheus = 41907,
                    Maris = 41908,
                    Armenius = 41909
                },
                Mission03 = 41910,
                Mission04 = 41911,
                VengothAccess = 41912
            },
            InServiceOfYalahar = {
                TheWayToYalahar = 41950,
                Questline = 41951,
                Mission01 = 41952,
                Mission02 = 41953,
                Mission03 = 41954,
                Mission04 = 41955,
                Mission05 = 41956,
                Mission06 = 41957,
                Mission07 = 41958,
                Mission08 = 41959,
                Mission09 = 41960,
                Mission10 = 41961,
                SewerPipe01 = 41962,
                SewerPipe02 = 41963,
                SewerPipe03 = 41964,
                SewerPipe04 = 41965,
                DiseasedDan = 41966,
                DiseasedBill = 41967,
                DiseasedFred = 41968,
                AlchemistFormula = 41969,
                BadSide = 41970,
                GoodSide = 41971,
                MrWestDoor = 41972,
                MrWestStatus = 41973,
                TamerinStatus = 41974,
                MorikSummon = 41975,
                QuaraState = 41976,
                QuaraSplasher = 41977,
                QuaraSharptooth = 41978,
                QuaraInky = 41979,
                MatrixState = 41980,
                SideDecision = 41981,
                MatrixReward = 41982,
                NotesPalimuth = 41983,
                NotesAzerus = 41984,
                DoorToAzerus = 41985,
                DoorToBog = 41986,
                DoorToLastFight = 41987,
                DoorToMatrix = 41988,
                DoorToQuara = 41989,
                DoorToReward = 41990,
                LastFight = 41991,
                WarGolemsMachine1 = 41992,
                WarGolemsMachine2 = 41993,
                SearoutesAroundYalahar = {
                    TownsCounter = 41994,
                    AbDendriel = 41995,
                    Darashia = 41996,
                    Venore = 41997,
                    Ankrahmun = 41998,
                    PortHope = 41999,
                    Thais = 42000,
                    LibertyBay = 42001,
                    Carlin = 42002
                }
            },
            TheHiddenCityOfBeregar = {
                DefaultStart = 42003,
                WayToBeregar = 42004,
                OreWagon = 42005,
                GoingDown = 42006,
                JusticeForAll = 42007,
                GearWheel = 42008,
                SweetAsChocolateCake = 42009,
                RoyalRescue = 42010,
                TheGoodGuard = 42011,
                PythiusTheRotten = 42012,
                DoorNorthMine = 42013,
                DoorWestMine = 42014,
                DoorSouthMine = 42015,
                BrownMushrooms = 42016,
                TunnellingGuide = 42017,
                CorpseGoldIngot = 42018,
                CorpseSmallTopazes = 42019,
                CorpseRustedArmor = 42020,
                PrisonCellKey = 42021,
                BPTheUndeathStare = 42022,
                FirewalkerBoots = 42023
            },
            TopOfTheCity = {}
        },
        U8_5 = { -- update 8.5 - Reserved Storages 42146 - 42550
            DarashiaDragon = 42146,
            HotCuisineQuest = {
                QuestStart = 42147,
                CurrentDish = 42148,
                QuestLog = 42149,
                CookbookDoor = 42150,
                LastInteractionDate2 = 42151,
                LastInteractionDate3 = 42152,
                LastInteractionDate4 = 42153,
                LastInteractionDate5 = 42154,
                LastInteractionDate6 = 42155,
                LastInteractionDate7 = 42156,
                LastInteractionDate8 = 42157,
                LastInteractionDate9 = 42158,
                LastInteractionDate10 = 42159,
                LastInteractionDate11 = 42160,
                LastInteractionDate12 = 42161,
                LastInteractionDate13 = 42162,
                LastInteractionDate14 = 42163,
                LastInteractionDate15 = 42164
            },
            KillingInTheNameOf = {
                LugriNecromancers = 42165,
                BudrikMinos = 42166,
                MissionTiquandasRevenge = 42167,
                MissionDemodras = 42168,
                BossPoints = 42169,
                QuestLogEntry = 42170,
                PawAndFurRank = 42171,
                GreenDjinnTask = 42172,
                BlueDjinnTask = 42173,
                PirateTask = 42174,
                TrollTask = 42175,
                GoblinTask = 42176,
                RotwormTask = 42177,
                CyclopsTask = 42178,
                MonsterKillCount = {
                    KillCount = 42179,
                    -- Grizzly Adams
                    CrocodileCount = 42180,
                    BadgerCount = 42181,
                    TarantulaCount = 42182,
                    CarniphilasCount = 42183,
                    StoneGolemCount = 42184,
                    MammothCount = 42185,
                    GnarlhoundCount = 42186,
                    TerramiteCount = 42187,
                    ApesCount = 42188,
                    ThornbackTortoiseCount = 42189,
                    GargoyleCount = 42190,
                    IceGolemCount = 42191,
                    QuaraScoutsCount = 42192,
                    MutatedRatCount = 42193,
                    AncientScarabCount = 42194,
                    WyvernCount = 42195,
                    LancerBeetleCount = 42196,
                    WailingWidowCount = 42197,
                    KillerCaimanCount = 42198,
                    BonebeastCount = 42199,
                    CrystalSpiderCount = 42200,
                    MutatedTigerCount = 42201,
                    UnderwaterQuarasCount = 42202,
                    GiantSpiderCount = 42203,
                    WerewolveCount = 42204,
                    NightmareCount = 42205,
                    HellspawnCount = 42206,
                    HighClassLizardCount = 42207,
                    StamporCount = 42208,
                    BrimstoneBugCount = 42209,
                    MutatedBatCount = 42210,
                    HydraCount = 42211,
                    SerpentSpawnCount = 42212,
                    MedusaCount = 42213,
                    BehemothCount = 42214,
                    SeaSerpentsCount = 42215,
                    HellhoundCount = 42216,
                    GhastlyDragonCount = 42217,
                    DrakenCount = 42218,
                    DestroyerCount = 42219,
                    UndeadDragonCount = 42220,
                    DemonCount = 42221,
                    -- Others
                    GreenDjinnCount = 42222,
                    BlueDjinnCount = 42223,
                    PirateCount = 42224,
                    MinotaurCount = 42225,
                    NecromancerCount = 42226,
                    TrollCount = 42227,
                    GoblinCount = 42228,
                    RotwormCount = 42229,
                    CyclopsCount = 42230
                },
                BossKillCount = {
                    -- Grizzly Adams
                    SnapperCount = 42350,
                    HideCount = 42351,
                    DeathbineCount = 42352,
                    BloodtuskCount = 42353,
                    ShardheadCount = 42354,
                    EsmeraldaCount = 42355,
                    FleshcrawlerCount = 42356,
                    RibstrideCount = 42357,
                    BloodwebCount = 42358,
                    ThulCount = 42359,
                    WidowCount = 42360,
                    HemmingCount = 42361,
                    TormentorCount = 42362,
                    FlamebornCount = 42363,
                    FazzrahCount = 42364,
                    TromphonyteCount = 42365,
                    ScuttlerCount = 42366,
                    PayneCount = 42367,
                    ManyCount = 42368,
                    NoxiousCount = 42369,
                    GorgoCount = 42370,
                    StonecrackerCount = 42371,
                    LeviathanCount = 42372,
                    KerberosCount = 42373,
                    EthershreckCount = 42374,
                    PauperizerCount = 42375,
                    BretzecutionerCount = 42376,
                    ZanakephCount = 42377,
                    TiquandasCount = 42378,
                    DemodrasCount = 42379,
                    -- Others
                    NecropharusCount = 42380,
                    FoxCount = 42381,
                    PiratesCount = 42382,
                    MerikhCount = 42383,
                    FahimCount = 42384
                },
                AltKillCount = {
                    -- Grizzly Adams
                    -- Apes
                    KongraCount = 42450,
                    MerlkinCount = 42451,
                    SibangCount = 42452,
                    -- Quara Scouts
                    QuaraConstrictorScoutCount = 42453,
                    QuaraHydromancerScoutCount = 42454,
                    QuaramMntassinScoutCount = 42455,
                    QuaraPincherScoutCount = 42456,
                    QuaraPredatorScoutCount = 42457,
                    -- Underwater Quara
                    QuaraConstrictorCount = 42458,
                    QuaraHydromancerCount = 42459,
                    QuaraMantassinCount = 42460,
                    QuaraPincherCount = 42461,
                    QuaraPredatorCount = 42462,
                    -- Nightmares
                    NightmareCount = 42463,
                    NightmareScionCount = 42464,
                    -- High Class Lizards
                    LizardChosenCount = 42465,
                    LizardDragonPriestCount = 42466,
                    LizardHighGuardCount = 42467,
                    LizardLegionnaireCount = 42468,
                    LizardZaogunCount = 42469,
                    -- Sea Serpents
                    SeaSerpentCount = 42470,
                    YoungSeaSerpentCount = 42471,
                    -- Drakens
                    DrakenAbominationCount = 42472,
                    DrakenEliteCount = 42473,
                    DrakenSpellweaverCount = 42474,
                    DrakenWarmasterCount = 42475,
                    -- Others
                    -- Minotaurs
                    MinotaurCount = 42476,
                    MinotaurGuardCount = 42477,
                    MinotaurMageCount = 42478,
                    MinotaurArcherCount = 42479,
                    -- Necromancers and Priestesses
                    NecromancerCount = 42480,
                    PriestessCount = 42481,
                    BloodPriestCount = 42482,
                    BloodHandCount = 42483,
                    ShadowPupilCount = 42484,
                    -- Green Djinns or Efreets
                    GreenDjinnCount = 42485,
                    EfreetCount = 42486,
                    -- Blue Djinns or Marids
                    BlueDjinnCount = 42487,
                    MaridCount = 42488,
                    -- Pirates
                    PirateMarauderCount = 42489,
                    PirateCutthroadCount = 42490,
                    PirateBuccaneerCount = 42491,
                    PirateCorsairCount = 42492,
                    -- Trolls
                    TrollCount = 42493,
                    TrollChampionCount = 42494,
                    -- Goblins
                    GoblinCount = 42495,
                    GoblinScavengerCount = 42496,
                    GoblinAssassinCount = 42497,
                    -- Rotworms
                    RotwormCount = 42498,
                    CarrionWormnCount = 42499,
                    -- Cyclops
                    CyclopsCount = 42500,
                    CyclopsDroneCount = 42501,
                    CyclopsSmithCount = 42502
                }
            },
            LoneMedusa = 42503,
            PilgrimageOfAshes = {},
            ShadowsOfYalahar = {},
            TheIsleOfEvil = {},
            TheLightbearer = {},
            TheScatterbrainedSorcerer = {},
            TreasureHunt = {}
        },
        U8_54 = { -- update 8.54 - Reserved Storages 42551 - 42950
            AnUneasyAlliance = {
                Questline = 42551,
                QuestDoor = 42552
            }, -- 42551 - 42600
            ChildrenOfTheRevolution = {
                Questline = 42601,
                Mission00 = 42602, -- Prove Your Worzz!
                Mission01 = 42603,
                Mission02 = 42604,
                Mission03 = 42605,
                Mission04 = 42606,
                Mission05 = 42607,
                SpyBuilding01 = 42608,
                SpyBuilding02 = 42609,
                SpyBuilding03 = 42610,
                StrangeSymbols = 42611,
                teleportAccess = 42612,
                ChestTomeOfKnowledge1 = 42613,
                FlaskOfExtraGreasyOil = 42614,
                ChestTomeOfKnowledge2 = 42615
            },
            SeaOfLight = {
                Questline = 42616,
                Mission1 = 42617,
                Mission2 = 42618,
                Mission3 = 42619,
                StudyTimer = 42620,
                LostMinesCrystal = 42621
            },
            TheNewFrontier = { -- 42701 - 42750
                Questline = 42701,
                FarmineFirstTravel = 42702,
                Mission01 = 42703,
                Mission02 = {
                    42704,
                    Beaver1 = 42705,
                    Beaver2 = 42706,
                    Beaver3 = 42707
                },
                Mission03 = 42708,
                Mission04 = 42709,
                Mission05 = {
                    42710,
                    KingTibianus = 42711,
                    Leeland = 42712,
                    Angus = 42713,
                    Wyrdin = 42714,
                    Telas = 42715,
                    Humgolf = 42716,
                    LeelandKeyword = 42841,
                    AngusKeyword = 42842,
                    WyrdinKeyword = 42843,
                    TelasKeyword = 42844,
                    HumgolfKeyword = 42845
                },
                Mission06 = 42717,
                Mission07 = {
                    42718,
                    HiddenNote = 42719
                },
                Mission08 = 42720,
                Mission09 = {
                    42721,
                    ArenaDoor = 42722,
                    RewardDoor = 42723
                },
                Mission10 = {
                    42724,
                    MagicCarpetDoor = 42725
                },
                Reward = {
                    Potions = 42726,
                    GoldIngot = 42727,
                    PigBank = 42728
                },
                TomeofKnowledge = 42729,
                ZaoPalaceDoors = 42730, -- 10th Tome: Zao Palace
                SnakeHeadTeleport = 42731, -- 7th Tome: Snake Head Teleport
                CorruptionHole = 42732, -- 8th Tome: Corruption Hole
                ChestTomeOfKnowledge1 = 42733,
                ChestTomeOfKnowledge2 = 42734
            },
            TomesOfKnowledge = {
                OrcCamp = 42751,
                TheNewFrontier = 42752,
                UneasyAlliance = 42753,
                LizardCamp = 42754,
                TopTower = 42755,
                MortalCombat = 42756,
                Hills = 42757,
                ChildrenoftheRevolution = 42758,
                Arena = 42759,
                CobraHead = 42760,
                OrcRaid = 42761,
                ZaoPalace = 42762,
                ChestTomeOfKnowledge1 = 42763,
                ChestTomeOfKnowledge2 = 42764,
                ChestTomeOfKnowledge3 = 42765,
                ChestTomeOfKnowledge4 = 42766
            },
            UnnaturalSelection = {
                Questline = 42781,
                Mission01 = 42782,
                Mission02 = 42783,
                Mission03 = 42784,
                Mission04 = 42785,
                Mission05 = 42786,
                Mission06 = 42787,
                DanceStatus = 42788
            } -- 42781 - 42830
        },
        U8_6 = { -- update 8.6 - Reserved Storages 42951 - 43200
            AFathersBurden = {
                QuestLog = 42951,
                Progress = 42952,
                Status = 42953,
                Sinew = 42954,
                Wood = 42955,
                Cloth = 42956,
                Silk = 42957,
                Crystal = 42958,
                Root = 42959,
                Iron = 42960,
                Scale = 42961,
                Corpse = {
                    Scale = 42962,
                    Sinew = 42963
                }
            },
            AnInterestInBotany = {
                Questline = 42964,
                ChestDoor = 42965,
                BotanyAlmanach = 42966
            },
            TheSpiritWillGetYou = {},
            WayfarerOutfits = {},
            WrathOfTheEmperor = {
                Questline = 43000,
                Mission01 = 43001,
                Mission02 = 43002,
                Mission03 = 43003,
                Mission04 = 43004,
                Mission05 = 43005,
                Mission06 = 43006,
                Mission07 = 43007,
                Mission08 = 43008,
                Mission09 = 43009,
                Mission10 = 43010,
                Mission11 = 43011,
                Mission12 = 43012,
                Message = 43013, -- 1068
                GuardcaughtYou = 43014, -- 1062
                ZumtahStatus = 43015, -- 1066
                PrisonReleaseStatus = 43017, -- 1067
                GhostOfAPriest01 = 43018, -- 1070
                GhostOfAPriest02 = 43019, -- 1071
                GhostOfAPriest03 = 43020, -- 1072
                InterdimensionalPotion = 43021, -- 1084
                BossStatus = 43022, -- 1090
                -- unused platinumReward = 43023,
                -- unused backpackReward = 43024,
                MainReward = 43025,
                TeleportAccess = {
                    Rebel = 43026,
                    Zlak = 43027,
                    Zizzle = 43028,
                    SleepingDragon = 43029,
                    InnerSanctum = 43030,
                    AwarnessEmperor = 43031,
                    Wote10 = 43032,
                    BossRoom = 43033
                },
                Chest100PlatinumCoins = 43034,
                ChestBag = 43035,
                ChestItems = 43036,
                Light01 = 43037,
                Light02 = 43038,
                Light03 = 43039,
                Light04 = 43040,
                Bosses = {
                    Fury = 43041,
                    Wrath = 43042,
                    Scorn = 43043,
                    Spite = 43044
                }
            }
        },
        U8_61 = { -- update 8.61 - Reserved Storages 43201 - 43230
            RiseOfDevovorga = {}
        },
        U8_7 = { -- update 8.7 - Reserved Storages 43231 - 43350
            APieceOfCake = {},
            APiratesDeathToMe = {},
            AnnualAutumnVintage = {},
            Bewitched = {},
            DemonsLullaby = {},
            JackFutureQuest = {
                QuestLine = 43300,
                Furniture01 = 43301,
                Furniture02 = 43302,
                Furniture03 = 43303,
                Furniture04 = 43304,
                Furniture05 = 43305,
                Mother = 43306,
                Sister = 43307,
                Statue = 43308,
                LastMissionState = 43309
            },
            LastCreepStanding = {},
            ResearchAndDevelopment = {},
            RottinWoodAndTheMarriedMen = {
                Questline = 43310,
                RottinStart = 43311,
                Trap = 43312,
                Corpse = 43313,
                Time = 43314,
                Mission03 = 43315,
                FirstTime = 43316
            },
            SpiritHunters = {
                Mission01 = 43317,
                TombUse = 43318,
                CharmUse = 43319,
                NightstalkerUse = 43320,
                SouleaterUse = 43321,
                GhostUse = 43322
            },
            TheColoursOfMagic = {}
        },
        U9_1 = { -- update 9.1 - Reserved Storages 43351 - 43550
            AwashWorldChange = {},
            DemonWarsWorldChange = {},
            ElementalistOutfits = {
                Questline = 43351,
                Outfit = 43352,
                Addon1 = 43353,
                Addon2 = 43354
            },
            HorseStationWorldChange = {
                Timer = 43355
            },
            LooseEnds = {},
            OverhuntingWorldChange = {},
            SteamshipWorldChange = {},
            SwampFeverWorldChange = {},
            TheMagesTowerWorldChange = {},
            TheMummysCurseWorldChange = {},
            TheRookieGuard = {
                Questline = 43356,
                Mission01 = 43357,
                Mission02 = 43358,
                Mission03 = 43359,
                Mission04 = 43360,
                Mission05 = 43361,
                Mission06 = 43362,
                Mission07 = 43363,
                Mission08 = 43364,
                Mission09 = 43365,
                Mission10 = 43366,
                Mission11 = 43367,
                Mission12 = 43368,
                StonePileTimer = 43369,
                Catapults = 43370,
                RatKills = 43371,
                PoacherCorpse = 43372,
                LibraryChest = 43373,
                TrollChests = 43374,
                TunnelPillars = 43375,
                Sarcophagus = 43376,
                AcademyChest = 43377,
                KraknaknorkChests = 43378,
                TutorialDelay = 43379,
                LibraryDoor = 43380,
                UnholyCryptDoor = 43381,
                AcademyDoor = 43382,
                AcademyChestTimer = 43383,
                WarWolfDenChest = 43384,
                UnholyCryptChests = 43385,
                OrcFortressChests = 43386,
                Level8Warning = 43387
            },
            TheirMastersVoiceWorldChange = {
                CurrentServantWave = 43388,
                ServantsKilled = 43389,
                SlimeGobblerTimeout = 43390,
                SlimeGobblerReceived = 43391
            },
            ThornfireWorldChange = {},
            TwistedWatersWorldChange = {}
        },
        U9_4 = { -- update 9.4 - Reserved Storages 43551 - 43750
            BankRobberyMiniWorldChange = {},
            BoredMiniWorldChange = {},
            DeeplingsWorldChange = {},
            DownTheDrainMiniWorldChange = {},
            FireFromTheEarthMiniWorldChange = {},
            HiveBornWorldChange = {},
            InsectoidOutfits = {},
            KingsdayMiniWorldChange = {},
            LiquidBlackQuest = {
                Questline = 50010,
                Visitor = 50011
            },
            LumberjackMiniWorldChange = {},
            NomadsMiniWorldChange = {},
            NoodlesIsGoneMiniWorldChange = {},
            OrientalTraderMiniWorldChange = {},
            RiverRunsDeepMiniWorldChange = {},
            StampedeMiniWorldChange = {},
            ThawingMiniWorldChange = {},
            WarAgainstTheHive = {}
        },
        U9_5 = { -- update 9.5 - Reserved Storages 43751 - 43850
            SpringIntoLife = {}
        },
        U9_60 = { -- update 9.60 - Reserved Storages 43851 - 44000
            BigfootsBurden = {
                QuestLine = 43851,
                Test = 43852,
                Shooting = 43853,
                QuestLineComplete = 43854,
                MelodyTone1 = 43855,
                MelodyTone2 = 43856,
                MelodyTone3 = 43857,
                MelodyTone4 = 43858,
                MelodyTone5 = 43859,
                MelodyTone6 = 43860,
                MelodyTone7 = 43861,
                MelodyStatus = 43862,
                Rank = 43863,
                MissionCrystalKeeper = 43864,
                CrystalKeeperTimout = 43865,
                RepairedCrystalCount = 43866,
                MissionRaidersOfTheLostSpark = 43867,
                ExtractedCount = 43868,
                RaidersOfTheLostSparkTimeout = 43869,
                MissionExterminators = 43870,
                ExterminatedCount = 43871,
                ExterminatorsTimeout = 43872,
                MissionMushroomDigger = 43873,
                MushroomCount = 43874,
                MushroomDiggerTimeout = 43875,
                MissionMatchmaker = 43876,
                MatchmakerStatus = 43877,
                MatchmakerIdNeeded = 43878,
                MatchmakerTimeout = 43879,
                MissionTinkersBell = 43880,
                GolemCount = 43881,
                TinkerBellTimeout = 43882,
                MissionSporeGathering = 43883,
                SporeCount = 43884,
                SporeGatheringTimeout = 43885,
                MissionGrindstoneHunt = 43886,
                GrindstoneStatus = 43887,
                GrindstoneTimeout = 43888,
                WarzoneStatus = 43889,
                Warzone1Access = 43890,
                Warzone2Access = 43891,
                Warzone3Access = 43892,
                Warzone1Reward = 43893,
                Warzone2Reward = 43894,
                Warzone3Reward = 43895,
                BossKills = 43896,
                DoorGoldenFruits = 43897,
                GnomedixMsg = 43898,
                Warzones = 43899,
                Weeper = 43900,
                Versperoth = {
                    Battle = 43901,
                    Health = 43902
                },
                Mouthpiece = 43903
            },
            DevovorgasEssenceMiniWorldChange = {},
            SpiderNestMiniWorldChange = {},
            WarpathMiniWorldChange = {}
        },
        U9_80 = { -- update 9.80 - Reserved Storages 44001 - 44100
            AdventurersGuild = {
                Stone = 52130,
                MagicDoor = 52131,
                CharosTrav = 52132,
                FreeStone = {
                    Alia = 52133,
                    Amanda = 52134,
                    Brewster = 52135,
                    Isimov = 52136,
                    Kasmir = 52137,
                    Kjesse = 52138,
                    Lorietta = 52139,
                    Maealil = 52140,
                    Quentin = 52141,
                    RockWithASoftSpot = 52142,
                    Tyrias = 52143,
                    Yberius = 52144,
                    Rahkem = 52145
                },
                QuestLine = 52148
            },
            ChildOfDestiny = {},
            GoblinMerchant = {},
            VenoreDailyTasks = {}
        },
        U10_10 = { -- update 10.10 - Reserved Storages 44101 - 44300
            FuryGatesMiniWorldChange = {},
            HuntingForTokens = {},
            OpticordingSphere = {},
            SmallSapphire = {},
            TheGravediggerOfDrefia = {
                QuestStart = 44200,
                Mission01 = 44201,
                Mission02 = 44203,
                Mission03 = 44204,
                Mission04 = 44205,
                Mission05 = 44206,
                Mission06 = 44207,
                Mission07 = 44208,
                Mission08 = 44209,
                Mission09 = 44210,
                Mission10 = 44211,
                Mission11 = 44212,
                Mission12 = 44213,
                Mission13 = 44214,
                Mission14 = 44215,
                Mission15 = 44216,
                Mission16 = 44217,
                Mission17 = 44218,
                Mission18 = 44219,
                Mission19 = 44220,
                Mission20 = 44221,
                Mission21 = 44222,
                Mission22 = 44223,
                Mission23 = 44224,
                Mission24 = 44225,
                Mission25 = 44226,
                Mission26 = 44227,
                Mission27 = 44228,
                Mission28 = 44229,
                Mission29 = 44230,
                Mission30 = 44231,
                Mission31 = 44232,
                Mission32 = 44233,
                Mission32a = 44234,
                Mission32b = 44235,
                Mission33 = 44236,
                Mission34 = 44237,
                Mission35 = 44238,
                Mission36 = 44239,
                Mission36a = 44240,
                Mission37 = 44241,
                Mission38 = 44242,
                Mission38a = 44243,
                Mission38b = 44244,
                Mission38c = 44245,
                Mission39 = 44246,
                Mission40 = 44247,
                Mission41 = 44248,
                Mission42 = 44249,
                Mission43 = 44250,
                Mission44 = 44251,
                Mission45 = 44252,
                Mission46 = 44253,
                Mission47 = 44254,
                Mission48 = 44255,
                Mission49 = 44256,
                Mission50 = 44257,
                Mission51 = 44258,
                Mission52 = 44259,
                Mission53 = 44260,
                Mission54 = 44261,
                Mission55 = 44262,
                Mission56 = 44263,
                Mission57 = 44264,
                Mission58 = 44265,
                Mission59 = 44266,
                Mission60 = 44267,
                Mission61 = 44268,
                Mission62 = 44269,
                Mission63 = 44270,
                Mission64 = 44271,
                Mission65 = 44272,
                Mission66 = 44273,
                Mission67 = 44274,
                Mission68 = 44275,
                Mission69 = 44276,
                Mission70 = 44277,
                Mission71 = 44278,
                Mission72 = 44279,
                Mission73 = 44280,
                Mission74 = 44281,
                Mission75 = 44282,
                Mission76 = 44283,
                Bookcase = 44285,
                SmallDragonTears1 = 44286,
                SmallDragonTears2 = 44287,
                SmallDragonTears3 = 44288
            },
            TheRepenters = {}
        },
        U10_20 = { -- update 10.20 - Reserved Storages 44301 - 44400
            SpikeTaskQuest = {
                QuestLine = 44301,
                Gnomilly = 44302,
                Gnombold = {
                    Points = 44303,
                    Nests = 44304,
                    Fertilise = 44305,
                    Kill = 44306,
                    Charges = 44307
                },
                Gnomargery = {
                    Points = 44308,
                    Deliver = 44309,
                    Undercover = 44310,
                    Temperature = 44311,
                    Kill = 44312
                },
                Spike_Fame_Points = 44313,
                Spike_Upper_Pacifier_Main = 44314,
                Spike_Upper_Pacifier_Daily = 44315,
                Spike_Upper_Mound_Main = 44316,
                Spike_Upper_Mound_Daily = 44317,
                Spike_Upper_Track_Main = 44318,
                Spike_Upper_Track_Daily = 44319,
                Spike_Upper_Kill_Main = 44320,
                Spike_Upper_Kill_Daily = 44321,
                Spike_Middle_Charge_Main = 44322,
                Spike_Middle_Charge_Daily = 44323,
                Spike_Middle_Mushroom_Main = 44324,
                Spike_Middle_Mushroom_Daily = 44325,
                Spike_Middle_Nest_Main = 44326,
                Spike_Middle_Nest_Daily = 44327,
                Spike_Middle_Kill_Main = 44328,
                Spike_Middle_Kill_Daily = 44329,
                Spike_Lower_Parcel_Main = 44330,
                Spike_Lower_Parcel_Daily = 44331,
                Spike_Lower_Undercover_Main = 44332,
                Spike_Lower_Undercover_Daily = 44333,
                Spike_Lower_Lava_Main = 44334,
                Spike_Lower_Lava_Daily = 44335,
                Spike_Lower_Kill_Main = 44336,
                Spike_Lower_Kill_Daily = 44337
            },
            SpiritGroundsMiniWorldChange = {}
        },
        U10_30 = { -- update 10.30 - Reserved Storages 44401 - 44500
            DreamWardenOutfits = {},
            RoshamuulQuest = {
                Roshamuul_Mortar_Thrown = 44401,
                Roshamuul_Killed_Frazzlemaws = 44402,
                Roshamuul_Killed_Silencers = 44403,
                Roshamuul_Gold_Record = 44404
            }
        },
        U10_37 = { -- update 10.37 - Reserved Storages 44501 - 44550
            TinderBoxQuestChyllfroest = {
                Reward = 44501,
                Obedience = 44502
            },
            ChyllfroestMiniWorldChange = {}
        },
        U10_50 = { -- update 10.50 - Reserved Storages 44551 - 44750
            DarkTrails = {
                Mission01 = 44551,
                Mission02 = 44552,
                Mission03 = 44553,
                Mission04 = 44554,
                Mission05 = 44555,
                Mission06 = 44556,
                Mission07 = 44557,
                Mission08 = 44558,
                Mission09 = 44559,
                Mission10 = 44560,
                Mission11 = 44561,
                Mission12 = 44562,
                Mission13 = 44563,
                Mission14 = 44564,
                Mission15 = 44565,
                Mission16 = 44567,
                Mission17 = 44568,
                Mission18 = 44569,
                Outfit = 44570,
                DoorQuandon = 44571,
                DoorHideout = 44572,
                RewardSmallNotebook = 44573,
                Reward05GlothAndBelongings = 44574,
                Reward10GlothAndBelongings = 44575,
                OramondTaskProbing = 44576
            },
            GloothEngineerOutfits = {
                Addon1 = 44577,
                Addon2 = 44578
            },
            OramondQuest = {
                QuestLine = 44579,
                VotingPoints = 44580,
                ToTakeRoots = {
                    Mission = 44581,
                    Count = 44582,
                    Door = 44583
                },
                Probing = {
                    Mission = 44584,
                    MonoDetector = 44585
                },
                TheAncientSewers = {
                    Mission = 44586,
                    Door = 44587
                },
                ThePowderOfTheStars = {
                    Mission = 44588
                }
            },
            Rathleton = {}
        },
        U10_55 = { -- update 10.55 - Reserved Storages 44751 - 44800
            Dawnport = {
                VocationReward = 44751,
                Questline = 44752,
                GoMain = 44753,
                TheLostAmulet = 44754,
                TheStolenLogBook = 44755,
                TheRareHerb = 44756,
                TheDormKey = 44757,
                StrangeAmulet = 44758,
                TornLogBook = 44759,
                HerbFlower = 44760,
                MorriskTroll = 44761,
                MorrisTrollCount = 44762,
                MorrisGoblin = 44763,
                MorrisGoblinCount = 44764,
                MorrisMinos = 44765,
                MorrisMinosCount = 44766
            },
            SanctuaryOfTheLizardGod = {
                LegionHelmet = 44767,
                LizardGodTeleport = 44768
            }
        },
        U10_70 = { -- update 10.70 - Reserved Storages 44801 - 44950
            HeroOfRathleton = {},
            LionsRock = {
                Questline = 44801,
                OuterSanctum = {
                    Skeleton = 44802,
                    LionsStrength = 44803,
                    LionsBeauty = 44804,
                    LionsTears = 44805
                },
                InnerSanctum = {
                    SnakeSign = 44806,
                    LizardSign = 44807,
                    ScorpionSign = 44808,
                    HyenaSign = 44809,
                    Message = 44810
                },
                Time = 44811,
                LionsRockFields = 44812
            },
            TheCursedCrystal = {
                Questline = 44813,
                Oneeyedjoe = 44814,
                MedusaOil = 44815,
                Time = 44816,
                SheetOfPaper = 44817,
                SmallCrystalBell = 44818
            },
            TheFireFeatheredSerpentWorldChange = {},
            TwentyMilesBeneathTheSea = {}
        },
        U10_80 = { -- update 10.80 - Reserved Storages 44951 - 45200
            AsuraPalace = {},
            Cartography101 = {},
            ChakoyaIcebergMiniWorldChange = {},
            GrimvaleMineWorldChange = {},
            GrimvaleQuest = {
                AncientFeudDoors = 45150,
                AncientFeudShortcut = 45151,
                SilverVein = 45152,
                WereHelmetEnchant = 45153
            },
            HiveOutpostMiniWorldChange = {},
            JungleCampMiniWorldChange = {},
            NightmareIslesMiniWorldChange = {},
            PoacherCavesMiniWorldChange = {},
            TheGreatDragonHunt = {
                WarriorSkeleton = 45180,
                DragonCounter = 45181,
                Achievement = 45182
            },
            TheLostBrotherQuest = 45183,
            TheTaintedSouls = {}
        },
        U10_90 = { -- update 10.90 - Reserved Storages 45201 - 45350
            FerumbrasAscension = {
                RiftRunner = 45201, -- Scroll
                TheShattererTimer = 45202,
                TheLordOfTheLiceTimer = 45203,
                Tarbaz = 45204,
                Razzagorn = 45205,
                Ragiaz = 45206,
                Zamulosh = 45207,
                Shulgrax = 45208,
                Mazoran = 45209,
                Plagirath = 45210,
                Access = 45211,
                TheShatterer = 45212,
                ZamuloshTeleports = 45213,
                BasinCounter = 45214,
                TheLordOfTheLiceAccess = 45215,
                FirstDoor = 45216,
                MonsterDoor = 45217,
                TarbazDoor = 45218,
                HabitatsAccess = 45219,
                HabitatsTimer = 45220,
                TarbazNotes = 45221,
                ColorLever = 45222,
                BoneFluteWall = 45223,
                BoneFlute = 45224,
                Ring = 45225,
                Statue = 45226,
                Fount = 45227,
                Vampire = 45228,
                Flower = 45229,
                Ring2 = 45230,
                Bone = 45231,
                Reward = 45232,
                TheShattererLever = 45233,
                TheLordOfTheLiceTime = 45234,
                TarbazTime = 45235,
                RagiazTime = 45236,
                PlagirathTime = 45237,
                RazzagornTime = 45238,
                ZamuloshTime = 45239,
                MazoranTime = 45240,
                ShulgraxTime = 45241,
                FerumbrasMortalShellTime = 45242,
                ZamuloshSummon = 45243,
                FerumbrasEssence = 45244,
                DesperateSoul = 45245,
                FlowerPuzzleTimer = 45246,
                Crystals = {
                    Crystal1 = 45247,
                    Crystal2 = 45248,
                    Crystal3 = 45249,
                    Crystal4 = 45250,
                    Crystal5 = 45251,
                    Crystal6 = 45252,
                    Crystal7 = 45253,
                    Crystal8 = 45254,
                    AllCrystals = 45255
                },
                Habitats = {
                    Roshamuul = 45256,
                    Grass = 45257,
                    Mushroom = 45258,
                    Desert = 45259,
                    Venom = 45260,
                    Ice = 45261,
                    Corrupted = 45262,
                    Dimension = 45263,
                    AllHabitats = 45264
                },
                Elements = {
                    First = 45265,
                    Second = 45266,
                    Third = 45267,
                    Four = 45268,
                    Active = 45269,
                    Done = 45270
                },
                TheRiteOfEternalNight = 45271,
                StoneCoffinsBones = 45272,
                VampireTeeth = 45273
            },
            Krailos = {}
        },
        U10_94 = { -- update 10.94 - Reserved Storages 45351 - 45450
            HeartOfDestruction = {}
        },
        U11_02 = { -- update 11.02 - Reserved Storages 45451 - 45650
            FestiveOutfits = {},
            FirstDragon = {},
            ForgottenKnowledge = {}
        },
        U11_40 = { -- update 11.40 - Reserved Storages 45651 - 45850
            CultsOfTibia = {}, -- 45651 - 45750
            ThreatenedDreams = { -- 45751 - 45850
                QuestLine = 45751,
                Mission01 = {
                    45752, -- Troubled Animals
                    PoacherChest = 45753,
                    PoacherNotes = 45754,
                    FeathersCount = 45755,
                    Feathers1 = 45756,
                    Feathers2 = 45757,
                    Feathers3 = 45758,
                    Feathers4 = 45759,
                    Feathers5 = 45760
                },
                Mission02 = {
                    45761, -- Nightmare Intruders
                    FrazzlemawsCount = 45762,
                    EnfeebledCount = 45763,
                    KroazurAccess = 45764,
                    KroazurTimer = 45765,
                    KroazurKill = 45766,
                    DarkMoonMirror = 45767,
                    FairiesCounter = 45768,
                    Fairy01 = 45769,
                    Fairy02 = 45770,
                    Fairy03 = 45771,
                    Fairy04 = 45772,
                    Fairy05 = 45773,
                    ChargedMoonMirror = 45774,
                    MoonMirrorPos01 = 45775,
                    MoonMirrorPos02 = 45776,
                    MoonMirrorPos03 = 45777,
                    MoonMirrorPos04 = 45778,
                    MoonMirrorPos05 = 45779,
                    ChargedSunCatcher = 45780,
                    SunCatcherPos01 = 45781,
                    SunCatcherPos02 = 45782,
                    SunCatcherPos03 = 45783,
                    SunCatcherPos04 = 45784,
                    SunCatcherPos05 = 45785,
                    ChargedStarlightVial = 45786,
                    StarlightPos01 = 45787,
                    StarlightPos02 = 45788,
                    StarlightPos03 = 45789,
                    StarlightPos04 = 45790,
                    StarlightPos05 = 45791
                },
                Mission03 = {
                    45792, -- An Unlikely Couple
                    UnlikelyCouple = 45793,
                    PanpipesTimer = 45794,
                    RavenHerbTimer = 45795,
                    DarkSunCatcher = 45796,
                    EmptyStarlightVial = 45797
                },
                Mission04 = { 45798 },
                Mission05 = 45799
            }
        },
        U11_50 = { -- update 11.50 - Reserved Storages 45851 - 46000
            DangerousDepths = {},
            HiddenThreats = {
                QuestLine = 45971,
                RatterDoor = 45972,
                ServantDoor = 45973,
                CorymWorksDoor01 = 45974,
                CorymWorksDoor02 = 45975,
                CorymWorksDoor03 = 45976,
                Rewards = {
                    metalFile = 45977,
                    keyFragment01 = 45978,
                    keyFragment02 = 45979
                },
                CorymRescued01 = 45980,
                CorymRescued02 = 45981,
                CorymRescued03 = 45982,
                CorymRescued04 = 45983,
                CorymRescued05 = 45984,
                CorymRescued06 = 45985,
                CorymRescued07 = 45986,
                CorymRescued08 = 45987,
                CorymRescueMission = 45988
            },
            MakeshiftWarriorOutfits = {}
        },
        U11_80 = { -- update 11.80 - Reserved Storages 46001 - 46300
            BattleMageOutfits = {},
            DiscovererOutfits = {},
            MeasuringTibia = {},
            TheSecretLibrary = {
                FalconBastionChestsTimer = {
                    Coast = 46281,
                    Island = 46282,
                    ThroneHall = 46283,
                    Shortcut = 46284,
                    LowerBastion = 46285,
                    UndergroundBastion = 46286
                },
                GhuloshTimer = 46015,
                GhuloshKilled = 46016,
                GorzindelTimer = 46017,
                GorzindelKilled = 46018,
                LokathmorTimer = 46019,
                LokathmorKilled = 46020,
                MazzinorTimer = 46021,
                MazzinorKilled = 46022,
                ScourgeOfOblivionDoor = 46023,
                ScourgeOfOblivionTimer = 46024,
                ScourgeOfOblivionKilled = 46025
            }
        },
        U12_00 = { -- update 12.00 - Reserved Storages 46301 - 46600
            DreamWarriorOutfits = {},
            TheDreamCourts = {
                QuestLine = 46401,
                HauntedHouseAccess = 46402,
                BuriedCathedralAccess = 46403,
                DreamScarAccess = 46404,
                AndrewDoor = 14900,
                AccessDoors = 46309,
                ArenaTimer = 46310,
                PlaguerootKilled = 46311,
                MalofurKilled = 46312,
                MaxxeniusKilled = 46313,
                AlptramunKilled = 46314,
                IzcandarKilled = 46315,
                NightmareBeastTimer = 46316,
                NightmareBeastKilled = 46317
            }
        },
        U12_02 = { -- update 12.02 - Reserved Storages 46601 - 46800
            TibiaAnniversary = {},
            WinterlightSolstice = {}
        },
        U12_15 = { -- update 12.15.8659 - Reserved Storages 46801 - 46850
            GoldenOutfits = {}
        },
        U12_20 = { -- update 12.20 - Reserved Storages 46851 - 47000
            GraveDanger = {
                QuestLine = 46851,
                Graves = {
                    Edron = 46852,
                    DarkCathedral = 46853,
                    Ghostlands = 46854,
                    Cormaya = 46855,
                    FemorHills = 46856,
                    Ankrahmun = 46857,
                    Kilmaresh = 46858,
                    Vengoth = 46859,
                    Darashia = 46860,
                    Thais = 46861,
                    Orclands = 46862,
                    IceIslands = 46863
                },
                Bosses = {
                    BaelocNictrosKilled = 46866,
                    CountVlarkorthKilled = 46868,
                    DukeKruleKilled = 46870,
                    EarlOsamKilled = 46872,
                    LordAzaramKilled = 46874,
                    KingZelosDoor = 46875,
                    KingZelosKilled = 46877,
                    InquisitionOutfitReceived = 46878
                },
                Cobra = 46864
            },
            HandOfTheInquisitionOutfits = {}
            -- Kilmaresh = {}, done earlier in the file
        },
        U12_30 = { -- update 12.30 - Reserved Storages 47001 - 47200
            FalconerOutfits = {},
            FeasterOfSouls = {
                UnazKilled = 47008,
                VokKilled = 47010,
                FearFeasterKilled = 47012,
                DreadMaidenKilled = 47014,
                UnwelcomeKilled = 47016,
                PaleWormEntrance = 47017,
                PaleWormKilled = 47019
            },
            PoltergeistOutfits = {
                Received = 47020
            }
        },
        U12_40 = { -- update 12.40 - Reserved Storages 47201 - 47500
            RevenantOutfits = {},
            TheOrderOfTheLion = {
                QuestLine = 47401,
                AccessEastSide = 47402,
                AccessSouthernSide = 47403
            },
            SoulWar = {
                GoshnarMaliceKilled = 47211,
                GoshnarHatredKilled = 47213,
                GoshnarSpiteKilled = 47215,
                GoshnarCrueltyKilled = 47217,
                GoshnarGreedKilled = 47219,
                GoshnarMegalomaniaAccess = 47220,
                GoshnarMegalomaniaKilled = 47222,
                QuestReward = 47223,
                OutfitReward = 47224,
                MountReward = 47225
            }
        },
        U12_60 = { -- update 12.60 - Reserved Storages 47501 - 47600
            APiratesTail = {
                QuestLine = 47501,
                RascacoonShortcut = 47512,
                TentuglyKilled = 47513,
                TentuglyDoor = 47514
            },
            RascoohanOutfits = {}
        },
        U12_70 = { -- update 12.70 - Reserved Storages 47601 - 47800
            AdventuresOfGalthen = {
                AccessDoor = 47601
            },
            CitizenOfIssaviOutfits = {},
            RoyalBounaceanAdvisorOutfits = {}
        },
        U12_80 = { -- update 12.80 - Reserved Storages 47801 - 47850
            RoyalCostumeOutfits = {}
        },
        U12_90 = { -- update 12.90 - Reserved Storages 47851 - 47900
            PrimalOrdeal = {
                QuestLine = 47851,
                Bosses = {
                    MagmaBubbleKilled = 47853,
                    ThePrimalMenaceKilled = 47855
                }
            }
        },
        U13_10 = { -- update 13.10 - Reserved Storages 47901 - 47951
            CradleOfMonsters = {
                QuestLine = 47901,
                Access = {
                    Ingol = 47902,
                    LowerIngol = 47903,
                    Monster = 47904,
                    MutatedAbomination = 47905
                }
            }
        },
        U13_20 = { -- update 13.20 - Reserved Storages 47951 - 48000
            RottenBlood = {
                QuestLine = 47951,
                Access = {
                    JadedRoots = 47952,
                    Putrefactory = 47953,
                    GloomPillars = 47954,
                    DarklightCore = 47955,
                    BakragoreAccess = 47956
                },
                Bosses = {
                    Murcion = 47957,
                    Ichgahal = 47958,
                    Chagorz = 47959,
                    Vemiath = 47960,
                    Bakragore = 47961
                }
            },
        }
    },
    -- Reserved storage from 63951 - 63999
    ThaisExhibition = {
        FriendshipAmulet = 63951,
        HandPuppets = 63952,
        EpaminondasDoll = 63953,
        NorsemanDoll = 63954,
        BookwormDoll = 63955,
        GoldenNewspaper = 63956,
        TibiacityEncyclopedia = 63957,
        GoldenFalcon = 63958,
        DragonGoblet = 63959,
        FerumbrasDoll = 63960,
        FrozenHeart = 63961,
        DrakenDoll = 63962,
        MusicBox = 63963,
        DurinTheAlmighty = 63964,
        DragonEye = 63965,
        MemoryBox = 63966,
        NobleSword = 63967,
        MedusaSkull = 63968,
        MathmasterShield = 63969,
        Imortus = 63970,
        OldRadio = 63971,
        EpicWisdom = 63972,
        DreadDoll = 63973,
        PhoenixStatue = 63974,
        OrcsJawShredder = 63975,
        BagOfOrientalSpices = 63976,
        TibiorasBox = 63977
    },

    VipSystem = {
        OnlineCoinsGain = 150002,
        OnlineTokensGain = 150003
    }
}

GlobalStorage = {
    DangerousDepths = {
        -- Reserved storage from 60001 - 60009
        Geodes = {
            WarzoneVI = 60001,
            WarzoneV = 60002,
            WarzoneIV = 60003
        }
    },
    Feroxa = {
        -- Reserved storage from 60020 - 60029
        Chance = 60020,
        Active = 60021
    },

    HeroRathleton = {
        -- Reserved storage from 60070 - 60089
        FirstMachines = 60070,
        SecondMachines = 60071,
        ThirdMachines = 60072,
        FourthMachines = 60073,
        DeepRunning = 60074,
        HorrorRunning = 60075,
        LavaRunning = 60076,
        LavaCounter = 60077,
        MaxxenRunning = 60078,
        TentacleWave = 60079,
        DevourerWave = 60080,
        GloothWave = 60081,
        LavaChange = 60082,
        FastWay = 24867
    },
    ForgottenKnowledge = {
        -- Reserved storage from 60090 - 60099
        ActiveTree = 60090,
        MechanismGolden = 60091,
        MechanismDiamond = 60092,
        GoldenServant = 60093,
        DiamondServant = 60094,
        AstralPowerCounter = 60095,
        AstralGlyph = 60096
    },
    TheOrderOfTheLion = {
        -- Reserved storage from 60170 - 60171
        Drume = {
            TotalLionCommanders = 60170, -- Global
            TotalUsurperCommanders = 60171 -- Global
        }
    },
    HeartOfDestruction = {
        -- Reserved storage from 60172 - 60190
        ChargedAnomaly = 60172,
        ForeshockHealth = 60173,
        AftershockHealth = 60174,
        ForeshockStage = 60175,
        AftershockStage = 60176,
        RuptureResonanceStage = 60177,
        RuptureResonanceActive = 60178,
        EradicatorWeak = 60179,
        EradicatorReleaseT = 60180,
        OutburstStage = 60181,
        OutburstHealth = 60182,
        OutburstChargingKilled = 60183
    },
    WorldBoard = {
        NightmareIsle = {
            AnkrahmunNorth = 60191,
            DarashiaNorth = 60192,
            DarashiaWest = 60193
        }
    },
    TheDreamCourts = {
        -- Reserved storage from 60194 - 60196
        FacelessBane = {
            -- Global
            StepsOn = 60194,
            Deaths = 60195,
            ResetSteps = 60196
        }
    },
    FuryGates = 65000,
    Yakchal = 65001,
    PitsOfInfernoLevers = 65002,
    NaginataStone = 65003,
    ExpBoost = 65004,
    SwordOfFury = 65005,
    GloothFairyTimer = 65006,
    TheMummysCurse = 65008,
    OberonEventTime = 65009,
    PrinceDrazzakEventTime = 65010,
    ScarlettEtzelEventTime = 65011,
    Inquisition = 65013,
    Yasir = 65014,
    IceCrack = 65016,
    UglyMonster = 65017,
    KeysUpdate = 40000 -- Reserved storage from 40000 - 40000

}

startupGlobalStorages = { Storage.Quest.U7_4.TheAncientTombs.AshmunrahSwitchesGlobalStorage,
    Storage.Quest.U7_4.TheAncientTombs.DiprathSwitchesGlobalStorage,
    Storage.Quest.U7_4.TheAncientTombs.ThalasSwitchesGlobalStorage,
    GlobalStorage.HeroRathleton.FirstMachines, GlobalStorage.HeroRathleton.SecondMachines,
    GlobalStorage.HeroRathleton.ThirdMachines, GlobalStorage.HeroRathleton.DeepRunning,
    GlobalStorage.HeroRathleton.HorrorRunning, GlobalStorage.HeroRathleton.LavaRunning,
    GlobalStorage.HeroRathleton.MaxxenRunning, GlobalStorage.HeroRathleton.LavaCounter,
    GlobalStorage.HeroRathleton.FourthMachines,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal1,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal2,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal3,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal4,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal5,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal6,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal7,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.Crystal8,
    Storage.Quest.U10_90.FerumbrasAscension.Crystals.AllCrystals,
    Storage.Quest.U10_90.FerumbrasAscension.FerumbrasEssence, GlobalStorage.Feroxa.Active,
    Storage.Quest.U10_90.FerumbrasAscension.Habitats.AllHabitats,
    Storage.Quest.U10_90.FerumbrasAscension.Elements.Active,
    Storage.Quest.U10_90.FerumbrasAscension.Elements.First,
    Storage.Quest.U10_90.FerumbrasAscension.Elements.Second,
    Storage.Quest.U10_90.FerumbrasAscension.Elements.Third,
    Storage.Quest.U10_90.FerumbrasAscension.Elements.Done }
