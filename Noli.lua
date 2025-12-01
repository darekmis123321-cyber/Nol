for i,v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and (string.find(v.Name:lower(), "mail") or string.find(v.Name:lower(), "send")) then
        print("Найден RemoteEvent: " .. v:GetFullName())
    end
end
