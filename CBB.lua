if game.PlaceId == 7603178367 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Chipotle Burrito Builder", "Sentinel")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("AutoFarm")

    MainSection:NewToggle("Looped Autofarm", "ToggleInfo", function(state)
        if state then
            totggle = true
            while totggle == true
            do
                print(state)
                local args = {
                [1] = "StartDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                for i = 1,5,1 
                do
                local args = {
                    [1] = "UpdateDelivery",
                    [2] = workspace.DeliveryLocations:FindFirstChild("8")
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))   
                end
                local args = {
                    [1] = "CompleteDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                wait(0.01)
                print("Toggle ended")
            end    
        else
            totggle = false
        end
    end)

    MainSection:NewToggle("Faster Looped Autofarm", "ToggleInfo", function(state)
        if state then
            totggle = true
            while totggle == true
            do
                print(state)
                local args = {
                [1] = "StartDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                for i = 1,5,1 
                do
                local args = {
                    [1] = "UpdateDelivery",
                    [2] = workspace.DeliveryLocations:FindFirstChild("8")
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))   
                end
                local args = {
                    [1] = "CompleteDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                wait(0.00001)
                print("Toggle ended")
            end    
        else
            totggle = false
        end
    end)

    MainSection:NewButton("Single run autofarm", "ButtonInfo", function()
        local args = {
            [1] = "StartDelivery"
            }
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
            for i = 1,5,1 
            do
            local args = {
                [1] = "UpdateDelivery",
                [2] = workspace.DeliveryLocations:FindFirstChild("8")
            }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            wait(0.1)
            end
            local args = {
                [1] = "CompleteDelivery"
            }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end)
end


