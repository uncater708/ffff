print = function() end
error = function() end
warn = function() end

local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "a9725b34503b4b909697cb419fcbebd5"
local falseData = "073334be55e34e7797712601d86e0cf5"

KeyGuardLibrary.Set({
  publicToken = "61c630e988674cebab66807053abc6ba",
  privateToken = "f3d17bd2da6d40d78db5c2d4f794dbcb",
  trueData = trueData,
  falseData = falseData,
})


local getkey = KeyGuardLibrary.getLink()
setclipboard(getkey)
local response = KeyGuardLibrary.validateDefaultKey(_G.YourKey)


if response == trueData then
      local repo = 'https://raw.githubusercontent.com/LionTheGreatRealFrFr/MobileLinoriaLib/main/'

                    local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
                    local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
                    local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

                    wait(_G.waittoload)

                    function createbtn()
                        local player = game:GetService("Players").LocalPlayer
                        local screenGui = player:WaitForChild("PlayerGui"):FindFirstChildOfClass("ScreenGui") or Instance.new("ScreenGui", player.PlayerGui)

                        local button = Instance.new("TextButton")
                        button.Parent = screenGui
                        button.Size = UDim2.new(0, 120, 0, 30) -- Compact button size
                        button.Position = UDim2.new(0.5, 100, 0.5, -225)
                        button.Text = "Press UI"
                        button.Font = Enum.Font.SourceSans
                        button.TextSize = 16
                        button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
                        button.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark gray background
                        button.BorderSizePixel = 2
                        button.BorderColor3 = Color3.fromRGB(0, 102, 255) -- Bright blue border (matches UI in image)

                        -- Make it draggable
                        local dragging
                        local dragInput
                        local dragStart
                        local startPos

                        local function update(input)
                            local delta = input.Position - dragStart
                            button.Position = UDim2.new(
                                startPos.X.Scale,
                                startPos.X.Offset + delta.X,
                                startPos.Y.Scale,
                                startPos.Y.Offset + delta.Y
                            )
                        end

                        button.InputBegan:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                dragging = true
                                dragStart = input.Position
                                startPos = button.Position

                                input.Changed:Connect(function()
                                    if input.UserInputState == Enum.UserInputState.End then
                                        dragging = false
                                    end
                                end)
                            end
                        end)

                        button.InputChanged:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Toucah then
                                dragInput = input
                            end
                        end)

                        game:GetService("UserInputService").InputChanged:Connect(function(input)
                            if input == dragInput and dragging then
                                update(input)
                            end
                        end)

                        -- Print message when button is pressed
                        button.MouseButton1Click:Connect(function()
                            Library.Toggle()
                        end)


                    end

                    createbtn()


                    local Window = Library:CreateWindow({
                        Title = 'Makis Aot:Revoloution Hub',
                        Center = true,
                        AutoShow = true,
                        TabPadding = 8,
                        MenuFadeTime = 0.2
                    })

                    -- Values
                    _G.EnableDelay = false
                    _G.delayInput = nil  
                    _G.selectedpart = "Nape"
                    _G.selectedtransparency = 0.50
                    _G.selectedsize = 100
                    _G.Titanbox = false
                    _G.TitanboxColor = nil
                    _G.TitanboxColorOutline = nil
                    _G.Blockyloaded = false
                    _G.AutoFarm = false
                    _G.AutoRaid = false
                    _G.selectedspeed = 350
                    _G.selectedUp = 200
                    _G.selectedspeedraid = 350
                    _G.selectedUpraid = 200
                    _G.autoretry = false
                    _G.AutoFarmOp = false
                    _G.Farming = false
                    _G.noclip = false
                    _G.Spearcounter = 8
                    _G.Spearstring = tostring(_G.Spearcounter)  -- Initialize _G.Spearstring
                    _G.ThunderSpearFarm = false
                    _G.Riptitans = false
                    _G.RipallTogle = false
                    _G.FastMission = false
                    _G.FastMissionRaid = false
                    _G.SendWebhook = false
                    _G.Webhook = nil
                    _G.webhookURL = tostring(_G.Webhook)
                    _G.AutoOpenChest = false
                    _G.OpenSecondChest = false

                    local Services = setmetatable({}, {__index = function(_, Index)
                        return game:GetService(Index)
                    end})


                    local remote = game:GetService("ReplicatedStorage"):FindFirstChild("YourRemoteEventName")
                    local offset = Vector2.new(0, 0)
                    local hasFired = false
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local hum = character:FindFirstChild("HumanoidRootPart")
                    local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")
                    local Request = (http.request or http_request) or request
                    local HttpService = game:GetService("HttpService")
                    local Player = game:GetService("Players").LocalPlayer
                    local ItemsFolder = Player.PlayerGui.Interface.Rewards.Main.Info.Main.Items
                    local Players = Services.Players
                    local GuiService = Services.GuiService
                    local RunService = Services.RunService
                    local VirtualInputManager = game:GetService("VirtualInputManager")
                    local Debounce = false

                    -- Functions

                    function thunderspearop()
                                    function AutoRetank()

                                    local player = game:GetService("Players").LocalPlayer
                                    local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")
                                    local offsetBar = player.PlayerGui.Interface.HUD.Main.Top.Spears.Spears  -- GUI Object, not text
                                    local hasFired = false


                                    offsetBar:GetPropertyChangedSignal("Text"):Connect(function()
                                        local currentOffset = offsetBar.Text  -- Get updated text
                                
                                        -- Ensure GasTanks exist before sending request
                                        local gasTank = workspace:FindFirstChild("Unclimbable") 
                                            and workspace.Unclimbable:FindFirstChild("Reloads") 
                                            and workspace.Unclimbable.Reloads:FindFirstChild("GasTanks") 
                                            and workspace.Unclimbable.Reloads.GasTanks:FindFirstChild("Refill")
                                
                                        if currentOffset == "0 / 8" and not hasFired and gasTank then
                                            local args = {"Spears", "Full_Reload", "Right", gasTank}
                                            local args2= {"Spears", "Full_Reload", "Left", gasTank}
                                            wait(0.1)
                                            remote:FireServer(unpack(args))
                                            wait(0.5)
                                            remote:FireServer(unpack(args2))
                                            hasFired = true
                                        elseif currentOffset == "8 / 8" or currentOffset == "7 / 8" or currentOffset == "6 / 8" or currentOffset == "5 / 8" or currentOffset == "4 / 8" or currentOffset == "3 / 8" or currentOffset == "2 / 8" or currentOffset == "1 / 8"  then
                                            hasFired = false
                                        end
                                    end)


                                        function framewatcher()
                                        local player = game.Players.LocalPlayer
                                        local playerGui = player:WaitForChild("PlayerGui")

                                        -- Function to detect and delete new Frames with names 1, 2, or 3
                                        local function onChildAdded(child)
                                            if child:IsA("Frame") and (child.Name == "1" or child.Name == "2" or child.Name == "3") then
                                                child:Destroy()
                                            end
                                        end

                                        -- Connect to existing Frames and future ones
                                        for _, gui in pairs(playerGui:GetChildren()) do
                                            if gui:IsA("ScreenGui") then
                                                gui.ChildAdded:Connect(onChildAdded)
                                            end
                                        end

                                        -- Monitor new ScreenGuis being added
                                        playerGui.ChildAdded:Connect(function(gui)
                                            if gui:IsA("ScreenGui") then
                                                gui.ChildAdded:Connect(onChildAdded)
                                            end
                                        end)
                                    end

                                    framewatcher()

                            end

                            AutoRetank()
                            function SpearCounter()
                                local player = game:GetService("Players").LocalPlayer
                                local offsetBar = player.PlayerGui.Interface.HUD.Main.Top.Spears.Spears  -- GUI Object, not text

                                -- Listen for changes in the text property of the offsetBar
                                offsetBar:GetPropertyChangedSignal("Text"):Connect(function()
                                    local currentOffset = offsetBar.Text  -- Get updated text

                                    -- Extract the current spear count from the text
                                    local spearCount = tonumber(currentOffset:match("^(%d+)"))  -- Match the number before " / "

                                    -- Update _G.Spearcounter and _G.Spearstring if the extracted value is valid
                                    if spearCount and spearCount >= 0 and spearCount <= 8 then
                                        _G.Spearcounter = spearCount
                                        _G.Spearstring = tostring(_G.Spearcounter)
                                        
                                    else
                                        warn("Unexpected value in offsetBar.Text: " .. currentOffset)
                                    end
                                end)
                            end

                            SpearCounter()

                            function AttackTitans()
                                if _G.ThunderSpearFarm == true then
                                    local remotes = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes")
                                    local remoteGET = remotes:WaitForChild("GET")
                                    local remotePOST = remotes:WaitForChild("POST")

                                    while true do  -- Continuously attack Titans
                                        -- Fire the spear once before attacking Titans
                                        local success, err = pcall(function()
                                            remoteGET:InvokeServer("Spears", "S_Fire", _G.Spearstring)
                                        end)

                                        -- Handle errors if the remote call fails
                                        if not success then
                                            warn("Error while firing remote (GET): " .. err)
                                            break  -- Exit the loop if the first remote fails
                                        end

                                        -- Iterate through all Titans in the workspace
                                        for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                            if not titan:IsA("Model") then continue end
                                            local hitboxes = titan:FindFirstChild("Hitboxes")
                                            if not hitboxes then continue end
                                            local hit = hitboxes:FindFirstChild("Hit")
                                            if not hit then continue end
                                            local nape = hit:FindFirstChild("Nape")
                                            if not nape then continue end

                                            -- Get the position of the nape
                                            local hitboxPosition = nape.Position

                                            -- Check if the Titan is the "Attack_Titan"
                                            if titan.Name == "Attack_Titan" then
                                                -- Trigger explosion 100 times on the same nape for "Attack_Titan"
                                                for i = 1, 100 do
                                                    local success, err = pcall(function()
                                                        remotePOST:FireServer("Spears", "S_Explode", hitboxPosition, 0.0506744384765625, 54.83967971801758)
                                                    end)

                                                    -- Handle errors if the remote call fails
                                                    if not success then
                                                        warn("Error while firing remote (POST): " .. err)
                                                    end
                                                end
                                            else
                                                -- For all other Titans, hit them normally (once)
                                                local success, err = pcall(function()
                                                    remotePOST:FireServer("Spears", "S_Explode", hitboxPosition, 0.0506744384765625, 54.83967971801758)
                                                end)

                                                -- Handle errors if the remote call fails
                                                if not success then
                                                    warn("Error while firing remote (POST): " .. err)
                                                end
                                            end
                                        end

                                        -- Add a delay before the next attack cycle (optional)
                                        task.wait(1)  -- Adjust this delay as needed
                                    end
                                end
                            end

                                AttackTitans()

                            end

                        function HitboxExpander()
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local hum = character:FindFirstChild("HumanoidRootPart")

                            for _, titan in ipairs(workspace.Titans:GetDescendants()) do
                                if titan:IsA("Model") then
                                    local hitboxes = titan:FindFirstChild("Hitboxes")
                                    if hitboxes then
                                        local hit = hitboxes:FindFirstChild("Hit")
                                        if hit then 
                                            local nape = hit:FindFirstChild(_G.selectedpart)
                                            if nape then
                                                nape.Transparency = _G.selectedtransparency
                                                nape.Size = Vector3.new(_G.selectedsize, _G.selectedsize, _G.selectedsize)
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        function ResetChar()
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local hum = character:FindFirstChild("Humanoid")
                            hum.Health = 0
                        end

                        function RemoveInjuris()
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local injuries = character:FindFirstChild("Injuries")

                            if injuries then
                                injuries:Destroy()
                            end
                        end

                        function AutoRetank()

                            function AutoReloadBlades()
                                local player = game:GetService("Players").LocalPlayer
                                local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")
                                local offsetBar = player.PlayerGui.Interface.HUD.Main.Top.Blades.Sets  -- GUI Object, not text
                                local hasFired = false
                            
                                offsetBar:GetPropertyChangedSignal("Text"):Connect(function()
                                    local currentOffset = offsetBar.Text  -- Get updated text
                            
                                    -- Ensure GasTanks exist before sending request
                                    local gasTank = workspace:FindFirstChild("Unclimbable") 
                                        and workspace.Unclimbable:FindFirstChild("Reloads") 
                                        and workspace.Unclimbable.Reloads:FindFirstChild("GasTanks") 
                                        and workspace.Unclimbable.Reloads.GasTanks:FindFirstChild("Refill")
                            
                                    if currentOffset == "0 / 3" and not hasFired and gasTank then
                                        local args = {"Blades", "Full_Reload", "Left", gasTank}
                                        remote:FireServer(unpack(args))
                                        hasFired = true
                                    elseif currentOffset == "2 / 3" or currentOffset == "3 / 3" then
                                        hasFired = false
                                    end
                                end)
                            end
                            
                            AutoReloadBlades()
                            

                        end

                        function tptitans()
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local hum = character:FindFirstChild("HumanoidRootPart")

                            for _, titan in ipairs(workspace.Titans:GetDescendants()) do
                                if titan:IsA("Model") then
                                    local hitboxes = titan:FindFirstChild("Hitboxes")
                                    if hitboxes then
                                        local hit = hitboxes:FindFirstChild("Hit")
                                        if hit then 
                                            local nape = hit:FindFirstChild("Nape")
                                            if nape then
                                                nape.CFrame = hum.CFrame
                                                nape.Anchored = true
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        function BlockyTitans()
                            if _G.Blockyloaded == false then
                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                    if titan:IsA("Model") then
                                        local fake = titan:FindFirstChild("Fake")
                                        if fake and fake:IsA("Model") then
                                            for _, part in ipairs(fake:GetDescendants()) do
                                                if part:IsA("BasePart") and part.Name ~= "Total" and part.Name ~= "RootPart" and part.Name ~= "Collision" then
                                                    local selection = Instance.new("SelectionBox") 
                                                    selection.Parent = part
                                                    selection.Adornee = part
                                                    selection.Color3 = _G.TitanboxColorOutline
                                                    selection.LineThickness = 0.1
                                                    selection.SurfaceColor3 = _G.TitanboxColor
                                                    selection.SurfaceTransparency = 0
                                                    selection.Visible = false
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        function toggleHighlights()
                            for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                if titan:IsA("Model") then
                                    local fake = titan:FindFirstChild("Fake")
                                    if fake and fake:IsA("Model") then
                                        for _, subModel in ipairs(fake:GetChildren()) do
                                            if subModel then
                                                for _, highlight in ipairs(subModel:GetDescendants()) do
                                                    if highlight:IsA("SelectionBox") then
                                                        highlight.Visible = _G.Titanbox
                                                        highlight.Color3 = _G.TitanboxColorOutline
                                                        highlight.SurfaceColor3 = _G.TitanboxColor
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        function AutoFarmLegit()
                            if _G.AutoFarm == true then
                                AutoRetank()
                                local player = game.Players.LocalPlayer
                                local character = player.Character or player.CharacterAdded:Wait()
                                local rootPart = character:WaitForChild("HumanoidRootPart")
                                local flying, targetCFrame, flightSpeed = false, nil, _G.selectedspeed
                                local flyingReached = false  
                                local heartbeatConnection = nil  
                                local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")

                                local climbable = workspace:FindFirstChild("Climbable")
                                if climbable then
                                    climbable:Destroy()
                                end

                                local unclimbable = workspace:FindFirstChild("Unclimbable")
                                if unclimbable then
                                    local props = unclimbable:FindFirstChild("Props")
                                    if props then
                                        props:Destroy()
                                    end
                                end

                                local function startFlyingToCFrame(target, speed)
                                    flying, targetCFrame, flightSpeed = true, target, speed
                                    flyingReached = false  
                                end

                                local function stopFlying()
                                    flying, targetCFrame = false, nil
                                    rootPart.Velocity = Vector3.new(0, 0, 0)
                                end

                                local function fireAttack()
                                    local args = {"Attacks", "Slash", true}
                                    for attempt = 1, 3 do
                                        local success, err = pcall(function()
                                            remote:FireServer(unpack(args))
                                        end)
                                        if success then
                                            break
                                        else
                                            wait(0.2)
                                        end
                                    end
                                end

                                local function registerAndAttackTitan(titan)
                                    local success, err = pcall(function()
                                        local hitboxPath = titan:FindFirstChild("Hitboxes") and 
                                                        titan.Hitboxes:FindFirstChild("Hit") and 
                                                        titan.Hitboxes.Hit:FindFirstChild("Nape")

                                        if hitboxPath then
                                            fireAttack()
                                            wait(0.1)

                                            local args = {"Hitboxes", "Register", hitboxPath, 384.37, 0.41}
                                            remote:FireServer(unpack(args))

                                            wait(0.1)
                                            fireAttack()
                                        end
                                    end)
                                end

                                if heartbeatConnection then
                                    heartbeatConnection:Disconnect()
                                end

                                heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
                                    if _G.AutoFarm == false then
                                        stopFlying()
                                        heartbeatConnection:Disconnect()
                                        heartbeatConnection = nil  
                                        return
                                    end

                                    if flying and targetCFrame then
                                        local direction = (targetCFrame.Position - rootPart.Position).unit
                                        local distance = (targetCFrame.Position - rootPart.Position).magnitude
                                        if distance > 1 then
                                            rootPart.Velocity = direction * flightSpeed
                                        else
                                            if not flyingReached then
                                                flyingReached = true  
                                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                                    if titan:IsA("Model") then
                                                        local nape = titan:FindFirstChild("Hitboxes") and 
                                                                    titan.Hitboxes:FindFirstChild("Hit") and 
                                                                    titan.Hitboxes.Hit:FindFirstChild("Nape")

                                                        if nape then
                                                            registerAndAttackTitan(titan)

                                                            local waitTime = 0
                                                            while nape and nape.CanTouch and waitTime < 3 do
                                                                wait(0.1)
                                                                waitTime = waitTime + 0.1
                                                            end

                                                            if nape and not nape.CanTouch then
                                                                nape:Destroy()  
                                                                stopFlying()
                                                                wait(1)  
                                                            end
                                                            break  
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end)

                                while _G.AutoFarm do
                                    local foundTitan = false
                                    for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                        if titan:IsA("Model") then
                                            local nape = titan:FindFirstChild("Hitboxes") and 
                                                        titan.Hitboxes:FindFirstChild("Hit") and 
                                                        titan.Hitboxes.Hit:FindFirstChild("Nape")

                                            if nape then
                                                foundTitan = true  
                                                local targetPosition = nape.Position + Vector3.new(0, _G.selectedUp, 0)
                                                startFlyingToCFrame(CFrame.new(targetPosition), _G.selectedspeed)
                                                wait(1)
                                                break  
                                            end
                                        end
                                    end

                                    if not foundTitan then
                                        wait(3)
                                    end
                                end

                                stopFlying()
                            end
                        end

                        function RaidAutoFarmLegit()
                            if _G.AutoRaid == true then
                                AutoRetank()
                                local player = game.Players.LocalPlayer
                                local character = player.Character or player.CharacterAdded:Wait()
                                local rootPart = character:WaitForChild("HumanoidRootPart")
                                local flying, targetCFrame, flightSpeed = false, nil, _G.selectedspeed
                                local flyingReached = false  
                                local heartbeatConnection = nil  
                                local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")


                                local function startFlyingToCFrame(target, speed)
                                    flying, targetCFrame, flightSpeed = true, target, speed
                                    flyingReached = false  
                                end

                                local function stopFlying()
                                    flying, targetCFrame = false, nil
                                    rootPart.Velocity = Vector3.new(0, 0, 0)
                                end

                                local function fireAttack()
                                    local args = {"Attacks", "Slash", true}
                                    for attempt = 1, 3 do
                                        local success, err = pcall(function()
                                            remote:FireServer(unpack(args))
                                        end)
                                        if success then
                                            break
                                        else
                                            wait(0.2)
                                        end
                                    end
                                end

                                local function registerAndAttackTitan(titan)
                                    local success, err = pcall(function()
                                        local hitboxPath = titan:FindFirstChild("Hitboxes") and 
                                                        titan.Hitboxes:FindFirstChild("Hit") and 
                                                        titan.Hitboxes.Hit:FindFirstChild("Nape")

                                        if hitboxPath then
                                            fireAttack()
                                            wait(0.1)

                                            local args = {"Hitboxes", "Register", hitboxPath, 384.37, 0.41}
                                            remote:FireServer(unpack(args))

                                            wait(0.1)
                                            fireAttack()
                                        end
                                    end)
                                end

                                if heartbeatConnection then
                                    heartbeatConnection:Disconnect()
                                end

                                heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
                                    if _G.AutoRaid == false then
                                        stopFlying()
                                        heartbeatConnection:Disconnect()
                                        heartbeatConnection = nil  
                                        return
                                    end

                                    if flying and targetCFrame then
                                        local direction = (targetCFrame.Position - rootPart.Position).unit
                                        local distance = (targetCFrame.Position - rootPart.Position).magnitude
                                        if distance > 1 then
                                            rootPart.Velocity = direction * flightSpeed
                                        else
                                            if not flyingReached then
                                                flyingReached = true  
                                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                                    if titan:IsA("Model") then
                                                        local nape = titan:FindFirstChild("Hitboxes") and 
                                                                    titan.Hitboxes:FindFirstChild("Hit") and 
                                                                    titan.Hitboxes.Hit:FindFirstChild("Nape")

                                                        if nape then
                                                            registerAndAttackTitan(titan)

                                                            local waitTime = 0
                                                            while nape and nape.CanTouch and waitTime < 3 do
                                                                wait(0.1)
                                                                waitTime = waitTime + 0.1
                                                            end

                                                            if nape and not nape.CanTouch then
                                                                nape:Destroy()  
                                                                stopFlying()
                                                                wait(1)  
                                                            end
                                                            break  
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end)

                                while _G.AutoRaid do
                                    local foundTitan = false
                                    for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                        if titan:IsA("Model") then
                                            local nape = titan:FindFirstChild("Hitboxes") and 
                                                        titan.Hitboxes:FindFirstChild("Hit") and 
                                                        titan.Hitboxes.Hit:FindFirstChild("Nape")

                                            if nape then
                                                foundTitan = true  
                                                local targetPosition = nape.Position + Vector3.new(0, _G.selectedUpraid, 0)
                                                startFlyingToCFrame(CFrame.new(targetPosition), _G.selectedspeedraid)
                                                wait(1)
                                                break  
                                            end
                                        end
                                    end

                                    if not foundTitan then
                                        wait(3)
                                    end
                                end

                                stopFlying()
                            end
                        end

                        function AutoReloadBlades()
                            local Players = game:GetService("Players")
                            local player = Players.LocalPlayer
                            local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET")
                            local offsetBar = player.PlayerGui.Interface.HUD.Main.Top.Blades.Inner.Bar.Gradient
                            local hasFired = false

                            offsetBar:GetPropertyChangedSignal("Offset"):Connect(function()
                                local currentOffset = offsetBar.Offset.X
                                if currentOffset <= -0.15 and not hasFired then
                                    remote:InvokeServer("Blades", "Reload")
                                    hasFired = true
                                elseif currentOffset > -0.15 then
                                    hasFired = false
                                end
                            end)
                        end

                        function restart()
                            local args = {
                                "Functions",
                                "Retry",
                                "Add"
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET"):InvokeServer(unpack(args))
                        end

                        function Backtomenu()
                            local args = {
                                "Functions",
                                "Teleport"
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET"):InvokeServer(unpack(args))
                        end

                        function EscapeBite()
                            local yea = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Buttons

                            local args = {
                                "Attacks",
                                "Slash_Escape"
                            }
                            
                            -- Prüfen, ob yea aktiv ist
                            while true do
                            if yea.Visible == true then 
                                game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST"):FireServer(unpack(args))
                            end
                            yea.Visible = false
                            wait(0.1)
                            end
                        end


                        function AutoRetry()
                            local player = game:GetService("Players").LocalPlayer
                            local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET")
                            local retryButton = player.PlayerGui:WaitForChild("Interface")
                                :WaitForChild("Rewards")
                                :WaitForChild("Main")
                                :WaitForChild("Info")
                                :WaitForChild("Main")
                                :WaitForChild("Buttons")
                                :WaitForChild("Retry")
                                :FindFirstChild("Title")  -- Prevents errors if missing

                            -- Ensure retryButton exists
                            if not retryButton then
                                warn("Retry button not found! AutoReloadBlades will not work.")
                                return
                            end

                            local hasFired = false

                            retryButton:GetPropertyChangedSignal("Text"):Connect(function()
                                local currentOffset = retryButton.Text  -- Fetch updated text

                                if (currentOffset == "RETRY (0/1)" or currentOffset == "RETRY (0/2)" or 
                                    currentOffset == "RETRY (0/3)" or currentOffset == "RETRY (0/4)" or 
                                    currentOffset == "RETRY (0/5)") and not hasFired then
                                    
                                    local args = {"Functions", "Retry", "Add"}
                                    remote:InvokeServer(unpack(args))  -- Change to `InvokeServer` if needed
                                    hasFired = true
                                elseif currentOffset == "RETRY (0/0)" then
                                    hasFired = false
                                end
                            end)
                        end



                        
                        local function AttackTitan(titan)
                            local hitboxes = titan:FindFirstChild("Hitboxes")
                            if not hitboxes then return end

                            local hit = hitboxes:FindFirstChild("Hit")
                            if not hit then return end

                            local nape = hit:FindFirstChild("Nape")
                            if not nape then return end

                            -- Execute remote calls safely
                            local success, err = pcall(function()
                                remote:FireServer("Attacks", "Slash", true)
                                remote:FireServer("Hitboxes", "Register", nape, 384.37, 0.41)
                                remote:FireServer("Attacks", "Slash", false)
                            end)

                            if not success then
                                warn("[Error] Failed to attack Titan: " .. err)
                            end
                        end

                        local function killauraTitans()
                            while _G.AutoFarmOp do
                                AutoRetank()
                                AutoReloadBlades()

                                -- Iterate through all Titans and attack them
                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                    if titan:IsA("Model") then
                                        AttackTitan(titan)
                                    end
                                end

                                wait(0.1) -- Short delay to reduce lag
                            end
                        end

                        local function FastMission()
                            while _G.FastMission do
                                -- Iterate through all Titans and attack them
                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                    if titan:IsA("Model") then
                                        AttackTitan(titan)
                                    end
                                end

                                wait(0.1) -- Short delay to reduce lag
                            end
                        end




                        local function FastMissionRaid()
                            while _G.FastMissionRaid do
                                -- Iterate through all Titans and attack them
                                for _, titan in ipairs(workspace.Titans:GetChildren()) do
                                    if titan:IsA("Model") then
                                        AttackTitan(titan)
                                    end
                                end

                                wait(0.1) -- Short delay to reduce lag
                            end
                        end


                        function executeRemote()
                            if _G.EnableDelay == true then 
                                if _G.delayInput and _G.delayInput > 0 then
                                    -- Your remote function (example using a placeholder remote here)
                                    local ReplicatedStorage = game:GetService("ReplicatedStorage")
                                    local remote = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET")
                                    local args = {"Functions", "Retry", "Add"}
                                    wait(_G.delayInput)  -- Wait for the delay time
                                    remote:InvokeServer(unpack(args))  -- Execute the remote
                                else
                                    Library:Notify("Please enter a valid delay time.", 3)  -- Notify if delay is invalid
                                end
                            end
                        end

                        local function EnableDelay()
                            while _G.EnableDelay do

                                executeRemote()

                                wait(0.1)
                            end
                        end



                        function framewatcher()
                            local player = game.Players.LocalPlayer
                            local playerGui = player:WaitForChild("PlayerGui")

                            -- Function to detect and delete new Frames with names 1, 2, or 3
                            local function onChildAdded(child)
                                if child:IsA("Frame") and (child.Name == "1" or child.Name == "2" or child.Name == "3") then
                                    child:Destroy()
                                end
                            end

                            -- Connect to existing Frames and future ones
                            for _, gui in pairs(playerGui:GetChildren()) do
                                if gui:IsA("ScreenGui") then
                                    gui.ChildAdded:Connect(onChildAdded)
                                end
                            end

                            -- Monitor new ScreenGuis being added
                            playerGui.ChildAdded:Connect(function(gui)
                                if gui:IsA("ScreenGui") then
                                    gui.ChildAdded:Connect(onChildAdded)
                                end
                            end)
                        end

                        function deleteall()
                            local lighting = game:GetService("Lighting")
                            local unclimable = game.Workspace:FindFirstChild("Unclimbable")
                            local climable = game.Workspace:FindFirstChild("Climbable")
                            if unclimable then
                                unclimable:Destroy()
                            else
                            end
                            if climable then
                                climable:Destroy()
                            else
                            end
                            for _, child in pairs(lighting:GetChildren()) do
                                child:Destroy()
                            end
                        end


                        function Ripall()
                                local player = game.Players.LocalPlayer
                                local character = player.Character or player.CharacterAdded:Wait() -- Get the player's character
                                local hum = character:WaitForChild("HumanoidRootPart") -- Accessing HumanoidRootPart
                                local remote = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("POST")
                                

                                framewatcher()
                                deleteall()

                                while true do
                                    -- Iterate through each Titan model in the workspace
                                    for _, titan in ipairs(workspace.Titans:GetDescendants()) do
                                        if titan:IsA("Model") then
                                            -- Find "Fake" and "Hitboxes" within each Titan model
                                            local fake = titan:FindFirstChild("Fake")
                                            local hitboxes = titan:FindFirstChild("Hitboxes")
                                            if hitboxes then
                                                local hit = hitboxes:FindFirstChild("Hit")
                                                if hit and fake then
                                                    -- Find "Nape" within the Hit model
                                                    local nape = hit:FindFirstChild("Nape")
                                                    if nape then
                                                        -- Destroy the Fake and adjust Nape's position
                                                        fake:Destroy()
                                                        nape.Anchored = true
                                                        nape.CFrame = hum.CFrame -- Position Nape to the HumanoidRootPart

                                                        -- Fire skills through the remote
                                                        local args1 = {"S_Skills", "Usage", "108", false}
                                                        remote:FireServer(unpack(args1))

                                                        local args2 = {"S_Skills", "Usage", "23", false}
                                                        remote:FireServer(unpack(args2))

                                                        local args3 = {"S_Skills", "Usage", "14", false}
                                                        remote:FireServer(unpack(args3))
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    wait(0.1) -- Check for updates every 0.1 seconds (adjust as needed)
                                end
                        end

                        local function RipAllToggle()
                            while _G.RipallTogle do
                                -- Iterate through all Titans and attack them
                                Ripall()
                                wait(0.1)
                            end
                        end

                        function deletebuilding()

                            local climbable = workspace:FindFirstChild("Climbable")
                            if climbable then
                                climbable:Destroy()
                            end

                            local unclimbable = workspace:FindFirstChild("Unclimbable")
                            if unclimbable then
                                local props = unclimbable:FindFirstChild("Props")
                                if props then
                                    props:Destroy()
                                end
                            end

                        end

                        function noclip()

                                local RunService = game:GetService("RunService")
                                local Players = game:GetService("Players")

                                local player = Players.LocalPlayer
                                local character = player.Character or player.CharacterAdded:Wait()
                                local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

                            

                                RunService.Stepped:Connect(function()
                                    if _G.noclip then
                                        for _, part in pairs(character:GetChildren()) do
                                            if part:IsA("BasePart") then
                                                part.CanCollide = false
                                            end
                                        end
                                    else
                                        for _, part in pairs(character:GetChildren()) do
                                            if part:IsA("BasePart") then
                                                part.CanCollide = true
                                            end
                                        end
                                    end
                                end)

                        


                        end


                            local function collectItems()
                                local itemList = {}
                                for _, child in pairs(ItemsFolder:GetChildren()) do
                                    if child.Name ~= "Grid" then
                                        table.insert(itemList, { name = child.Name })
                                    end
                                end
                                return itemList
                            end

                            local function formatPayload(itemList)
                                local payload = {
                                    username = Player.Name,
                                    embeds = {
                                        {
                                            title = "[ All Items ]",
                                            description = "Items collected by " .. Player.Name .. ":\nHere are all the items :",
                                            color = 0xdda3ff,
                                            fields = {}
                                        }
                                    }
                                }
                                
                                for _, item in ipairs(itemList) do
                                    table.insert(payload.embeds[1].fields, {
                                        name = "Item Name: " .. item.name,
                                        value = " ",
                                        inline = false
                                    })
                                end
                                
                                return payload
                            end

                            local function sendWebhook(payload)
                                Request({
                                    Url = _G.DiscordWebhook,
                                    Method = "POST",
                                    Headers = {
                                        ["Content-Type"] = "application/json"
                                    },
                                    Body = HttpService:JSONEncode(payload)
                                })
                            end

                            local debounce = false

                            local function onItemsUpdated()
                                if debounce then return end
                                debounce = true
                                wait(0.5)  -- Adjust the delay to batch multiple item additions
                                local itemList = collectItems()
                                local payload = formatPayload(itemList)
                                sendWebhook(payload)
                                debounce = false
                            end

                            function opensecondchest()
                            if _G.OpenSecondChest == true then
                                        local args = {"S_Rewards","Chest","Premium"}
                                        game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET"):InvokeServer(unpack(args))
                                        
                            end
                        end

                            
                        local Click
                            Click = function()
                                if not _G.AutoOpenChest then
                                    if Connection then
                                        Connection:Disconnect()
                                        Connection = nil
                                    end
                                    return
                                end

                                if Debounce then return end
                                Debounce = true

                                repeat task.wait()
                                    local gui = Player.PlayerGui.Interface:FindFirstChild("Chests")
                                    local shake = Player.PlayerGui.Interface.Chests:FindFirstChild("Finish")
                                    local retryButton = player.PlayerGui:WaitForChild("Interface")
                                            :WaitForChild("Rewards")
                                            :WaitForChild("Main")
                                            :WaitForChild("Info")
                                            :WaitForChild("Main")
                                            :WaitForChild("Buttons")
                                            :WaitForChild("Leave_2")
                                    local infobutton = player.PlayerGui:WaitForChild("Interface")
                                            :WaitForChild("Rewards")
                                            :WaitForChild("Main")
                                            :WaitForChild("Info")
                                            :WaitForChild("Main")
                                            :WaitForChild("Buttons")
                                            :WaitForChild("Modify")


                                    if shake and shake:IsA("GuiButton") and gui.Visible == true then
                                        opensecondchest()
                                        wait(0.1)
                                        local args1 = {"S_Rewards", "Chest", "Free"}
                                        game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("GET"):InvokeServer(unpack(args1))
                                        wait(2)
                                        retryButton.Selectable = false
                                        infobutton.Selectable = false
                                        GuiService.SelectedObject = shake
                                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                                    end
                                until not shake
                                GuiService.SelectedObject = retryButton
                                Debounce = false
                            end


                    local Tabs = {
                        Main = Window:AddTab('Main'), 
                        ['UI Settings'] = Window:AddTab('UI Settings'),
                    }

                    local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main')
                    local RightGroupBox = Tabs.Main:AddRightGroupbox('Main')
                    local RightGroupBoxRipper = Tabs.Main:AddRightGroupbox('Op Shit')
                    local RightGroupBoxRipall = Tabs.Main:AddRightGroupbox('Rip All')
                    local Thunderspear = Tabs.Main:AddRightGroupbox('Thunder Spears')
                    local KeyGroup = Tabs.Main:AddRightGroupbox('Failsafe retry')
                    --local Webhook = Tabs.Main:AddRightGroupbox('Webhook Options')
                    local OpenChest = Tabs.Main:AddRightGroupbox('Open Chest Options')
                    local Webhook = Tabs.Main:AddRightGroupbox('Webhook Options')
                    local LeftGroupBoxunder = Tabs.Main:AddLeftGroupbox('Auto Farm Legit')
                    local LeftGroupBoxunderRaid = Tabs.Main:AddLeftGroupbox('Auto Raid Legit')


                    Thunderspear:AddToggle('KillThunderSpear', {
                        Text = 'Tunder Spear Insta Kill',
                        Default = false,
                        Tooltip = 'Toggle Thunder Killer',
                        Callback = function(Value)
                        _G.ThunderSpearFarm = Value
                        thunderspearop()

                        end
                    })




                    LeftGroupBox:AddDropdown('MyDropdown', {
                        Values = { 'Nape', 'Eyes', 'LeftArm', 'RightArm', 'RightLeg', 'LeftLeg'  },
                        Default = "Nape",
                        Multi = false,
                        Text = 'Select Hitbox Part',
                        Tooltip = 'Select the Part for Hitbox expander',
                        Callback = function(Value)
                            _G.selectedpart = Value
                        end
                    })

                    LeftGroupBox:AddDropdown('MyDropdown', {
                        Values = { 1, 0.75, 0.50, 0.25, 0 },
                        Default = 0.5,
                        Multi = false,
                        Text = 'Select Hitbox transparency',
                        Tooltip = 'Select the transparency for Hitbox expander',
                        Callback = function(Value)
                            _G.selectedtransparency = Value
                        end
                    })

                    LeftGroupBox:AddInput('MyTextbox', {
                        Default = 'Change the Size',
                        Numeric = true,
                        Finished = false,
                        Text = 'Change Hitbox Size',
                        Tooltip = 'Select the Size of the Hitbox',
                        Placeholder = 'Size',
                        Callback = function(Value)
                            _G.selectedsize = Value
                        end
                    })



                    local MyButton2 = LeftGroupBox:AddButton('Expand Hitbox', function()

                        HitboxExpander()

                    end)

                    local MyButton2 = RightGroupBox:AddButton('No Injuries', function()

                        RemoveInjuris()

                    end)

                    local MyButton2 = RightGroupBox:AddButton('Reset Character', function()

                        ResetChar()

                    end)

                    local MyButton2 = RightGroupBox:AddButton('Force Retry', function()

                        restart()

                    end)

                    local MyButton2 = RightGroupBox:AddButton('Force Menu', function()

                        Backtomenu()

                    end)

                    local MyButton2 = RightGroupBox:AddButton('Escape Bites', function()

                        EscapeBite()

                    end)



                    LeftGroupBoxunder:AddInput('MyTextbox', {
                        Default = 'Change the Speed',
                        Numeric = true,
                        Finished = false,
                        Text = 'Change Auto Farm Speed',
                        Tooltip = 'I Would Recomdend 350, 400, or 500 Default is 350',
                        Placeholder = 'Size',
                        Callback = function(Value)
                            _G.selectedspeed = Value
                        end
                    })

                    LeftGroupBoxunder:AddInput('MyTextbox', {
                        Default = 'Change the Height',
                        Numeric = true,
                        Finished = false,
                        Text = 'Change Auto Farm Height',
                        Tooltip = 'I Would Recomdend 150 Default is 150',
                        Placeholder = 'Size',
                        Callback = function(Value)
                            _G.selectedUp = Value
                        end
                    })

                    LeftGroupBoxunder:AddToggle('AutoFarmLegit', {
                        Text = 'Auto Farm',
                        Default = false,
                        Tooltip = 'Enable Auto Farm',
                        Callback = function(Value)
                            _G.AutoFarm = Value
                            AutoFarmLegit()  
                        end
                    })

                    LeftGroupBoxunder:AddToggle('NoClip', {
                        Text = 'No Clip',
                        Default = false,
                        Tooltip = 'Enable No Clip',
                        Callback = function(Value)
                            _G.noclip = Value
                            noclip() 
                        end
                    })

                    LeftGroupBoxunder:AddToggle('AutoMissionOP', {
                        Text = 'Fast Mission With Auto Farm',
                        Default = false,
                        Tooltip = 'Enable Fast Mission USE WITH Auto Farm',
                        Callback = function(Value)

                            _G.FastMission = Value

                        end
                    })


                    LeftGroupBoxunder:AddToggle('AutoReloadBlades', {
                        Text = 'Auto Reload Blades',
                        Default = false,
                        Tooltip = 'Auto Reload Blades',
                        Callback = function(Value)
                            
                            AutoReloadBlades()

                        end
                    })

                    LeftGroupBoxunder:AddToggle('AutoRetry', {
                        Text = 'Auto Retry',
                        Default = false,
                        Tooltip = 'Auto Retrys after end',
                        Callback = function(Value)
                            _G.autoretry = Value
                            AutoRetry()
                        end
                    })


                    LeftGroupBoxunderRaid:AddInput('MyTextbox', {
                        Default = 'Change the Speed',
                        Numeric = true,
                        Finished = false,
                        Text = 'Change Auto Raid Speed',
                        Tooltip = 'I Would Recomdend 350, 400, or 500 Default is 350',
                        Placeholder = 'Size',
                        Callback = function(Value)
                            _G.selectedspeedraid = Value
                        end
                    })

                    RightGroupBoxRipall:AddToggle('RipTitans', {
                        Text = 'Rip All Titans',
                        Default = false,
                        Tooltip = 'Op Rip',
                        Callback = function(Value)

                            _G.RipallTogle = Value


                        end
                    })

                    LeftGroupBoxunderRaid:AddInput('MyTextbox', {
                        Default = 'Change the Height',
                        Numeric = true,
                        Finished = false,
                        Text = 'Change Auto Raid Height',
                        Tooltip = 'I Would Recomdend 150 Default is 200',
                        Placeholder = 'Size',
                        Callback = function(Value)
                            _G.selectedUpraid = Value
                        end
                    })

                    LeftGroupBoxunderRaid:AddToggle('AutoRaid', {
                        Text = 'RaidFarm Legit',
                        Default = false,
                        Tooltip = 'Auto Reload Blades',
                        Callback = function(Value)

                        _G.AutoRaid = Value
                        RaidAutoFarmLegit()

                        end
                    })

                    LeftGroupBoxunderRaid:AddToggle('RapeRaid', {
                        Text = 'OP Raid With RaidFarm',
                        Default = false,
                        Tooltip = 'Op',
                        Callback = function(Value)

                            _G.FastMissionRaid = Value

                        end
                    })


                    RightGroupBoxRipper:AddToggle('KillAura', {
                        Text = 'Kill Aura',
                        Default = false,
                        Tooltip = 'Toggle Kill Aura',
                        Callback = function(Value)

                            _G.AutoFarmOp = Value

                        end
                    })

                    Toggles.KillAura:OnChanged(function()

                        killauraTitans()

                    end)

                    Toggles.AutoMissionOP:OnChanged(function()

                        FastMission()

                    end)

                    Toggles.RapeRaid:OnChanged(function()

                        FastMissionRaid()

                    end)

                    Toggles.RipTitans:OnChanged(function()

                        RipAllToggle()

                    end)


                    KeyGroup:AddInput("DelayInput", {
                        Default = "",
                        Numeric = true,  -- Only accept numeric input
                        Finished = false,
                        Text = "Enter Delay",
                        Placeholder = "Input delay in seconds",
                        Callback = function(value)
                            _G.delayInput = tonumber(value)  -- Store the input value
                        end
                    })


                    KeyGroup:AddToggle('ExecuteRemote', {
                        Text = 'Rejoin After Delay',
                        Default = false,
                        Tooltip = 'Toggle Rejoin After Delay  ',
                        Callback = function(Value)

                        _G.EnableDelay = Value
                            
                        end
                    })

                    Toggles.ExecuteRemote:OnChanged(function()

                        EnableDelay()
                    
                    end)




                    OpenChest:AddToggle('AutoOpenChest', {
                        Text = 'Auto Open Raid Chest',
                        Default = false,
                        Tooltip = 'Sends ur items to Webhook',
                        Callback = function(Value)

                        _G.AutoOpenChest = Value
                            
                        end
                    })

                    OpenChest:AddToggle('Auto2OpenChest', {
                        Text = 'Auto Open 2 Raid Chest',
                        Default = false,
                        Tooltip = 'Sends ur items to Webhook',
                        Callback = function(Value)

                        _G.OpenSecondChest = Value
                            
                        end
                    })



                    Toggles.AutoOpenChest:OnChanged(function()
                        if _G.AutoOpenChest == true then

                        Connection = RunService.RenderStepped:Connect(Click)

                        end
                    end)

                    Webhook:AddToggle('WebhookTogle', {
                        Text = 'Send Items Webhook',
                        Default = false,
                        Tooltip = 'Sends ur items to Webhook',
                        Callback = function(Value)

                        _G.SendWebhook = Value
                            
                        end
                    })



                    Toggles.WebhookTogle:OnChanged(function()
                    if  _G.SendWebhook == true then
                                ItemsFolder.ChildAdded:Connect(onItemsUpdated)
                                ItemsFolder.ChildRemoved:Connect(onItemsUpdated)
                    end
                    end)

                    local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
                    MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

                    Library.ToggleKeybind = Options.MenuKeybind
                    MenuGroup:AddButton('Unload', function() Library:Unload() end)
                    ThemeManager:SetLibrary(Library)
                    SaveManager:SetLibrary(Library)
                    ThemeManager:SetFolder('MakisAot')
                    SaveManager:SetFolder('MakisAot')
                    SaveManager:BuildConfigSection(Tabs['UI Settings'])
                    ThemeManager:ApplyToTab(Tabs['UI Settings'])
                    SaveManager:LoadAutoloadConfig()
else
  print("Key is invalid")
end
