-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 45,
		multiplier = 90,
	},
	{
		minlevel = 46,
		maxlevel = 80,
		multiplier = 70,
	},
	{
		minlevel = 81,
		maxlevel = 130,
		multiplier = 30,
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
		multiplier = 7,
	},
	{
		minlevel = 301,
		maxlevel = 350,
		multiplier = 5,
	},
	{
		minlevel = 351,
		maxlevel = 450,
		multiplier = 3,
	},
	{
		minlevel = 451,
		maxlevel = 500,
		multiplier = 2,
	},
	{
		minlevel = 501,
		multiplier = 1.5,
	},
}

skillsStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 300,
	},
	{
		minlevel = 61,
		maxlevel = 80,
		multiplier = 240,
	},
	{
		minlevel = 81,
		maxlevel = 100,
		multiplier = 50,
	},
	{
		minlevel = 101,
		maxlevel = 110,
		multiplier = 5,
	},
	{
		minlevel = 111,
		multiplier = 1.5,
	},
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 250,
	},
	{
		minlevel = 61,
		maxlevel = 80,
		multiplier = 160,
	},
	{
		minlevel = 81,
		maxlevel = 100,
		multiplier = 50,
	},
	{
		minlevel = 101,
		maxlevel = 110,
		multiplier = 10,
	},
	{
		minlevel = 121,
		multiplier = 2,
	},
}
