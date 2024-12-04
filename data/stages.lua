-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 45,
		multiplier = 125,
	},
	{
		minlevel = 46,
		maxlevel = 80,
		multiplier = 85,
	},
	{
		minlevel = 81,
		maxlevel = 130,
		multiplier = 45,
	},
	{
		minlevel = 131,
		maxlevel = 180,
		multiplier = 20,
	},
	{
		minlevel = 181,
		maxlevel = 200,
		multiplier = 15,
	},
	{
		minlevel = 201,
		maxlevel = 250,
		multiplier = 10,
	},
	{
		minlevel = 251,
		maxlevel = 300,
		multiplier = 8,
	},
	{
		minlevel = 301,
		maxlevel = 350,
		multiplier = 7,
	},
	{
		minlevel = 351,
		maxlevel = 450,
		multiplier = 6,
	},
	{
		minlevel = 451,
		maxlevel = 500,
		multiplier = 5,
	},
	{
		minlevel = 501,
		maxlevel = 600,
		multiplier = 4,
	},
	{
		minlevel = 601,
		maxlevel = 700,
		multiplier = 3,
	},
	{
		minlevel = 701,
		maxlevel = 800,
		multiplier = 2.5,
	},
	{
		minlevel = 801,
		maxlevel = 1000,
		multiplier = 2,
	},
	{
		minlevel = 1001,
		maxlevel = 1200,
		multiplier = 1.8,
	},
	{
		minlevel = 1201,
		multiplier = 1.5,
	},
}

skillsStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 180,
	},
	{
		minlevel = 61,
		maxlevel = 80,
		multiplier = 110,
	},
	{
		minlevel = 81,
		maxlevel = 100,
		multiplier = 55,
	},
	{
		minlevel = 101,
		maxlevel = 110,
		multiplier = 10,
	},
	{
		minlevel = 111,
		multiplier = 2,
	},
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 160,
	},
	{
		minlevel = 61,
		maxlevel = 80,
		multiplier = 90,
	},
	{
		minlevel = 81,
		maxlevel = 100,
		multiplier = 35,
	},
	{
		minlevel = 101,
		maxlevel = 110,
		multiplier = 6,
	},
	{
		minlevel = 121,
		multiplier = 1.5,
	},
}
