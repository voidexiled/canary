local transformid = {
	[2772] = 2773,
	[2773] = 2772,
}

local config = {
	first = {
		[1] = { fromPosition = Position(33877, 32060, 14), toPosition = Position(33888, 32068, 14), stgRoom = Storage.DangerousDepths.Scouts.FirstBarrel },
	},
	second = {
		[1] = { fromPosition = Position(33906, 32026, 14), toPosition = Position(33916, 32037, 14), stgRoom = Storage.DangerousDepths.Scouts.SecondBarrel },
	},
	third = {
		[1] = { fromPosition = Position(33865, 32009, 14), toPosition = Position(33874, 32020, 14), stgRoom = Storage.DangerousDepths.Scouts.ThirdBarrel },
	},
	fourth = {
		[1] = { fromPosition = Position(33837, 31984, 14), toPosition = Position(33852, 31991, 14), stgRoom = Storage.DangerousDepths.Scouts.FourthBarrel },
	},
	fifth = {
		[1] = { fromPosition = Position(33923, 31982, 14), toPosition = Position(33942, 31998, 14), stgRoom = Storage.DangerousDepths.Scouts.FifthBarrel },
	},
}

local function checarPos(item)
	for _, info1 in pairs(config.first) do
		local fromPos, toPos, stgRoom = info1.fromPosition, info1.toPosition, info1.stgRoom
		if item:getPosition():isInRange(fromPos, toPos) then
			local stgbarrel = item:getCustomAttribute(Storage.DangerousDepths.Scouts.Barrel) or -1
			local player = Player(stgbarrel)
			if player then
				if player:getStorageValue(stgRoom) < 1 then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelCount, player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount) + 1)
					player:setStorageValue(stgRoom, 1)
				end
			end
		end
	end
	for _, info2 in pairs(config.second) do
		local fromPos, toPos, stgRoom = info2.fromPosition, info2.toPosition, info2.stgRoom
		if item:getPosition():isInRange(fromPos, toPos) then
			local stgbarrel = item:getCustomAttribute(Storage.DangerousDepths.Scouts.Barrel) or -1
			local player = Player(stgbarrel)
			if player then
				if player:getStorageValue(stgRoom) < 1 then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelCount, player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount) + 1)
					player:setStorageValue(stgRoom, 1)
				end
			end
		end
	end
	for _, info3 in pairs(config.third) do
		local fromPos, toPos, stgRoom = info3.fromPosition, info3.toPosition, info3.stgRoom
		if item:getPosition():isInRange(fromPos, toPos) then
			local stgbarrel = item:getCustomAttribute(Storage.DangerousDepths.Scouts.Barrel) or -1
			local player = Player(stgbarrel)
			if player then
				if player:getStorageValue(stgRoom) < 1 then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelCount, player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount) + 1)
					player:setStorageValue(stgRoom, 1)
				end
			end
		end
	end
	for _, info4 in pairs(config.fourth) do
		local fromPos, toPos, stgRoom = info4.fromPosition, info4.toPosition, info4.stgRoom
		if item:getPosition():isInRange(fromPos, toPos) then
			local stgbarrel = item:getCustomAttribute(Storage.DangerousDepths.Scouts.Barrel) or -1
			local player = Player(stgbarrel)
			if player then
				if player:getStorageValue(stgRoom) < 1 then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelCount, player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount) + 1)
					player:setStorageValue(stgRoom, 1)
				end
			end
		end
	end
	for _, info5 in pairs(config.fifth) do
		local fromPos, toPos, stgRoom = info5.fromPosition, info5.toPosition, info5.stgRoom
		if item:getPosition():isInRange(fromPos, toPos) then
			local stgbarrel = item:getCustomAttribute(Storage.DangerousDepths.Scouts.Barrel) or -1
			local player = Player(stgbarrel)
			if player then
				if player:getStorageValue(stgRoom) < 1 then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelCount, player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount) + 1)
					player:setStorageValue(stgRoom, 1)
				end
			end
		end
	end
end

local function explode(item)
	local position = item:getPosition()
	local fromPosition = Position(position.x - 6, position.y - 6, position.z)
	local toPosition = Position(position.x + 6, position.y + 6, position.z)

	addEvent(function()
		for x = fromPosition.x, toPosition.x do
			for y = fromPosition.y, toPosition.y do
				for z = fromPosition.z, toPosition.z do
					Position(x, y, z):sendMagicEffect(CONST_ME_FIREAREA)
				end
			end
		end
		checarPos(item)
		if item then
			item:remove()
		end
	end, 2 * 1000)
	item:transform(32401)
end

local dangerousDepthLever = Action()
function dangerousDepthLever.onUse(player, item)
	if not player then
		return true
	end

	local posBarrel = Position(33838, 32077, 14)
	local stgCount = player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelCount)
	local BarrelTimer = player:getStorageValue(Storage.DangerousDepths.Scouts.BarrelTimer)

	if item:getId() == 2772 then
		if player:getStorageValue(Storage.DangerousDepths.Scouts.Growth) == 1 and stgCount < 5 and BarrelTimer <= 0 then
			local barrel = Game.createItem(27492, 1, posBarrel)
			if not barrel then
				return false
			end
			barrel:setCustomAttribute(Storage.DangerousDepths.Scouts.Barrel, player:getId())

			addEvent(function(pos, pid)
				local tile = Tile(pos)
				if tile then
					local barrel = tile:getItemById(27492)
					if barrel then
						explode(barrel)
					end
				end
				local player = Player(pid)
				if player then
					player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelTimer, 0)
				end
			end, 2 * 60 * 1000, posBarrel, player:getId())

			--Time is set to 0 when barrel explodes
			player:setStorageValue(Storage.DangerousDepths.Scouts.BarrelTimer, os.time() + 2 * 60)
		end
	end
	item:transform(transformid[item:getId()])
	return true
end

dangerousDepthLever:aid(57234)
dangerousDepthLever:register()
