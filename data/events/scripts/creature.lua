local function removeCombatProtection(playerUid)
	local player = Player(playerUid)
	if not player then
		return true
	end

	local time = 0
	if player:isMage() then
		time = 10
	elseif player:isPaladin() then
		time = 20
	else
		time = 30
	end

	player:kv():set("combat-protection", 2)
	addEvent(function(playerFuncUid)
		local playerEvent = Player(playerFuncUid)
		if not playerEvent then
			return
		end

		playerEvent:kv():remove("combat-protection")
		playerEvent:remove()
	end, time * 1000, playerUid)
end

function Creature:onTargetCombat(target)
	if not self then
		return true
	end

	if target:isPlayer() then
		if self:isMonster() then
			local isProtected = target:kv():get("combat-protection") or 0

			if target:getIp() == 0 then -- If player is disconnected, monster shall ignore to attack the player
				if target:isPzLocked() then
					return true
				end
				if isProtected <= 0 then
					addEvent(removeCombatProtection, 30 * 1000, target.uid)
					target:kv():set("combat-protection", 1)
				elseif isProtected == 1 then
					self:searchTarget()
					return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
				end

				return true
			end

			if isProtected >= os.time() then
				return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
			end
		end
	end

	if (target:isMonster() and self:isPlayer() and target:getMaster() == self) or (self:isMonster() and target:isPlayer() and self:getMaster() == target) then
		return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
	end

	if not IsRetroPVP() or PARTY_PROTECTION ~= 0 then
		if self:isPlayer() and target:isPlayer() then
			local party = self:getParty()
			if party then
				local targetParty = target:getParty()
				if targetParty and targetParty == party then
					return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
				end
			end
		end
	end

	if not IsRetroPVP() or ADVANCED_SECURE_MODE ~= 0 then
		if self:isPlayer() and target:isPlayer() then
			if self:hasSecureMode() then
				return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
			end
		end
	end

	self:addEventStamina(target)
	return true
end

function Creature:onChangeOutfit(outfit)
	if self:isPlayer() then
		local familiarLookType = self:getFamiliarLooktype()
		if familiarLookType ~= 0 then
			for _, summon in pairs(self:getSummons()) do
				if summon:getType():familiar() then
					if summon:getOutfit().lookType ~= familiarLookType then
						summon:setOutfit({ lookType = familiarLookType })
					end
					break
				end
			end
		end
	end
	return true
end

function Creature:onDrainHealth(attacker, typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary)
	if not self then
		return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
	end

	if not attacker then
		return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
	end

	return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
end
