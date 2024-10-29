-- Sends Discord webhook notifications.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.

if not announcementChannels then
	announcementChannels = {
		["serverAnnouncements"] = "", -- Used for an announcement channel on your discord
		["raids"] = "", -- Used to isolate raids on your discord
		["player-kills"] = "https://discord.com/api/webhooks/1300692033387761686/0ABLRN-3KuQWujnpvC8tZyRMjD4pyoznn5PkcVLxHQMAFrkozNZPISVUcgCbtvRd3J2b", -- Self-explaining
		["player-levels"] = "", -- Self-explaining
		["reports"] = "https://discord.com/api/webhooks/1300688870773624892/quxF3vP124Q4AqDnQzT1MQihBqgAZ17FinW9AZ_kUlduotCJTYYe0xkdh4E7b47MUrZx",
	}
end

--[[
	Example of notification (After you do the config):
	This is going to send a message into your server announcements channel

	local message = blablabla
	local title = test
	Webhook.sendMessage(title, message, WEBHOOK_COLOR_YELLOW,
                        announcementChannels["serverAnnouncements"])

	Dev Comment: This lib can be used to add special webhook channels
	where you are going to send your messages. Webhook.specialSend was designed
	to be used with countless possibilities.
]]
