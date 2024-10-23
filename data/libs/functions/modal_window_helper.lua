local ModalWindowAutoID = 10000

if not __ModalWindow then
	__ModalWindow = ModalWindow
	ModalWindows = {}
end

ModalWindow = {}
ModalWindow.__index = ModalWindow

function ModalWindow.new(self, ...)
	if type(self) ~= "table" then
		return __ModalWindow(self, ...)
	end

	self.modalWindowId = 0
	self.buttons = {}
	self.choices = {}
	self.using = 0
	self.defaultEnterButton = 0
	self.defaultEscapeButton = 1
	return setmetatable(self, ModalWindow)
end

setmetatable(ModalWindow, {
	__call = function(self, ...)
		return ModalWindow.new(...)
	end,
})

function ModalWindow:setTitle(title)
	self.title = tostring(title)
	return true
end

function ModalWindow:setMessage(message)
	self.message = tostring(message)
	return true
end

function ModalWindow:addButton(name, callback)
	if type(name) ~= "string" then
		io.write("ModalWindow:addButton: name must be a string.")
		name = tostring(name)
	end

	if self.buttons[name] then
		io.write("ModalWindow: Button with name '" .. name .. "' already exists.")
		return false
	end

	local id = #self.buttons + 1
	local button = { id = id, name = name, callback = callback }
	self.buttons[id] = button
	self.buttons[name] = button
	return true
end

function ModalWindow:removeButton(name)
	if type(name) ~= "string" then
		io.write("ModalWindow:removeButton: name must be a string.")
		name = tostring(name)
	end

	local button = self.buttons[name]
	if not button then
		io.write("ModalWindow: Button with name '" .. name .. "' does not exist.")
		return false
	end

	self.buttons[button.id] = nil
	self.buttons[name] = nil
	return true
end

function ModalWindow:callButton(name, player, button, choice)
	if type(name) ~= "string" then
		io.write("ModalWindow:callButton: name must be a string.")
		name = tostring(name)
	end

	local newButton = self.buttons[name]
	if not newButton then
		io.write("ModalWindow: Button with name '" .. name .. "' does not exist.")
		return false
	end

	if not newButton.callback then
		io.write("ModalWindow: Button with name '" .. name .. "' has no callback.")
		return false
	end
	return newButton.callback(player, button, choice)
end

function ModalWindow:clearButtons()
	self.buttons = {}
	return true
end

function ModalWindow:setDefaultEnterButton(buttonId)
	self.defaultEnterButton = buttonId
	return true
end

function ModalWindow:setDefaultEscapeButton(buttonId)
	self.defaultEscapeButton = buttonId
	return true
end

function ModalWindow:setDefaultCallback(callback)
	self.defaultCallback = callback
	return true
end

function ModalWindow:addChoice(text, callback)
	if type(text) ~= "string" then
		io.write("ModalWindow:addChoice: text must be a string.")
		text = tostring(text)
	end

	local id = #self.choices + 1
	local choice = { id = id, text = text, callback = callback }
	self.choices[id] = choice
	self.choices[text] = choice
	return true
end

function ModalWindow:removeChoice(text)
	if type(text) ~= "string" then
		io.write("ModalWindow:removeChoice: text must be a string.")
		text = tostring(text)
	end

	local choice = self.choices[text]
	if not choice then
		io.write("ModalWindow: Choice with text '" .. text .. "' does not exist.")
		return false
	end

	self.choices[choice.id] = nil
	self.choices[text] = nil
	return true
end

function ModalWindow:callChoice(text, player, button, choice)
	if type(text) ~= "string" then
		io.write("ModalWindow:callChoice: text must be a string.")
		text = tostring(text)
	end

	local newChoice = self.choices[text]
	if not newChoice then
		io.write("ModalWindow: Choice with text '" .. text .. "' does not exist.")
		return false
	end

	if not newChoice.callback then
		io.write("ModalWindow: Choice with text '" .. text .. "' has no callback.")
		return false
	end
	return newChoice.callback(player, button, choice)
end

function ModalWindow:clearChoices()
	self.choices = {}
	return true
end

function ModalWindow:clear()
	self.choices = {}
	self.buttons = {}
	return true
end

function ModalWindow:setPriority(priority)
	self.priority = priority
	return true
end

function ModalWindow:setId()
	if self.modalWindowId ~= 0 then
		return self.modalWindowId
	end

	self.modalWindowId = ModalWindowAutoID
	ModalWindowAutoID = ModalWindowAutoID + 1
	return self.modalWindowId
end

function ModalWindow:create()
	local modalWindow = __ModalWindow(self:setId(), self.title, self.message)
	modalWindow:setPriority(self.priority and true or false)

	for id = 1, #self.buttons do
		local name = self.buttons[id].name
		modalWindow:addButton(id, name)
	end

	modalWindow:setDefaultEnterButton(self.defaultEnterButton)
	modalWindow:setDefaultEscapeButton(self.defaultEscapeButton)
	for id = 1, #self.choices do
		modalWindow:addChoice(id, self.choices[id].text)
	end
	return modalWindow
end

function ModalWindow:sendToPlayer(player)
	local modalWindow = self:create()
	local playerId = player:getId()
	ModalWindows[playerId] = ModalWindows[playerId] or {}
	ModalWindows[playerId][self.modalWindowId] = self
	player:registerEvent("ModalWindowHelper")
	self.using = self.using + 1
	return modalWindow:sendToPlayer(player)
end
