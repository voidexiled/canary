local zone = Zone("thais.rats")
zone:addArea(Position(32331, 32182, 7), Position(32426, 32261, 7))

local raid = Raid("thais.rats", {
	zone = zone,
	allowedDays = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" },
	minActivePlayers = 0,
	targetChancePerDay = 30,
	maxChancePerCheck = 50,
	minGapBetween = "36h",
})

raid:addBroadcast("Rat Plague in Thais!"):autoAdvance("5s")

raid
	:addSpawnMonsters({
		{
			name = "Rat",
			amount = 10,
		},
		{
			name = "Cave Rat",
			amount = 10,
		},
	})
	:autoAdvance("10m")

raid
	:addSpawnMonsters({
		{
			name = "Rat",
			amount = 20,
		},
		{
			name = "Cave Rat",
			amount = 20,
		},
	})
	:autoAdvance("10m")

raid:register()
