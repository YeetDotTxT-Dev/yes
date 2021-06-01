if _G.AcBypassed ==  nil then 
    local plr = game:GetService("Players").LocalPlayer

    if plr.PlayerGui.Extra:FindFirstChild("AntiSploitClient") and plr.PlayerGui.Extra:FindFirstChild("AntiSploitClient2") then
        plr.PlayerGui.Extra.AntiSploitClient:Destroy()
        plr.PlayerGui.Extra.AntiSploitClient2:Destroy()
    end

    plr.CharacterAdded:Connect(function()
        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("AntiSploitClient"):Destroy()
        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("AntiSploitClient2"):Destroy()
    end)
end

_G.AcBypassed = true
