    -----------------blox fruits------------------


    ----------script by xSaigez ----------






    --[[___   ___      _______.     ___       __    _______  _______  ________  
    \  \ /  /     /       |    /   \     |  |  /  _____||   ____||       /  
     \  V  /     |   (----`   /  ^  \    |  | |  |  __  |  |__   `---/  /   
      >   <       \   \      /  /_\  \   |  | |  | |_ | |   __|     /  /    
     /  .  \  .----)   |    /  _____  \  |  | |  |__| | |  |____   /  /----.
    /__/ \__\ |_______/    /__/     \__\ |__|  \______| |_______| /________|
    ]]


    game.StarterGui:SetCore("SendNotification", {
        Icon = "rbxassetid://8693481866";
        Title = "xSaigez hub", 
        Text = "Loading... Script"
     })
    wait(2.5)

    wait(2.4)

    game.StarterGui:SetCore("SendNotification", {
        Icon = "rbxassetid://8693481866";
        Title = "xSaigez hub", 
        Text = "welecome xSaigez hub"
     })
    wait(1.1)




    if _G.Team == "Pirate" then
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
            v.Function()
        end
    elseif _G.Team == "Marine" then
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
            v.Function()
        end
    else
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
            v.Function()
        end
    end

    if game:GetService("CoreGui"):FindFirstChild("XSAIGEZ UI") then
        game:GetService("CoreGui"):FindFirstChild("XSAIGEZ UI"):Destroy()
    end
    do  local ui =  game:GetService("CoreGui"):FindFirstChild("redui")  
        if  ui then ui:Destroy() 
            end 
        end
        
        local UserInputService = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local tween = game:GetService("TweenService")
        local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
        local PresetColor = Color3.fromRGB(255, 255, 255)
        
        
        coroutine.wrap(
            function()
                while wait() do
                    Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
                    Red.HueSelectionPosition = Red.HueSelectionPosition + 1
        
                    if Red.RainbowColorValue >= 1 then
                        Red.RainbowColorValue = 0
                    end
        
                    if Red.HueSelectionPosition == 160 then
                        Red.HueSelectionPosition = 0
                    end
                end
            end
        )()
        
        local Reduisceen = Instance.new("ScreenGui")
        Reduisceen.Parent = game:GetService("CoreGui")
        Reduisceen.Name = "redui"
        Reduisceen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        
        
        
        local function MakeDraggable(topbarobject, object)
            local Dragging = nil
            local DragInput = nil
            local DragStart = nil
            local StartPosition = nil
        
            local function Update(input)
                local Delta = input.Position - DragStart
                local pos =
                    UDim2.new(
                    StartPosition.X.Scale,
                    StartPosition.X.Offset + Delta.X,
                    StartPosition.Y.Scale,
                    StartPosition.Y.Offset + Delta.Y
                )
                local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
                Tween:Play()
            end
        
            topbarobject.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        Dragging = true
                        DragStart = input.Position
                        StartPosition = object.Position
        
                        input.Changed:Connect(
                            function()
                                if input.UserInputState == Enum.UserInputState.End then
                                    Dragging = false
                                end
                            end
                        )
                    end
                end
            )
        
            topbarobject.InputChanged:Connect(
                function(input)
                    if
                        input.UserInputType == Enum.UserInputType.MouseMovement or
                            input.UserInputType == Enum.UserInputType.Touch
                    then
                        DragInput = input
                    end
                end
            )
        
            UserInputService.InputChanged:Connect(
                function(input)
                    if input == DragInput and Dragging then
                        Update(input)
                    end
                end
            )
        end
        
        local function Tween(instance, properties,style,wa)
            if style == nil or "" then
                return Back
            end
            tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
        end
        
        local create = {}
        function create:Win(text)
            local fs = false
        
            local MainSceen = Instance.new("Frame")
            MainSceen.Name = "MainSceen"
            MainSceen.Parent = Reduisceen
            MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
            MainSceen.BackgroundColor3 = Color3.fromRGB(15,15,15)
            MainSceen.BorderSizePixel = 0
            MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
            MainSceen.Size = UDim2.new(0, 0, 0, 0)
            MainSceen.ClipsDescendants = true
        
            local Main_UiConner  = Instance.new("UICorner")
        
            Main_UiConner.CornerRadius = UDim.new(0, 4)
            Main_UiConner.Name = "Main_UiConner"
            Main_UiConner.Parent = MainSceen
        
            local ClickFrame = Instance.new("Frame")
            ClickFrame.Name = "ClickFrame"
            ClickFrame.Parent = MainSceen
            ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
            ClickFrame.BorderSizePixel = 0
            ClickFrame.Position = UDim2.new(0.5, 0, 0.036, 0)
            ClickFrame.Size = UDim2.new(0, 534-20, 0, 30)
            ClickFrame.ClipsDescendants = true
            ClickFrame.BackgroundTransparency = 1
        
            MakeDraggable(ClickFrame,MainSceen)
            tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 474)}):Play()
        
            local library = {toggledui = false;}
            game:GetService("UserInputService").InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.RightControl then
                    if library.toggledui == false then
                        library.toggledui = true
                        tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                    else
                        library.toggledui = false
                        tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 534, 0, 474)}):Play()
                    end
                end
            end)
        
            local NameReal = Instance.new("TextLabel")
        
            NameReal.Parent = MainSceen
            NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameReal.BackgroundTransparency = 1
            NameReal.BorderSizePixel = 0
            NameReal.Position = UDim2.new(0.5, 0, 0.05, 0)
            NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
            NameReal.Size = UDim2.new(0, 136, 0, 34)
            NameReal.Font = Enum.Font.GothamBold
            NameReal.Text = tostring(text)
            NameReal.TextColor3 = Color3.fromRGB(3, 250, 19)
            NameReal.TextSize = 14.000
        
        
            local MainSceen2 = Instance.new("Frame")
            MainSceen2.Name = "MainSceen2"
            MainSceen2.Parent = MainSceen
            MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
            MainSceen2.BackgroundColor3 = Color3.fromRGB(18,18,18)
            MainSceen2.BorderSizePixel = 0
            MainSceen2.Position = UDim2.new(0.5, 0, 0.5, 0)
            MainSceen2.Size = UDim2.new(0, 0, 0, 0)
            MainSceen2.ClipsDescendants = true
        
            local Main_UiConner2  = Instance.new("UICorner")
        
            Main_UiConner2.CornerRadius = UDim.new(0, 4)
            Main_UiConner2.Name = "Main_UiConner"
            Main_UiConner2.Parent = MainSceen
        
            MainSceen2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0, 474-50), UDim2.new(0.5, 0, 0.53, 0), "Out", "Back", 0.5, true)
        
        
            local ScolTapBarFrame = Instance.new("Frame")
            ScolTapBarFrame.Name = "MainSceen2"
            ScolTapBarFrame.Parent = MainSceen2
            ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
            ScolTapBarFrame.BorderSizePixel = 0
            ScolTapBarFrame.BackgroundTransparency = 1
            ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)
            ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
            ScolTapBarFrame.ClipsDescendants = true
        
            local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")
        
            ScrollingFrame_Menubar.Parent = ScolTapBarFrame
            ScrollingFrame_Menubar.Active = true
            ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame_Menubar.BackgroundTransparency = 1
            ScrollingFrame_Menubar.BorderSizePixel = 0
            ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
            ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
            ScrollingFrame_Menubar.ScrollBarImageColor3 = Color3.fromRGB(3, 250, 19)
            ScrollingFrame_Menubar.ScrollBarThickness = 3
        
        
            local UIListLayout_Menubar = Instance.new("UIListLayout")
        
            UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
            UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Menubar.Padding = UDim.new(0, 10)
        
            local UIPadding_Menubar = Instance.new("UIPadding")
        
            UIPadding_Menubar.Parent = ScrollingFrame_Menubar
            UIPadding_Menubar.PaddingTop = UDim.new(0, 2)
        
        
            local PageOrders = -1
        
            local Container_Page = Instance.new('Frame',MainSceen2)
            Container_Page.Size = UDim2.new(0, 518, 0, 268)
            Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)
            Container_Page.BackgroundTransparency = 1
            Container_Page.Name = "Page "
            Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)
        
            local pagesFolder = Instance.new("Folder")
        
            pagesFolder.Name = "pagesFolder"
            pagesFolder.Parent = Container_Page
        
        
            local UIPage = Instance.new('UIPageLayout',pagesFolder)
            UIPage.SortOrder = Enum.SortOrder.LayoutOrder
            UIPage.EasingDirection = Enum.EasingDirection.InOut
            UIPage.EasingStyle = Enum.EasingStyle.Quad
            UIPage.Padding = UDim.new(0, 10)
            UIPage.TweenTime = 0.500
        
            local top = {}
        
            local NotiFrame = Instance.new("Frame")
            NotiFrame.Name = "NotiFrame"
            NotiFrame.Parent = Reduisceen
            NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
            NotiFrame.BorderSizePixel = 0
            NotiFrame.Position =  UDim2.new(1, -210, 1, -500)
            NotiFrame.Size = UDim2.new(0, 400, 0, 500)
            NotiFrame.ClipsDescendants = true
            NotiFrame.BackgroundTransparency = 1
        
        
            local Notilistlayout = Instance.new("UIListLayout")
            Notilistlayout.Parent = NotiFrame
            Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
            Notilistlayout.Padding = UDim.new(0, 5)
        
        
            function create:Notifile(titel,text,delays)
                local TitleFrame = Instance.new("Frame")
                TitleFrame.Name = "TitleFrame"
                TitleFrame.Parent = NotiFrame
                TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
                TitleFrame.BorderSizePixel = 0
                TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
                TitleFrame.Size = UDim2.new(0, 0, 0, 0)
                TitleFrame.ClipsDescendants = true
                TitleFrame.BackgroundTransparency = 0
        
                local ConnerTitile = Instance.new("UICorner")
        
                ConnerTitile.CornerRadius = UDim.new(0, 4)
                ConnerTitile.Name = ""
                ConnerTitile.Parent = TitleFrame
        
                TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)
        
                local imagenoti = Instance.new("ImageLabel")
        
                imagenoti.Parent = TitleFrame
                imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                imagenoti.BackgroundTransparency = 1.000
                imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
                imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
                imagenoti.Size = UDim2.new(0, 50, 0, 50)
            --  imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"
        
                local txdlid = Instance.new("TextLabel")
        
                txdlid.Parent = TitleFrame
                txdlid.Name = "TextLabel_Tap"
                txdlid.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                txdlid.Size =UDim2.new(0, 160, 0,25 )
                txdlid.Font = Enum.Font.GothamBold
                txdlid.Text = titel
                txdlid.TextColor3 = Color3.fromRGB(3, 250, 19)
                txdlid.TextSize = 13.000
                txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
                txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
                -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
                txdlid.TextXAlignment = Enum.TextXAlignment.Left
                txdlid.BackgroundTransparency = 1
        
                local LableFrame = Instance.new("Frame")
                LableFrame.Name = "LableFrame"
                LableFrame.Parent = TitleFrame
                LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                LableFrame.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                LableFrame.BorderSizePixel = 0
                LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
                LableFrame.Size = UDim2.new(0, 260, 0,25 )
                LableFrame.ClipsDescendants = true
                LableFrame.BackgroundTransparency = 1
        
                local TextNoti = Instance.new("TextLabel")
        
                TextNoti.Parent = LableFrame
                TextNoti.Name = "TextLabel_Tap"
                TextNoti.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                TextNoti.Size =UDim2.new(0, 260, 0,25 )
                TextNoti.Font = Enum.Font.GothamBold
                TextNoti.Text = text
                TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextNoti.TextSize = 13.000
                TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
                TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
                -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
                TextNoti.TextXAlignment = Enum.TextXAlignment.Left
                TextNoti.BackgroundTransparency = 1
        
                repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)
        
                local Time = Instance.new("Frame")
                Time.Name = "Time"
                Time.Parent = TitleFrame
        --Time.AnchorPoint = Vector2.new(0.5, 0.5)
                Time.BackgroundColor3 =  Color3.fromRGB(3, 250, 19)
                Time.BorderSizePixel = 0
                Time.Position =  UDim2.new(0, 0, 0.,0)
                Time.Size = UDim2.new(0, 0,0,0)
                Time.ClipsDescendants = false
                Time.BackgroundTransparency = 0
        
                local ConnerTitile_Time = Instance.new("UICorner")
        
                ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
                ConnerTitile_Time.Name = ""
                ConnerTitile_Time.Parent = Time
        
        
                Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
                repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)
        
                TweenService:Create(
                    Time,
                    TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                delay(tonumber(delays),function()
                    TweenService:Create(
                        TitleFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                        {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    wait(0.3)
                    TitleFrame:Destroy()
                end
            )
            end
        
        
            function top:Taps(text)
                PageOrders = PageOrders + 1
                local name = tostring(text) or tostring(math.random(1,5000))
        
                local Frame_Tap = Instance.new("Frame")
                Frame_Tap.Parent = ScrollingFrame_Menubar
                Frame_Tap.Name = text.."Server"
                Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_Tap.BackgroundTransparency = 1
                Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)
                Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
                Frame_Tap.Visible = true
        
                local TextLabel_Tap = Instance.new("TextLabel")
        
                TextLabel_Tap.Parent = Frame_Tap
                TextLabel_Tap.Name = "TextLabel_Tap"
                TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)
                TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
                TextLabel_Tap.Font = Enum.Font.SourceSans
                TextLabel_Tap.Text = " "
                TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel_Tap.TextSize = 14.000
                TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
        
                local TextButton_Tap = Instance.new("TextButton")
        
                TextButton_Tap.Parent = Frame_Tap
                TextButton_Tap.Name = "TextButton_Tap"
                TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_Tap.BackgroundTransparency = 1.000
                TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
                TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
                TextButton_Tap.Font = Enum.Font.GothamSemibold
                TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
                TextButton_Tap.TextSize = 13.000
                TextButton_Tap.Text = tostring(text)
        
                local MainPage = Instance.new("Frame")
        
                MainPage.Name = name.."_MainPage"
                MainPage.Parent = pagesFolder
                MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
                MainPage.BorderSizePixel = 0
                MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
                MainPage.Size = UDim2.new(0, 518, 0, 375)
                MainPage.BackgroundTransparency = 1
                MainPage.ClipsDescendants = true
                MainPage.Visible = true
                MainPage.LayoutOrder = PageOrders
        
        
        
        
                TextButton_Tap.MouseButton1Click:connect(function()
                    if MainPage.Name == text.."_MainPage" then
                        UIPage:JumpToIndex(MainPage.LayoutOrder)
        
                    end
                    for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
                        if v:IsA("Frame") then
                            TweenService:Create(
                                v.TextButton_Tap,
                                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {TextColor3 = Color3.fromRGB(155, 155, 155)}
                            ):Play()
                        end
        
                        TweenService:Create(
                            TextButton_Tap,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(3, 250, 19)}
                        ):Play()
                    end
                end)
        
                if fs == false then
                    -- TweenService:Create(
                    --     TextLabel_Tap,
                    --     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    --     {Size = UDim2.new(0, 70, 0, 2)}
                    -- ):Play()
                    TweenService:Create(
                        TextButton_Tap,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(3, 250, 19)}
                    ):Play()
        
                    MainPage.Visible = true
                    Frame_Tap.Name  = text .. "Server"
                    fs  = true
                end
                local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")
        
                ScrollingFrame_Pagefrist.Parent = MainPage
                ScrollingFrame_Pagefrist.Active = true
                ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(23, 23, 23) -- 255, 4, 4
                ScrollingFrame_Pagefrist.BorderSizePixel = 0
                ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 375)
                ScrollingFrame_Pagefrist.ScrollBarThickness = 4
                ScrollingFrame_Pagefrist.ScrollBarImageColor3 = Color3.fromRGB(3, 250, 19) -- 3, 250, 19
        
                local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
                local UIPadding_Pagefrist = Instance.new("UIPadding")
        
                UIGridLayout_Pagefrist.Archivable = false
                UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
                UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
                UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
                UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)
        
                UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
                UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
                UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)
        
                local page = {}
        
                function page:newpage()
        
                    local Pageframe = Instance.new("Frame")
        
        
                    Pageframe.Parent = ScrollingFrame_Pagefrist
                    Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    Pageframe.BorderSizePixel = 0
                    Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
                    Pageframe.Size = UDim2.new(0, 240, 0, 379)
        
        
                    local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")
        
        
                    ScrollingFrame_Pageframe.Parent = Pageframe
                    ScrollingFrame_Pageframe.Active = true
                    ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    ScrollingFrame_Pageframe.BorderSizePixel = 0
                    ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
                    ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
                    ScrollingFrame_Pageframe.ScrollBarThickness = 4
                    ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)
        
        
        
                    local UIPadding_Pageframe = Instance.new("UIPadding")
                    local UIListLayout_Pageframe = Instance.new("UIListLayout")
        
        
                    UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
                    UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
                    UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)
        
        
                    UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
                    UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout_Pageframe.Padding = UDim.new(0, 7)
        
                    UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                        ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
                    end)
        
                    UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                        ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
                    end)
        
                    game:GetService("RunService").Stepped:Connect(function ()
                        pcall(function ()
                            ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
                            ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
                            ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
                        end)
                    end)
                local items = {}
        
                function items:Toggle(text,config,callback)
                    local Toggle = Instance.new("Frame")
        
                    Toggle.Parent = ScrollingFrame_Pageframe
                    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Toggle.BorderSizePixel = 0
                    Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Toggle.Size = UDim2.new(0, 213, 0, 35)
                    Toggle.BackgroundTransparency = 1
                    Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        
                    local TextButton_Toggle = Instance.new("TextButton")
        
                    TextButton_Toggle.Parent = Toggle
                    TextButton_Toggle.BackgroundTransparency =1
                    TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    TextButton_Toggle.BorderSizePixel = 0
                    TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
                    TextButton_Toggle.AutoButtonColor = false
                    TextButton_Toggle.Font = Enum.Font.SourceSans
                    TextButton_Toggle.Text = " "
                    TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_Toggle.TextSize = 12.000
        
                    local TextButton_2_Toggle = Instance.new("TextButton")
        
                    TextButton_2_Toggle.Parent = TextButton_Toggle
                    TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            --        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_2_Toggle.BorderSizePixel = 0
                    TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)
                    TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
                    TextButton_2_Toggle.Font = Enum.Font.SourceSans
                    TextButton_2_Toggle.Text = " "
                    TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_2_Toggle.TextSize = 12.000
                    TextButton_2_Toggle.AutoButtonColor = false
        
                    local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner.Name = ""
                    TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle
        
                    local TextButton_3_Toggle = Instance.new("TextButton")
        
                    TextButton_3_Toggle.Parent = TextButton_2_Toggle
                    TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
            --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_3_Toggle.BorderSizePixel = 0
                    TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
                    TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
                    TextButton_3_Toggle.Font = Enum.Font.SourceSans
                    TextButton_3_Toggle.Text = " "
                    TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_3_Toggle.TextSize = 12.000
                    TextButton_3_Toggle.AutoButtonColor = false
        
                    local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner2.Name = ""
                    TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle
        
                    local TextButton_4_Toggle = Instance.new("TextButton")
        
                    TextButton_4_Toggle.Parent = TextButton_3_Toggle
                    TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
            --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_4_Toggle.BorderSizePixel = 0
                    TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
                    TextButton_4_Toggle.Font = Enum.Font.SourceSans
                    TextButton_4_Toggle.Text = " "
                    TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_4_Toggle.TextSize = 12.000
                    TextButton_4_Toggle.AutoButtonColor = false
                    TextButton_4_Toggle.BackgroundTransparency = 1
                    TextButton_4_Toggle.Visible = true
        
                    local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner4.Name = ""
                    TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle
        
                    local TextLabel_Toggle = Instance.new("TextLabel")
        
                    TextLabel_Toggle.Parent = Toggle
                    TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_Toggle.BackgroundTransparency = 1
                    TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)
                    TextLabel_Toggle.BorderSizePixel = 0
                    TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
                    TextLabel_Toggle.Font = Enum.Font.GothamSemibold
                    TextLabel_Toggle.Text = text
                    TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
                    TextLabel_Toggle.TextSize = 13.000
                    TextLabel_Toggle.ClipsDescendants = true
                    TextLabel_Toggle.TextWrapped = true
                    TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left
        
                    local TextButton_Toggle2 = Instance.new("TextButton")
        
                    TextButton_Toggle2.Parent = TextButton_Toggle
                    TextButton_Toggle2.BackgroundTransparency =1
                    TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    TextButton_Toggle2.BorderSizePixel = 0
                    TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
                    TextButton_Toggle2.AutoButtonColor = false
                    TextButton_Toggle2.Font = Enum.Font.SourceSans
                    TextButton_Toggle2.Text = " "
                    TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_Toggle2.TextSize = 12.000
        
                    TextButton_Toggle2.MouseEnter:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextLabel_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                TextButton_Toggle2.MouseLeave:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextLabel_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                local check = {toogle = false ; loacker = true ; togfunction = {
        
                };
            }
            TextButton_Toggle2.MouseButton1Click:Connect(function()
                    if check.toogle == false and check.loacker == true  then
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_3_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_2_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                    elseif  check.loacker ==  true then
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_3_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_2_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                    end
                    if  check.loacker == true  then
                    check.toogle = not check.toogle
                    callback(check.toogle)
                    end
                end
            )
        
                if config == true then
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                    check.toogle = true
                    callback(check.toogle)
                end
        
                local lockerframe = Instance.new("Frame")
        
                lockerframe.Name = "lockerframe"
                lockerframe.Parent = Toggle
                lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                lockerframe.BackgroundTransparency = 1
                lockerframe.Size = UDim2.new(0, 320, 0, 35)
                lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
                lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)
        
                local LockerImageLabel = Instance.new("ImageLabel")
                LockerImageLabel.Parent = lockerframe
                LockerImageLabel.BackgroundTransparency = 1.000
                LockerImageLabel.BorderSizePixel = 0
                LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
                LockerImageLabel.Image = "http://www.roblox.com/asset/?id=8201288239"
        
        
                function check.togfunction:lock()
                    TweenService:Create(
                        lockerframe,
                        TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 0.7}
                    ):Play()
                    TweenService:Create(
                        LockerImageLabel,
                        TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 30, 0, 30)}
                    ):Play()
        
                    check.loacker  = false
                --    pcall(callback,locker)
                end
                function check.togfunction:unlock()
                    TweenService:Create(
                        lockerframe,
                        TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 1}
                    ):Play()
                    TweenService:Create(
                        LockerImageLabel,
                        TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 0, 0, 0)}
                    ):Play()
                    check.loacker  = true
                --   pcall(callback,locker)
                end
        
                    return  check.togfunction
                end
        
                function items:Button(text,callback)
        
                    local ButtonFrame = Instance.new("Frame")
        
                    ButtonFrame.Name = "ButtonFrame"
                    ButtonFrame.Parent = ScrollingFrame_Pageframe
                    ButtonFrame.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    ButtonFrame.BorderSizePixel = 0
                    ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
                    ButtonFrame.BackgroundTransparency  = 1
                    ButtonFrame.ClipsDescendants = true
        
        
        
                    local MheeFrameStroke = Instance.new("UIStroke")
        
                    MheeFrameStroke.Thickness = 0
                    MheeFrameStroke.Name = ""
                    MheeFrameStroke.Parent = ButtonFrame
                    MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                    MheeFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                    MheeFrameStroke.Transparency = 0.7
        
                    local Button = Instance.new("TextButton")
        
                    Button.Parent = ButtonFrame
                    Button.Name = "Button"
                    Button.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    Button.Size = UDim2.new(0,150, 0, 25)
                    Button.Font = Enum.Font.SourceSansSemibold
                    Button.Text = tostring(text)
                    Button.TextColor3 = Color3.fromRGB(155, 155, 155)
                    Button.TextSize = 13.000
                    Button.AnchorPoint = Vector2.new(0.5, 0.5)
                    Button.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Button.TextXAlignment = Enum.TextXAlignment.Center
                    Button.BackgroundTransparency = 0.6
                    Button.TextWrapped = true
                    Button.AutoButtonColor = false
                    Button.ClipsDescendants = true
        
                    local ConnerPageMhee = Instance.new("UICorner")
        
                    ConnerPageMhee.CornerRadius = UDim.new(0, 4)
                    ConnerPageMhee.Name = ""
                    ConnerPageMhee.Parent = Button
        
                    Button.MouseEnter:Connect(function()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
                    Button.MouseLeave:Connect(function()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                Button.MouseButton1Click:Connect(function()
                --    Ripple(Button)
                    callback()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                        {TextSize =  16} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    wait(0.1)
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                        {TextSize =  13} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
            )
        
                end
        
                function items:Slider(text,check,floor,min,max,de,lol,tog,callback)
        
                if check then
        
                    local SliderFrame = Instance.new("Frame")
        
                    SliderFrame.Name = "SliderFrame"
                    SliderFrame.Parent = ScrollingFrame_Pageframe
                    SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(3, 250, 19)
                    SliderFrame.BorderSizePixel = 0
                    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
                    SliderFrame.BackgroundTransparency  = 0
                    SliderFrame.ClipsDescendants = true
        
                    local SliderFrameConner = Instance.new("UICorner")
        
                    SliderFrameConner.CornerRadius = UDim.new(0, 4)
                    SliderFrameConner.Name = ""
                    SliderFrameConner.Parent = SliderFrame
        
                    local SliderFrameStroke = Instance.new("UIStroke")
        
                    SliderFrameStroke.Thickness = 1
                    SliderFrameStroke.Name = ""
                    SliderFrameStroke.Parent = SliderFrame
                    SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                    SliderFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                    SliderFrameStroke.Transparency = 0.7
        
        
                    SliderFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            SliderFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                    SliderFrame.MouseLeave:Connect(function()
                        TweenService:Create(
                            SliderFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
        
                    local LabelNameSliderxd = Instance.new("TextLabel")
        
                    LabelNameSliderxd.Parent = SliderFrame
                    LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelNameSliderxd.BackgroundTransparency = 1
                    LabelNameSliderxd.BorderSizePixel = 0
                    LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
                    LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
                    LabelNameSliderxd.Font = Enum.Font.GothamBold
                    LabelNameSliderxd.Text = tostring(text)
                    LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
                    LabelNameSliderxd.TextSize = 11.000
                    LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left
        
        
                    local ShowValueFarm = Instance.new("Frame")
        
                    ShowValueFarm.Name = "ShowValueFarm"
                    ShowValueFarm.Parent = SliderFrame
                    ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
                    ShowValueFarm.BackgroundTransparency = 0
                    ShowValueFarm.BorderSizePixel = 0
                    ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
                    ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
                    ShowValueFarm.ClipsDescendants = false
        
                    local CustomValue = Instance.new("TextBox")
        
                    CustomValue.Parent = ShowValueFarm
                    CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
                    CustomValue.BorderSizePixel = 0
                    CustomValue.ClipsDescendants = true
                    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                    CustomValue.Size = UDim2.new(0, 158, 0, 26)
                    CustomValue.Font = Enum.Font.GothamSemibold
                    CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
                    CustomValue.PlaceholderText =  ""
                    if floor == true then
                        CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
                    else
                        CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
                    end
                    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                    CustomValue.TextSize = 8.000
                    CustomValue.BackgroundTransparency = 1
        
                    local ValueFrame = Instance.new("Frame")
        
                    ValueFrame.Name = "ValueFrame"
                    ValueFrame.Parent = SliderFrame
                    ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    ValueFrame.Size = UDim2.new(0, 140, 0, 5)
                    ValueFrame.BackgroundTransparency = 0
                    ValueFrame.BorderSizePixel = 0
                    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
                    ValueFrame.ClipsDescendants = false
        
        
                    local PartValue = Instance.new("Frame")
        
                    PartValue.Name = "PartValue"
                    PartValue.Parent = ValueFrame
                    PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
                    PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    PartValue.Size = UDim2.new(0, 140, 0, 5)
                    PartValue.BackgroundTransparency = 1
                    PartValue.BorderSizePixel = 0
                    PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                    PartValue.ClipsDescendants = false
        
                    local MainValue = Instance.new("Frame")
        
                    MainValue.Name = "MainValue"
                    MainValue.Parent = PartValue
                    MainValue.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
                    MainValue.BackgroundTransparency = 0
                    MainValue.BorderSizePixel = 0
                    -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainValue.Position = UDim2.new(0., 0, 0.0, 0)
                    MainValue.ClipsDescendants = false
        
                    local Conner_S1 = Instance.new("UICorner")
        
                    Conner_S1.CornerRadius = UDim.new(0, 8)
                    Conner_S1.Name = ""
                    Conner_S1.Parent = MainValue
        
                    local Conner_S2 = Instance.new("UICorner")
        
                    Conner_S2.CornerRadius = UDim.new(0, 8)
                    Conner_S2.Name = ""
                    Conner_S2.Parent = ValueFrame
        
                    local ConneValue = Instance.new("Frame")
        
                    ConneValue.Name = "ConneValue"
                    ConneValue.Parent = PartValue
                    ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ConneValue.Size = UDim2.new(0, 13, 0,13)
                    ConneValue.BackgroundTransparency = 0
                    ConneValue.BorderSizePixel = 0
                    ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
                    ConneValue.ClipsDescendants = false
        
        
                    local Conner_Conne = Instance.new("UICorner")
        
                    Conner_Conne.CornerRadius = UDim.new(0, 300)
                    Conner_Conne.Name = ""
                    Conner_Conne.Parent = ConneValue
        
                    local Addvalue = Instance.new("ImageButton")
        
                    Addvalue.Name = "Imatog"
                    Addvalue.Parent = SliderFrame
                    Addvalue.BackgroundTransparency = 1.000
                    Addvalue.BorderSizePixel = 0
                    Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
                    Addvalue.Size = UDim2.new(0, 15, 0, 15)
                    Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
                    Addvalue.ImageColor3 =  Color3.fromRGB(3, 250, 19)
        
                    local Deletevalue = Instance.new("ImageButton")
        
                    Deletevalue.Name = "Imatog"
                    Deletevalue.Parent = SliderFrame
                    Deletevalue.BackgroundTransparency = 1.000
                    Deletevalue.BorderSizePixel = 0
                    Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
                    Deletevalue.Size = UDim2.new(0, 15, 0, 15)
                    Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
                    Deletevalue.ImageColor3 =  Color3.fromRGB(3, 250, 19)
        
        
                    local TextButton_2_Toggle = Instance.new("TextButton")
        
                    TextButton_2_Toggle.Parent = ValueFrame
                    TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            --        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_2_Toggle.BorderSizePixel = 0
                    TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
                    TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
                    TextButton_2_Toggle.Font = Enum.Font.SourceSans
                    TextButton_2_Toggle.Text = " "
                    TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_2_Toggle.TextSize = 12.000
                    TextButton_2_Toggle.AutoButtonColor = false
        
                    local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner.Name = ""
                    TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle
        
                    local TextButton_3_Toggle = Instance.new("TextButton")
        
                    TextButton_3_Toggle.Parent = TextButton_2_Toggle
                    TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
            --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_3_Toggle.BorderSizePixel = 0
                    TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
                    TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
                    TextButton_3_Toggle.Font = Enum.Font.SourceSans
                    TextButton_3_Toggle.Text = " "
                    TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_3_Toggle.TextSize = 12.000
                    TextButton_3_Toggle.AutoButtonColor = false
        
                    local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner2.Name = ""
                    TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle
        
                    local TextButton_4_Toggle = Instance.new("TextButton")
        
                    TextButton_4_Toggle.Parent = TextButton_3_Toggle
                    TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
            --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    TextButton_4_Toggle.BorderSizePixel = 0
                    TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
                    TextButton_4_Toggle.Font = Enum.Font.SourceSans
                    TextButton_4_Toggle.Text = " "
                    TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_4_Toggle.TextSize = 12.000
                    TextButton_4_Toggle.AutoButtonColor = false
                    TextButton_4_Toggle.BackgroundTransparency = 1
                    TextButton_4_Toggle.Visible = true
        
                    local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
                    TextButton_Pageframe_Uiconner4.Name = ""
                    TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle
        
        
                    local TextButton_Toggle = Instance.new("TextButton")
        
                    TextButton_Toggle.Parent = ValueFrame
                    TextButton_Toggle.BackgroundTransparency =1
                    TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextButton_Toggle.BorderSizePixel = 0
                    TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
                    TextButton_Toggle.AutoButtonColor = false
                    TextButton_Toggle.Font = Enum.Font.SourceSans
                    TextButton_Toggle.Text = " "
                    TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_Toggle.TextSize = 12.000
                    TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
        
        
        
                -- local value = de
                local check2 = {toogle2 = false;}
                    local function move(input)
                        local pos =
                            UDim2.new(
                                math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                                0,
                                0.3,
                                0
                            )
                        local pos1 =
                            UDim2.new(
                                math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                                0,
                                0,
                                5
                            )
        
                            MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
        
                            ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                            if floor == true then
                                local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                                CustomValue.Text = tostring(value)
                            --   callback[2] = value
                            callback({
                                ["s"] = value;
                                ["t"] = check2.toogle2
                            })
                            --callback({value,check2.toogle2})
                                --callback(value)
                            else
                                local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                                CustomValue.Text = tostring(value)
                                callback({
                                    ["s"] = value;
                                    ["t"] = check2.toogle2
                                })
                        --       callback({value,check2.toogle2})
        
                            end
        
        
        
                        end
        
                        local dragging = false
                        ConneValue.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        ConneValue.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
                        SliderFrame.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        SliderFrame.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
        
        
                        ValueFrame.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        ValueFrame.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
        
                        game:GetService("UserInputService").InputChanged:Connect(
                            function(input)
                                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                    move(input)
                                end
                            end
                            )
        
                            CustomValue.FocusLost:Connect(function()
                                if CustomValue.Text == "" then
                                    CustomValue.Text  = de
                                end
                                if  tonumber(CustomValue.Text) > max then
                                    CustomValue.Text  = max
                                end
                                if  tonumber(CustomValue.Text) <= min then
                                    CustomValue.Text  = min
                                end
                                MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                                if floor == true then
                                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                                else
                                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                                end
                                callback({
                                    ["s"] =  CustomValue.Text;
                                    ["t"] = check2.toogle2;
                                })
                        --       callback({ tonumber(CustomValue.Text),check2.toogle2})
                        --  pcall(callback, CustomValue.Text)
                            end)
        
        
                            Addvalue.MouseButton1Click:Connect(function ()
                                if CustomValue.Text == "" then
                                    CustomValue.Text  = de
                                end
                                pcall(function()
                                    CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                                end)
                                if  tonumber(CustomValue.Text) > max then
                                    CustomValue.Text  = max
                                end
                                if  tonumber(CustomValue.Text) < min then
                                    CustomValue.Text  = min
                                end
                                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                                if floor == true then
                                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                                else
                                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                                end
                                callback({
                                    ["s"] =  CustomValue.Text;
                                    ["t"] = check2.toogle2
                                })
                            --   callback({ tonumber(CustomValue.Text),check2.toogle2})
                            --  pcall(callback, CustomValue.Text)
                            end)
        
                            Deletevalue.MouseButton1Click:Connect(function ()
                                if CustomValue.Text == "" then
                                    CustomValue.Text  = de
                                end
                                pcall(function()
                                    CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                                end)
                                if  tonumber(CustomValue.Text) > max then
                                    CustomValue.Text  = max
                                end
                                if  tonumber(CustomValue.Text) < min then
                                    CustomValue.Text  = min
                                end
                                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                                if floor == true then
                                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                                else
                                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                                end
                                callback({
                                    ["s"] =  CustomValue.Text;
                                    ["t"] = check2.toogle2;
                                })
                    --callback({ tonumber(CustomValue.Text),check2.toogle2})
                            --  pcall(callback, CustomValue.Text)
                            end)
        
        
        
        
                    ---
                            TextButton_Toggle.MouseEnter:Connect(function()
                                TweenService:Create(
                                    TextButton_4_Toggle,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                                ):Play()
                            end
                        )
        
                        TextButton_Toggle.MouseLeave:Connect(function()
                                TweenService:Create(
                                    TextButton_4_Toggle,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                                ):Play()
                            end
                        )
        
        
        
                    TextButton_Toggle.MouseButton1Click:Connect(function()
                        if check2.toogle2 == false   then
                            TweenService:Create(
                                TextButton_4_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(249, 53, 139)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TweenService:Create(
                                TextButton_3_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(249, 53, 139)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TweenService:Create(
                                TextButton_2_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                        else
                            TweenService:Create(
                                TextButton_4_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TweenService:Create(
                                TextButton_3_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TweenService:Create(
                                TextButton_2_Toggle,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                        end
                            check2.toogle2 = not check2.toogle2
                            callback({
                                ["t"] = check2.toogle2;
        
                            })
                        --   callback({value,check2.toogle2})
                            --callback(check2.toogle2)
                    end
                )
        
                    if tog == true then
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(249, 53, 139)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_3_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(249, 53, 139)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_2_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                        check2.toogle2 = true
                        callback({
                            ["t"] = check2.toogle2;
                        })
                --        callback({value,check2.toogle2})
                    --  callback(check2.toogle2)
                    end
        
        
                else
                    tog = nil
                    local SliderFrame = Instance.new("Frame")
        
                    SliderFrame.Name = "SliderFrame"
                    SliderFrame.Parent = ScrollingFrame_Pageframe
                    SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(3, 250, 19)
                    SliderFrame.BorderSizePixel = 0
                    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
                    SliderFrame.BackgroundTransparency  = 0
                    SliderFrame.ClipsDescendants = true
        
                    local SliderFrameConner = Instance.new("UICorner")
        
                    SliderFrameConner.CornerRadius = UDim.new(0, 4)
                    SliderFrameConner.Name = ""
                    SliderFrameConner.Parent = SliderFrame
        
                    local SliderFrameStroke = Instance.new("UIStroke")
        
                    SliderFrameStroke.Thickness = 1
                    SliderFrameStroke.Name = ""
                    SliderFrameStroke.Parent = SliderFrame
                    SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                    SliderFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                    SliderFrameStroke.Transparency = 0.7
        
        
        
                    SliderFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            SliderFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                    SliderFrame.MouseLeave:Connect(function()
                        TweenService:Create(
                            SliderFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                    local LabelNameSliderxd = Instance.new("TextLabel")
        
                    LabelNameSliderxd.Parent = SliderFrame
                    LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelNameSliderxd.BackgroundTransparency = 1
                    LabelNameSliderxd.BorderSizePixel = 0
                    LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
                    LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
                    LabelNameSliderxd.Font = Enum.Font.GothamBold
                    LabelNameSliderxd.Text = tostring(text)
                    LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
                    LabelNameSliderxd.TextSize = 11.000
                    LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left
        
        
                    local ShowValueFarm = Instance.new("Frame")
        
                    ShowValueFarm.Name = "ShowValueFarm"
                    ShowValueFarm.Parent = SliderFrame
                    ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
                    ShowValueFarm.BackgroundTransparency = 0
                    ShowValueFarm.BorderSizePixel = 0
                    ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
                    ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
                    ShowValueFarm.ClipsDescendants = false
        
                    local CustomValue = Instance.new("TextBox")
        
                    CustomValue.Parent = ShowValueFarm
                    CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
                    CustomValue.BorderSizePixel = 0
                    CustomValue.ClipsDescendants = true
                    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                    CustomValue.Size = UDim2.new(0, 158, 0, 26)
                    CustomValue.Font = Enum.Font.GothamSemibold
                    CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
                    CustomValue.PlaceholderText =  ""
                    if floor == true then
                        CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
                    else
                        CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
                    end
                    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                    CustomValue.TextSize = 8.000
                    CustomValue.BackgroundTransparency = 1
        
                    local ValueFrame = Instance.new("Frame")
        
                    ValueFrame.Name = "ValueFrame"
                    ValueFrame.Parent = SliderFrame
                    ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    ValueFrame.Size = UDim2.new(0, 190, 0, 5)
                    ValueFrame.BackgroundTransparency = 0
                    ValueFrame.BorderSizePixel = 0
                    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
                    ValueFrame.ClipsDescendants = false
        
        
                    local PartValue = Instance.new("Frame")
        
                    PartValue.Name = "PartValue"
                    PartValue.Parent = ValueFrame
                    PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
                    PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    PartValue.Size = UDim2.new(0, 190, 0, 5)
                    PartValue.BackgroundTransparency = 1
                    PartValue.BorderSizePixel = 0
                    PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                    PartValue.ClipsDescendants = false
        
                    local MainValue = Instance.new("Frame")
        
                    MainValue.Name = "MainValue"
                    MainValue.Parent = PartValue
                    MainValue.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
                    MainValue.BackgroundTransparency = 0
                    MainValue.BorderSizePixel = 0
                    -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainValue.Position = UDim2.new(0., 0, 0.0, 0)
                    MainValue.ClipsDescendants = false
        
                    local Conner_S1 = Instance.new("UICorner")
        
                    Conner_S1.CornerRadius = UDim.new(0, 8)
                    Conner_S1.Name = ""
                    Conner_S1.Parent = MainValue
        
                    local Conner_S2 = Instance.new("UICorner")
        
                    Conner_S2.CornerRadius = UDim.new(0, 8)
                    Conner_S2.Name = ""
                    Conner_S2.Parent = ValueFrame
        
                    local ConneValue = Instance.new("Frame")
        
                    ConneValue.Name = "ConneValue"
                    ConneValue.Parent = PartValue
                    ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ConneValue.Size = UDim2.new(0, 13, 0,13)
                    ConneValue.BackgroundTransparency = 0
                    ConneValue.BorderSizePixel = 0
                    ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
                    ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
                    ConneValue.ClipsDescendants = false
        
        
                    local Conner_Conne = Instance.new("UICorner")
        
                    Conner_Conne.CornerRadius = UDim.new(0, 300)
                    Conner_Conne.Name = ""
                    Conner_Conne.Parent = ConneValue
        
                    local Addvalue = Instance.new("ImageButton")
        
                    Addvalue.Name = "Imatog"
                    Addvalue.Parent = SliderFrame
                    Addvalue.BackgroundTransparency = 1.000
                    Addvalue.BorderSizePixel = 0
                    Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
                    Addvalue.Size = UDim2.new(0, 15, 0, 15)
                    Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
                    Addvalue.ImageColor3 =  Color3.fromRGB(3, 250, 19)
        
                    local Deletevalue = Instance.new("ImageButton")
        
                    Deletevalue.Name = "Imatog"
                    Deletevalue.Parent = SliderFrame
                    Deletevalue.BackgroundTransparency = 1.000
                    Deletevalue.BorderSizePixel = 0
                    Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
                    Deletevalue.Size = UDim2.new(0, 15, 0, 15)
                    Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
                    Deletevalue.ImageColor3 =  Color3.fromRGB(249, 53, 139)
        
                    local function move(input)
                        local pos =
                            UDim2.new(
                                math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                                0,
                                0.3,
                                0
                            )
                        local pos1 =
                            UDim2.new(
                                math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                                0,
                                0,
                                5
                            )
        
                            MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
        
                            ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                            if floor == true then
                                local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                                CustomValue.Text = tostring(value)
                                callback(value)
                            else
                                local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                                CustomValue.Text = tostring(value)
                                callback(value)
                            end
        
        
        
                        end
        
                        local dragging = false
                        ConneValue.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        ConneValue.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
                        SliderFrame.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        SliderFrame.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
        
        
                        ValueFrame.InputBegan:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = true
        
                                end
                            end
                        )
                        ValueFrame.InputEnded:Connect(
                            function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    dragging = false
        
                                end
                            end
                        )
        
                        game:GetService("UserInputService").InputChanged:Connect(
                            function(input)
                                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                    move(input)
                                end
                            end
                            )
        
                            CustomValue.FocusLost:Connect(function()
                                if CustomValue.Text == "" then
                                    CustomValue.Text  = de
                                end
                                if  tonumber(CustomValue.Text) > max then
                                    CustomValue.Text  = max
                                end
                                MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                                if floor == true then
                                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                                else
                                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                                end
                                pcall(callback, CustomValue.Text)
                            end)
        
        
                    Addvalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)
        
                    Deletevalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)
        
                end
        
                end
        
                function items:Drop(text,use,option,callback)
        
                if use == false then
                    local DropFrame = Instance.new("Frame")
        
                    DropFrame.Name = "DropFrame"
                    DropFrame.Parent = ScrollingFrame_Pageframe
                    DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(3, 250, 19)
                    DropFrame.BorderSizePixel = 0
                    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
                    DropFrame.BackgroundTransparency  = 0
                    DropFrame.ClipsDescendants = true
        
                    local ConnerDropFrame = Instance.new("UICorner")
        
                    ConnerDropFrame.CornerRadius = UDim.new(0, 4)
                    ConnerDropFrame.Name = ""
                    ConnerDropFrame.Parent = DropFrame
        
                    local DropFrameStroke = Instance.new("UIStroke")
        
                    DropFrameStroke.Thickness = 1
                    DropFrameStroke.Name = ""
                    DropFrameStroke.Parent = DropFrame
                    DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                    DropFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                    DropFrameStroke.Transparency = 0.7
        
        
        
        
        
                    local LabelFrameDrop = Instance.new("TextLabel")
        
                    LabelFrameDrop.Parent = DropFrame
                    LabelFrameDrop.Name = "LabelFrameDrop"
                    LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
                    LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
                    LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
                    LabelFrameDrop.Text = ""
                    LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                    LabelFrameDrop.TextSize = 14.000
                --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelFrameDrop.BackgroundTransparency = 1
                    LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
        
        
                    local TextLabel_TapDrop = Instance.new("TextLabel")
        
                    TextLabel_TapDrop.Parent = LabelFrameDrop
                    TextLabel_TapDrop.Name = "TextLabel_TapDrop"
                    TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
                    TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
                    TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
                    TextLabel_TapDrop.Text = tostring(text).." :"
                    TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                    TextLabel_TapDrop.TextSize = 14.000
            --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextLabel_TapDrop.BackgroundTransparency = 1
                    TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left
        
        
                    local DropArbt_listimage = Instance.new("ImageButton")
        
                    DropArbt_listimage.Parent = LabelFrameDrop
                    DropArbt_listimage.BackgroundTransparency = 1.000
                    DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
                    DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
                    DropArbt_listimage.BorderSizePixel = 0
                    DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
                    DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
                    DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)
        
                    local ScolDown = Instance.new("ScrollingFrame")
        
                    ScolDown.Name = "ScolDown"
                    ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
                    ScolDown.Parent = LabelFrameDrop
                    ScolDown.Active = true
                    ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ScolDown.BorderSizePixel = 0
                    ScolDown.Size = UDim2.new(0, 205, 0, 115)
                    ScolDown.ScrollBarThickness = 3
                    ScolDown.ClipsDescendants = true
                    ScolDown.BackgroundTransparency = 1
                    ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
        
                    local UIListLayoutlist = Instance.new("UIListLayout")
                    local UIPaddinglist = Instance.new("UIPadding")
        
                    UIListLayoutlist.Name = "UIListLayoutlist"
                    UIListLayoutlist.Parent = ScolDown
                    UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayoutlist.Padding = UDim.new(0, 5)
        
                    UIPaddinglist.Name = "UIPaddinglist"
                    UIPaddinglist.Parent = ScolDown
                    UIPaddinglist.PaddingTop = UDim.new(0, 5)
                    UIPaddinglist.PaddingLeft = UDim.new(0, 12)
        
                    local ButtonDrop = Instance.new("TextButton")
        
                    ButtonDrop.Parent = DropFrame
                    ButtonDrop.Name = "ButtonDrop"
                    ButtonDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
                    ButtonDrop.Font = Enum.Font.SourceSansSemibold
                    ButtonDrop.Text = ""
                    ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                    ButtonDrop.TextSize = 13.000
                --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                    ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
                    ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
                    ButtonDrop.BackgroundTransparency = 1
                    ButtonDrop.TextWrapped = true
                    ButtonDrop.AutoButtonColor = false
                    ButtonDrop.ClipsDescendants = true
        
                    local dog = false
        
                    local FrameSize = 75
                    local cout = 0
                    for i , v in pairs(option) do
                        cout =cout + 1
                        if cout == 1 then
                            FrameSize = 75
                        elseif cout == 2 then
                            FrameSize = 110
                        elseif cout >= 3 then
                            FrameSize = 150
                        end
        
                        local ListFrame = Instance.new("Frame")
        
                        ListFrame.Name = "ListFrame"
                        ListFrame.Parent = ScolDown
                        ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(3, 250, 19)
                        ListFrame.BorderSizePixel = 0
                        ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                        ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
                        ListFrame.BackgroundTransparency  = 1
                        ListFrame.ClipsDescendants = true
        
                        local TextLabel_TapDro2p = Instance.new("TextLabel")
        
                        TextLabel_TapDro2p.Parent = ListFrame
                        TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
                        TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                        TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
                        TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
                        TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
                        TextLabel_TapDro2p.Text = tostring(v)
                        TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
                        TextLabel_TapDro2p.TextSize = 14.000
                        TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel_TapDro2p.BackgroundTransparency = 1
                        TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center
        
                        local ButtonDrop2 = Instance.new("TextButton")
        
                        ButtonDrop2.Parent = ListFrame
                        ButtonDrop2.Name = "ButtonDrop2"
                        ButtonDrop2.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                        ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
                        ButtonDrop2.Font = Enum.Font.SourceSansSemibold
                        ButtonDrop2.Text = ""
                        ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
                        ButtonDrop2.TextSize = 13.000
                    --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
                        ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
                        ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
                        ButtonDrop2.BackgroundTransparency = 1
                        ButtonDrop2.TextWrapped = true
                        ButtonDrop2.AutoButtonColor = false
                        ButtonDrop2.ClipsDescendants = true
        
                        ButtonDrop2.MouseEnter:Connect(function ()
                            TweenService:Create(
                                TextLabel_TapDro2p,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                        end)
        
                        ButtonDrop2.MouseLeave:Connect(function ()
                            TweenService:Create(
                                TextLabel_TapDro2p,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                        end)
        
                        ButtonDrop2.MouseButton1Click:Connect(function()
                            TweenService:Create(
                                DropFrame,
                                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            TweenService:Create(
                                DropArbt_listimage,
                                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                                {Rotation = 0}
                            ):Play()
                            TextLabel_TapDrop.Text =  text.." : "..tostring(v)
                            callback(v)
                            dog = not dog
                        end
                    )
        
        
                        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                    end
        
        
                    DropFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            DropFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextLabel_TapDrop,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            DropArbt_listimage,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                DropFrame.MouseLeave:Connect(function()
                        TweenService:Create(
                            DropFrameStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextLabel_TapDrop,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            DropArbt_listimage,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
        
                ButtonDrop.MouseButton1Click:Connect(function()
                    if dog == false then
                        TweenService:Create(
                            DropFrame,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            DropArbt_listimage,
                            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Rotation = -180}
                        ):Play()
                        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                    else
                        TweenService:Create(
                            DropFrame,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            DropArbt_listimage,
                            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                    end
                    dog = not dog
                end
            )
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        
                local dropfunc = {}
        
                function dropfunc:Clear()
                    TextLabel_TapDrop.Text = tostring(text).." :"
                    for i, v in next, ScolDown:GetChildren() do
                        if v:IsA("Frame") then
                            v:Destroy()
                        end
                    end
                    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                end
        
                function dropfunc:Add(t)
                    local ListFrame = Instance.new("Frame")
        
                    ListFrame.Name = "ListFrame"
                    ListFrame.Parent = ScolDown
                    ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(3, 250, 19)
                    ListFrame.BorderSizePixel = 0
                    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
                    ListFrame.BackgroundTransparency  = 1
                    ListFrame.ClipsDescendants = true
        
                    local TextLabel_TapDro2p = Instance.new("TextLabel")
        
                    TextLabel_TapDro2p.Parent = ListFrame
                    TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
                    TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
                    TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
                    TextLabel_TapDro2p.Text = tostring(t)
                    TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
                    TextLabel_TapDro2p.TextSize = 14.000
                    TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextLabel_TapDro2p.BackgroundTransparency = 1
                    TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center
        
                    local ButtonDrop2 = Instance.new("TextButton")
        
                    ButtonDrop2.Parent = ListFrame
                    ButtonDrop2.Name = "ButtonDrop2"
                    ButtonDrop2.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
                    ButtonDrop2.Font = Enum.Font.SourceSansSemibold
                    ButtonDrop2.Text = ""
                    ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
                    ButtonDrop2.TextSize = 13.000
                --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
                    ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
                    ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
                    ButtonDrop2.BackgroundTransparency = 1
                    ButtonDrop2.TextWrapped = true
                    ButtonDrop2.AutoButtonColor = false
                    ButtonDrop2.ClipsDescendants = true
        
                    ButtonDrop2.MouseEnter:Connect(function ()
                        TweenService:Create(
                            TextLabel_TapDro2p,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end)
        
                    ButtonDrop2.MouseLeave:Connect(function ()
                        TweenService:Create(
                            TextLabel_TapDro2p,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end)
        
                    ButtonDrop2.MouseButton1Click:Connect(function()
                        TweenService:Create(
                            DropFrame,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            DropArbt_listimage,
                            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        TextLabel_TapDrop.Text =  text.." : "..tostring(t)
                        callback(t)
                        dog = not dog
                    end
                )
        
                    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                end
                return dropfunc
        
            else
        
                local location = option.location or self.flags
                local flag = not use and option.flag or ""
                local callback = callback or function() end
                local list = option.list or {}
                local default = list.default or list[1].Name
        
                if not use then
                    location[flag] = default
                end
        
        
                local DropFrame = Instance.new("Frame")
        
                DropFrame.Name = "DropFrame"
                DropFrame.Parent = ScrollingFrame_Pageframe
                DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(3, 250, 19)
                DropFrame.BorderSizePixel = 0
                DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
                DropFrame.BackgroundTransparency  = 0
                DropFrame.ClipsDescendants = true
        
                local ConnerDropFrame = Instance.new("UICorner")
        
                ConnerDropFrame.CornerRadius = UDim.new(0, 4)
                ConnerDropFrame.Name = ""
                ConnerDropFrame.Parent = DropFrame
        
                local DropFrameStroke = Instance.new("UIStroke")
        
                DropFrameStroke.Thickness = 1
                DropFrameStroke.Name = ""
                DropFrameStroke.Parent = DropFrame
                DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                DropFrameStroke.Transparency = 0.7
        
        
        
        
        
                local LabelFrameDrop = Instance.new("TextLabel")
        
                LabelFrameDrop.Parent = DropFrame
                LabelFrameDrop.Name = "LabelFrameDrop"
                LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
                LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
                LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
                LabelFrameDrop.Text = ""
                LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                LabelFrameDrop.TextSize = 14.000
            --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                LabelFrameDrop.BackgroundTransparency = 1
                LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
        
        
                local TextLabel_TapDrop = Instance.new("TextLabel")
        
                TextLabel_TapDrop.Parent = LabelFrameDrop
                TextLabel_TapDrop.Name = "TextLabel_TapDrop"
                TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
                TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
                TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
                TextLabel_TapDrop.Text = tostring(text).." :"
                TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                TextLabel_TapDrop.TextSize = 14.000
        --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_TapDrop.BackgroundTransparency = 1
                TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left
        
        
                local DropArbt_listimage = Instance.new("ImageButton")
        
                DropArbt_listimage.Parent = LabelFrameDrop
                DropArbt_listimage.BackgroundTransparency = 1.000
                DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
                DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
                DropArbt_listimage.BorderSizePixel = 0
                DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
                DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
                DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)
        
                local ScolDown = Instance.new("ScrollingFrame")
        
                ScolDown.Name = "ScolDown"
                ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
                ScolDown.Parent = LabelFrameDrop
                ScolDown.Active = true
                ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ScolDown.BorderSizePixel = 0
                ScolDown.Size = UDim2.new(0, 205, 0, 115)
                ScolDown.ScrollBarThickness = 3
                ScolDown.ClipsDescendants = true
                ScolDown.BackgroundTransparency = 1
                ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
        
                local UIListLayoutlist = Instance.new("UIListLayout")
                local UIPaddinglist = Instance.new("UIPadding")
        
                UIListLayoutlist.Name = "UIListLayoutlist"
                UIListLayoutlist.Parent = ScolDown
                UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayoutlist.Padding = UDim.new(0, 5)
        
                UIPaddinglist.Name = "UIPaddinglist"
                UIPaddinglist.Parent = ScolDown
                UIPaddinglist.PaddingTop = UDim.new(0, 5)
                UIPaddinglist.PaddingLeft = UDim.new(0, 12)
        
                local ButtonDrop = Instance.new("TextButton")
        
                ButtonDrop.Parent = DropFrame
                ButtonDrop.Name = "ButtonDrop"
                ButtonDrop.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
                ButtonDrop.Font = Enum.Font.SourceSansSemibold
                ButtonDrop.Text = ""
                ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
                ButtonDrop.TextSize = 13.000
            --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
                ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
                ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
                ButtonDrop.BackgroundTransparency = 1
                ButtonDrop.TextWrapped = true
                ButtonDrop.AutoButtonColor = false
                ButtonDrop.ClipsDescendants = true
        
                local dog = false
        
                local FrameSize = 75
                local cout = 0
                for i , v in pairs(list) do
                    cout =cout + 1
                    if cout == 1 then
                        FrameSize = 75
                    elseif cout == 2 then
                        FrameSize = 110
                    elseif cout >= 3 then
                        FrameSize = 150
                    end
        
                    local listtog = Instance.new("Frame")
        
                    listtog.Name = "listtog"
                    listtog.Parent = ScolDown
                    listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                    listtog.BackgroundTransparency =1
                    listtog.BorderSizePixel = 0
                    listtog.ClipsDescendants = true
                    listtog.AnchorPoint = Vector2.new(0.5, 0.5)
                    listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
                    listtog.Size = UDim2.new(0, 210, 0, 33)
        
        
                    local listtextbutton = Instance.new("TextButton")
        
                    listtextbutton.Parent = listtog
                    listtextbutton.BackgroundTransparency =1
                    listtextbutton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    listtextbutton.BorderSizePixel = 0
                    listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
                    listtextbutton.AutoButtonColor = false
                    listtextbutton.Font = Enum.Font.SourceSans
                    listtextbutton.Text = " "
                    listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
                    listtextbutton.TextSize = 14.000
        
                    local farmtoglist = Instance.new("TextButton")
        
                    farmtoglist.Parent = listtextbutton
                    farmtoglist.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    farmtoglist.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    farmtoglist.BorderSizePixel = 0
                    farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
                    farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
                    farmtoglist.Size = UDim2.new(0, 23, 0, 23)
                    farmtoglist.Font = Enum.Font.SourceSans
                    farmtoglist.Text = " "
                    farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
                    farmtoglist.TextSize = 14.000
                    farmtoglist.AutoButtonColor = false
        
        
                    local farmtoglist2 = Instance.new("TextButton")
        
                    farmtoglist2.Parent = farmtoglist
                    farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
                    farmtoglist2.BorderColor3 = Color3.fromRGB(3, 250, 19)
                    farmtoglist2.BorderSizePixel = 0
                    farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
                    farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
                    farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
                    farmtoglist2.Font = Enum.Font.SourceSans
                    farmtoglist2.Text = " "
                    farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
                    farmtoglist2.TextSize = 14.000
                    farmtoglist2.AutoButtonColor = false
        
        
                    local listimage = Instance.new("ImageButton")
        
                    listimage.Parent = farmtoglist2
                    listimage.BackgroundTransparency = 1.000
                    listimage.AnchorPoint = Vector2.new(0.5, 0.5)
                    listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
                    listimage.BorderSizePixel = 0
                    listimage.Size = UDim2.new(0, 0, 0, 0)
                    listimage.Image = "http://www.roblox.com/asset/?id=5880482965"
        
        
                    local textlist = Instance.new("TextLabel")
        
        
                    textlist.Parent = listtextbutton
                    textlist.Name = "textlist"
                    textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    textlist.BackgroundTransparency = 1.000
                    textlist.AnchorPoint = Vector2.new(0.5, 0.5)
                    textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
                    textlist.BorderSizePixel = 0
                    textlist.Size = UDim2.new(0, 91, 0, 25)
                    textlist.Font = Enum.Font.GothamSemibold
                    textlist.Text = tostring(v.Name)
                    textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textlist.TextSize = 13.000
        
        
        
                    local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
                    TextButton_Pageframe_Uiconner2.Name = ""
                    TextButton_Pageframe_Uiconner2.Parent = farmtoglist
        
                    local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")
        
                    TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
                    TextButton_Pageframe_Uiconner22.Name = ""
                    TextButton_Pageframe_Uiconner22.Parent = farmtoglist2
        
        
        
                    listtextbutton.MouseButton1Click:Connect(function()
                        if not  location[v.flag] then
                            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                            wait(0.1)
                            listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                        else
                            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                            wait(0.1)
                            listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                        end
                        location[v.flag] = not location[v.flag]
                        callback(location[v.flag])
                    end
                )
        
                if  location[v.flag] then
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        
                    callback(location[v.flag])
                end
        
                    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                end
        
        
                DropFrame.MouseEnter:Connect(function()
                    TweenService:Create(
                        DropFrameStroke,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextLabel_TapDrop,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
            )
        
            DropFrame.MouseLeave:Connect(function()
                    TweenService:Create(
                        DropFrameStroke,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextLabel_TapDrop,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
            )
        
        
            ButtonDrop.MouseButton1Click:Connect(function()
                if dog == false then
                    TweenService:Create(
                        DropFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = -180}
                    ):Play()
                    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                else
                    TweenService:Create(
                        DropFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
                end
                dog = not dog
            end
        )
        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        
        
        
                end
        
        
        
                end
        
                function items:TextBox(text,text2,callback)
                    local TextFrame = Instance.new("Frame")
        
                    TextFrame.Name = "TextFrame"
                    TextFrame.Parent = ScrollingFrame_Pageframe
                    TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
                    TextFrame.BorderSizePixel = 0
                    TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextFrame.Size = UDim2.new(0, 213, 0, 70)
                    TextFrame.BackgroundTransparency  = 1
                    TextFrame.ClipsDescendants = true
        
                    local LabelNameSliderxd = Instance.new("TextLabel")
        
                    LabelNameSliderxd.Parent = TextFrame
                    LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelNameSliderxd.BackgroundTransparency = 1
                    LabelNameSliderxd.BorderSizePixel = 0
                    LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)
                    LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
                    LabelNameSliderxd.Font = Enum.Font.GothamBold
                    LabelNameSliderxd.Text = tostring(text)
                    LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)
                    LabelNameSliderxd.TextSize = 11.000
                    LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center
        
                    local ConerTextBox = Instance.new("UICorner")
        
                    ConerTextBox.CornerRadius = UDim.new(0, 4)
                    ConerTextBox.Name = ""
                    ConerTextBox.Parent = TextFrame
        
                    local FrameBox = Instance.new("Frame")
        
                    FrameBox.Name = "TextFrame"
                    FrameBox.Parent = TextFrame
                    FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
                    FrameBox.BorderSizePixel = 0
                    FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)
                    FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
                    FrameBox.Size = UDim2.new(0, 158, 0, 30)
                    FrameBox.BackgroundTransparency  = 0.2
                    FrameBox.ClipsDescendants = true
                    FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
        
                    local TextFrame2 = Instance.new("TextBox")
        
                    TextFrame2.Parent = FrameBox
                    TextFrame2.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                    TextFrame2.BorderSizePixel = 0
                    TextFrame2.ClipsDescendants = true
                    TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextFrame2.Size = UDim2.new(0, 158, 0, 35)
                    TextFrame2.Font = Enum.Font.GothamSemibold
                    TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
                    TextFrame2.PlaceholderText = text2
                    TextFrame2.Text = ""
                    TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
                    TextFrame2.TextSize = 12.000
                    TextFrame2.BackgroundTransparency = 1
        
                    local ConerTextBox2 = Instance.new("UICorner")
        
                    ConerTextBox2.CornerRadius = UDim.new(0, 4)
                    ConerTextBox2.Name = ""
                    ConerTextBox2.Parent = FrameBox
        
                    local TextBoxStroke = Instance.new("UIStroke")
        
                    TextBoxStroke.Thickness = 1
                    TextBoxStroke.Name = ""
                    TextBoxStroke.Parent = FrameBox
                    TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
                    TextBoxStroke.Color = Color3.fromRGB(3, 250, 19)
                    TextBoxStroke.Transparency = 0.7
        
        
                    TextFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            FrameBox,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            FrameBox,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextFrame2,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextFrame2,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelNameSliderxd,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextBoxStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Thickness = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                TextFrame.MouseLeave:Connect(function()
                    TweenService:Create(
                        FrameBox,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        FrameBox,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextFrame2,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextBoxStroke,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Thickness = 1} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        LabelNameSliderxd,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextFrame2,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
                )
                    TextFrame2.FocusLost:Connect(function ()
                        if #TextFrame2.Text > 0 then
                            pcall(callback,TextFrame2.Text)
                        end
                    end)
                end
        
                function items:Bind(text,bi,callback)
                    local BindFrame = Instance.new("Frame")
        
                    BindFrame.Name = "BindFrame"
                    BindFrame.Parent = ScrollingFrame_Pageframe
                    BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
                    BindFrame.BorderSizePixel = 0
                    BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    BindFrame.Size = UDim2.new(0, 213, 0, 35)
                    BindFrame.BackgroundTransparency  = 0
                    BindFrame.ClipsDescendants = true
        
                    local BindConner = Instance.new("UICorner")
        
                    BindConner.CornerRadius = UDim.new(0, 4)
                    BindConner.Name = ""
                    BindConner.Parent = BindFrame
        
                    local BindStroke = Instance.new("UIStroke")
        
                    BindStroke.Thickness = 1
                    BindStroke.Name = ""
                    BindStroke.Parent = BindFrame
                    BindStroke.LineJoinMode = Enum.LineJoinMode.Round
                    BindStroke.Color = Color3.fromRGB(3, 250, 19)
                    BindStroke.Transparency = 0.7
        
                    local LabelBind = Instance.new("TextLabel")
        
                    LabelBind.Parent = BindFrame
                    LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelBind.BackgroundTransparency = 1
                    LabelBind.BorderSizePixel = 0
                    LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
                    LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelBind.Size = UDim2.new(0, 140, 0, 35)
                    LabelBind.Font = Enum.Font.GothamBold
                    LabelBind.Text = tostring(text)
                    LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
                    LabelBind.TextSize = 11.000
                    LabelBind.TextXAlignment = Enum.TextXAlignment.Left
        
                    local key = bi.Name
                    local LabelBind2 = Instance.new("TextButton")
        
                    LabelBind2.Parent = BindFrame
                    LabelBind2.Name = "LabelBind2"
                    LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelBind2.Size = UDim2.new(0, 100, 0, 19)
                    LabelBind2.Font = Enum.Font.GothamBold
                    LabelBind2.Text =  "KEY : "..key
                    LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
                    LabelBind2.TextSize = 11.000
                    LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)
                    LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
                    LabelBind2.BackgroundTransparency = 1
                    LabelBind2.TextWrapped = true
        
                    local LabelBind22 = Instance.new("TextButton")
        
                    LabelBind22.Parent = BindFrame
                    LabelBind22.Name = "LabelBind22"
                    LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    LabelBind22.Size = UDim2.new(0, 213, 0, 35)
                    LabelBind22.Font = Enum.Font.GothamBold
                    LabelBind22.Text =  ""
                    LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
                    LabelBind22.TextSize = 11.000
                    LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
                    LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
                    LabelBind22.BackgroundTransparency = 1
                    LabelBind22.TextWrapped = true
        
                    BindFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            BindStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind22,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind2,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
                    BindFrame.MouseLeave:Connect(function()
                        TweenService:Create(
                            BindStroke,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind22,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind2,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            LabelBind,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )
        
                    LabelBind22.MouseButton1Click:Connect(function ()
        
        
                        LabelBind2.Text = "KEY : ".."..."
                        local inputwait = game:GetService("UserInputService").InputBegan:wait()
                        local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode
        
                        if
                        fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
                        then
                            LabelBind2.Text =  "KEY : "..fuckulop.Name
                            key = fuckulop.Name
                        end
                        -- if fuckulop.Name ~= "Unknown" then
                        --     LabelBind2.Text = fuckulop.Name
                        --     key = fuckulop.Name
                        -- end
        
                    end)
        
        
                    game:GetService("UserInputService").InputBegan:connect(
                        function(current)
                            local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode
        
                                if fuckulop2.Name ==  key then
                                    pcall(callback)
        
                            end
                        end
                        )
        
                end
        
                function items:Line()
                    local LineFrame = Instance.new("Frame")
        
                    LineFrame.Name = "LineFrame"
                    LineFrame.Parent = ScrollingFrame_Pageframe
                    LineFrame.BackgroundColor3 =  Color3.fromRGB(3, 250, 19)
                    LineFrame.BorderSizePixel = 0
                    LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    LineFrame.Size = UDim2.new(0, 213, 0, 1)
                    LineFrame.BackgroundTransparency  = 0
                    LineFrame.ClipsDescendants = true
        
                    local LineFrame_BindConner = Instance.new("UICorner")
        
                    LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
                    LineFrame_BindConner.Name = ""
                    LineFrame_BindConner.Parent = LineFrame
        
                end
        
                function items:Color(text,preset,callback)
                    local Pixker = Instance.new("Frame")
        
                    Pixker.Name = "Pixker"
                    Pixker.Parent = ScrollingFrame_Pageframe
                    Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                    Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
                    Pixker.Size = UDim2.new(0, 213, 0, 33)
                    Pixker.BackgroundTransparency = 0
                    Pixker.BorderSizePixel = 0
                    Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
                    Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Pixker.ClipsDescendants = true
        
        
                    local BoxColorCorner2 = Instance.new("UICorner")
        
                    BoxColorCorner2.CornerRadius = UDim.new(0, 4)
                    BoxColorCorner2.Name = "BoxColorCorner"
                    BoxColorCorner2.Parent = Pixker
        
                    local MheeFrameStroke = Instance.new("UIStroke")
        
                    MheeFrameStroke.Thickness = 1
                    MheeFrameStroke.Name = ""
                    MheeFrameStroke.Parent = Pixker
                    MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                    MheeFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                    MheeFrameStroke.Transparency = 0.7
        
        
                    local TextFrameColor = Instance.new("TextLabel")
        
                    TextFrameColor.Parent = Pixker
                    TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextFrameColor.BorderSizePixel = 0
                    TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
                    TextFrameColor.Font = Enum.Font.SourceSans
                    TextFrameColor.Text = "  "
                    TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextFrameColor.TextSize = 14.000
                    TextFrameColor.BackgroundTransparency = 1
                    TextFrameColor.Position = UDim2.new(0., 0, 0., 0)
        
                    local TextReal = Instance.new("TextLabel")
        
                    TextReal.Parent = TextFrameColor
                    TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextReal.BorderSizePixel = 0
                    TextReal.Size = UDim2.new(0, 140, 0, 34)
                    TextReal.Font = Enum.Font.GothamSemibold
                    TextReal.Text = text
                    TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
                    TextReal.TextSize = 12.000
                    TextReal.BackgroundTransparency = 1
                    TextReal.Position = UDim2.new(0.05, 0, 0., 0)
                    TextReal.TextXAlignment = Enum.TextXAlignment.Left
        
                    local BoxColor = Instance.new("Frame")
        
                    BoxColor.Name = "BoxColor"
                    BoxColor.Parent = TextFrameColor
                    BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)
                    BoxColor.Size = UDim2.new(0, 35, 0, 19)
                    BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)
        
                    local BoxColorCorner = Instance.new("UICorner")
        
                    BoxColorCorner.CornerRadius = UDim.new(0, 4)
                    BoxColorCorner.Name = "BoxColorCorner"
                    BoxColorCorner.Parent = BoxColor
        
                    local TextButton_Dropdown = Instance.new("TextButton")
        
        
                    TextButton_Dropdown.Parent = TextFrameColor
                    TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    TextButton_Dropdown.BorderSizePixel = 0
                    TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
                    TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
                    TextButton_Dropdown.Font = Enum.Font.SourceSans
                    TextButton_Dropdown.Text = "  "
                    TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextButton_Dropdown.TextSize = 14.000
                    TextButton_Dropdown.AutoButtonColor = false
                    --TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
                    TextButton_Dropdown.BackgroundTransparency = 1
        
        
        
                    Pixker.MouseEnter:Connect(function()
                        TweenService:Create(
                            MheeFrameStroke,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.}
                        ):Play()
                        TweenService:Create(
                            TextReal,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255,255, 255)}
                        ):Play()
        
                    end)
                    Pixker.MouseLeave:Connect(function()
                        TweenService:Create(
                            MheeFrameStroke,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 0.7}
                        ):Play()
                        TweenService:Create(
                            TextReal,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(155,155, 155)}
                        ):Play()
                    end)
                -- Rainbow Toggle
        
        
                local TextButton_2_Toggle = Instance.new("TextButton")
        
                TextButton_2_Toggle.Parent = TextFrameColor
                TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
        --        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                TextButton_2_Toggle.BorderSizePixel = 0
                TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
                TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
                TextButton_2_Toggle.Font = Enum.Font.SourceSans
                TextButton_2_Toggle.Text = " "
                TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton_2_Toggle.TextSize = 12.000
                TextButton_2_Toggle.AutoButtonColor = false
        
                local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
        
                TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
                TextButton_Pageframe_Uiconner.Name = ""
                TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle
        
                local TextButton_3_Toggle = Instance.new("TextButton")
        
                TextButton_3_Toggle.Parent = TextButton_2_Toggle
                TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
        --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                TextButton_3_Toggle.BorderSizePixel = 0
                TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
                TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
                TextButton_3_Toggle.Font = Enum.Font.SourceSans
                TextButton_3_Toggle.Text = " "
                TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton_3_Toggle.TextSize = 12.000
                TextButton_3_Toggle.AutoButtonColor = false
        
                local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")
        
                TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
                TextButton_Pageframe_Uiconner2.Name = ""
                TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle
        
                local TextButton_4_Toggle = Instance.new("TextButton")
        
                TextButton_4_Toggle.Parent = TextButton_3_Toggle
                TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
        --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(3, 250, 19)
                TextButton_4_Toggle.BorderSizePixel = 0
                TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
                TextButton_4_Toggle.Font = Enum.Font.SourceSans
                TextButton_4_Toggle.Text = " "
                TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton_4_Toggle.TextSize = 12.000
                TextButton_4_Toggle.AutoButtonColor = false
                TextButton_4_Toggle.BackgroundTransparency = 1
                TextButton_4_Toggle.Visible = true
        
                local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")
        
                TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
                TextButton_Pageframe_Uiconner4.Name = ""
                TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle
        
        
                local TextButton_Toggle = Instance.new("TextButton")
        
                TextButton_Toggle.Parent = ValueFrame
                TextButton_Toggle.BackgroundTransparency =1
                TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_Toggle.BorderSizePixel = 0
                TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
                TextButton_Toggle.AutoButtonColor = false
                TextButton_Toggle.Font = Enum.Font.SourceSans
                TextButton_Toggle.Text = " "
                TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton_Toggle.TextSize = 12.000
                TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
        
                local TextButton_3_Toggle2 = Instance.new("TextLabel")
        
                TextButton_3_Toggle2.Parent = TextButton_2_Toggle
                TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
                TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(3, 250, 19)
                TextButton_3_Toggle2.BorderSizePixel = 0
                TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)
                TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
                TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
                TextButton_3_Toggle2.Text = "Rainbow"
                TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_3_Toggle2.TextSize = 13.000
                TextButton_3_Toggle2.BackgroundTransparency = 1
        
                local OMF = Instance.new("TextButton")
        
                OMF.Parent = TextButton_2_Toggle
                OMF.BackgroundTransparency =1
                OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                OMF.BorderSizePixel = 0
                OMF.Size = UDim2.new(0, 100, 0, 20)
                OMF.AutoButtonColor = false
                OMF.Font = Enum.Font.SourceSans
                OMF.Text = " "
                OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
                OMF.TextSize = 12.000
                OMF.AnchorPoint = Vector2.new(0.5, 0.5)
                OMF.Position = UDim2.new(1.3, 0, 0.5, 0)
        
                local Color =  Instance.new("ImageLabel")
        
                Color.Name = "Color"
                Color.Parent = TextFrameColor
                Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                Color.Position = UDim2.new(0.05,0,4,0)
                Color.Size = UDim2.new(0, 195, 0, 40)
                Color.ZIndex = 0
                Color.BorderSizePixel = 0
                Color.Image = "rbxassetid://4155801252"
        
                local ColorFucj = Instance.new("UICorner")
        
                ColorFucj.CornerRadius = UDim.new(0, 4)
                ColorFucj.Name = ""
                ColorFucj.Parent = Color
        
                local ColorSelection =  Instance.new("ImageLabel")
        
                ColorSelection.Name = "ColorSelection"
                ColorSelection.Parent = Color
                ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
                ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ColorSelection.BackgroundTransparency = 1.000
                ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
                ColorSelection.Size = UDim2.new(0, 18, 0, 18)
                ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
                ColorSelection.ScaleType = Enum.ScaleType.Fit
                ColorSelection.Visible = true
        
                local Hue =  Instance.new("ImageLabel")
        
                Hue.Name = "Hue2"
                Hue.Parent = TextFrameColor
                Hue.Position = UDim2.new(0.14,0,3,0)
                Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Hue.Size = UDim2.new(0, 160, 0, 25)
                Hue.ZIndex = 0
                Hue.BorderSizePixel = 0
        
                local ColorFucj2 = Instance.new("UICorner")
        
                ColorFucj2.CornerRadius = UDim.new(0, 4)
                ColorFucj2.Name = ""
                ColorFucj2.Parent = Hue
        
                local HueGradient = Instance.new("UIGradient")
        
                HueGradient.Color = ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
                    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
                    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
                    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
                    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
                }
                HueGradient.Rotation = 0
                HueGradient.Name = "HueGradient"
                HueGradient.Parent = Hue
        
                local HueSelection =  Instance.new("ImageLabel")
        
                HueSelection.Name = "HueSelection"
                HueSelection.Parent = Hue
                HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
                HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HueSelection.BackgroundTransparency = 1.000
                HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
                HueSelection.Size = UDim2.new(0, 18, 0, 18)
                HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
                HueSelection.ScaleType = Enum.ScaleType.Fit
                HueSelection.Visible = true
        
        
                local BTN_XD = Instance.new("TextButton")
        
                BTN_XD.Parent = TextFrameColor
                BTN_XD.BackgroundColor3 = Color3.fromRGB(3, 250, 19)
                BTN_XD.BorderColor3 = Color3.fromRGB(3, 250, 19)
                BTN_XD.BorderSizePixel = 0
                BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
                BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
                BTN_XD.Size = UDim2.new(0, 50, 0, 25)
                BTN_XD.Font = Enum.Font.GothamSemibold
                BTN_XD.Text = "Confirm"
                BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
                BTN_XD.TextSize = 11.000
                BTN_XD.AutoButtonColor = false
        
                local BTN_XD_COnner = Instance.new("UICorner")
        
                BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
                BTN_XD_COnner.Name = ""
                BTN_XD_COnner.Parent = BTN_XD
        
        
        
                local MheeFrameStroke = Instance.new("UIStroke")
        
                MheeFrameStroke.Thickness = 1
                MheeFrameStroke.Name = ""
                MheeFrameStroke.Parent = BTN_XD
                MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
                MheeFrameStroke.Color = Color3.fromRGB(3, 250, 19)
                MheeFrameStroke.Transparency = 0.7
        
        
                local UwU = false
        
        
                OMF.MouseButton1Click:Connect(function()
                    if       UwU == false  then
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_3_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(3, 250, 19)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_2_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                    else
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_3_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TweenService:Create(
                            TextButton_2_Toggle,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                    end
                    UwU = not UwU
                end
            )
        
        
            OMF.MouseEnter:Connect(function()
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
            )
        
            OMF.MouseLeave:Connect(function()
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end
            )
        
            OMF.MouseButton1Down:Connect(
                    function()
                        RainbowColorPicker = not RainbowColorPicker
        
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
        
                        if HueInput then
                            HueInput:Disconnect()
                        end
        
                        if RainbowColorPicker then
        
        
                            OldToggleColor = BoxColor.BackgroundColor3
                            OldColor = Color.BackgroundColor3
                            OldColorSelectionPosition = ColorSelection.Position
                            OldHueSelectionPosition = HueSelection.Position
        
                            while RainbowColorPicker do
                                BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                                Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
        
                                ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                                HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)
        
                                pcall(callback, BoxColor.BackgroundColor3)
                                wait()
                            end
                        elseif not RainbowColorPicker then
        
                            BoxColor.BackgroundColor3 = OldToggleColor
                            Color.BackgroundColor3 = OldColor
        
                            ColorSelection.Position = OldColorSelectionPosition
                            HueSelection.Position = OldHueSelectionPosition
        
                            pcall(callback, BoxColor.BackgroundColor3)
                        end
                    end
                )
                TextButton_3_Toggle.MouseButton1Down:Connect(
                    function()
                        RainbowColorPicker = not RainbowColorPicker
        
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
        
                        if HueInput then
                            HueInput:Disconnect()
                        end
        
                        if RainbowColorPicker then
        
        
                            OldToggleColor = BoxColor.BackgroundColor3
                            OldColor = Color.BackgroundColor3
                            OldColorSelectionPosition = ColorSelection.Position
                            OldHueSelectionPosition = HueSelection.Position
        
                            while RainbowColorPicker do
                                BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                                Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
        
                                ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                                HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)
        
                                pcall(callback, BoxColor.BackgroundColor3)
                                wait()
                            end
                        elseif not RainbowColorPicker then
        
                            BoxColor.BackgroundColor3 = OldToggleColor
                            Color.BackgroundColor3 = OldColor
        
                            ColorSelection.Position = OldColorSelectionPosition
                            HueSelection.Position = OldHueSelectionPosition
        
                            pcall(callback, BoxColor.BackgroundColor3)
                        end
                    end
                )
        
        
                local function UpdateColorPicker(nope)
                    BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
                    Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
        
                    pcall(callback, BoxColor.BackgroundColor3)
                end
                ColorH =
                1 -
                (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                    Hue.AbsoluteSize.Y)
                ColorS =
                    (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                        Color.AbsoluteSize.X)
                ColorV =
                    1 -
                    (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                        Color.AbsoluteSize.Y)
        
                BoxColor.BackgroundColor3 = preset
                Color.BackgroundColor3 = preset
                pcall(callback, BoxColor.BackgroundColor3)
        
                local RainbowColorPicker = false
        
                Color.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            if RainbowColorPicker then
                                return
                            end
        
                            if ColorInput then
                                ColorInput:Disconnect()
                            end
        
                            ColorInput =
                                RunService.RenderStepped:Connect(
                                    function()
                                    local ColorX =
                                        (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                            Color.AbsoluteSize.X)
                                    local ColorY =
                                        (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                            Color.AbsoluteSize.Y)
        
                                    ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                                    ColorS = ColorX
                                    ColorV = 1 - ColorY
        
                                    UpdateColorPicker(true)
                                end
                                )
                        end
                    end
                )
        
        
                    Color.InputEnded:Connect(
                        function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                if ColorInput then
                                    ColorInput:Disconnect()
                                end
                            end
                        end
                    )
        
                    Hue.InputBegan:Connect(
                        function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                if RainbowColorPicker then
                                    return
                                end
        
                                if HueInput then
                                    HueInput:Disconnect()
                                end
        
                                HueInput =
                                    RunService.RenderStepped:Connect(
                                        function()
                                        local HueY =
                                            (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                                Hue.AbsoluteSize.Y)
                                        local HueX =
                                            (math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
                                                Hue.AbsoluteSize.X)
        
                                        HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
                                        ColorH = 1 - HueY
        
                                        UpdateColorPicker(true)
                                    end
                                    )
                            end
                        end
                    )
        
                    Hue.InputEnded:Connect(
                        function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                if HueInput then
                                    HueInput:Disconnect()
                                end
                            end
                        end
                    )
                    local sk = false
                    TextButton_Dropdown.MouseButton1Click:Connect(function()
                        if sk == false then
                        TweenService:Create(
                            Pixker,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, 180)}
                        ):Play()
                    else
                        TweenService:Create(
                            Pixker,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 213, 0, 33)}
                        ):Play()
                    end
                    sk = not sk
                    end
                )
                    BTN_XD.MouseButton1Click:Connect(
                        function()
                            TweenService:Create(
                                Pixker,
                                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 213, 0, 33)}
                            ):Play()
                            sk = not sk
                        end
                    )
        
        
                end

                function items:Label(text,image)
                    if image == nil then
                        image = "6031229361"
                    end
                    local labaelchange = {}
                    local LabelFrame = Instance.new("Frame")
        
        
                    LabelFrame.Name = "Mainframenoti"
                    LabelFrame.Parent = ScrollingFrame_Pageframe
                    LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                    LabelFrame.BackgroundTransparency = 0
                    LabelFrame.BorderSizePixel = 0
                    LabelFrame.ClipsDescendants = false
                    LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
                    LabelFrame.Size = UDim2.new(0, 213, 0, 28)
        
                    local LabelFarm2 = Instance.new("TextLabel")
        
                    LabelFarm2.Parent = LabelFrame
                    LabelFarm2.Name = "TextLabel_Tap"
                    LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
                    LabelFarm2.Font = Enum.Font.SourceSansSemibold
                    LabelFarm2.Text = text
                    LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    LabelFarm2.TextSize = 12.000
                    LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)
                    LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)
                    LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
                    LabelFarm2.BackgroundTransparency = 1
                    LabelFarm2.TextWrapped = true
        
                    local ImageLabel_gx = Instance.new("ImageLabel")
        
                    ImageLabel_gx.Parent = LabelFrame
                    ImageLabel_gx.BackgroundTransparency = 1.000
                    ImageLabel_gx.BorderSizePixel = 0
                    ImageLabel_gx.Size = UDim2.new(0, 18, 0, 18)
                    ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)
                    ImageLabel_gx.Position = UDim2.new(0.06, 0, 0.45, 0)
                    ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(image)
                    ImageLabel_gx.BackgroundTransparency = 1
        
                    local noticore55 = Instance.new("UICorner")
        
                    noticore55.CornerRadius = UDim.new(0, 4)
                    noticore55.Name = ""
                    noticore55.Parent = LabelFarm2
        
                    local noticore2777 = Instance.new("UICorner")
        
                    noticore2777.CornerRadius = UDim.new(0, 4)
                    noticore2777.Name = ""
                    noticore2777.Parent = LabelFrame
        
                    local LabelStroke = Instance.new("UIStroke")
        
                    LabelStroke.Thickness = 1
                    LabelStroke.Name = ""
                    LabelStroke.Parent = LabelFrame
                    LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
                    LabelStroke.Color = Color3.fromRGB(3, 250, 19)
                    LabelStroke.Transparency = 0.7
        
                    LabelFrame.MouseEnter:Connect(function()
                        TweenService:Create(
                            LabelStroke,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency =0}
                        ):Play()
                    end
                )
                    LabelFrame.MouseLeave:Connect(function()
                        TweenService:Create(
                            LabelStroke,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency =0.7}
                        ):Play()
                    end
                )
                    function labaelchange:Change(text2)
                        LabelFarm2.Text = text2
                    end
                    return  labaelchange
                end
                return  items
                end
            return  page
            end
        return top
        end
        --return create
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local VirtualUser = game:GetService('VirtualUser')

        function totarget(CFgo)
            local tween_s = game:service"TweenService"
            local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
            local tween, err = pcall(function()
                tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
                tween:Play()
            end)
            if not tween then return err end
        end
    local placeId = game.PlaceId
                        if placeId == 2753915549 then
                            OldWorld = true
                        elseif placeId == 4442272183 then
                            NewWorld = true
                        elseif placeId == 7449423635 then
                            ThreeWorld = true
                            do
                            local count = 0
                            for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
                                if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then
                                    v:Destroy()
                                    count = count + 1
                                    if count > 2 then
                                        break
                                    end
                                end
                            end
                            end
                        end
                        function Click()
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end
                        function CheckQuest()
                            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                            if OldWorld then
                                if MyLevel == 1 or MyLevel <= 9 then 
                                    Ms = "Bandit [Lv. 5]"
                                    NaemQuest = "BanditQuest1" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Bandit"
                                    CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905)
                                    PosQuest = Vector3.new(1061.66699, 16.5166187, 1544.52905)
                                    CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516)
                                    PosMon = Vector3.new(1199.31287, 52.2717781, 1536.91516)
                                elseif MyLevel == 10 or MyLevel <= 14 then 
                                    Ms = "Monkey [Lv. 14]"
                                    NaemQuest = "JungleQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Monkey"
                                    CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
                                    PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
                                    CFrameMon = CFrame.new(-1772.4093017578, 60.860641479492, 54.872589111328)
                                    PosMon = Vector3.new(-1772.4093017578, 60.860641479492, 54.872589111328)
                                elseif MyLevel == 15 or MyLevel <= 29 then 
                                    Ms = "Gorilla [Lv. 20]"
                                    NaemQuest = "JungleQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Gorilla"
                                    CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
                                    PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
                                    CFrameMon = CFrame.new(-1301.87988, 18.6214523, -468.544769, 0.164645091, -1.12205412e-09, 0.986352861, -5.18567367e-09, 1, 2.00318762e-09, -0.986352861, -5.44471934e-09, 0.164645091)
                                    PosMon = Vector3.new(-1301.87988, 18.6214523, -468.544769, 0.164645091, -1.12205412e-09, 0.986352861, -5.18567367e-09, 1, 2.00318762e-09, -0.986352861, -5.44471934e-09, 0.164645091)
                                elseif MyLevel == 30 or MyLevel <= 39 then 
                                    Ms = "Pirate [Lv. 35]"
                                    NaemQuest = "BuggyQuest1" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Pirate"
                                    CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
                                    PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.16211)
                                    CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452)
                                    PosMon = Vector3.new(-1219.32324, 4.75205183, 3915.63452)
                                elseif MyLevel == 40 or MyLevel <= 59 then 
                                    Ms = "Brute [Lv. 45]"
                                    NaemQuest = "BuggyQuest1" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Brute"
                                    CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.1621)
                                    PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.1621)
                                    CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333)
                                    PosMon = Vector3.new(-1146.49646, 96.0936813, 4312.1333)
                                elseif MyLevel == 60 or MyLevel <= 74 then 
                                    Ms = "Desert Bandit [Lv. 60]"
                                    NaemQuest = "DesertQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Desert Bandit"
                                    CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
                                    PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
                                    CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609)
                                    PosMon = Vector3.new(932.788818, 6.4503746, 4488.24609)
                                elseif MyLevel == 75 or MyLevel <= 89 then 
                                    Ms = "Desert Officer [Lv. 70]"
                                    NaemQuest = "DesertQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Desert Officer"
                                    CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
                                    PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
                                    CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426)
                                    PosMon = Vector3.new(1580.03198, 4.61375761, 4366.86426)
                                elseif MyLevel == 90 or MyLevel <= 99 then 
                                    Ms = "Snow Bandit [Lv. 90]"
                                    NaemQuest = "SnowQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Snow Bandits"
                                    CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
                                    PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
                                    CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
                                    PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
                                elseif MyLevel == 100 or MyLevel <= 119 then 
                                    Ms = "Snowman [Lv. 100]"
                                    NaemQuest = "SnowQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Snowman"
                                    CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
                                    PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
                                    CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
                                    PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
                                elseif MyLevel == 120 or MyLevel <= 149 then 
                                    Ms = "Chief Petty Officer [Lv. 120]"
                                    NaemQuest = "MarineQuest2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Chief Petty Officer"
                                    CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443)
                                    PosQuest = Vector3.new(-5035.0835, 28.6520386, 4325.29443)
                                    CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516)
                                    PosMon = Vector3.new(-4882.8623, 22.6520386, 4255.53516)
                                elseif MyLevel == 150 or MyLevel <= 174 then 
                                    Ms = "Sky Bandit [Lv. 150]"
                                    NaemQuest = "SkyQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Sky Bandit"
                                    CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
                                    PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
                                    CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
                                    PosMon = Vector3.new(-4970.74219, 294.544342, -2890.11353)
                                elseif MyLevel == 175 or MyLevel <= 224 then 
                                    Ms = "Dark Master [Lv. 175]"
                                    NaemQuest = "SkyQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Dark Master"
                                    CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
                                    PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
                                    CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
                                    PosMon = Vector3.new(-5220.58594, 430.693298, -2278.17456)
                                elseif MyLevel == 225 or MyLevel <= 274 then 
                                    Ms = "Toga Warrior [Lv. 225]"
                                    NaemQuest = "ColosseumQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Toga Warrior"
                                    CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
                                    PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
                                    CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
                                    PosMon = Vector3.new(-1779.97583, 44.6077499, -2736.35474)
                                elseif MyLevel == 275 or MyLevel <= 299 then 
                                    Ms = "Gladiator [Lv. 275]"
                                    NaemQuest = "ColosseumQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Gladiato"
                                    CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
                                    PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
                                    CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309)
                                    PosMon = Vector3.new(-1274.75903, 58.1895943, -3188.16309)
                                elseif MyLevel == 300 or MyLevel <= 329 then 
                                    Ms = "Military Soldier [Lv. 300]"
                                    NaemQuest = "MagmaQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Military Soldier"
                                    CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
                                    PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
                                    CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
                                    PosMon = Vector3.new(-5363.01123, 41.5056877, 8548.47266)
                                elseif MyLevel == 300 or MyLevel <= 374 then 
                                    Ms = "Military Spy [Lv. 330]"
                                    NaemQuest = "MagmaQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Military Spy"
                                    CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
                                    PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
                                    CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293)
                                    PosMon = Vector3.new(-5787.99023, 120.864456, 8762.25293)
                                elseif MyLevel == 375 or MyLevel <= 399 then 
                                    Ms = "Fishman Warrior [Lv. 375]"
                                    NaemQuest = "FishmanQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Fishman Warrior"
                                    CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                                    PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
                                    CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
                                    PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
                                elseif MyLevel == 400 or MyLevel <= 449 then 
                                    Ms = "Fishman Commando [Lv. 400]"
                                    NaemQuest = "FishmanQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Fishman Commando"
                                    CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                                    PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
                                    CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
                                    PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
                                elseif MyLevel == 450 or MyLevel <= 474 then 
                                    Ms = "God's Guard [Lv. 450]"
                                    NaemQuest = "SkyExp1Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "God's Guards"
                                    CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                                    PosQuest = Vector3.new(-4721.71436, 845.277161, -1954.20105)
                                    CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
                                    PosMon = Vector3.new(-4716.95703, 853.089722, -1933.925427)
                                elseif MyLevel == 475 or MyLevel <= 524 then 
                                    Ms = "Shanda [Lv. 475]"
                                    NaemQuest = "SkyExp1Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Shandas"
                                    CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324)
                                    PosQuest = Vector3.new(-7863.63672, 5545.49316, -379.826324)
                                    CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
                                    PosMon = Vector3.new(-7685.12354, 5601.05127, -443.171509)
                                elseif MyLevel == 525 or MyLevel <= 549 then 
                                    Ms = "Royal Squad [Lv. 525]"
                                    NaemQuest = "SkyExp2Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Royal Squad"
                                    CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
                                    PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
                                    CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
                                    PosMon = Vector3.new(-7685.02051, 5606.87842, -1442.729)
                                elseif MyLevel == 550 or MyLevel <= 624 then 
                                    Ms = "Royal Soldier [Lv. 550]"
                                    NaemQuest = "SkyExp2Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Royal Soldier"
                                    CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
                                    PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
                                    CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
                                    PosMon = Vector3.new(-7864.44775, 5661.94092, -1708.22351)
                                elseif MyLevel == 625 or MyLevel <= 649 then 
                                    Ms = "Galley Pirate [Lv. 625]" 
                                    NaemQuest = "FountainQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Galley Pirate"
                                    CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
                                    PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
                                    CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
                                    PosMon = Vector3.new(5595.06982, 41.5013695, 3961.47095)
                                elseif MyLevel >= 650 then 
                                    Ms = "Galley Captain [Lv. 650]"
                                    NaemQuest = "FountainQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Galley Captain"
                                    CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
                                    PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
                                    CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
                                    PosMon = Vector3.new(5658.5752, 38.5361786, 4928.93506)
                                end
                            end
                            if NewWorld then
                                if MyLevel == 700 or MyLevel <= 724 then 
                                    Ms = "Raider [Lv. 700]"
                                    NaemQuest = "Area1Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Raider"
                                    CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
                                    PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
                                    CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
                                    PosMon = Vector3.new(-737.026123, 39.1748352, 2392.57959)
                                elseif MyLevel == 725 or MyLevel <= 774 then 
                                    Ms = "Mercenary [Lv. 725]"
                                    NaemQuest = "Area1Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Mercenary"
                                    CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
                                    PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
                                    CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936)
                                    PosMon = Vector3.new(-973.731995, 95.8733215, 1836.46936)
                                elseif MyLevel == 775 or MyLevel <= 874 then 
                                    Ms = "Swan Pirate [Lv. 775]"
                                    NaemQuest = "Area2Quest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Swan Pirate"
                                    CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
                                    PosQuest = Vector3.new(632.698608, 73.1055908, 918.666321)
                                    CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
                                    PosMon = Vector3.new(970.369446, 142.653198, 1217.3667)
                                elseif MyLevel == 875 or MyLevel <= 899 then 
                                    Ms = "Marine Lieutenant [Lv. 875]"
                                    NaemQuest = "MarineQuest3" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Marine Lieutenant"
                                    CFrameQuest = CFrame.new(-2442.99805, 73.0160828, -3219.61304, -0.877783895, -7.71497781e-08, -0.479056865, -6.27637746e-08, 1, -4.60420289e-08, 0.479056865, -1.03475353e-08, -0.877783895)
                                    PosQuest = Vector3.new(-2442.99805, 73.0160828, -3219.61304, -0.877783895, -7.71497781e-08, -0.479056865, -6.27637746e-08, 1, -4.60420289e-08, 0.479056865, -1.03475353e-08, -0.877783895)
                                    CFrameMon = CFrame.new(-3065.75806, 102.075668, -3171.45386, -0.549014449, -3.08626227e-08, -0.835812867, 1.2026228e-08, 1, -4.4824862e-08, 0.835812867, -3.46611735e-08, -0.549014449)
                                    PosMon = Vector3.new(-3065.75806, 102.075668, -3171.45386, -0.549014449, -3.08626227e-08, -0.835812867, 1.2026228e-08, 1, -4.4824862e-08, 0.835812867, -3.46611735e-08, -0.549014449)
                                elseif MyLevel == 900 or MyLevel <= 949 then 
                                    Ms = "Marine Captain [Lv. 900]"
                                    NaemQuest = "MarineQuest3" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Marine Captain"
                                    CFrameQuest = CFrame.new(-2442.99805, 73.0160828, -3219.61304, -0.877783895, -7.71497781e-08, -0.479056865, -6.27637746e-08, 1, -4.60420289e-08, 0.479056865, -1.03475353e-08, -0.877783895)
                                    PosQuest = Vector3.new(-2442.99805, 73.0160828, -3219.61304, -0.877783895, -7.71497781e-08, -0.479056865, -6.27637746e-08, 1, -4.60420289e-08, 0.479056865, -1.03475353e-08, -0.877783895)
                                    CFrameMon = CFrame.new(-1850.47278, 89.8190918, -3206.01025, 0.307623535, 2.29538806e-08, 0.951508164, -7.97129189e-08, 1, 1.64758374e-09, -0.951508164, -7.63543326e-08, 0.307623535)
                                    PosMon = Vector3.new(-1850.47278, 89.8190918, -3206.01025, 0.307623535, 2.29538806e-08, 0.951508164, -7.97129189e-08, 1, 1.64758374e-09, -0.951508164, -7.63543326e-08, 0.307623535)
                                elseif MyLevel == 950 or MyLevel <= 974 then 
                                    Ms = "Zombie [Lv. 950]"
                                    NaemQuest = "ZombieQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Zombie"
                                    CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
                                    PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
                                    CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
                                    PosMon = Vector3.new(-5634.83838, 126.067039, -697.665039)
                                elseif MyLevel == 975 or MyLevel <= 999 then 
                                    Ms = "Vampire [Lv. 975]"
                                    NaemQuest = "ZombieQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Vampire"
                                    CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
                                    PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
                                    CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
                                    PosMon = Vector3.new(-6030.32031, 6.4377408, -1313.5564)
                                elseif MyLevel == 1000 or MyLevel <= 1049 then 
                                    Ms = "Snow Trooper [Lv. 1000]"
                                    NaemQuest = "SnowMountainQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Snow Trooper"
                                    CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
                                    PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
                                    CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
                                    PosMon = Vector3.new(535.893433, 401.457062, -5329.6958)
                                elseif MyLevel == 1050 or MyLevel <= 1099 then 
                                    Ms = "Winter Warrior [Lv. 1050]"
                                    NaemQuest = "SnowMountainQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Winter Warrior"
                                    CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
                                    PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
                                    CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
                                    PosMon = Vector3.new(1223.7417, 454.575226, -5170.02148)
                                elseif MyLevel == 1100 or MyLevel <= 1124 then 
                                    Ms = "Lab Subordinate [Lv. 1100]"
                                    NaemQuest = "IceSideQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Lab Subordinate"
                                    CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
                                    PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
                                    CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
                                    PosMon = Vector3.new(-5769.2041, 37.9288292, -4468.38721)
                                elseif MyLevel == 1125 or MyLevel <= 1174 then 
                                    Ms = "Horned Warrior [Lv. 1125]"
                                    NaemQuest = "IceSideQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Horned Warrior"
                                    CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
                                    PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
                                    CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
                                    PosMon = Vector3.new(-6400.85889, 24.7645149, -5818.63574)
                                elseif MyLevel == 1175 or MyLevel <= 1199 then 
                                    Ms = "Magma Ninja [Lv. 1175]"
                                    NaemQuest = "FireSideQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Magma Ninja"
                                    CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
                                    PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
                                    CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
                                    PosMon = Vector3.new(-5496.65576, 58.6890411, -5929.76855)
                                elseif MyLevel == 1200 or MyLevel <= 1349 then 
                                    Ms = "Lava Pirate [Lv. 1200]"
                                    NaemQuest = "FireSideQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Lava Pirate"
                                    CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
                                    PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
                                    CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
                                    PosMon = Vector3.new(-5169.71729, 34.1234779, -4669.73633)
                                elseif MyLevel == 1350 or MyLevel <= 1374 then 
                                    Ms = "Arctic Warrior [Lv. 1350]"
                                    NaemQuest = "FrostQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Arctic Warrior"
                                    CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
                                    PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
                                    CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314)
                                    PosMon = Vector3.new(5995.07471, 57.3188477, -6183.47314)
                                elseif MyLevel == 1375 or MyLevel <= 1424 then 
                                    Ms = "Snow Lurker [Lv. 1375]"
                                    NaemQuest = "FrostQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Snow Lurker"
                                    CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
                                    PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
                                    CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
                                    PosMon = Vector3.new(5518.00684, 60.5559731, -6828.80518)
                                elseif MyLevel == 1425 or MyLevel <= 1449 then 
                                    Ms = "Sea Soldier [Lv. 1425]"
                                    NaemQuest = "ForgottenQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Sea Soldier"
                                    CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
                                    PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
                                    CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
                                    PosMon = Vector3.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
                                elseif MyLevel >= 1450 then 
                                    Ms = "Water Fighter [Lv. 1450]"
                                    NaemQuest = "ForgottenQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Water Fighter"
                                    CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
                                    PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
                                    CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
                                    PosMon = Vector3.new(-3436.7727050781, 290.52191162109, -10503.438476563)
                                end
                            end
                            if ThreeWorld then
                                if MyLevel >= 1500 and MyLevel <= 1524 then
                                    Ms = "Pirate Millionaire [Lv. 1500]"
                                    NaemQuest = "PiratePortQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Pirate Millionaire"
                                    CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
                                    PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
                                    CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                    PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                elseif MyLevel >= 1525 and MyLevel <= 1574 then
                                    Ms = "Pistol Billionaire [Lv. 1525]"
                                    NaemQuest = "PiratePortQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Pistol Billionaire"
                                    CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
                                    PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
                                    CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                    PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                elseif MyLevel >= 1575 and MyLevel <= 1599 then
                                    Ms = "Dragon Crew Warrior [Lv. 1575]"
                                    NaemQuest = "AmazonQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Dragon Crew Warrior"
                                    CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
                                    PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
                                    CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                                    PosMon = Vector3.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                                elseif MyLevel >= 1600 and MyLevel <= 1624 then
                                    Ms = "Dragon Crew Archer [Lv. 1600]"
                                    NaemQuest = "AmazonQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Dragon Crew Archer"
                                    CFrameQuest = CFrame.new(5834.13281, 51.3513527, -1104.94043, -0.224075064, 0, 0.974571884, 0, 1, -0, -0.974571884, 0, -0.224075064)
                                    PosQuest = Vector3.new(5834.13281, 51.3513527, -1104.94043, -0.224075064, 0, 0.974571884, 0, 1, -0, -0.974571884, 0, -0.224075064)
                                    CFrameMon = CFrame.new(6788.97461, 462.341248, 164.233673, -0.711975694, 1.98202414e-08, 0.702204108, -1.45830699e-08, 1, -4.30117559e-08, -0.702204108, -4.08636183e-08, -0.711975694)
                                    PosMon = Vector3.new(6788.97461, 462.341248, 164.233673, -0.711975694, 1.98202414e-08, 0.702204108, -1.45830699e-08, 1, -4.30117559e-08, -0.702204108, -4.08636183e-08, -0.711975694)
                                elseif MyLevel >= 1625 and MyLevel <= 1649 then
                                    Ms = "Female Islander [Lv. 1625]"
                                    NaemQuest = "AmazonQuest2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Female Islander"
                                    CFrameQuest = CFrame.new(5444.26416, 601.603638, 751.6604, 0.116254583, 1.00329423e-07, -0.993219435, 2.09664464e-08, 1, 1.03468444e-07, 0.993219435, -3.2852963e-08, 0.116254583)
                                    PosQuest = Vector3.new(5444.26416, 601.603638, 751.6604, 0.116254583, 1.00329423e-07, -0.993219435, 2.09664464e-08, 1, 1.03468444e-07, 0.993219435, -3.2852963e-08, 0.116254583)
                                    CFrameMon = CFrame.new(5763.98682, 848.118103, 1082.43127, 0.986172736, 2.65753979e-08, 0.165720671, -2.36233451e-08, 1, -1.97844852e-08, -0.165720671, 1.55960436e-08, 0.986172736)
                                    PosMon = Vector3.new(5763.98682, 848.118103, 1082.43127, 0.986172736, 2.65753979e-08, 0.165720671, -2.36233451e-08, 1, -1.97844852e-08, -0.165720671, 1.55960436e-08, 0.986172736)
                                elseif MyLevel >= 1650 and MyLevel <= 1699 then
                                    Ms = "Giant Islander [Lv. 1650]"
                                    NaemQuest = "AmazonQuest2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Giant Islander"
                                    CFrameQuest = CFrame.new(5443.72119, 606.5578, 750.532898, -0.981005013, -0, -0.193982586, -0, 1, -0, 0.193982586, 0, -0.981005)
                                    PosQuest = Vector3.new(5443.72119, 606.5578, 750.532898, -0.981005013, -0, -0.193982586, -0, 1, -0, 0.193982586, 0, -0.981005)
                                    CFrameMon = CFrame.new(4784.24561, 708.376465, 466.297485, 0.99801594, 3.11927195e-09, 0.0629619658, -5.34848299e-09, 1, 3.52371394e-08, -0.0629619658, -3.55039766e-08, 0.99801594)
                                    PosMon = Vector3.new(4784.24561, 708.376465, 466.297485, 0.99801594, 3.11927195e-09, 0.0629619658, -5.34848299e-09, 1, 3.52371394e-08, -0.0629619658, -3.55039766e-08, 0.99801594)
                                elseif MyLevel >= 1700 and MyLevel <= 1724 then
                                    Ms = "Marine Commodore [Lv. 1700]"
                                    NaemQuest = "MarineTreeIsland" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Marine Commodore"
                                    CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
                                    PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
                                    CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                                    PosMon = Vector3.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                                elseif MyLevel >= 1725 and MyLevel <= 1774 then
                                    Ms = "Marine Rear Admiral [Lv. 1725]"
                                    NaemQuest = "MarineTreeIsland" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Marine Rear Admiral"
                                    CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
                                    PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
                                    CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                                    PosMon = Vector3.new(3951.3903808594, 229.11549377441, -6912.81640625)
                                elseif MyLevel >= 1775 and MyLevel <= 1799 then
                                    Ms = "Fishman Raider [Lv. 1775]"
                                    NaemQuest = "DeepForestIsland3" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Fishman Raider"
                                    CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
                                    PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
                                    CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                                    PosMon = Vector3.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                                elseif MyLevel >= 1800 and MyLevel <= 1824 then
                                    Ms = "Fishman Captain [Lv. 1800]" 
                                    NaemQuest = "DeepForestIsland3" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Fishman Captain"
                                    CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
                                    PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
                                    CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                                    PosMon = Vector3.new(-11194.541992188, 442.02795410156, -8608.806640625)
                                elseif MyLevel >= 1825 and MyLevel <= 1849 then
                                    Ms = "Forest Pirate [Lv. 1825]" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    NaemQuest = "DeepForestIsland"
                                    LevelQuest = 1
                                    NameMon = "Forest Pirate"
                                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
                                    PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
                                    CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                                    PosMon = Vector3.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                                elseif MyLevel >= 1850 and MyLevel <= 1899 then
                                    Ms = "Mythological Pirate [Lv. 1850]"
                                    NaemQuest = "DeepForestIsland" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Mythological Pirate"
                                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
                                    PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
                                    CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                                    PosMon = Vector3.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                                elseif MyLevel >= 1900 and MyLevel <= 1924 then
                                    Ms = "Jungle Pirate [Lv. 1900]"
                                    NaemQuest = "DeepForestIsland2"
                                    LevelQuest = 1
                                    NameMon = "Jungle Pirate"
                                    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
                                    PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
                                    CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                                    PosMon = Vector3.new(-11982.221679688, 376.32522583008, -10451.415039063)
                                elseif MyLevel >= 1925 and MyLevel <= 1974 then
                                    Ms = "Musketeer Pirate [Lv. 1925]"
                                    NaemQuest = "DeepForestIsland2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Musketeer Pirate"
                                    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
                                    PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
                                    CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                                    PosMon = Vector3.new(-13282.3046875, 496.23684692383, -9565.150390625)
                                elseif MyLevel >= 1975 and MyLevel <= 1999 then
                                    Ms = "Reborn Skeleton [Lv. 1975]"
                                    NaemQuest = "HauntedQuest1" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Reborn Skeleton"
                                    CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                                    PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                                    CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
                                    PosMon = Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)
                                elseif MyLevel >= 2000 and MyLevel <= 2024 then
                                    Ms = "Living Zombie [Lv. 2000]"
                                    NaemQuest = "HauntedQuest1" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Living Zombie"
                                    CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                                    PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                                    CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
                                    PosMon = Vector3.new(-10125.234375, 183.94705200195, 6242.013671875)
                                elseif MyLevel >= 2025 and MyLevel <= 2049  then
                                    Ms = "Demonic Soul [Lv. 2025]" 
                                    NaemQuest = "HauntedQuest2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Demonic Soul"
                                    CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                                    PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                                    CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
                                    PosMon = Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)
                                elseif MyLevel >= 2050 and MyLevel <= 2074  then
                                    Ms = "Posessed Mummy [Lv. 2050]"
                                    NaemQuest = "HauntedQuest2" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Posessed Mummy"
                                    CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                                    PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                                    CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
                                    PosMon = Vector3.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
                                elseif MyLevel >= 2075 and MyLevel <= 2099  then
                                    Ms = "Peanut Scout [Lv. 2075]"
                                    NaemQuest = "NutsIslandQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Peanut Scout"
                                    CFrameQuest = CFrame.new(-2103.04883, 38.1041756, -10193.2646, 0.744396865, -3.04309395e-08, 0.667737424, -2.1975902e-08, 1, 7.00720548e-08, -0.667737424, -6.6835554e-08, 0.744396865)
                                    PosQuest = Vector3.new(-2103.04883, 38.1041756, -10193.2646, 0.744396865, -3.04309395e-08, 0.667737424, -2.1975902e-08, 1, 7.00720548e-08, -0.667737424, -6.6835554e-08, 0.744396865)
                                    CFrameMon = CFrame.new(-2265.89014, 89.7506104, -10261.2197, -0.809553444, -9.26727282e-08, 0.587046146, -5.44419549e-08, 1, 8.27857534e-08, -0.587046146, 3.50595535e-08, -0.809553444)
                                    PosMon = Vector3.new(-2265.89014, 89.7506104, -10261.2197, -0.809553444, -9.26727282e-08, 0.587046146, -5.44419549e-08, 1, 8.27857534e-08, -0.587046146, 3.50595535e-08, -0.809553444)
                                elseif MyLevel >= 2100 and MyLevel <= 2124  then
                                    Ms = "Peanut President [Lv. 2100]"
                                    NaemQuest = "NutsIslandQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Peanut President"
                                    CFrameQuest = CFrame.new(-2103.04883, 38.1041756, -10193.2646, 0.744396865, -3.04309395e-08, 0.667737424, -2.1975902e-08, 1, 7.00720548e-08, -0.667737424, -6.6835554e-08, 0.744396865)
                                    PosQuest = Vector3.new(-2103.04883, 38.1041756, -10193.2646, 0.744396865, -3.04309395e-08, 0.667737424, -2.1975902e-08, 1, 7.00720548e-08, -0.667737424, -6.6835554e-08, 0.744396865)
                                    CFrameMon = CFrame.new(-2062.11792, 86.0444489, -10481.1445, 0.834163189, -9.79785408e-09, -0.551517665, -2.60617616e-09, 1, -2.17070646e-08, 0.551517665, 1.95445864e-08, 0.834163189)
                                    PosMon = Vector3.new(-2062.11792, 86.0444489, -10481.1445, 0.834163189, -9.79785408e-09, -0.551517665, -2.60617616e-09, 1, -2.17070646e-08, 0.551517665, 1.95445864e-08, 0.834163189)
                                elseif MyLevel >= 2125 and MyLevel <= 2149  then
                                    Ms = "Ice Cream Chef [Lv. 2125]"
                                    NaemQuest = "IceCreamIslandQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 1
                                    NameMon = "Ice Cream Chef"
                                    CFrameQuest = CFrame.new(-821.356079, 65.819519, -10963.4785, 0.773735404, -8.29448581e-08, -0.633508921, 9.66429141e-08, 1, -1.28945574e-08, 0.633508921, -5.12471701e-08, 0.773735404)
                                    PosQuest = Vector3.new(-821.356079, 65.819519, -10963.4785, 0.773735404, -8.29448581e-08, -0.633508921, 9.66429141e-08, 1, -1.28945574e-08, 0.633508921, -5.12471701e-08, 0.773735404)
                                    CFrameMon = CFrame.new(-875.441345, 107.871437, -11253.3691, 0.630182087, 5.98710486e-08, 0.776447415, -6.03229751e-08, 1, -2.81494827e-08, -0.776447415, -2.90983202e-08, 0.630182087)
                                    PosMon = Vector3.new(-875.441345, 107.871437, -11253.3691, 0.630182087, 5.98710486e-08, 0.776447415, -6.03229751e-08, 1, -2.81494827e-08, -0.776447415, -2.90983202e-08, 0.630182087)
                                elseif MyLevel > 2150 then
                                    Ms = "Ice Cream Commander [Lv. 2150]"
                                    NaemQuest = "IceCreamIslandQuest" --à¸Šà¸·à¹ˆà¸­à¹€à¸à¸£à¸²à¸°à¸–à¹‰à¸²à¸¡à¸µ Giver 1 à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹ƒà¸ªà¹ˆà¸Šà¸·à¹ˆà¸­ 1-2 à¸‚à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸‡à¹€à¸„à¸§à¸ª--
                                    LevelQuest = 2
                                    NameMon = "Ice Cream Commander"
                                    CFrameQuest = CFrame.new(-821.356079, 65.819519, -10963.4785, 0.773735404, -8.29448581e-08, -0.633508921, 9.66429141e-08, 1, -1.28945574e-08, 0.633508921, -5.12471701e-08, 0.773735404)
                                    PosQuest = Vector3.new(-821.356079, 65.819519, -10963.4785, 0.773735404, -8.29448581e-08, -0.633508921, 9.66429141e-08, 1, -1.28945574e-08, 0.633508921, -5.12471701e-08, 0.773735404)
                                    CFrameMon = CFrame.new(-643.3078, 140.913528, -11334.7109, -0.996822715, -9.07818087e-09, 0.0796525627, -1.43212509e-08, 1, -6.52529906e-08, -0.0796525627, -6.61863808e-08, -0.996822715)
                                    PosMon = Vector3.new(-643.3078, 140.913528, -11334.7109, -0.996822715, -9.07818087e-09, 0.0796525627, -1.43212509e-08, 1, -6.52529906e-08, -0.0796525627, -6.61863808e-08, -0.996822715)
                                end
                            end
                        end

    function AutoQuest()
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                CheckQuest()
                                repeat wait()
                                    totarget(CFrameQuest)
                                    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 4
                                    wait(.5)
                                    local args = {
                                        [1] = "StartQuest",
                                        [2] = NaemQuest,
                                        [3] = LevelQuest
                                    }
                                    
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    
                        end
                    end

                    function TP2FF(P1)
        Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 1000 then
            Speed = 400
        elseif Distance >= 1000 then
            Speed = 250
        end
        game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = P1}
        ):Play()
        Clip = true
        wait(Distance/Speed)
        Clip = false
    end
    function TP(P1,P2)
        Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 1000 then
            Speed = 500
        elseif Distance >= 1000 then
            Speed = 300
        end
        if Distance >= 300 then
            tweenss = game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P2})
            tweenss:Play()
        else
            pcall(function()
            tweenss:Pause()
            end)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P2 
        end
    end

    function TPs(P1,P2)
        Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 1000 then
            Speed = 500
        elseif Distance >= 1000 then
            Speed = 300
        end
        tweenss = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = P2})
        tweenss:Play()
        wait(Distance/Speed)
    end
    function totarget(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        local tween, err = pcall(function()
            tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
            tween:Play()
        end)
        if not tween then return err end
    end

                        SelectToolWeapon = "" 
                        function EquipWeapon(ToolSe)
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                                wait(.4)
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                            end
                        end
                            SelectToolWeapon = ""
                            function EquipWeapon(ToolSe)
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                                    wait(.4)
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                end
                            end

        

        local Window = create:Win("xSaigez hub")
        local Tap1100 = Window:Taps("Main")
        local Tap1 = Window:Taps("Auto Farm")
        local Tap2 = Window:Taps("Stats")
        local Tap3 = Window:Taps("Players")
        local Tap4 = Window:Taps("Teleport / Buy")  
        local Tap5 = Window:Taps("Misc")
        local Tap6 = Window:Taps("Raids")

        local Main = Tap1100:newpage()
        local HEEMENCHIP = Tap1100:newpage() 
        local tab = Tap1:newpage()
        local Tap = Tap1:newpage() 
        local tab1 = Tap2:newpage()
        local stat = Tap2:newpage()
        local tab2 = Tap3:newpage()
        local player = Tap3:newpage()
        local tab3 = Tap4:newpage()
        local buy = Tap4:newpage()
        local tab4 = Tap5:newpage()
        local Misc = Tap5:newpage()
        local Raid = Tap6:newpage()


        Main:Label("Copy Discord",0)

        Main:Line()

    Main:Button("Join Discord xSagiez Hub", function(value)
        local a=request or http_request or syn and syn.request;local b=game.HttpService;a({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=b:JSONEncode({cmd="INVITE_BROWSER",args={code="RGM8a48JAC"},nonce=b:GenerateGUID(false)})})local c=game:GetService("Players").LocalPlayer
    end)

    Main:Button("Copy Link Discord xSaigez hub ", function()
        setclipboard("https://discord.gg/dvrfmQ8RVk")
    end)

    Main:Line()

    HEEMENCHIP:Label("Revive Script Copy",0)

    HEEMENCHIP:Button("Revive Script ", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Label("Update Script",0)

    HEEMENCHIP:Line()

    HEEMENCHIP:Button("New Auto Farm", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Button("Random Event", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Button("New Part All function", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Button("Level Lock 2200", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Button("Auto Farm Candy", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Button("New Fast attack no cool down", function()
        setclipboard("https://www.youtube.com/watch?v=feowcDLQN70")
    end)

    HEEMENCHIP:Line()

        tab:Label("Auto Farm",0)


        Ping = tab:Label("Ping")
            local function UpdatePing()
                Ping:Change(""..game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue().. " ms")
            end
            spawn(function()
                while true do
                    UpdatePing()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)
        
        tab:Line()

        tab:Drop("Farm Method",false,{"Tween", "TP"},function(Value)
            FarmMethod = Value
        end)
        
        tab:Toggle("Auto Farm",false,function(d)
            if d then
                if FarmMethod == nil then
                    create:Notifile("xSaigez hub", "Select Farm Method" ,5)
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if FarmMethod == "Tween" then
                        _G.AutoFarm = true
                        create:Notifile("Select Farm Method", "Tween" ,5)
                    else
                        _G.FarmLevel = true
                        create:Notifile("Select Farm Method", "TP" ,5)
                    end
                end
            else
                _G.FarmLevel = false
                _G.AutoFarm = false
                if _G.AutoFarm == false then
                    wait(1)
                    TPS(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end)

        -- _G.AirwalkNoclip = true
        spawn(function()
            while true do game:GetService("RunService").RenderStepped:Wait()
                if syn and  game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    setfflag("HumanoidParallelRemoveNoPhysics", "False")
                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                    setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
                    setfflag("CrashUploadToBacktracePercentage", "0")
                    setfflag("CrashUploadToBacktraceBlackholeToken", "")
                    setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
                    -- game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                -- else
                end
            end
        end)

        game:GetService("RunService").Heartbeat:Connect(function()
            local air = game:GetService("Workspace"):FindFirstChild("AirwalkNoclip")
            if _G.AutoFarm or _G.AutoFarmCandy or _G.AutoFarmBone or _G.FarmLevel then
                game:GetService("RunService").Stepped:Wait()
                    if not game:GetService("Workspace"):FindFirstChild("AirwalkNoclip") then
                        local AirwalkNoclip = Instance.new("Part")
                        AirwalkNoclip.Parent = workspace
                        AirwalkNoclip.Size = Vector3.new(10,1,10);
                        AirwalkNoclip.Transparency = 0
                        AirwalkNoclip.Anchored = true
                        AirwalkNoclip.CanCollide = true
                        AirwalkNoclip.Name = "AirwalkNoclip"
                        AirwalkNoclip.Material = "Neon"
                        while true do 
                        wait(0.1) 
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(255, 0, 0)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(255, 155, 0)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(255, 255, 0)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(0, 255, 0)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(0, 255, 255)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(0, 155, 255)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(255, 0, 255)}):Play() 
                        wait(.5)
        
                        game:GetService('TweenService'):Create(
                            AirwalkNoclip,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {Color = Color3.fromRGB(255, 0, 155)}):Play() 
                        wait(.5)
                    end
                    elseif game:GetService("Workspace"):FindFirstChild("AirwalkNoclip") then
                        game.Workspace["AirwalkNoclip"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-4.15,0)
                    end
                for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                        v.CanCollide = false
                        end
                    end)
                end
            else
                if game:GetService("Workspace"):FindFirstChild("AirwalkNoclip") then
                    game:GetService("Workspace"):FindFirstChild("AirwalkNoclip"):Destroy()
                end
            end
        end)

        spawn(function()
            while wait() do
                if _G.AutoFarm then
                pcall(function()
                        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
                                    game:GetService("ReplicatedStorage").Effect.Container:Destroy()
        
                                game.Workspace["_WorldOrigin"].ChildAdded:Connect(function(v)
                                if v.Name == "SlashHit" then
                                    v:Destroy()
                                end
                            end)
                    end)
                end 
            end
        end)

        spawn(function()
            while task.wait() do
                pcall(function()
                    LV()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm or _G.FarmLevel and MagnetFarm then
                            if v.Name == Mon then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if not v.HumanoidRootPart:FindFirstChild("BodyClip") then
                                            local Noclip = Instance.new("BodyVelocity")
                                            Noclip.Name = "BodyClip"
                                            Noclip.Parent = v.HumanoidRootPart
                                            Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                            Noclip.Velocity = Vector3.new(0,0,0)
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                if _G.AutoFarm then
                    if _G.AutoFarm and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    end
                    cq()
            kkii = require(game.ReplicatedStorage.Util.CameraShaker)
            kkii:Stop()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                cq()
                _G.Fastattack = false
                        MagnetActive    = false
                        cq()
                        totarget(CFrameQuest)
                        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            cq()
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            else
                                totarget(CFrameQuest)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
                            cq()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms and v:FindFirstChild("Humanoid") then
                                        if v.Humanoid.Health > 0  then
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                        _G.Fastattack = true
                                                        EquipWeapon(SelectToolWeapon)
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Humanoid.JumpPower = 0
                                                        v.HumanoidRootPart.Anchored = false
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        MagnetActive = true
                                                    else
                                                        MagnetActive = false    
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                    end
                                                else
                                                    MagnetActive = false
                                                    cq()
                                                    _G.Fastattack = false
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                        end
                                    end
                                end
                            else
                                MagnetActive = false
                                cq()
                                _G.Fastattack = false
                                totarget(CFrameMon)
                            end
                        end)
                    end
                end
            end
        end)


        spawn(function()
            while wait() do
            if _G.AutoFarm then
                attack()
                end
            end
        end)

    spawn(function()
        while game:GetService("RunService").RenderStepped:wait() do
            if _G.AutoFarm then
                pcall(function()
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v.Name == "Humanoid" then
                            v.PlatformStand = true
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while game:GetService("RunService").RenderStepped:wait() do
            if _G.AutoFarm then
                pcall(function()
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v.Name == Ms then
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end)
            end
        end
    end)

    -- Magnet
    spawn(function()
        for i = 1,math.huge do game:GetService("RunService").RenderStepped:Wait()
            if _G.AutoFarm then
                for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                    if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                        x.HumanoidRootPart.CanCollide = false
                        x.Humanoid:ChangeState(11)
                        x.Humanoid.WalkSpeed = 0
                        x.Humanoid.JumpPower = 0
                        x.HumanoidRootPart.Anchored = false
                        x.HumanoidRootPart.CFrame = PosMonAutoFarm
                        x.HumanoidRootPart.Size = Vector3.new(5,5,5)
                        x.HumanoidRootPart.Transparency = 0.80
                        x.Humanoid:ChangeState(11)
                    end 
                end
            end
        end
    end)


    tab:Toggle("Auto Kaitan",false,function(Auto)
        _G.AutoKaitan = Auto
        _G.AutoFarm = Auto
        _G.Kaitun = Auto
        _G.Redeemcode = Auto
        _G.AutoBackleg = Auto
        _G.AutoElectro = Auto
        _G.AutoFishmanKarate = Auto
        _G.RandomCandies = Auto
        _G.AutoBuyHaki = Auto
        _G.AutoHaki = Auto
        _G.AutoKenTalk = Auto
        _G.AutoSoru = Auto
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Redeemcode then
                    function UseCode(Text)
                        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
                    end
                    UseCode("fudd10_v2")
                    UseCode("3BVISITS")
                    UseCode("UPD16")
                    UseCode("SUB2GAMERROBOT_EXP1")
                    UseCode("StrawHatMaine")
                    UseCode("Sub2OfficialNoobie")
                    UseCode("FUDD10")
                    UseCode("THEGREATACE")
                    UseCode("Axiore")
                    UseCode("SUB2NOOBMASTER123")
                    UseCode("Sub2Daigrock")
                    UseCode("TantaiGaming")
                    UseCode("UPD15")
                    UseCode("XMASEXP")
                end
            end
        end)
    end)

    spawn(function()
        while wait() do
            if _G.RandomCandies then
            local args = {
            [1] = "Candies",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
        }

        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBackleg then
                    local args = {
                        [1] = "BuyBlackLeg"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyHaki then
                    local args = {
                        [1] = "BuyHaki",
                        [2] = "Geppo"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoHaki then
                    local args = {
                        [1] = "BuyHaki",
                        [2] = "Buso"
                    }
            
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoKenTalk then
                    local args = {
                        [1] = "KenTalk",
                        [2] = "Buy"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSoru then
                    local args = {
                        [1] = "BuyHaki",
                        [2] = "Soru"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end)
        local placeId = game.PlaceId
            if placeId == 2753915549 then
                world1 = true
            elseif placeId == 4442272183 then
                world2 = true
            elseif placeId == 7449423635 then
                world3 = true
            end

            FM = false
            sky = false

            function cq()
                if world1 then
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    Dis = 300
                    if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                        magbring = 400
                        Ms = "Bandit [Lv. 5]"
                        NaemQuest = "BanditQuest1"
                        LevelQuest = 1
                        NameMon = "Bandit"
                        CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
                        CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
                    elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                        magbring = 400
                        Ms = "Monkey [Lv. 14]"
                        NaemQuest = "JungleQuest"
                        LevelQuest = 1
                        NameMon = "Monkey"
                        CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                        CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                    elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                        magbring = 240
                        Ms = "Gorilla [Lv. 20]"
                        NaemQuest = "JungleQuest"
                        LevelQuest = 2
                        NameMon = "Gorilla"
                        CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                        CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
                    elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
                        Dis = 150
                        Ms = "Pirate [Lv. 35]"
                        NaemQuest = "BuggyQuest1"
                        LevelQuest = 1
                        NameMon = "Pirate"
                        CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                        CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
                    elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
                        Dis = 150
                        Ms = "Brute [Lv. 45]"
                        NaemQuest = "BuggyQuest1"
                        LevelQuest = 2
                        NameMon = "Brute"
                        CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                        CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
                    elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
                        Ms = "Desert Bandit [Lv. 60]"
                        NaemQuest = "DesertQuest"
                        LevelQuest = 1
                        NameMon = "Desert Bandit"
                        CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                        CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                    elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
                        Ms = "Desert Officer [Lv. 70]"
                        NaemQuest = "DesertQuest"
                        LevelQuest = 2
                        NameMon = "Desert Officer"
                        CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                        CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
                    elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                        Ms = "Snow Bandit [Lv. 90]"
                        NaemQuest = "SnowQuest"
                        LevelQuest = 1
                        NameMon = "Snow Bandits"
                        CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                        CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                    elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                        Ms = "Snowman [Lv. 100]"
                        NaemQuest = "SnowQuest"
                        LevelQuest = 2
                        NameMon = "Snowman"
                        CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                        CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                    elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                        Ms = "Chief Petty Officer [Lv. 120]"
                        NaemQuest = "MarineQuest2"
                        LevelQuest = 1
                        NameMon = "Chief Petty Officer"
                        CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
                        CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                    elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                        Ms = "Sky Bandit [Lv. 150]"
                        NaemQuest = "SkyQuest"
                        LevelQuest = 1
                        NameMon = "Sky Bandit"
                        CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                        CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
                    elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
                        Ms = "Dark Master [Lv. 175]"
                        NaemQuest = "SkyQuest"
                        LevelQuest = 2
                        NameMon = "Dark Master"
                        CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                        CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
                    elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
                        Ms = "Toga Warrior [Lv. 225]"
                        NaemQuest = "ColosseumQuest"
                        LevelQuest = 1
                        NameMon = "Toga Warrior"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                    elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                        Ms = "Gladiator [Lv. 275]"
                        NaemQuest = "ColosseumQuest"
                        LevelQuest = 2
                        NameMon = "Gladiato"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                    elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                        Ms = "Military Soldier [Lv. 300]"
                        NaemQuest = "MagmaQuest"
                        LevelQuest = 1
                        NameMon = "Military Soldier"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                    elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
                        FM = false
                        Ms = "Military Spy [Lv. 330]"
                        NaemQuest = "MagmaQuest"
                        LevelQuest = 2
                        NameMon = "Military Spy"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                    elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                        FM = true
                        Ms = "Fishman Warrior [Lv. 375]"
                        NaemQuest = "FishmanQuest"
                        LevelQuest = 1
                        NameMon = "Fishman Warrior"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                    elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                        FM = true
                        Ms = "Fishman Commando [Lv. 400]"
                        NaemQuest = "FishmanQuest"
                        LevelQuest = 2
                        NameMon = "Fishman Commando"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                        CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
                    elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
                        FM = false
                        Ms = "God's Guard [Lv. 450]"
                        NaemQuest = "SkyExp1Quest"
                        LevelQuest = 1
                        NameMon = "God's Guards"
                        CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
                        CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
                    elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
                        sky = false
                        Ms = "Shanda [Lv. 475]"
                        NaemQuest = "SkyExp1Quest"
                        LevelQuest = 2
                        NameMon = "Shandas"
                        CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
                        CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
                    elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                        sky = true
                        Ms = "Royal Squad [Lv. 525]"
                        NaemQuest = "SkyExp2Quest"
                        LevelQuest = 1
                        NameMon = "Royal Squad"
                        CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                        CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
                    elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                        Dis = 240
                        sky = true
                        Ms = "Royal Soldier [Lv. 550]"
                        NaemQuest = "SkyExp2Quest"
                        LevelQuest = 2
                        NameMon = "Royal Soldier"
                        CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                        CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
                    elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                        Dis = 240
                        sky = false
                        Ms = "Galley Pirate [Lv. 625]"
                        NaemQuest = "FountainQuest"
                        LevelQuest = 1
                        NameMon = "Galley Pirate"
                        CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                        CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
                    elseif MyLevel >= 650 then -- Galley Captain
                        Dis = 240
                        Ms = "Galley Captain [Lv. 650]"
                        NaemQuest = "FountainQuest"
                        LevelQuest = 2
                        NameMon = "Galley Captain"
                        CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                        CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
                    end
                elseif world2 then
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    Dis = 240
                    if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
                        Ms = "Raider [Lv. 700]"
                        NaemQuest = "Area1Quest"
                        LevelQuest = 1
                        NameMon = "Raider"
                        CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                        CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                    elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
                        Ms = "Mercenary [Lv. 725]"
                        NaemQuest = "Area1Quest"
                        LevelQuest = 2
                        NameMon = "Mercenary"
                        CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                        CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
                    elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
                        Ms = "Swan Pirate [Lv. 775]"
                        NaemQuest = "Area2Quest"
                        LevelQuest = 1
                        NameMon = "Swan Pirate"
                        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                        CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
                    elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
                        Ms = "Factory Staff [Lv. 800]"
                        NaemQuest = "Area2Quest"
                        LevelQuest = 2
                        NameMon = "Factory Staff"
                        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                        CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
                    elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
                        Ms = "Marine Lieutenant [Lv. 875]"
                        NaemQuest = "MarineQuest3"
                        LevelQuest = 1
                        NameMon = "Marine Lieutenant"
                        CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                        CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
                    elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
                        Ms = "Marine Captain [Lv. 900]"
                        NaemQuest = "MarineQuest3"
                        LevelQuest = 2
                        NameMon = "Marine Captain"
                        CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                        CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
                    elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
                        Ms = "Zombie [Lv. 950]"
                        NaemQuest = "ZombieQuest"
                        LevelQuest = 1
                        NameMon = "Zombie"
                        CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                        CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
                    elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
                        Ms = "Vampire [Lv. 975]"
                        NaemQuest = "ZombieQuest"
                        LevelQuest = 2
                        NameMon = "Vampire"
                        CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                        CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                    elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
                        Ms = "Snow Trooper [Lv. 1000]"
                        NaemQuest = "SnowMountainQuest"
                        LevelQuest = 1
                        NameMon = "Snow Trooper"
                        CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                        CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
                    elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
                        Ms = "Winter Warrior [Lv. 1050]"
                        NaemQuest = "SnowMountainQuest"
                        LevelQuest = 2
                        NameMon = "Winter Warrior"
                        CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                        CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
                    elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
                        Ms = "Lab Subordinate [Lv. 1100]"
                        NaemQuest = "IceSideQuest"
                        LevelQuest = 1
                        NameMon = "Lab Subordinate"
                        CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                        CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                    elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
                        Ms = "Horned Warrior [Lv. 1125]"
                        NaemQuest = "IceSideQuest"
                        LevelQuest = 2
                        NameMon = "Horned Warrior"
                        CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                        CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
                    elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
                        Ms = "Magma Ninja [Lv. 1175]"
                        NaemQuest = "FireSideQuest"
                        LevelQuest = 1
                        NameMon = "Magma Ninja"
                        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                        CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
                    elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
                        Ms = "Lava Pirate [Lv. 1200]"
                        NaemQuest = "FireSideQuest"
                        LevelQuest = 2
                        NameMon = "Lava Pirate"
                        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                        CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                    elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
                        Ms = "Ship Deckhand [Lv. 1250]"
                        NaemQuest = "ShipQuest1"
                        LevelQuest = 1
                        NameMon = "Ship Deckhand"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                    elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
                        Ms = "Ship Engineer [Lv. 1275]"
                        NaemQuest = "ShipQuest1"
                        LevelQuest = 2
                        NameMon = "Ship Engineer"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
                    elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
                        Ms = "Ship Steward [Lv. 1300]"
                        NaemQuest = "ShipQuest2"
                        LevelQuest = 1
                        NameMon = "Ship Steward"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
                    elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
                        Ms = "Ship Officer [Lv. 1325]"
                        NaemQuest = "ShipQuest2"
                        LevelQuest = 2
                        NameMon = "Ship Officer"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
                    elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
                        Ms = "Arctic Warrior [Lv. 1350]"
                        NaemQuest = "FrostQuest"
                        LevelQuest = 1
                        NameMon = "Arctic Warrior"
                        CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                        CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
                    elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
                        Ms = "Snow Lurker [Lv. 1375]"
                        NaemQuest = "FrostQuest"
                        LevelQuest = 2
                        NameMon = "Snow Lurker"
                        CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                        CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                    elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
                        Ms = "Sea Soldier [Lv. 1425]"
                        NaemQuest = "ForgottenQuest"
                        LevelQuest = 1
                        NameMon = "Sea Soldier"
                        CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                        CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
                    elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
                        Ms = "Water Fighter [Lv. 1450]"
                        NaemQuest = "ForgottenQuest"
                        LevelQuest = 2
                        NameMon = "Water Fighter"
                        CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                        CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
                    end
                else
                    local MyLevel =  game.Players.LocalPlayer.Data.Level.Value
                    Dis = 240
                    if MyLevel == 1500 or MyLevel <= 1524 then
                        Ms = "Pirate Millionaire [Lv. 1500]"
                        NaemQuest = "PiratePortQuest"
                        LevelQuest = 1
                        NameMon = "Pirate Millionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel == 1525 or MyLevel <= 1574 then
                        Ms = "Pistol Billionaire [Lv. 1525]"
                        NaemQuest = "PiratePortQuest"
                        LevelQuest = 2
                        NameMon = "Pistol Billionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel == 1575 or MyLevel <= 1599 then
                        Ms = "Dragon Crew Warrior [Lv. 1575]"
                        NaemQuest = "AmazonQuest"
                        LevelQuest = 1
                        NameMon = "Dragon Crew Warrior"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                    elseif MyLevel == 1600 or MyLevel <= 1624 then
                        Ms = "Dragon Crew Archer [Lv. 1600]"
                        NaemQuest = "AmazonQuest"
                        LevelQuest = 2
                        NameMon = "Dragon Crew Archer"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                    elseif MyLevel == 1625 or MyLevel <= 1649 then
                        Ms = "Female Islander [Lv. 1625]"
                        NaemQuest = "AmazonQuest2"
                        LevelQuest = 1
                        NameMon = "Female Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                    elseif MyLevel == 1650 or MyLevel <= 1699 then
                        Ms = "Giant Islander [Lv. 1650]"
                        NaemQuest = "AmazonQuest2"
                        LevelQuest = 2
                        NameMon = "Giant Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                    elseif MyLevel == 1700 or MyLevel <= 1724 then
                        Ms = "Marine Commodore [Lv. 1700]"
                        NaemQuest = "MarineTreeIsland"
                        LevelQuest = 1
                        NameMon = "Marine Commodore"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                    elseif MyLevel == 1725 or MyLevel <= 1774 then
                        Ms = "Marine Rear Admiral [Lv. 1725]"
                        NaemQuest = "MarineTreeIsland"
                        LevelQuest = 2
                        NameMon = "Marine Rear Admiral"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                    elseif MyLevel == 1775 or MyLevel <= 1799 then
                        Ms = "Fishman Raider [Lv. 1775]"
                        NaemQuest = "DeepForestIsland3"
                        LevelQuest = 1
                        NameMon = "Fishman Raider"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                    elseif MyLevel == 1800 or MyLevel <= 1824 then
                        Ms = "Fishman Captain [Lv. 1800]"
                        NaemQuest = "DeepForestIsland3"
                        LevelQuest = 2
                        NameMon = "Fishman Captain"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                    elseif MyLevel == 1825 or MyLevel <= 1849 then
                        Ms = "Forest Pirate [Lv. 1825]"
                        NaemQuest = "DeepForestIsland"
                        LevelQuest = 1
                        NameMon = "Forest Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                    elseif MyLevel == 1850 or MyLevel <= 1899 then
                        Ms = "Mythological Pirate [Lv. 1850]"
                        NaemQuest = "DeepForestIsland"
                        LevelQuest = 2
                        NameMon = "Mythological Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                    elseif MyLevel == 1900 or MyLevel <= 1924 then
                        Ms = "Jungle Pirate [Lv. 1900]"
                        NaemQuest = "DeepForestIsland2"
                        LevelQuest = 1
                        NameMon = "Jungle Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                    elseif MyLevel == 1925 or MyLevel <= 1974 then
                        Ms = "Musketeer Pirate [Lv. 1925]"
                        NaemQuest = "DeepForestIsland2"
                        LevelQuest = 2
                        NameMon = "Musketeer Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                    elseif MyLevel == 1975 or MyLevel <= 1999 then
                        Ms = "Reborn Skeleton [Lv. 1975]"
                        NaemQuest = "HauntedQuest1"
                        LevelQuest = 1
                        NameMon = "Reborn Skeleton"
                        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                    elseif MyLevel == 2000 or MyLevel <= 2024 then
                        Ms = "Living Zombie [Lv. 2000]"
                        NaemQuest = "HauntedQuest1"
                        LevelQuest = 2
                        NameMon = "Living Zombie"
                        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
                    elseif MyLevel == 2025 or MyLevel <= 2049 then
                        Ms = "Demonic Soul [Lv. 2025]"
                        NaemQuest = "HauntedQuest2"
                        LevelQuest = 1
                        NameMon = "Demonic Soul"
                        CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                        CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
                    elseif MyLevel == 2050 or MyLevel <= 2074 then
                        Ms = "Posessed Mummy [Lv. 2050]" 
                        NaemQuest = "HauntedQuest2"
                        LevelQuest = 2
                        NameMon = "Posessed Mummy"
                        CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                        CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
                    elseif MyLevel == 2075 or MyLevel <= 2099 then
                        Ms = "Peanut Scout [Lv. 2075]"
                        NaemQuest = "NutsIslandQuest"
                        LevelQuest = 1
                        NameMon = "Peanut Scout"
                        CFrameQuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
                        CFrameMon = CFrame.new(-2265.89014, 89.7506104, -10261.2197, -0.809553444, -9.26727282e-08, 0.587046146, -5.44419549e-08, 1, 8.27857534e-08, -0.587046146, 3.50595535e-08, -0.809553444)
                    elseif MyLevel == 2100 or MyLevel <= 2124 then
                        Ms = "Peanut President [Lv. 2100]"
                        NaemQuest = "NutsIslandQuest"
                        LevelQuest = 2
                        NameMon = "Peanut President"
                        CFrameQuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
                        CFrameMon = CFrame.new(-2062.11792, 86.0444489, -10481.1445, 0.834163189, -9.79785408e-09, -0.551517665, -2.60617616e-09, 1, -2.17070646e-08, 0.551517665, 1.95445864e-08, 0.834163189)
                    elseif MyLevel == 2125 or MyLevel <= 2149 then
                        Ms = "Ice Cream Chef [Lv. 2125]"
                        NaemQuest = "IceCreamIslandQuest"
                        LevelQuest = 1
                        NameMon = "Ice Cream Chef"
                        CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                        CFrameMon = CFrame.new(-875.441345, 107.871437, -11253.3691, 0.630182087, 5.98710486e-08, 0.776447415, -6.03229751e-08, 1, -2.81494827e-08, -0.776447415, -2.90983202e-08, 0.630182087)
                    elseif MyLevel >= 2150 then
                        Ms = "Ice Cream Commander [Lv. 2150]"
                        NaemQuest = "IceCreamIslandQuest"
                        LevelQuest = 2
                        NameMon = "Ice Cream Commander"
                        CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                        CFrameMon = CFrame.new(-643.3078, 140.913528, -11334.7109, -0.996822715, -9.07818087e-09, 0.0796525627, -1.43212509e-08, 1, -6.52529906e-08, -0.0796525627, -6.61863808e-08, -0.996822715)
                    end
                end
            end
            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    if _G.FarmLevel or _G.Tween or _G.Bounty1 or _G.AutoBone then
                        if not game:GetService("Workspace"):FindFirstChild("LOL") then
                            local LOL = Instance.new("Part")
                            LOL.Name = "LOL"
                            LOL.Parent = game.Workspace
                            LOL.Anchored = true
                            LOL.Transparency = 1
                            LOL.Size = Vector3.new(30,-0.5,30)
                        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
                        end
                    else
                        if game:GetService("Workspace"):FindFirstChild("LOL") then
                            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                        end
                    end
                end)
            end)

            spawn(function()
                player = game.Players.LocalPlayer
                character = player.Character
                game:GetService("RunService").Stepped:Connect(function()
                    if _G.FarmLevel or _G.Tween or _G.Bounty1 or _G.AutoBone then
                        for _, v in pairs(character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end)
            end)


            function TP2FF(P1)
                Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if Distance < 1000 then
                    Speed = 400
                elseif Distance >= 1000 then
                    Speed = 250
                end
                game:GetService("TweenService"):Create(
                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                    {CFrame = P1}
                ):Play()
                Clip = true
                wait(Distance/Speed)
                Clip = false
            end
            function TP(P1,P2)
                Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if Distance < 1000 then
                    Speed = 500
                elseif Distance >= 1000 then
                    Speed = 300
                end
                if Distance >= 300 then
                    tweenss = game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = P2})
                    tweenss:Play()
                else
                    pcall(function()
                    tweenss:Pause()
                    end)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P2 
                end
            end

            function TPs(P1,P2)
                Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if Distance < 1000 then
                    Speed = 500
                elseif Distance >= 1000 then
                    Speed = 300
                end
                tweenss = game:GetService("TweenService"):Create(
                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                    {CFrame = P2})
                tweenss:Play()
                wait(Distance/Speed)
            end
            function totarget(CFgo)
                local tween_s = game:service"TweenService"
                local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
                local tween, err = pcall(function()
                    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
                    tween:Play()
                end)
                if not tween then return err end
            end
            function bithop()
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(.1)
                            end
                        end
                    end
                end
                function Teleport() 
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
                Teleport()
            end
            if world1 then
                Rq = 1000
                magbring = 240
            elseif world2 then
                Rq = 2000
                magbring = 400
            else
                Rq = 3000
                magbring = 400
            end

            spawn(function()
                while wait() do
                    if _G.FarmLevel then
                        if _G.FarmLevel and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        end
                        cq()
                kkii = require(game.ReplicatedStorage.Util.CameraShaker)
                kkii:Stop()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    cq()
                    _G.Fastattack = false
                            MagnetActive = false
                            cq()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                cq()
                                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            pcall(function()
                                cq()
                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == Ms and v:FindFirstChild("Humanoid") then
                                            if v.Humanoid.Health > 0 then
                                                repeat game:GetService("RunService").Heartbeat:wait()
                                                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                            _G.Fastattack = true
                                                            EquipWeapon(SelectToolWeapon)
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,10)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            MagnetActive = true
                                                        else
                                                            MagnetActive = false    
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                        end
                                                    else
                                                        MagnetActive = false
                                                        cq()
                                                        _G.Fastattack = false
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                                    end
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.FarmLevel == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                            end
                                        end
                                    end
                                else
                                    MagnetActive = false
                                    cq()
                                    _G.Fastattack = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end
                            end)
                        end
                    end
                end
            end)
            spawn(function()
                while wait() do
                if _G.FarmLevel then
                    attack()
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.FarmLevel  then
                    pcall(function()
                            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
                                        game:GetService("ReplicatedStorage").Effect.Container:Destroy()
            
                                    game.Workspace["_WorldOrigin"].ChildAdded:Connect(function(v)
                                    if v.Name == "SlashHit" then
                                        v:Destroy()
                                    end
                                end)
                        end)
                    end 
                end
            end)

            tab:Line()

        tab:Button("Teleport To Quest", "", function()
            CheckQuest()
            totarget(CFrameQuest)
        end)

        tab:Toggle("Godmode",false,function(vu)
            local p=game.Players.LocalPlayer;
            local oldcframe;
            local holdingfoil=false;
            p.Character.Humanoid:SetStateEnabled(15,false);
            p.Character.Humanoid:SetStateEnabled(16,false);
            p.CharacterRemoving:Connect(function()
                if (p.Character) then
                    local t=p.Character:FindFirstChild("Torso")
                    if (t ~= nil) then oldcframe=t.CFrame end
                    if (p.Character:findFirstChild("Foil")) then holdingfoil=true end
                end
            end)
            p.CharacterAdded:Connect(function()
                while p.Character==nil do wait() end
                while p.Character.Parent==nil do wait() end
                local h=p.Character:WaitForChild("Humanoid")
                local rp=p.Character:WaitForChild("HumanoidRootPart")
                if (h ~= nil and rp ~= nil) then
                    h:SetStateEnabled(15,false);
                    h:SetStateEnabled(16,false);
                    for i=1,10 do
                        rp.CFrame=oldcframe;
                    end
                    if (holdingfoil) then
                        holdingfoil=false
                        local foil=p.Backpack:FindFirstChild("Foil")
                        if (foil ~= nil) then
                            foil.Parent=p.Character
                        end
                    end
                end
            end)
            wait(0.8)
            game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
            if game.Players.LocalPlayer.Character.Humanoid.MaxHealth == 100 then
                if world1 then
                    totarget(CFrame.new(5837.5415039062, 38.500877380371, 3916.8920898438))
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-4)
                    end
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                end
            end
            if world2 or world3 then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-4)
                end
                wait(1)
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
            end
        end)
        
        tab:Button("Remove Animation + Remove Sound Attack", function()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Effect.Container:Destroy()
            game:GetService("ReplicatedStorage").Assets.Gui:Destroy()
        end)


    tab:Toggle("Auto Buddy (Hop)",_G.BuddyHOP,function(HEEMEN)
    wait(1)
    _G.BuddyHOP = HEEMEN
    end)
    spawn(function()
    while wait() do
    if _G.BuddyHOP then
    pcall(function()
        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Cake Queen [Lv. 2175] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                        pcall(function()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.CanCollide = false
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end)
                    until _G.BuddyHOP == false or v.Humanoid.Health <= 0
                end
            end
        else
            repeat totarget(CFrame.new(-790.085754, 381.565613, -11131.8271, 0.0926998705, 3.11811981e-08, -0.995694101, 2.5403061e-08, 1, 3.36810864e-08, 0.995694101, -2.84159096e-08, 0.0926998705)) wait() until _G.StopTween == true or not _G.PoleHop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)).Magnitude <= 10
            wait(1)
            if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport() 
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
                Teleport()
            end
        end
    end) 
    end
    end
    end)

    local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
        local VirtualUser = game:GetService('VirtualUser')
                    kkii = require(game.ReplicatedStorage.Util.CameraShaker)
                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                            kkii:Stop()
                                    end)  
                                end)
                            end
                        end)
                    end)
                    ---------------------------------
                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                            RigC.activeController.timeToNextAttack = 0
                                    end)  
                                end)
                            end
                        end)
                    end)

                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                            RigC.activeController.hitboxMagnitude = 25
                                        wait(.05)
                                    end)  
                                end)
                            end
                        end)
                    end)

                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                            
                                            RigC.activeController.increment = 3
                                    end)
                                end)
                            end
                        end)
                    end)

                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        wait(.05)
                                    end)
                                end)
                            end
                        end)
                    end)
                    spawn(function()
                        game:GetService('RunService').Heartbeat:connect(function()
                            if _G.BuddyHOP then
                                pcall(function()
                                    pcall(function ()
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        wait(.05)
                                    end)
                                end)
                            end
                        end)
                    end)

    tab:Line()

        tab:Label("Auto Farm Event")

    Wapon = {}
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                table.insert(Wapon ,v.Name)
            end
        end

        local SelectWeaponEvent = tab:Drop("Select Weapon",false,Wapon,function(Value)
        EventWeapon = Value
    end)
    
    tab:Button("Refresh Weapon",function()
        SelectWeaponEvent:Clear()
            Wapon = {}
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    SelectWeaponEvent:Add(v.Name)
                end
            end
    end)

    tab:Toggle("Fast attack",false,function(x)
        _G.Fastattack3111 = x
        end)
            local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
            local VirtualUser = game:GetService('VirtualUser')
            local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
            local LocalPlayer = game.Players.LocalPlayer
            local Framework = {
                Combat = require(LocalPlayer.PlayerScripts.CombatFramework),
                Rig = require(LocalPlayer.PlayerScripts.CombatFramework.RigController)
            }
            local cd = 0.1
            function Attack()
                spawn(function()
                    while wait() do
                    pcall(function()
                        local Controller = Framework.Combat.activeController
                        if Controller and tick() >= cd then
                            cd = tick() + 0.1
                            spawn(function()
                                Controller:attack()
                            end)
                            Controller.increment = 4
                        end
                    end)
                end
                end)
            end
            ---------------------------------
                spawn(function()
                game:GetService('RunService').Heartbeat:connect(function()
                    if _G.Fastattack3111 then
                        pcall(function()
                            RigC.activeController.timeToNextAttack = 0
                            RigC.activeController.attacking = false
                            RigC.activeController.blocking = false
                            RigC.activeController.timeToNextAttack = 0
                            RigC.activeController.timeToNextBlock = 0
                            RigC.activeController.increment = 3
                            RigC.activeController.hitboxMagnitude = 100
                            RigC.activeController.focusStart = 0
                            game.Players.LocalPlayer.Character.Stun.Value = 0
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false

                            Attack()
                            kkii:Stop()
                        end)
                    end
                end)
            end)
        spawn(function()
                for i = 1,9999999999999999999999999999999999999999999999999999 do game:GetService('RunService').Heartbeat:wait()
                    if _G.Fastattack3111 then
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                end
            end
        end)
        
        -- spawn(function()    game:GetService('RunService').Stepped:Connect(function()
        --         if _G.Fastattack3111["Dele_Effect"] then
        --             for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
        --                 if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
        --                     v:Destroy() 
        --                 end
        --             end
        --         end
        --     end)
        -- end)

        tab:Line()

        tab:Button("Check Candy",function()
            create:Notifile("Check Candy","My Candy : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Check"),2)
        end)

        tab:Button("Check Bone",function()
            create:Notifile("Check Bone","My Bone : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"),2)
        end)


        tab:Line()

    tab:Toggle("Auto Farm Bone",false,function(vu)
        _G.AutoFarmBone = vu
        if vu == false then
            wait(1)
            totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.AutoFarmBone then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                if v:WaitForChild("Humanoid").Health > 0 then
                                    repeat game:GetService("RunService").Heartbeat:wait()
                                        EquipWeapon(EventWeapon)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,15)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                            MainMonBone = v.HumanoidRootPart.CFrame
                                            BoneMagnet = true
                                    until _G.AutoFarmBone == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        BoneMagnet = false
                        totarget(CFrame.new(-9208.02637, 336.756226, 5766.75732, 0.319874465, -4.02887324e-08, -0.947459936, -2.90061024e-08, 1, -5.23157162e-08, 0.947459936, 4.42165806e-08, 0.319874465))
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarmBone and BoneMagnet  then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 300 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = MainMonBone
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
        if _G.AutoFarmBone then
            attack()
            end
        end
    end)

    spawn(function()
        while wait() do
        if _G.AutoFarmBone then
                local noclip = Instance.new('Part',workspace)
                noclip.Name = "noclip"
                noclip.CanCollide = true
                noclip.Anchored = true
                noclip.Size = Vector3.new(30,0,30)
                noclip.Transparency = 1
                game:GetService("Workspace")["noclip"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
            end
        end
    end)

    tab:Toggle("Auto Farm Candy",false,function(vu)
        _G.AutoFarmCandy = vu
        if vu == false then
            wait(1)
            totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.AutoFarmCandy and world3 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Peanut Scout [Lv. 2075]") or game:GetService("Workspace").Enemies:FindFirstChild("Peanut President [Lv. 2100]") or game:GetService("Workspace").Enemies:FindFirstChild("Ice Cream Chef [Lv. 2125]") or game:GetService("Workspace").Enemies:FindFirstChild("Ice Cream Commander [Lv. 2150]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Peanut Scout [Lv. 2075]" or v.Name == "Peanut President [Lv. 2100]" or v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]" then
                                if v:WaitForChild("Humanoid").Health > 0 then
                                    repeat game:GetService("RunService").Heartbeat:wait()
                                        EquipWeapon(EventWeapon)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,15)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                            MainMonBone = v.HumanoidRootPart.CFrame
                                            BoneMagnet = true
                                    until _G.AutoFarmCandy == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        BoneMagnet = false
                        totarget(CFrame.new(-855.872253, 348.858215, -11139.0586, 0.647195518, -5.30619904e-09, 0.762324035, 1.89962579e-09, 1, 5.3478173e-09, -0.762324035, -2.01295292e-09, 0.647195518))
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
        if _G.AutoFarmCandy then
            attack()
            end
        end
    end)

    tab:Line()

        

        tab:Toggle("Auto Superhuman",_G.Superhuman,function(vu)
            _G.Superhuman = vu
        end)
        spawn(function()
            while wait() do wait()
                if _G.Superhuman then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                        local args = {
                            [1] = "BuyBlackLeg"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyElectro"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyElectro"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "1"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "1"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                    end
                end
            end
        end)

        --	spawn(function()
        --		pcall(function()
        --		while wait(.1) do
        --			if _G.Superhuman then
        --				local args = {
        --					[1] = "BuySuperhuman"
        --				}
        --				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        --				-----------------
        --				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        --				if MyLevel >= 1100 then
        --					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
        --				_G.autoraid = false
        --					else
        --						_G.AutoFarm = false
        --						_G.CHIP = "Flame"
        --						_G.autoraid = true
        --							local args = {
        --								[1] = "BlackbeardReward",
        --								[2] = "DragonClaw",
        --								[3] = "1"
        --							}
        --						
        --							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        --							local args = {
        --								[1] = "BlackbeardReward",
        --								[2] = "DragonClaw",
        --								[3] = "2"
        --							}
        --						
        --							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        --					end
        --				end
        --  			end
        --     		end
        --       	end)
        --       end)
        
        spawn(function()
            while wait() do
            if _G.Superhuman then
                    local Superhuman = Instance.new('Part',workspace)
                    Superhuman.Name = "Superhuman"
                    Superhuman.CanCollide = true
                    Superhuman.Anchored = true
                    Superhuman.Size = Vector3.new(30,0,30)
                    Superhuman.Transparency = 1
                    game:GetService("Workspace")["Superhuman"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                end
            end
        end)

        if ThreeWorld then
            tab:Toggle("Auto Torch",false,function(vu)
                _G.HolyTorch = vu
            end)
            spawn(function()
                while wait() do
                    if _G.HolyTorch then
                        wait(1)
                        repeat totarget(CFrame.new(-10752, 417, -9366)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                        wait(1)
                        repeat totarget(CFrame.new(-11672, 334, -9474)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                        wait(1)
                        repeat totarget(CFrame.new(-12132, 521, -10655)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                        wait(1)
                        repeat totarget(CFrame.new(-13336, 486, -6985)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                        wait(1)
                        repeat totarget(CFrame.new(-13489, 332, -7925)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                    end
                end
            end)
        end

        spawn(function()
            while wait() do
            if _G.HolyTorch then
                    local HolyTorch = Instance.new('Part',workspace)
                    HolyTorch.Name = "HolyTorch"
                    HolyTorch.CanCollide = true
                    HolyTorch.Anchored = true
                    HolyTorch.Size = Vector3.new(30,0,30)
                    HolyTorch.Transparency = 1
                    game:GetService("Workspace")["HolyTorch"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                end
            end
        end)

        if OldWorld then
            tab:Toggle("Auto Second Sea",_G.AutoNew,function(x)
                _G.AutoNew = x
            end)
        end


        spawn(function()
            game:GetService("RunService").Heartbeat:connect(function()
                pcall(function()
                    if _G.AutoNew then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end
                end)
            end)
        end)

        spawn(function()
            while wait(.1) do
                if _G.AutoNew then
                    if OldWorld then
                        local MyLevel = game.Players.localPlayer.Data.Level.Value
                        if MyLevel >= 700 and OldWorld then
                            _G.AutoFarm = false
                            SelectWeapon = "Key"
                            repeat wait()
                                totarget(CFrame.new(4849.29883, 5.65138149, 719.611877))
                            until not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(4849.29883, 5.65138149, 719.611877).Position).Magnitude <= 10
                            wait(0.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            wait(0.5)
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                wait(.4)
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                            end
                            repeat wait()
                                totarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            until not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(1347.7124, 37.3751602, -1325.6488).Position).Magnitude <= 10
                            wait(0.5)
                            Click()
                            if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                                CheckBoss = true
                                SelectWeapon = _G.SelectToolWeaponOld
                                EquipWeapon(SelectWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        repeat wait(.1)
                                            pcall(function()
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.HumanoidRootPart.BrickColor = BrickColor.new("White")
                                                v.HumanoidRootPart.CanCollide = false
                                                totarget(v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10))
                                                Click()
                                            end)
                                        until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                                CheckBoss = false
                                wait(0.5)
                                repeat wait()
                                    totarget(CFrame.new(-1166.23743, 7.65220165, 1728.36487))
                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - CFrame.new(-1166.23743, 7.65220165, 1728.36487).Position).Magnitude <= 10
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                    wait(.4)
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                end
                                totarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        end
                    end
                end
            end
        end)

        spawn(function()
            while wait() do
            if _G.AutoNew then
                    local AutoNew = Instance.new('Part',workspace)
                    AutoNew.Name = "AutoNew"
                    AutoNew.CanCollide = true
                    AutoNew.Anchored = true
                    AutoNew.Size = Vector3.new(30,0,30)
                    AutoNew.Transparency = 1
                    game:GetService("Workspace")["AutoNew"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                end
            end
        end)


        if NewWorld then
            tab:Toggle("Auto Sea 3",false,function(value)
                local args = {
                    [1] = "AbandonQuest"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                Sea3 = value
                Sea33 = value
                Check = true
                Checka = true
            end)
        end

        spawn(function()
            while wait() do
                pcall(function()
                    if Sea3 and Checka then
                        if NewWorld then
                            local MyLevel = game.Players.localPlayer.Data.Level.Value
                            if MyLevel >= 1500 then
                                Sea33 = false
                                if Check then
                                    repeat totarget(CFrame.new(-1925.56482, 12.8456564, 1737.36609)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1925.56482, 12.8456564, 1737.36609)).Magnitude <= 10
                                end
                                Check = false
                                wait(0.5)
                                local args = {
                                    [1] = "ZQuestProgress",
                                    [2] = "Check"
                                }

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "ZQuestProgress",
                                    [2] = "Begin"
                                }

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                Checka = false
                            end
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if Sea3 and Checka == false then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                        repeat wait()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
                                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                            EquipWeapon(SelectWeapon)
                                            Click()
                                            spawn(function()
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            end)
                                        until v.Humanoid.Health <= 0 or Sea3 == false
                                    end
                                end
                                repeat totarget(CFrame.new(-26640.7559, 6.94934607, 439.43512)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-26640.7559, 6.94934607, 439.43512)).Magnitude <= 10
                            end
                        end
                    end
                end)
            end
        end)

        if NewWorld then
            tab:Toggle("Auto Factory",_G.Factory,function(vu)
                _G.Factory = vu
                while _G.Factory do wait()
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        _G.Core = true
                        _G.AutoFarm = false
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.Core and v.Name == "Core" and v.Humanoid.Health > 0 then
                                repeat wait(.1)
                                    repeat totarget(CFrame.new(448.46756, 199.356781, -441.389252)) wait() until _G.StopTween == true or not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                    EquipWeapon(_G.SelectWeapon)
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not _G.Core or v.Humanoid.Health <= 0  or _G.Factory == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        _G.Core = true
                        _G.AutoFarm = false
                        repeat totarget(CFrame.new(448.46756, 199.356781, -441.389252)) wait() until _G.StopTween == true or not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                    elseif _G.Main then
                        _G.Core = false
                        _G.AutoFarm = true
                    end
                end
            end)
        end

        if NewWorld then
            tab:Toggle("Auto Rengoku Sword",_G.AutoRengoku,function(v)
                _G.AutoRengoku = v
            end)
            spawn(function()
                while wait() do
                    if _G.AutoRengoku then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or  game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                            EquipWeapon("Hidden Key")
                            totarget(CFrame.new(6571.81885, 296.689758, -6966.76514))
                        elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            EquipWeapon(SelectWeapon)
                                            PosMonRengoku = v.HumanoidRootPart.CFrame
                                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                            VirtualUser:CaptureController()
                                            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                            StatrMagnetRengoku = true
                                        else
                                            StatrMagnetRengoku = false
                                            totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
                                        end
                                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                    StatrMagnetRengoku = false
                                    totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
                                end
                            end
                        else
                            StatrMagnetRengoku = false
                            totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
                        end
                    end
                end
            end)
        end
        Wapon = {}
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                table.insert(Wapon ,v.Name)
            end
        end
        
        local SelectWeapon = Tap:Drop("Select Weapon",false,Wapon,function(Value)
            SelectToolWeapon = Value
            SelectToolWeaponNW = Value
            AutoTool = Value
        end)
        Tap:Button("Refresh Weapon",function()
            SelectWeapon:Clear()
            Wapon = {}
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    SelectWeapon:Add(v.Name)
                end
            end
        end)


        Tap:Line()

        Tap:Label("Auto Hat")
    WaponAccessories = {} 
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then 
    if v.ToolTip == "Wear" then    
    table.insert(WaponAccessories, v.Name)
    end
    end
    end

    local SelectAccessories = Tap:Drop("Select Hat",false,WaponAccessories,function(Value)
    SelectTooAccessories = Value
    end)
    Tap:Button("Refresh Hat",function()
    SelectAccessories:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then 
    if v.ToolTip == "Wear" then    
        SelectAccessories:Add(v.Name)
    end
    end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then 
    if v.ToolTip == "Wear" then    
        SelectAccessories:Add(v.Name)
    end
    end
    end
    end)

    SelectTooAccessories = ""
    Tap:Toggle("Auto Hat",false,function(Value)
    AutoAccessories = Value 
    end)
    spawn(function()
    while wait() do
    if AutoAccessories then
    CheckAccessories = game.Players.LocalPlayer.Character 
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
        if CheckAccessories:FindFirstChild("CoolShades") or CheckAccessories:FindFirstChild("BlackSpikeyCape") or CheckAccessories:FindFirstChild("BlueSpikeyCape") or CheckAccessories:FindFirstChild("RedSpikeyCape") or CheckAccessories:FindFirstChild("Chopper") or CheckAccessories:FindFirstChild("MarineCape") or CheckAccessories:FindFirstChild("GhoulMask") or CheckAccessories:FindFirstChild("MarineCap") or CheckAccessories:FindFirstChild("PinkCape") or CheckAccessories:FindFirstChild("SaboTopHat") or CheckAccessories:FindFirstChild("SwanGlasses") or CheckAccessories:FindFirstChild("UsoapHat") or CheckAccessories:FindFirstChild("Corrida") or CheckAccessories:FindFirstChild("ZebraCap") or CheckAccessories:FindFirstChild("TomoeRing") or CheckAccessories:FindFirstChild("BlackCape") or CheckAccessories:FindFirstChild("SwordsmanHat") or CheckAccessories:FindFirstChild("SantaHat") or CheckAccessories:FindFirstChild("ElfHat") or CheckAccessories:FindFirstChild("DarkCoat") or CheckAccessories:FindFirstChild("Valkyrie Helm") then
        else
            EquipWeapon(SelectTooAccessories)
            wait(0.1)
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            wait(0.1)
            if game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories) then
                game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories).Parent = game.Players.LocalPlayer:FindFirstChild("Backpack")
            end
            wait(1)
        end
    end
    end
    end
    end)


        Tap:Label("Setting",0)

        Tap:Toggle("Mob Aura",_G.MobAura,function(v)
            _G.MobAura = v 
            spawn(function()
                while _G.MobAura do wait()
                    if _G.MobAura then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceNear then
                                repeat wait()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    if HideHitBlox then
                                        v.HumanoidRootPart.Transparency = 1
                                    else
                                        v.HumanoidRootPart.Transparency = 0.75
                                    end
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    if Magnet then
                                        if setsimulationradius then 
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                                until _G.MobAura == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end)
        DistanceNear = 1000000

        Tap:Toggle("Magnet",true,function(vu)
            Magnet = vu
        end)
        

            Tap:Toggle("Auto Set spawn ",true,function(x)
                _G.Set = x
            end)

            Tap:Toggle("Anit AFK",true,function(vu)
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(1)
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
            end)

            Tap:Toggle("Super Lockmob",nil,function(HEEE)
                _G.LockMob = HEEE
                if _G.LockMob == true then
                while _G.LockMob do wait()
                    cq()
                    for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                        if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                                    x.HumanoidRootPart.CanCollide = false
                                    x.HumanoidRootPart.CFrame = PosMonAutoFarm
                                    x.Humanoid.PlatformStand = false
                                    x.Humanoid:ChangeState(11)
                                    wait(0.1)
                                    x.HumanoidRootPart.Anchored = false
                        end 
                    end
                end
                end
                if _G.LockMob == false then
                    cq()
                    for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                                if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                                    x.HumanoidRootPart.CanCollide = false
                                    x.HumanoidRootPart.CFrame = PosMonAutoFarm
                                    x.Humanoid.PlatformStand = false
                                    x.Humanoid:ChangeState(11)
                                    wait(0.2)
                                    x.HumanoidRootPart.Anchored = false
                                end 
                            end
                end
                end)

            Tap:Toggle("Fast attack",true,function(d)
                _G.Fastattack = d
            end)

            spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if _G.Fastattack == true then
                        game.Players.LocalPlayer.Character.Stun.Value = 0
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        game.Players.LocalPlayer.Character.Busy.Value = false        
                    end
                    wait(1)
                end)
            end)

            local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
        local VirtualUser = game:GetService('VirtualUser')
        local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
        local LocalPlayer = game.Players.LocalPlayer
        local Framework = {
            Combat = require(LocalPlayer.PlayerScripts.CombatFramework),
            Rig = require(LocalPlayer.PlayerScripts.CombatFramework.RigController)
        }
        local cd = 0.1
        function Attack()
            spawn(function()
                while wait() do
                pcall(function()
                    local Controller = Framework.Combat.activeController
                    if Controller and tick() >= cd then
                        cd = tick() + 0.1
                        spawn(function()
                            Controller:attack()
                        end)
                        Controller.increment = 4
                    end
                end)
            end
            end)
        end
    spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
            if _G.Fastattack == true and ( _G.AutoFarm or _G.AutoRengoku or _G.FarmLevel or _G.AutoFarmBone or _G.AutoFarmCandy) then
                RigC.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                RigC.activeController.timeToNextBlock = 0
                RigC.activeController.hitboxMagnitude = 100
                RigC.activeController.attacking = false
                RigC.activeController.increment = 3
                RigC.activeController.humanoid.AutoRotate = true
                RigC.activeController.blocking = false
                Rig.activeController.focusStart = 0
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
          end
        end)
    end)

        

        Tap:Toggle("Stop NPC",true,function(a)
            _G.StopNPC = a
        end)
        spawn(function ()
            while game:GetService("RunService").RenderStepped:wait() do
            if _G.StopNPC then
                pcall(function ()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.Name == "Humanoid" then
                    v.PlatformStand = true
                    end
                end
            end)
            end
        end
        end)
            Tap:Toggle("Auto Haki",true,function(value)
                _G.AutoHaki = value
            end)
        
            spawn(function()
                while wait(2) do
                    pcall(function()
                        if _G.AutoHaki then
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                        end
                    end)
                end
            end)
        Tap:Toggle("Auto Observation Haki",_G.AutoObservationHaki,function(value)
                _G.AutoObservationHaki = value
            end)
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.AutoObservationHaki then
                            if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                wait(0.1)
                                VirtualUser:CaptureController()
        
                                VirtualUser:SetKeyDown('0x65')
                                wait(1)
                                VirtualUser:SetKeyUp('0x65')
                            end
                        end
                    end
                end)
            end)

            Tap:Line()

    Tap:Label("Auto Skill")
    Tap:Toggle("Skill Z",true,function(a)
    SkillZ = a
    end)
    Tap:Toggle("Skill X",true,function(a)
    SkillX = a
    end)
    Tap:Toggle("Skill C",true,function(a)
    SkillC = a
    end)
    Tap:Toggle("Skill V",true,function(a)
    SkillV = a
    end)



    game:GetService("RunService").Heartbeat:Connect(
    function()
    if _G.Mastery then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    if _G.GunMastery then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end
    )
    _G.WeponMatary = ""
    --page2:Toggle("Auto Farm Mastery Devil Fruit",_G.Mastery,function(v)
    --	CheckQuest()
    --	local args = {
    --		[1] = "AbandonQuest"
    --	}
    --	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    --	_G.Mastery = v
    --end)
    LocalPlayer = game:GetService("Players").LocalPlayer
    spawn(function()
    while wait() do
        pcall(function()
            if _G.Mastery then
                if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StatrMagnetDevilFruitMastery = false
                    CheckQuest()
                    totarget(CFrameQuest)
                    repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    totarget(CFrameMon)
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        pcall(
                            function()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    CheckQuest()  
                                    if v.Name == Ms then
                                        if setsimulationradius then 
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        repeat wait() CheckQuest()  
                                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                                if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                    PosHee = v.HumanoidRootPart.CFrame
                                                    if v.Humanoid.Health <= HealthMin then
                                                        UseDF = true
                                                        EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                                        v.HumanoidRootPart.Transparency = 0.75
                                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                            if SkillZ and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "Z",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                            end
                                                            if SkillX and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "X"
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                            end   
                                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                            if SkillZ and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "Z",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            end
                                                            if SkillX and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "X",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }

                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            end
                                                            if SkillC and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "C",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            end
                                                            if SkillV and v.Humanoid.Health <= HealthMin then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "V",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            end
                                                        end   
                                                    else
                                                        UseDF = false
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        EquipWeapon(_G.WeponMatary)
                                                        if HideHitBlox then
                                                            v.HumanoidRootPart.Transparency = 0.75
                                                        else
                                                            v.HumanoidRootPart.Transparency = 1
                                                        end
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))  
                                                    end
                                                    StatrMagnetDevilFruitMastery = true 
                                                else
                                                    StatrMagnet = false
                                                    CheckQuest()
                                                    print()
                                                    totarget(CFrameQuest)
                                                    wait(1.5)
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                                end  
                                            else
                                                CheckQuest() 
                                                totarget(CFrameMon)
                                                repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
                                            end 
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StatrMagnetDevilFruitMastery = false
                                        CheckQuest() 
                                        totarget(CFrameMon)
                                    end
                                end
                            end
                        )
                    else
                        CheckQuest()
                        totarget(CFrameMon)
                    end 
                end 
            end
        end) 
    end
    end)


    ---Gun---
    spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    _G.SelectToolWeaponGun = v.Name
                end
            end
        end
    end
    end)
    spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    _G.SelectToolWeaponGun = v.Name
                end
            end
        end
    end
    end)

    Tap:Line()
    Tap:Label("Fram Gun & Fruits")
    Tap:Toggle("Auto Farm Mastery",_G.GunMastery,function(v)
    CheckQuest()
    local args = {
        [1] = "AbandonQuest"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    _G.GunMastery = v
    Ms = ""
    end)
    spawn(function()
    while wait() do
        pcall(function()
            if _G.GunMastery then
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then  
                    CheckQuest()
                    totarget(CFrameQuest)
                    repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                    wait(0.5)
                    totarget(CFrameMon)
                elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then  
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        CheckQuest()
                        pcall(function()
                            if game.Workspace.Enemies:FindFirstChild(Ms) then
                                if _G.GunMastery and v.Name == Ms then
                                    if setsimulationradius then 
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                    repeat wait()
                                        pcall(function()
                                            if game.Workspace.Enemies:FindFirstChild(Ms) then
                                                if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                    HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                    PosHee = v.HumanoidRootPart.CFrame
                                                    if v.Humanoid.Health <= HealthMin then
                                                        EquipWeapon(_G.SelectToolWeaponGun)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                                        v.HumanoidRootPart.Transparency = 0.75
                                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                        local args = {
                                                            [1] = v.HumanoidRootPart.Position,
                                                            [2] = v.HumanoidRootPart
                                                        }
                                                        game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                    else
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        EquipWeapon(_G.WeponMatary)
                                                        if HideHitBlox then
                                                            v.HumanoidRootPart.Transparency = 0.75
                                                        else
                                                            v.HumanoidRootPart.Transparency = 1
                                                        end
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(20,1,1))
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end 
                                                    StatrMagnet = true
                                                else
                                                    CheckQuest()
                                                    totarget(CFrameQuest)
                                                    repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
                                                    wait(1.1)
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                                    wait(0.5)
                                                    totarget(CFrameMon)
                                                end
                                            else
                                                CheckQuest()
                                                totarget(CFrameMon)
                                            end
                                        end)
                                    until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or _G.GunMastery == false or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                end
                            else
                                CheckQuest()
                                totarget(CFrameMon)
                            end
                        end)
                    end
                end 
            end
        end) 
    end
    end)

    Tap:Line()

    Persen = 30
    Tap:Slider("Health",false,false,0,100,Persen,1,false,Persen,function(v)
    Persen = v["s"]
    end)
    local AMonster = Tap:Drop("Select Weapon",false,Wapon,function(v)
    _G.WeponMatary = v
    end)
    Tap:Button("Refresh Weapon",function()
    AMonster:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            AMonster:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            AMonster:Add(v.Name)
        end
    end
    end)

            

            Tap:Label("Auto Farm Level Lock")
            _G.LockLevelValue = 2200
            OldLevel = game.Players.localPlayer.Data.Level.Value
            Tap:Slider("Select Level Lock",false,false,0,2200,1,1,false,_G.LockLevelValue,_G.LockLevelValue,function(value)
                _G.LockLevelValue = value
            end)
            Tap:Toggle("Lock Level",false,function(value)
                _G.LockLevel = value
            end)
            spawn(function()
                while wait(.1) do
                    if _G.LockLevel then
                        if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
                            game.Players.localPlayer:Kick("Auto Fram Locak level")
                        end
                    end
                end
            end)
        
            Tap:Toggle("Lock Level Stop Farm",false,function(value)
                _G.LockLevelStopFarm = value
            end)
            spawn(function()
                while wait(.1) do
                    if _G.LockLevelStopFarm then
                        if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
                            _G.AutoFarm = false
                            if _G.LockLevelStopFarm == false then
                                return
                            end
                        end
                    end
                end
            end)
        
            Tap:Toggle("Auto Kick Lock Level",true,function(value)
                _G.AutoRejoin = value
            end)
            spawn(function()
                while wait() do
                    if _G.AutoRejoin then
                        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                            if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                                game:GetService("TeleportService"):Teleport(game.PlaceId)
                            end
                        end)
                    end
                end
            end)

            Tap:Label("Auto Farm Lock Bone")

            function Boneremote()
                return game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("Bones","Check")
            end
            
            Tap:Slider("Lock Bone",false,false,1,100000,100,false,_G.Lock_Bone,_G.Lock_Bone,function(xx)
                _G.Lock_Bone = xx
            end)
            Tap:Toggle("Lock Bone",false,function(vv)
                _G.Open_LockBone = vv
            end)
            
            spawn(function()
                while wait() do
                    if _G.Open_LockBone then
                        if Boneremote() == _G.Lock_Bone then
                            print("Lock Bone Success")
                        end
                    end
                end
            end)


            tab:Toggle("Auto Death Step",_G.DeathStep,function(vu)
                _G.DeathStep = vu
            end)
            spawn(function()
                while wait() do wait()
                    if _G.DeathStep then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                                local args = {
                                    [1] = "BuyDeathStep"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                _G.SelectWeapon = "Death Step"
                            end  
                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                                local args = {
                                    [1] = "BuyDeathStep"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
                                _G.SelectWeapon = "Death Step"
                            end  
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                                _G.SelectWeapon = "Black Leg"
                            end 
                        else 
                            local args = {
                                [1] = "BuyBlackLeg"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                end
            end)
        
            tab:Toggle("Auto Electric Claw V2",false,function(x)
                _G.AutoElectricClawV2 = x
            end)
        
            spawn(function()
                while wait() do wait()
                    if _G.AutoElectricClawV2 then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                            end  
                            if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        
                                _G.SelectWeapon = "Electric Claw"
                            end  
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                                _G.SelectWeapon = "Electro"
                            end 
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.AutoElectricClawV2 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                    if _G.AutoFarm == false then
                                        repeat wait()
                                            totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                        wait(2)
                                        repeat wait()
                                            totarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                        wait(1)
                                        repeat wait()
                                            totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                    elseif _G.AutoFarm == true then
                                        _G.AutoFarm = false
                                        wait(1)
                                        repeat wait()
                                            totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                        wait(2)
                                        repeat wait()
                                            totarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                        wait(1)
                                        repeat wait()
                                            totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                        until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                        _G.SelectWeapon = "Electric Claw"
                                        wait(.1)
                                        _G.AutoFarm = true
                                    end
                                end
                            end
                        end
                    end)
                end
            end)

            --tab:Line()
        
            if ThreeWorld then
                tab:Toggle("Auto Elite Hunter",_G.EliteHunt,function (t)
                    _G.EliteHunt = t
                end)
                spawn(function()
                    while wait() do
                        if  _G.EliteHunt then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            else
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Diablo [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Deandre [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Urban [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end)
            end

            spawn(function()
                while wait() do
                if _G.EliteHunt then
                        local EliteHunt = Instance.new('Part',workspace)
                        EliteHunt.Name = "EliteHunt"
                        EliteHunt.CanCollide = true
                        EliteHunt.Anchored = true
                        EliteHunt.Size = Vector3.new(30,0,30)
                        EliteHunt.Transparency = 1
                        game:GetService("Workspace")["EliteHunt"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)


            if ThreeWorld then
                tab:Toggle("Auto Elite Hunter(Hop)",_G.ElitehuntHop,function (t)
                    _G.ElitehuntHop = t
                end)
                spawn(function()
                    while wait() do
                        if  _G.ElitehuntHop then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            else
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Diablo [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Deandre [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Urban [Lv. 1750]" then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                    if setsimulationradius then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid:ChangeState(11)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        spawn(function()
                                            totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        
            spawn(function()
                while wait() do
                    if _G.ElitehuntHop then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            else
                                wait(12)
                                if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                    local PlaceID = game.PlaceId
                                    local AllIDs = {}
                                    local foundAnything = ""
                                    local actualHour = os.date("!*t").hour
                                    local Deleted = false
                                    function TPReturner()
                                        local Site;
                                        if foundAnything == "" then
                                            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                                        else
                                            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                                        end
                                        local ID = ""
                                        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                                            foundAnything = Site.nextPageCursor
                                        end
                                        local num = 0;
                                        for i,v in pairs(Site.data) do
                                            local Possible = true
                                            ID = tostring(v.id)
                                            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                                                for _,Existing in pairs(AllIDs) do
                                                    if num ~= 0 then
                                                        if ID == tostring(Existing) then
                                                            Possible = false
                                                        end
                                                    else
                                                        if tonumber(actualHour) ~= tonumber(Existing) then
                                                            local delFile = pcall(function()
                                                                -- delfile("NotSameServers.json")
                                                                AllIDs = {}
                                                                table.insert(AllIDs, actualHour)
                                                            end)
                                                        end
                                                    end
                                                    num = num + 1
                                                end
                                                if Possible == true then
                                                    table.insert(AllIDs, ID)
                                                    wait()
                                                    pcall(function()
                                                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                                        wait()
                                                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                                    end)
                                                    wait(4)
                                                end
                                            end
                                        end
                                    end
                                    function Teleport() 
                                        while wait() do
                                            pcall(function()
                                                TPReturner()
                                                if foundAnything ~= "" then
                                                    TPReturner()
                                                end
                                            end)
                                        end
                                    end
                                    Teleport()
                                end
                            end
                        end) 
                    end
                end
            end)

            spawn(function()
                while wait() do
                if _G.ElitehuntHop then
                        local ElitehuntHop = Instance.new('Part',workspace)
                        ElitehuntHop.Name = "ElitehuntHop"
                        ElitehuntHop.CanCollide = true
                        ElitehuntHop.Anchored = true
                        ElitehuntHop.Size = Vector3.new(30,0,30)
                        ElitehuntHop.Transparency = 1
                        game:GetService("Workspace")["ElitehuntHop"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)

            tab:Label("Elite kill")
            EliteKillCount = tab:Label("Elite Kill")
            local function UpdateElite()
                EliteKillCount:Change("".. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
            spawn(function()
                while true do
                    UpdateElite()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)

            tab:Line()

            if ThreeWorld then
                tab:Toggle("Auto Rainbow Haki",false,function(t)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    rainbowhaki = t
                end)
                spawn(function()
                    while wait() do
                        if rainbowhaki then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                repeat wait()
                                    totarget(CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875))
                                until _G.StopTween == true or not rainbowhaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875).Position).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            else
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Stone (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Stone [Lv. 1550] [Boss]" then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        totarget(CFrame.new(-1109.6944580078, 40.006885528564, 6730.9833984375))
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Island Empress (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        totarget(CFrame.new(5702.2724609375, 601.94860839844, 201.07873535156))
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Kilo Admiral (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        totarget(CFrame.new(2861.53515625, 423.58441162109, -7254.0751953125))
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        totarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Beautiful Pirate (0/1)" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
        
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        totarget(CFrame.new(5378.6337890625, 22.56223487854, -26.053804397583))
                                    end
                                end
                            end
                        end
                    end
                end)
            end


            spawn(function()
                while wait() do
                if rainbowhaki then
                        local rainbowhaki = Instance.new('Part',workspace)
                        rainbowhaki.Name = "rainbowhaki"
                        rainbowhaki.CanCollide = true
                        rainbowhaki.Anchored = true
                        rainbowhaki.Size = Vector3.new(30,0,30)
                        rainbowhaki.Transparency = 1
                        game:GetService("Workspace")["rainbowhaki"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)



            
        
            tab:Toggle("Auto Observation V2",_G.AutoObservationHakiV2,function(x)
                _G.AutoObservationHakiV2 = x
            end)
        
            spawn(function()
                while wait() do
                    if _G.AutoObservationHakiV2 then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat 
                                totarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        else
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate [Lv. 1825]" then
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                PosHee =  v.HumanoidRootPart.CFrame
                                                if sethiddenproperty then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                end
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                StatrMagnet = true
                                            until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                            StatrMagnet = false
                                        end
                                    end
                                else
                                    repeat 
                                        totarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
                                        wait() 
                                    until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
                                if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
                                                if sethiddenproperty then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                end
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    repeat 
                                        totarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
                                        wait() 
                                    until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
                                end        
                            end
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                            repeat 
                                totarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                            repeat 
                                totarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                wait() 
                            until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                        else
                            for i,v in pairs(game.Workspace:GetDescendants()) do
                                if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                    wait()
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                    wait()
                                end
                            end   
                        end
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.AutoObservationHakiV2 then
                            if sethiddenproperty then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end)
                    game:GetService("RunService").Heartbeat:Wait()
                end
            end)
        
            spawn(function()
                game:GetService("RunService").Heartbeat:connect(function()
                    pcall(function()
                        if _G.AutoObservationHakiV2 then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                pcall(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        game:GetService("RunService").Heartbeat:Wait()
                        if _G.AutoObservationHakiV2 and StatrMagnet then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate [Lv. 1825]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == "Forest Pirate [Lv. 1825]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.HumanoidRootPart.CFrame = PosHee
                                    end
                                end
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                game:GetService("RunService").Heartbeat:connect(function()
                    game:GetService("RunService").Heartbeat:Wait()
                    pcall(function()
                        if _G.AutoObservationHakiV2 and StatrMagnet then
                            CheckQuest()
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    v.Humanoid:ChangeState(11)
                                end
                            end
                        end
                    end)
                    game:GetService("RunService").Heartbeat:Wait()
                end)
            end)
        
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.AutoObservationHakiV2 and StatrMagnet then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == Ms and v:FindFirstChild("HumanoidRootPart") then
                                    if not v.HumanoidRootPart:FindFirstChild("BringEE") then
                                        local bv = Instance.new("BodyVelocity")
                                        bv.Parent = v.HumanoidRootPart
                                        bv.Name = "BringEE"
                                        bv.MaxForce = Vector3.new(100000,100000,100000)
                                        bv.Velocity = Vector3.new(0,0,0)
                                    end
                                end
                            end
                        end
                    end)
                    wait()
                end
            end)

            ---- [RainbowHaki]
            spawn(function()
                while wait() do
                    if RainbowHaki then
                        pcall(function()
                            if game.Players.LocalPlayer.Character.HasBuso then
                                for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
                                    if v.Name == "RightLowerArm_BusoLayer1" or v.Name == "RightLowerArm_BusoLayer2" or v.Name == "RightHand_BusoLayer1" or v.Name == "RightHand_BusoLayer2" or v.Name == "LeftLowerArm_BusoLayer1" or v.Name == "LeftLowerArm_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "LeftHand_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer2" or v.Name == "LeftUpperArm_BusoLayer1" or v.Name == "LeftUpperArm_BusoLayer2" or v.Name == "UpperTorso_BusoLayer1" or v.Name == "UpperTorso_BusoLayer2" or v.Name == "LowerTorso_BusoLayer1" or v.Name == "LowerTorso_BusoLayer2" or v.Name == "Head_BusoLayer1" or v.Name == "Head_BusoLayer2" or v.Name == "RightUpperLeg_BusoLayer1" or v.Name == "RightUpperLeg_BusoLayer2" or v.Name == "LeftUpperLeg_BusoLayer1" or v.Name == "LeftUpperLeg_BusoLayer2" or v.Name == "RightLowerLeg_BusoLayer1" or v.Name == "RightLowerLeg_BusoLayer2" or v.Name == "LeftLowerLeg_BusoLayer1" or v.Name == "LeftLowerLeg_BusoLayer2" or v.Name == "LeftFoot_BusoLayer1" or v.Name == "LeftFoot_BusoLayer2" or v.Name == "RightFoot_BusoLayer1" or v.Name == "RightFoot_BusoLayer2" then
                                        v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    if RainbowHaki == false then
                        pcall(function()
                            if game.Players.LocalPlayer.Character.HasBuso then
                                for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
                                    if v.Name == "RightLowerArm_BusoLayer1" or v.Name == "RightLowerArm_BusoLayer2" or v.Name == "RightHand_BusoLayer1" or v.Name == "RightHand_BusoLayer2" or v.Name == "LeftLowerArm_BusoLayer1" or v.Name == "LeftLowerArm_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "LeftHand_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer2" or v.Name == "LeftUpperArm_BusoLayer1" or v.Name == "LeftUpperArm_BusoLayer2" or v.Name == "UpperTorso_BusoLayer1" or v.Name == "UpperTorso_BusoLayer2" or v.Name == "LowerTorso_BusoLayer1" or v.Name == "LowerTorso_BusoLayer2" or v.Name == "Head_BusoLayer1" or v.Name == "Head_BusoLayer2" or v.Name == "RightUpperLeg_BusoLayer1" or v.Name == "RightUpperLeg_BusoLayer2" or v.Name == "LeftUpperLeg_BusoLayer1" or v.Name == "LeftUpperLeg_BusoLayer2" or v.Name == "RightLowerLeg_BusoLayer1" or v.Name == "RightLowerLeg_BusoLayer2" or v.Name == "LeftLowerLeg_BusoLayer1" or v.Name == "LeftLowerLeg_BusoLayer2" or v.Name == "LeftFoot_BusoLayer1" or v.Name == "LeftFoot_BusoLayer2" or v.Name == "RightFoot_BusoLayer1" or v.Name == "RightFoot_BusoLayer2" then
                                        v.Color = Color3.fromRGB(0, 0, 0)
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                if _G.AutoObservationHakiV2 then
                        local AutoObservationHakiV2 = Instance.new('Part',workspace)
                        AutoObservationHakiV2.Name = "AutoObservationHakiV2"
                        AutoObservationHakiV2.CanCollide = true
                        AutoObservationHakiV2.Anchored = true
                        AutoObservationHakiV2.Size = Vector3.new(30,0,30)
                        AutoObservationHakiV2.Transparency = 1
                        game:GetService("Workspace")["AutoObservationHakiV2"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)
        
        
            if ThreeWorld then
                tab:Toggle("Auto Yama (Hop)",_G.YamaHop,function(t)
                    _G.YamaHop = t
                end)
            end

            spawn(function()
                while wait() do
                if _G.YamaHop then
                        local YamaHop = Instance.new('Part',workspace)
                        YamaHop.Name = "YamaHop"
                        YamaHop.CanCollide = true
                        YamaHop.Anchored = true
                        YamaHop.Size = Vector3.new(30,0,30)
                        YamaHop.Transparency = 1
                        game:GetService("Workspace")["YamaHop"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.YamaHop then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                                fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                            else
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.YamaHop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
                                    wait(.9)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                else
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" then
                                                    repeat wait()
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        v.Humanoid:ChangeState(11)
                                                        _G.FastBoss = true
                                                    until _G.YamaHop == false or v.Humanoid.Health <= 0
                                                    _G.FastBoss = false
                                                end
                                            end
                                        else
                                            spawn(function()
                                                totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                            end)
                                        end
                                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Deandre [Lv. 1750]" then
                                                    repeat wait()
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        totarget(v.HumanoidRootPart.Position + Vector3.new(1,20,1) , v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))												
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        v.Humanoid:ChangeState(11)
                                                        _G.FastBoss = true
                                                    until _G.YamaHop == false or v.Humanoid.Health <= 0
                                                    _G.FastBoss = false
                                                end
                                            end
                                        else
                                            spawn(function()
                                                totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                            end)
                                        end
                                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Urban [Lv. 1750]" then
                                                    repeat wait()
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        totarget(v.HumanoidRootPart.Position + Vector3.new(1,20,1) , v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))												
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        v.Humanoid:ChangeState(11)
                                                        _G.FastBoss = true
                                                    until _G.YamaHop == false or v.Humanoid.Health <= 0
                                                    _G.FastBoss = false
                                                end
                                            end
                                        else
                                            spawn(function()
                                                totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end)
        
            spawn(function()
                while wait() do
                    if _G.YamaHop then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            else
                                wait(12)
                                if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                    local PlaceID = game.PlaceId
                                    local AllIDs = {}
                                    local foundAnything = ""
                                    local actualHour = os.date("!*t").hour
                                    local Deleted = false
                                    function TPReturner()
                                        local Site;
                                        if foundAnything == "" then
                                            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                                        else
                                            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                                        end
                                        local ID = ""
                                        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                                            foundAnything = Site.nextPageCursor
                                        end
                                        local num = 0;
                                        for i,v in pairs(Site.data) do
                                            local Possible = true
                                            ID = tostring(v.id)
                                            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                                                for _,Existing in pairs(AllIDs) do
                                                    if num ~= 0 then
                                                        if ID == tostring(Existing) then
                                                            Possible = false
                                                        end
                                                    else
                                                        if tonumber(actualHour) ~= tonumber(Existing) then
                                                            local delFile = pcall(function()
                                                                -- delfile("NotSameServers.json")
                                                                AllIDs = {}
                                                                table.insert(AllIDs, actualHour)
                                                            end)
                                                        end
                                                    end
                                                    num = num + 1
                                                end
                                                if Possible == true then
                                                    table.insert(AllIDs, ID)
                                                    wait()
                                                    pcall(function()
                                                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                                        wait()
                                                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                                    end)
                                                    wait(4)
                                                end
                                            end
                                        end
                                    end
                                    function Teleport() 
                                        while wait() do
                                            pcall(function()
                                                TPReturner()
                                                if foundAnything ~= "" then
                                                    TPReturner()
                                                end
                                            end)
                                        end
                                    end
                                    Teleport()
                                end
                            end
                        end) 
                    end
                end
            end)
        
            if ThreeWorld then
                tab:Toggle("Auto Tushita (Hop)",_G.Tushitahop,function(t)
                    _G.Tushitahop = t
                end)
            end

            spawn(function()
                while wait() do
                if _G.Tushitahop then
                        local Tushitahop = Instance.new('Part',workspace)
                        Tushitahop.Name = "Tushitahop"
                        Tushitahop.CanCollide = true
                        Tushitahop.Anchored = true
                        Tushitahop.Size = Vector3.new(30,0,30)
                        Tushitahop.Transparency = 1
                        game:GetService("Workspace")["Tushitahop"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)
        
            spawn(function()
                while wait(.1) do
                    if _G.Tushitahop then
                        autoTushita()
                    end
                end
            end)
        
        
            function enemyrip()
                totarget(CFrame.new(-5332.30371, 423.985413, -2673.48218))
                wait()
                if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    local mobs = game.Workspace.Enemies:GetChildren()
                    for i,v in pairs(mobs) do
                        if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            return v
                        end
                    end
                end
                return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
            end
            function enemyEliteBoss()
                if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
                    local mobs = game.Workspace.Enemies:GetChildren()
                    for i,v in pairs(mobs) do
                        if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]"  and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            return v
                        end
                    end
                end
                return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
            end
        
            function enemylongma()
                totarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
                if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                    local mobs = game.Workspace.Enemies:GetChildren()
                    for i,v in pairs(mobs) do
                        if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            return v
                        end
                    end
                end
                return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
            end
        
            _G.checkup = true
            function autoTushita()
                if _G.checkup and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            _G.FastBoss = false
                            repeat totarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                            wait(1)
                            repeat totarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            wait(1)
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            pcall(function()
                                EquipWeapon(_G.SelectWeapon)
                                pcall(function()
                                    local v = enemyEliteBoss()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                    _G.FastBoss = true
                                end)
                            end)
                        end
                    elseif _G.ServerHop then
                        _G.FastBoss = false
                        totarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
                        wait(1)
                        Hopey()
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    _G.checkup = false
                    _G.FastBoss = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                    wait(0.5)
                    repeat totarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                    wait(0.5)
                    repeat totarget(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                    wait(0.5)
                    repeat totarget(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                    wait(0.5)
                    EquipWeapon("God's Chalice")
                    wait(0.5)
                    repeat totarget(CFrame.new(-5560.27295, 313.915466, -2663.89795)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
                    wait(0.5)
                    repeat totarget(CFrame.new(-5561.37451, 313.342529, -2663.4948)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(1)
                    repeat totarget(CFrame.new(5154.17676, 141.786423, 911.046326)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(0.2)
                    repeat totarget(CFrame.new(5148.03613, 162.352493, 910.548218)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(1)
                    EquipWeapon("Holy Torch")
                    wait(1)
                    wait(0.4)
                    repeat totarget(CFrame.new(-10752.7695, 412.229523, -9366.36328)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(0.4)
                    repeat totarget(CFrame.new(-11673.4111, 331.749023, -9474.34668)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(0.4)
                    repeat totarget(CFrame.new(-12133.3389, 519.47522, -10653.1904)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(0.4)
                    repeat totarget(CFrame.new(-13336.5, 485.280396, -6983.35254)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(0.4)
                    repeat totarget(CFrame.new(-13487.4131, 334.84845, -7926.34863)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(1)
                elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                    pcall(function()
                        EquipWeapon(_G.SelectWeapon)
                        pcall(function()
                            local v = enemylongma()
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            _G.FastBoss = true
                        end)
                    end)
                elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    pcall(function()
                        EquipWeapon(_G.SelectWeapon)
                        pcall(function()
                            local v = enemyrip()
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            _G.FastBoss = true
                        end)
                    end)
                elseif _G.ServerHop then
                    _G.FastBoss = false
                    totarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
                    wait(1)
                    Hopey()  
                end
            end
        
            if ThreeWorld then
                tab:Toggle("Auto Beautiful Pirate",_G.Cave,function(vu)
                    totarget(CFrame.new(5310.80957, 22.5622349, 129.390533))
                    _G.Cave = vu
                end)

                spawn(function()
                    while wait() do
                    if _G.Cave then
                            local Cave = Instance.new('Part',workspace)
                            Cave.Name = "Cave"
                            Cave.CanCollide = true
                            Cave.Anchored = true
                            Cave.Size = Vector3.new(30,0,30)
                            Cave.Transparency = 1
                            game:GetService("Workspace")["Cave"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                        end
                    end
                end)

                spawn(function()
                    while wait() do
                        if _G.Cave then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                        repeat wait()
                                            pcall(function()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.HumanoidRootPart.CanCollide = false
                                                totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end)
                                        until _G.Cave == false or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        
            tab:Toggle("Auto Player Hunter",_G.AutoPlayerHunter,function(x)
                _G.AutoPlayerHunter = x
            end)

            spawn(function()
                while wait() do
                if _G.AutoPlayerHunter then
                        local AutoPlayerHunter = Instance.new('Part',workspace)
                        AutoPlayerHunter.Name = "AutoPlayerHunter"
                        AutoPlayerHunter.CanCollide = true
                        AutoPlayerHunter.Anchored = true
                        AutoPlayerHunter.Size = Vector3.new(30,0,30)
                        AutoPlayerHunter.Transparency = 1
                        game:GetService("Workspace")["AutoPlayerHunter"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)
        
            spawn(function()
                game:GetService("RunService").Heartbeat:connect(function()
                    pcall(function()
                        if _G.AutoPlayerHunter then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                while wait() do
                    if _G.AutoPlayerHunter then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat 
                                totarget(CFrame.new(-5560.00390625, 313.74130249023, -2838.4792480469)) 
                                wait() 
                            until _G.StopTween == true or not _G.AutoPlayerHunter or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.00390625, 313.74130249023, -2838.4792480469)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        else
                            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,10,1))								
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                            end
                        end
                    end
                end
            end)

            --tab:Line()

            if NewWorld then
                tab:Toggle("Auto Buy Legendary Sword",_G.BuySword,function(Value)
                    _G.BuySword = Value
                end)
                spawn(function()
                    while _G.BuySword do wait()
                        if _G.BuySword then
                            local args = {
                                [1] = "LegendarySwordDealer",
                                [2] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                    end
                end)
            end
        
            if NewWorld then
                tab:Toggle("Auto Buy Legendary Sword+Hop",_G.AutoBuySwordHop,function(Value)
                    _G.AutoBuySwordHop = Value
                end)
                spawn(function()
                    while _G.AutoBuySwordHop do wait()
                        if _G.AutoBuySwordHop then
                            local args = {
                                [1] = "LegendarySwordDealer",
                                [2] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                    end
                end)
            end
        
            spawn(function()
                while wait(7) do
                    if _G.AutoBuySwordHop or _G.HakiColorHop then
                        local PlaceID = game.PlaceId
                        local AllIDs = {}
                        local foundAnything = ""
                        local actualHour = os.date("!*t").hour
                        local Deleted = false
                        function TPReturner()
                            local Site;
                            if foundAnything == "" then
                                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                            else
                                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                            end
                            local ID = ""
                            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                                foundAnything = Site.nextPageCursor
                            end
                            local num = 0;
                            for i,v in pairs(Site.data) do
                                local Possible = true
                                ID = tostring(v.id)
                                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                                    for _,Existing in pairs(AllIDs) do
                                        if num ~= 0 then
                                            if ID == tostring(Existing) then
                                                Possible = false
                                            end
                                        else
                                            if tonumber(actualHour) ~= tonumber(Existing) then
                                                local delFile = pcall(function()
                                                    -- delfile("NotSameServers.json")
                                                    AllIDs = {}
                                                    table.insert(AllIDs, actualHour)
                                                end)
                                            end
                                        end
                                        num = num + 1
                                    end
                                    if Possible == true then
                                        table.insert(AllIDs, ID)
                                        wait()
                                        pcall(function()
                                            -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                            wait()
                                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                        end)
                                        wait(4)
                                    end
                                end
                            end
                        end
                        function Teleport() 
                            while wait() do
                                pcall(function()
                                    TPReturner()
                                    if foundAnything ~= "" then
                                        TPReturner()
                                    end
                                end)
                            end
                        end
                        Teleport()
                    end
                end
            end)


            --tab:Line()

    if NewWorld then

    tab:Toggle("Auto SwanGlasses",_G.SwanGlasses,function(vu)
    totarget(Vector3.new(2191.1674804688, 15.177842140198, 694.69873046875),CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875))
    _G.SwanGlasses = vu
    end)
    spawn(function()
    while wait() do
    if _G.SwanGlasses then
        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                        pcall(function()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.CanCollide = false
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end)
                    until _G.SwanGlasses == false or v.Humanoid.Health <= 0
                end
            end
        end
    end
    end
    end)

    spawn(function()
    while wait() do
    if _G.SwanGlasses then
        EquipWeapon(_G.SelectWeapon)
    end
    end
    end)



    tab:Toggle("Auto SwanGlasses (Hop)",_G.SwanHop,function(HEE)
    _G.SwanHop = HEE
    end)
    end
    spawn(function()
    while wait() do
    if _G.SwanHop then
    pcall(function()
        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                        pcall(function()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.CanCollide = false
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end)
                    until _G.SwanHop == false or v.Humanoid.Health <= 0
                end
            end
        else
            repeat totarget(CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2191.1674804688, 15.177842140198, 694.69873046875)).Magnitude <= 10
            wait(1)
            if not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport() 
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
                Teleport()
            end
        end
    end) 
    end
    end
    end)

    tab:Line()

    tab:Toggle("Auto Pole",_G.Pole,function(vu)
    totarget(Vector3.new(-7911.14453, 5613.89795, -2272.67822),CFrame.new(-7911.14453, 5613.89795, -2272.67822))
    _G.Pole = vu
    end)
    spawn(function()
    while wait() do
    if _G.Pole then
    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                repeat wait()
                    pcall(function()
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            local args = {
                                [1] = "Buso"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        EquipWeapon(_G.SelectWeapon)
                        v.Humanoid:ChangeState(11)
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CanCollide = false
                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    end)
                until _G.Pole == false or v.Humanoid.Health <= 0
            end
        end
    end
    end
    end
    end)

    spawn(function()
    while wait() do
    if _G.Pole then
    EquipWeapon(_G.SelectWeapon)
    end
    end
    end)

    tab:Toggle("Auto Pole (Hop)",_G.PoleHop,function(HUM)
    wait(1)
    _G.PoleHop = HUM
    end)
    spawn(function()
    while wait() do
    if _G.PoleHop then
    pcall(function()
        if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                        pcall(function()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.CanCollide = false
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end)
                    until _G.PoleHop == false or v.Humanoid.Health <= 0
                end
            end
        else
            repeat totarget(CFrame.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)) wait() until _G.StopTween == true or not _G.PoleHop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)).Magnitude <= 10
            wait(1)
            if not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport() 
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
                Teleport()
            end
        end
    end) 
    end
    end
    end)

    tab:Line()
            tab:Label("Auto Farm Boss")
            function CheckQuestBoss()
                if SelectBoss == "Diamond [Lv. 750] [Boss]" then
                    MsBoss = "Diamond [Lv. 750] [Boss]"
                    NaemQuestBoss = "Area1Quest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                    CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
                elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
                    MsBoss = "Jeremy [Lv. 850] [Boss]"
                    NaemQuestBoss = "Area2Quest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                    CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
                elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
                    MsBoss = "Fajita [Lv. 925] [Boss]"
                    NaemQuestBoss = "MarineQuest3"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                    CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
                elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
                    MsBoss = "Don Swan [Lv. 1000] [Boss]"
                    CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
                elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
                    MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
                    NaemQuestBoss = "IceSideQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
                    CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
                elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
                    MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
                    CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
                elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
                    MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
                    CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
                elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
                    MsBoss = "Order [Lv. 1250] [Raid Boss]"
                    CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
                elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                    MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
                    NaemQuestBoss = "FrostQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
                    CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
                elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
                    MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
                    NaemQuestBoss = "ForgottenQuest"             
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
                    CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
                    -- Old World
                elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
                    MsBoss = "Saber Expert [Lv. 200] [Boss]"
                    CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
                elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
                    MsBoss = "The Saw [Lv. 100] [Boss]"
                    CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
                elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
                    MsBoss = "The Gorilla King [Lv. 25] [Boss]"
                    NaemQuestBoss = "JungleQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                    CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
                elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
                    MsBoss = "Bobby [Lv. 55] [Boss]"
                    NaemQuestBoss = "BuggyQuest1"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                    CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
                elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
                    MsBoss = "Yeti [Lv. 110] [Boss]"
                    NaemQuestBoss = "SnowQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
                    CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
                elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
                    MsBoss = "Mob Leader [Lv. 120] [Boss]"
                    CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
                    --The Gorilla King [Lv. 25] [Boss]
                elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
                    MsBoss = "Vice Admiral [Lv. 130] [Boss]"
                    NaemQuestBoss = "MarineQuest2"
                    LevelQuestBoss = 2
                    CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
                    CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
                elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
                    MsBoss = "Warden [Lv. 175] [Boss]"
                    NaemQuestBoss = "ImpelQuest"
                    LevelQuestBoss = 1
                    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
                    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
                elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
                    MsBoss = "Chief Warden [Lv. 200] [Boss]"
                    NaemQuestBoss = "ImpelQuest"
                    LevelQuestBoss = 2
                    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
                    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
                elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
                    MsBoss = "Swan [Lv. 225] [Boss]"
                    NaemQuestBoss = "ImpelQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
                    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
                elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
                    MsBoss = "Magma Admiral [Lv. 350] [Boss]"
                    NaemQuestBoss = "MagmaQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
                    CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
                elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
                    MsBoss = "Fishman Lord [Lv. 425] [Boss]"
                    NaemQuestBoss = "FishmanQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
                    CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
                elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
                    MsBoss = "Wysper [Lv. 500] [Boss]"
                    NaemQuestBoss = "SkyExp1Quest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
                    CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
                elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
                    MsBoss = "Thunder God [Lv. 575] [Boss]"
                    NaemQuestBoss = "SkyExp2Quest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
                    CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
                elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
                    MsBoss = "Cyborg [Lv. 675] [Boss]"
                    NaemQuestBoss = "FountainQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
                    CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
                    --Three World
                elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
                    MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
                    NaemQuestBoss = "MarineTreeIsland"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                    CFrameBoss = CFrame.new(2955.1189, 423.584412, -7240.22217, -0.761679471, 7.01648872e-08, 0.647953987, 8.75833539e-09, 1, -9.79912755e-08, -0.647953987, -6.89629474e-08, -0.761679471)
                elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
                    MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
                    NaemQuestBoss = "DeepForestIsland"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                    CFrameBoss = CFrame.new(-13592.9053, 332.23584, -8134.08643, -0.866908491, -1.7684858e-08, 0.498467356, -3.95491107e-08, 1, -3.33032872e-08, -0.498467356, -4.85848446e-08, -0.866908491)
                elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
                    MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
                    NaemQuestBoss = "DeepForestIsland2"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                    CFrameBoss = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
                elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
                    MsBoss = "Longma [Lv. 2000] [Boss]"
                    CFrameBoss = CFrame.new(-10293.208, 332.791351, -9450.625, 0.132661447, -0.213521436, -0.96788919, -0.0110089043, 0.976142585, -0.21685116, 0.991100252, 0.0394231752, 0.127145842)
                elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
                    MsBoss = "Stone [Lv. 1550] [Boss]"
                    NaemQuestBoss = "PiratePortQuest"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                    CFrameBoss = CFrame.new(-970.778564, 40.0068855, 6795.5249, -0.179641441, -2.87076816e-08, 0.983732164, -4.4126935e-08, 1, 2.11243023e-08, -0.983732164, -3.96142852e-08, -0.179641441)
                elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
                    MsBoss = "Island Empress [Lv. 1675] [Boss]"
                    NaemQuestBoss = "AmazonQuest2"
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    CFrameBoss = CFrame.new(5813.94140625, 661.14862060547, 202.04710388184)
                end
            end
            local Boss = {}
            for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                if string.find(v.Name, "Boss") then
                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                    else
                        table.insert(Boss, v.Name)
                    end
                end
            end
            for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                if string.find(v.Name, "Boss") then
                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                    else
                        table.insert(Boss, v.Name)
                    end
                end
            end
            local BossName = tab:Drop("Select Boss",false,Boss,function(Value)
                SelectBoss = Value
                Don = false
            end)
            TOOLS = {}
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    table.insert(TOOLS,v.Name)
                end
            end
            local SelectWeaponBoss = "" 
            local SelectWeaponKillBoss = tab:Drop("Select Weapon Kill Boss",false,Wapon,function(Value)
                _G.SelectWeaponBoss = Value
            end)
            tab:Button("Refresh Weapon Boss",function()
                SelectWeaponKillBoss:Clear()
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        SelectWeaponKillBoss:Add(v.Name)
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                        SelectWeaponKillBoss:Add(v.Name)
                    end
                end
            end)
            tab:Button("Refresh Boss",function()
                BossName:Clear()
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if string.find(v.Name, "Boss") then
                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                        else
                            BossName:Add(v.Name)
                        end
                    end
                end
                for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Boss") then
                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                        else
                            BossName:Add(v.Name)
                        end
                    end
                end
            end)
            function AutoFramBoss()
                CheckQuestBoss()
                if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" or SelectBoss == "Longma [Lv. 2000] [Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                repeat
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        if HideHitBlox then
                                            v.HumanoidRootPart.Transparency = 0.75
                                        else
                                            v.HumanoidRootPart.Transparency = 1
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        totarget(CFrameBoss)
                    end
                elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                repeat 
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        if HideHitBlox then
                                            v.HumanoidRootPart.Transparency = 0.75
                                        else
                                            v.HumanoidRootPart.Transparency = 1
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        totarget(CFrameBoss)
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            print()
                            CheckQuestBoss()
                            totarget(CFrameQuestBoss)
                            repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuestBoss.Position).Magnitude <= 10
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
                            wait(1)
                            totarget(CFrameBoss)
                        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                    repeat
                                        pcall(function() wait() 
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            EquipWeapon(_G.SelectWeaponBoss)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                            VirtualUser:CaptureController()
                                            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                        end)
                                    until not FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                            totarget(CFrameBoss)
                        end
                    end
                end
            end
            tab:Toggle("Auto Farm Boss",false,function(Value)
                local args = {
                    [1] = "AbandonQuest"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                FramBoss = Value
                MsBoss = ""
                while FramBoss do wait()
                    AutoFramBoss()
                end
            end)
            KillBossuse = true
            function AutoFramAllBoss()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if KillBossuse then
                        if v.Name == "Diamond [Lv. 750] [Boss]" then
                            SelectBoss = "Diamond [Lv. 750] [Boss]"
                        elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
                            SelectBoss = "Jeremy [Lv. 850] [Boss]"
                        elseif v.Name == "Fajita [Lv. 925] [Boss]" then
                            SelectBoss = "Fajita [Lv. 925] [Boss]"
                        elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                            SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
                        elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
                            SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
                        elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
                            SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
                        elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                            SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
                        elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                            SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
                        elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
                            SelectBoss = "Saber Expert [Lv. 200] [Boss]"
                        elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
                            SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
                        elseif v.Name == "Bobby [Lv. 55] [Boss]" then
                            SelectBoss = "Bobby [Lv. 55] [Boss]" 
                        elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
                            SelectBoss = "Yeti [Lv. 110] [Boss]"
                        elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
                            SelectBoss = "Mob Leader [Lv. 120] [Boss]"
                        elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
                            SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
                        elseif v.Name == "Warden [Lv. 175] [Boss]" then
                            SelectBoss = "Warden [Lv. 175] [Boss]"
                        elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
                            SelectBoss = "Chief Warden [Lv. 200] [Boss]"
                        elseif v.Name == "Swan [Lv. 225] [Boss]" then
                            SelectBoss = "Swan [Lv. 225] [Boss]"
                        elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
                            SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
                        elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
                            SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
                        elseif v.Name == "Wysper [Lv. 500] [Boss]" then
                            SelectBoss = "Wysper [Lv. 500] [Boss]"
                        elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
                            SelectBoss = "Thunder God [Lv. 575] [Boss]"
                        elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
                            SelectBoss = "Cyborg [Lv. 675] [Boss]"
                        elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                            SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
                        elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                            SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
                        elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
                        elseif v.Name == "Longma [Lv. 2000] [Boss]" then
                            SelectBoss = "Longma [Lv. 2000] [Boss]"
                        elseif v.Name == "Stone [Lv. 1550] [Boss]" then
                            SelectBoss = "Stone [Lv. 1550] [Boss]"
                        elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
                            SelectBoss = "Island Empress [Lv. 1675] [Boss]"
                        end
                    end   
                end
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if KillBossuse then
                        if v.Name == "Diamond [Lv. 750] [Boss]" then
                            SelectBoss = "Diamond [Lv. 750] [Boss]"
                        elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
                            SelectBoss = "Jeremy [Lv. 850] [Boss]"
                        elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
                            SelectBoss = "Fajita [Lv. 925] [Boss]"
                        elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                            SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
                        elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
                            SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
                        elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
                            SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
                        elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
                            SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
                        elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
                            SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
                        elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
                            SelectBoss = "Saber Expert [Lv. 200] [Boss]"
                        elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
                            SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
                        elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
                            SelectBoss = "Bobby [Lv. 55] [Boss]" 
                        elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
                            SelectBoss = "Yeti [Lv. 110] [Boss]"
                        elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
                            SelectBoss = "Mob Leader [Lv. 120] [Boss]"
                        elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
                            SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
                        elseif v.Name == "Warden [Lv. 175] [Boss]" then
                            SelectBoss = "Warden [Lv. 175] [Boss]"
                        elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
                            SelectBoss = "Chief Warden [Lv. 200] [Boss]"
                        elseif v.Name == "Swan [Lv. 225] [Boss]"  then
                            SelectBoss = "Swan [Lv. 225] [Boss]"
                        elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
                            SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
                        elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
                            SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
                        elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
                            SelectBoss = "Wysper [Lv. 500] [Boss]"
                        elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
                            SelectBoss = "Thunder God [Lv. 575] [Boss]"
                        elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
                            SelectBoss = "Cyborg [Lv. 675] [Boss]"
                        elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                            SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
                        elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                            SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
                        elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
                        elseif v.Name == "Longma [Lv. 2000] [Boss]" then
                            SelectBoss = "Longma [Lv. 2000] [Boss]"
                        elseif v.Name == "Stone [Lv. 1550] [Boss]" then
                            SelectBoss = "Stone [Lv. 1550] [Boss]"
                        elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
                            SelectBoss = "Island Empress [Lv. 1675] [Boss]"
                        end
                    end   
                end
                KillBossuse = false
                if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                CheckQuestBoss()
                                totarget(CFrameBoss)
                                wait(1)
                                repeat
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        if HideHitBlox then
                                            v.HumanoidRootPart.Transparency = 0.75
                                        else
                                            v.HumanoidRootPart.Transparency = 1
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
                                KillBossuse = true
                            end
                        end
                    else
                        CheckQuestBoss()
                        totarget(CFrameBoss)
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                CheckQuestBoss()
                                totarget(CFrameBoss)
                                wait(1)
                                repeat
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        if HideHitBlox then
                                            v.HumanoidRootPart.Transparency = 0.75
                                        else
                                            v.HumanoidRootPart.Transparency = 1
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
                                KillBossuse = true
                            end
                        end
                    else
                        CheckQuestBoss()
                        totarget(CFrameBoss)
                    end
                end
                KillBossuse = true
            end
        
            function AutoFramAllBoss2()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if KillBossuse then
                        if v.Name == "Diamond [Lv. 750] [Boss]" then
                            SelectBoss = "Diamond [Lv. 750] [Boss]"
                        elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
                            SelectBoss = "Jeremy [Lv. 850] [Boss]"
                        elseif v.Name == "Fajita [Lv. 925] [Boss]" then
                            SelectBoss = "Fajita [Lv. 925] [Boss]"
                        elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                            SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
                        elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
                            SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
                        elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
                            SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
                        elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                            SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
                        elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                            SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
                        elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
                            SelectBoss = "Saber Expert [Lv. 200] [Boss]"
                        elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
                            SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
                        elseif v.Name == "Bobby [Lv. 55] [Boss]" then
                            SelectBoss = "Bobby [Lv. 55] [Boss]" 
                        elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
                            SelectBoss = "Yeti [Lv. 110] [Boss]"
                        elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
                            SelectBoss = "Mob Leader [Lv. 120] [Boss]"
                        elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
                            SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
                        elseif v.Name == "Warden [Lv. 175] [Boss]" then
                            SelectBoss = "Warden [Lv. 175] [Boss]"
                        elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
                            SelectBoss = "Chief Warden [Lv. 200] [Boss]"
                        elseif v.Name == "Swan [Lv. 225] [Boss]" then
                            SelectBoss = "Swan [Lv. 225] [Boss]"
                        elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
                            SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
                        elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
                            SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
                        elseif v.Name == "Wysper [Lv. 500] [Boss]" then
                            SelectBoss = "Wysper [Lv. 500] [Boss]"
                        elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
                            SelectBoss = "Thunder God [Lv. 575] [Boss]"
                        elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
                            SelectBoss = "Cyborg [Lv. 675] [Boss]"
                        elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                            SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
                        elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                            SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
                        elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
                        elseif v.Name == "Longma [Lv. 2000] [Boss]" then
                            SelectBoss = "Longma [Lv. 2000] [Boss]"
                        elseif v.Name == "Stone [Lv. 1550] [Boss]" then
                            SelectBoss = "Stone [Lv. 1550] [Boss]"
                        elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
                            SelectBoss = "Island Empress [Lv. 1675] [Boss]"
                        end
                    end   
                end
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if KillBossuse then
                        if v.Name == "Diamond [Lv. 750] [Boss]" then
                            SelectBoss = "Diamond [Lv. 750] [Boss]"
                        elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
                            SelectBoss = "Jeremy [Lv. 850] [Boss]"
                        elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
                            SelectBoss = "Fajita [Lv. 925] [Boss]"
                        elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                            SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
                        elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
                            SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
                        elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
                            SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
                        elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
                            SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
                        elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
                            SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
                        elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
                            SelectBoss = "Saber Expert [Lv. 200] [Boss]"
                        elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
                            SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
                        elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
                            SelectBoss = "Bobby [Lv. 55] [Boss]" 
                        elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
                            SelectBoss = "Yeti [Lv. 110] [Boss]"
                        elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
                            SelectBoss = "Mob Leader [Lv. 120] [Boss]"
                        elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
                            SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
                        elseif v.Name == "Warden [Lv. 175] [Boss]" then
                            SelectBoss = "Warden [Lv. 175] [Boss]"
                        elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
                            SelectBoss = "Chief Warden [Lv. 200] [Boss]"
                        elseif v.Name == "Swan [Lv. 225] [Boss]"  then
                            SelectBoss = "Swan [Lv. 225] [Boss]"
                        elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
                            SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
                        elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
                            SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
                        elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
                            SelectBoss = "Wysper [Lv. 500] [Boss]"
                        elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
                            SelectBoss = "Thunder God [Lv. 575] [Boss]"
                        elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
                            SelectBoss = "Cyborg [Lv. 675] [Boss]"
                        elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                            SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
                        elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                            SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
                        elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
                        elseif v.Name == "Longma [Lv. 2000] [Boss]" then
                            SelectBoss = "Longma [Lv. 2000] [Boss]"
                        elseif v.Name == "Stone [Lv. 1550] [Boss]" then
                            SelectBoss = "Stone [Lv. 1550] [Boss]"
                        elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
                            SelectBoss = "Island Empress [Lv. 1675] [Boss]"
                        end
                    end   
                end
                KillBossuse = false
                if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                CheckQuestBoss()
                                totarget(CFrameBoss)
                                wait(1)
                                repeat
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
                                KillBossuse = true
                            end
                        end
                    else
                        CheckQuestBoss()
                        totarget(CFrameBoss)
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                                CheckQuestBoss()
                                totarget(CFrameBoss)
                                wait(1)
                                repeat
                                    pcall(function() wait() 
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeaponBoss)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end)
                                until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
                                KillBossuse = true
                            end
                        end
                    else
                        CheckQuestBoss()
                        totarget(CFrameBoss)
                    end
                end
                KillBossuse = true
            end
        
            game:GetService("RunService").Heartbeat:Connect(
            function()
                if _G.AllBossNoHop or _G.AllBossHop then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            end)
        
            tab:Toggle("Auto Farm All Boss",_G.AllBossNoHop,function(Value)
                _G.AllBossNoHop = Value
            end)
        tab1:Label("Auto Stats")
        
            stat:Toggle("Stats Kaitun",_G.Kaitun,function(t)
                _G.Kaitun = t
            end)
            PointStatsd = 3
            stat:Slider("Point",false,false,0,100,3,1,PointStatsd,function(e)
                PointStatsd = e
            end)

            stat:Line()

            stat:Label("Server Horu")

            Time = stat:Label("Server Time")
            local function UpdateTime()
                local GameTime = math.floor(workspace.DistributedGameTime+0.5)
                local Hour = math.floor(GameTime/(60^2))%24
                local Minute = math.floor(GameTime/(60^1))%60
                local Second = math.floor(GameTime/(60^0))%60
                Time:Change("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
            end
            spawn(function()
                while true do
                    UpdateTime()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)

            stat:Line()
            stat:Label("Ping")


        
            Ping = stat:Label("Ping")
            local function UpdatePing()
                Ping:Change(""..game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue().. " ms")
            end
            spawn(function()
                while true do
                    UpdatePing()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)

            stat:Line()

            stat:Label("Race")

            Race = stat:Label("Race")
            local function UpdateRace()
                Race:Change("".. game:GetService("Players")["LocalPlayer"].Data.Race.Value)
            end
            spawn(function()
                while true do
                    UpdateRace()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)

            
            tab1:Line()
            _G.Melee = false
            local Meleelock = tab1:Toggle("Melee",_G.Melee,function(Value)
                _G.Melee = Value    
            end)
            _G.Defense = false
            local DefenseLock = tab1:Toggle("Defense",_G.Defense,function(value)
                _G.Defense = value
            end)
        
            _G.Sword = false
            local SwordLock = tab1:Toggle("Sword",_G.Sword,function(value)
                _G.Sword = value
            end)
            _G.Gun = false
            local GunLock = tab1:Toggle("Gun",_G.Gun,function(value)
                _G.Gun = value
            end)
            _G.Fruit = false
            local FruitLock = tab1:Toggle("Devil Fruit",_G.Fruit,function(value)
                _G.Fruit = value
            end)
            PointStats = 1
            tab1:Slider("Point",false,false,1,100,1,1,PointStats,function(t)
                PointStats = t
            end)
            spawn(function()
                while wait() do
                    if game.Players.localPlayer.Data.Points.Value >= PointStats then
                        if _G.Melee then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Melee",
                                [3] = PointStats
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                        if _G.Defense then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Defense",
                                [3] = PointStats
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                        if _G.Sword then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Sword",
                                [3] = PointStats
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                        if _G.Gun then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Gun",
                                [3] = PointStats
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                        if _G.Fruit then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Demon Fruit",
                                [3] = PointStats
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                end
            end)

            tab1:Toggle("Max Point",false,function(value)
                _G.MaxPoint = value
            end)

            spawn(function()
                while wait(.1) do
                    pcall(function()
                        if _G.Kaitun then
                            PointStats = game:GetService("Players").LocalPlayer.Data.Points.Value
                            if OldWorld or world1 then
                                _G.Melee = true
                            else
                                _G.Defense = true
                            end
                        end
                        if _G.MaxPoint then
                            PointStats = game:GetService("Players").LocalPlayer.Data.Points.Value
                        end
                        if _G.Melee then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee", PointStats)
                        end
                        if _G.Defense then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense", PointStats)
                        end
                        if _G.Gun then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun", PointStats)
                        end
                        if _G.Sword then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword", PointStats)
                        end
                        if _G.Fruit then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit", PointStats)
                        end
                    end)
                end
            end)    

            tab2:Label("Combat")
            PlayerName = {}
            for i,v in pairs(game.Players:GetChildren()) do  
                table.insert(PlayerName ,v.Name)
            end
            SelectedKillPlayer = ""
            local Player = tab2:Drop("Selected Player",false,PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
                SelectedKillPlayer = plys
                SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
            end)
            tab2:Button("Refrsh Player",function()
                PlayerName = {}
                Player:Clear()
                for i,v in pairs(game.Players:GetChildren()) do  
                    Player:Add(v.Name)
                end
            end)
            game:GetService("RunService").Heartbeat:Connect(
            function()
                if KillPlayer then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
            )

            tab2:Button("RUOK Mode",function()
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
                
                local a = Instance.new("Part",game:GetService("Workspace"))
                a.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                a.Anchored = true
                a.Size = Vector3.new(20,10,3)
                a.BrickColor = BrickColor.new("Pastel Blue")
                wait(1)
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                wait(1.5)
                a:Destroy()
                end)
        
            
            tab2:Toggle("Kill Player ( Gun )",false,function(bool)
                KillPlayer = bool
                KillPlayer = bool
                local args = {
                    [1] = "EnablePvp"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                EquipWeapon(_G.SelectWeaponPlayer)				   
                if KillPlayer == false then
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                end
                while KillPlayer do wait()
                    totarget(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end
            end)


            ------ Kill no spawn
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
            for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end

            spawn(function()
                while wait() do
                if KillPlayer then
                        local KillPlayer = Instance.new('Part',workspace)
                        KillPlayer.Name = "KillPlayer"
                        KillPlayer.CanCollide = true
                        KillPlayer.Anchored = true
                        KillPlayer.Size = Vector3.new(30,0,30)
                        KillPlayer.Transparency = 1
                        game:GetService("Workspace")["KillPlayer"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                    end
                end
            end)



            tab2:Toggle("Kill Player (bypass)",false,function(bool)
                KillPlayer = bool
                KillPlayer = bool
                local args = {
                    [1] = "EnablePvp"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                EquipWeapon(_G.SelectWeaponPlayer)				   
                if KillPlayer == false then
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                end
                while KillPlayer do wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end
            end)

            tab2:Toggle("AimbotGun(Kill Player) ",false,function(bool)
                Aimbot = bool
            end)
            local lp = game:GetService('Players').LocalPlayer
            local mouse = lp:GetMouse()
            mouse.Button1Down:Connect(function()
                if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeaponPlayer) then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponPlayer].RemoteFunctionShoot:InvokeServer(unpack(args))
                end 
            end)
    -----------------------------------------------------------------------------------------------------------------------------------------------

        
            tab2:Toggle("Spectate Player",false,function(bool)
                Sp = bool
                local plr1 = game.Players.LocalPlayer.Character.Humanoid
                local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
                repeat wait(.1)
                    game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
                until Sp == false 
                game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            end)

            tab2:Toggle("Safe Mode", false, function(vu)
                SafeMode = vu
                totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    if SafeMode or PlayerHunt or KillPlayer or AutoRainbow or AutoCitizen or AutoFarmBoss or FarmAllBoss or Elite or AutoThird or AutoBartilo or AutoRengoku or Auto_Bone or AutoEcto or AutoFarmObservation or Auto_Farm or FarmMasteryGun or FarmMasteryFruit or _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop or _G.AutoDonSwan_Hop or _G.Pole_Hop or Core or noclip or AutoEvoRace or TPChest or NextIsland or RaidSuperhuman or _G.AutoRaid or AutoFarmBoss or SelectFarm or Clip or HolyTorch or AutoFarmSelectMonster or AutoLowRaid then
                        if not game:GetService("Workspace"):FindFirstChild("HUMHEE") then
                            local HUMHEE = Instance.new("Part")
                            HUMHEE.Name = "HUMHEE"
                            HUMHEE.Parent = game.Workspace
                            HUMHEE.Anchored = true
                            HUMHEE.Transparency = 1
                            HUMHEE.Size = Vector3.new(30,-0.5,30)
                        elseif game:GetService("Workspace"):FindFirstChild("HUMHEE") then
                            game.Workspace["HUMHEE"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
                        end
                    else
                        if game:GetService("Workspace"):FindFirstChild("HUMHEE") then
                            game:GetService("Workspace"):FindFirstChild("HUMHEE"):Destroy()
                        end
                    end
                end)
            end)

            

            tab2:Label("Use With Kill Player")
            local SelectWeapona = tab2:Drop("Select Weapon",false,Wapon,function(Value)
                _G.SelectWeaponPlayer = Value
            end)
            tab2:Button("Refresh Weapon",function()
                SelectWeapona:Clear()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        SelectWeapona:Add(v.Name)
                    end
                end
        
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
                    if v:IsA("Tool") then
                        SelectWeapona:Add(v.Name)
                    end
                end
            end) 
            tab2:Label("local Player me")

            tab2:Toggle(
                "Walk Speed",
                nil,
                function(Value)
                    game.Players.LocalPlayer.Character.Movement.Disabled = Value
                end
            )

            local Walk Speed = tab2:Slider("Walk Speed",false,false,0, 400, 16, 16,false,function(value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value            
            end)

            local JumpPower = tab2:Slider("JumpPower",false,false,0, 400, 16, 16,false,function(value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = value            
            end)

            player:Label("Aimbot & Bounty")

            player:Toggle("Aimbot Skill",false,function(bool)
                AimbotSkill = bool
                while AimbotSkill do wait()
                pcall(function()
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                        local args = {
                        [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
                        }
                        game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                    end
                end)
                end
            end)

            player:Toggle("Aimbot Gun",false,function(bool)
                Aimbot = bool
            end)
            local lp = game:GetService('Players').LocalPlayer
            local mouse = lp:GetMouse()
            mouse.Button1Down:Connect(function()
                if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeaponPlayer) then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponPlayer].RemoteFunctionShoot:InvokeServer(unpack(args))
                end 
            end)

            player:Line()

            player:Toggle("Auto Bounty",_G.AutoFarmBounty,function(t)
                _G.AutoFarmBounty = t
            end)
        
            spawn(function()
                while wait(.1) do
                    if _G.AutoFarmBounty then
                        CombatPlayerGun()
                    end
                end
            end)
            
        
            Next = ""
            function CombatPlayerall()
                pcall(function()
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
                            game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") then
                            hpmun = v.Humanoid.Health
                            repeat
                                game:GetService("RunService").RenderStepped:Wait()
        
                                cope = v.Name
                                --  sakill1 = true
                                EquipWeapon(_G.SelectWeaponPlayer)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-17, 12)
                                --   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                Px = v.HumanoidRootPart.CFrame.X
                                Py = v.HumanoidRootPart.CFrame.Y
                                Pz = v.HumanoidRootPart.CFrame.Z
                                if _G.FightingMode == nil then
                                    local VirtualUser = game:GetService('VirtualUser')
                                    local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
        
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    game:GetService("RunService").Heartbeat:Wait()
                                    pcall(function()
                                        RUOK.activeController.timeToNextAttack = 0
                                    end)
                                else
                                    local VirtualUser = game:GetService('VirtualUser')
                                    local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
        
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    game:GetService("RunService").Heartbeat:Wait()
                                    pcall(function()
                                        RUOK.activeController.timeToNextAttack = 0
                                    end)
        
                                end
                                _G.onNext = true
                                if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
                                    if NewWorld then
        
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
                                        Hopey()
                                    elseif ThreeWorld then
        
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
                                        Hopey()
                                    end
                                end
        
                            until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.KillHop == false or
                                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
                            Next = "d"
                            sakill1 = false
                            --  pk = false
                            v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        end
                    end
                end)
            end
            
            Next = ""
            function CombatPlayerGun()
                pcall(function()
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
                            game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") then
                            hpmun = v.Humanoid.Health
                            repeat
                                game:GetService("RunService").RenderStepped:Wait()
        
                                cope = v.Name
                                --  sakill1 = true
                                EquipWeapon(_G.SelectToolWeaponGun)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                --   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                Px = v.HumanoidRootPart.CFrame.X
                                Py = v.HumanoidRootPart.CFrame.Y
                                Pz = v.HumanoidRootPart.CFrame.Z
                                if _G.FightingMode == nil then
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                else
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                _G.onNext = true
                                if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
                                    if NewWorld then
        
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
                                        Hopey()
                                    elseif ThreeWorld then
        
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
                                        Hopey()
                                    end
                                end
        
                            until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.AutoFarmBounty == false or
                                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
                            Next = "d"
                            sakill1 = false
                            --  pk = false
                            v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        end
                    end
                end)
            end
            
            local lp = game:GetService('Players').LocalPlayer
            local mouse = lp:GetMouse()
            mouse.Button1Down:Connect(function()
                if _G.AutoFarmBounty and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun) then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                end 
            end)
        
            function Hopey()
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport() 
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
                Teleport()
            end
        
            spawn(function()
                while wait(6) do
                    if _G.onNext then
                        pcall(function()
                            for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                if v.Name == cope and v.Humanoid.Health == v.Humanoid.MaxHealth or v.Humanoid.Health > hpmun and
                                    v.Name == cope then
        
                                    Next = "true"
                                end
                            end
                        end)
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    if _G.KillHop then
                        pcall(function()
                            wait(45)
                            repeat wait()
                                _G.KillHop = false
                                wait(.5)
                                if NewWorld then  
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
                                elseif ThreeWorld then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
                                end
                                if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
                                    Hopey()
                                end
                            until nil
                        end)
                    end
                end
            end)
            
                spawn(function()
                while wait() do
                    if _G.AutoFarmBounty then
                        pcall(function()
                            wait(45)
                            repeat wait()
                                _G.KillHop = false
                                wait(.5)
                                if NewWorld then  
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
                                elseif ThreeWorld then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
                                end
                                if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
                                    Hopey()
                                end
                            until nil
                        end)
                    end
                end
            end)


            player:Line()

        tab3:Label("Teleport")
            tab3:Toggle("Ctrl + Click = TP",false,function(vu)
                CTRL = vu
            end)
            local Plr = game:GetService("Players").LocalPlayer
            local Mouse = Plr:GetMouse()
            Mouse.Button1Down:connect(
                function()
                    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                        return
                    end
                    if not Mouse.Target then
                        return
                    end
                    if CTRL then
                        Plr.Character:MoveTo(Mouse.Hit.p)
                    end
                end
            )

            tab3:Toggle("Ctrl + Click = Tween",false,function(vu)
                getgenv().Enabled = vu 
            
                local speed = 200
                local bodyvelocityenabled = true
            
                local UIS = game:GetService("UserInputService")
                local Plr = game.Players.LocalPlayer
                local Mouse = Plr:GetMouse()
            
                function To(position)
                    local Chr = Plr.Character
                    if Chr ~= nil then
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character
                        local hm = char.HumanoidRootPart
                        local dist = (hm.Position - Mouse.Hit.p).magnitude
                        local tweenspeed = dist/tonumber(speed)
                        local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
                        local tp = {CFrame = CFrame.new(position)}
                        ts:Create(hm, ti, tp):Play()
                        if bodyvelocityenabled == true then
                            local bv = Instance.new("BodyVelocity")
                            bv.Parent = hm
                            bv.MaxForce = Vector3.new(100000,100000,100000)
                            bv.Velocity = Vector3.new(0,0,0)
                            wait(tonumber(tweenspeed))
                            bv:Destroy()
                        end
                    end
                end
            
            
                UIS.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Enabled then
                        To(Mouse.Hit.p)
                    end
                end)
            end)
            local Plr = game:GetService("Players").LocalPlayer
            local Mouse = Plr:GetMouse()
            Mouse.Button1Down:connect(function()
                if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                    return
                end
                if not Mouse.Target then
                    return
                end
                if CTRL then
                    Plr.Character:MoveTo(Mouse.Hit.p)
                end
            end)

            if NewWorld or NewWorld or ThreeWorld  then
                tab3:Button("Teleport To Old World",function()
                    local args = {
                        [1] = "TravelMain" -- OLD WORLD to NEW WORLD
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
            end
            if OldWorld or ThreeWorld then
                tab3:Button("Teleport To Second Sea",function()
                    local args = {
                        [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
            end
            if NewWorld or OldWorld then
                tab3:Button("Teleport To Thrid Sea",function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end)
            end
            if NewWorld or ThreeWorld then
                tab3:Button("Teleport to SeaBeasts",function()
                    for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") then
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,100,1))
                        end
                    end
                end)
            end
            tab3:Label("Teleport Island")
            if NewWorld then
                tab3:Button("Stop Tween", function()
                    Clip = false
                    totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end)
                tab3:Button("Dock",function()
                    totarget(CFrame.new(82.9490662, 18.0710983, 2834.98779))
                end)
                tab3:Button("Kingdom of Rose",function()
                    totarget(CFrame.new(-394.983521, 118.503128, 1245.8446))
                end)
                tab3:Button("Mansion",function()
                    totarget(CFrame.new(-390.096313, 331.886475, 673.464966))
                end)
                tab3:Button("Flamingo Room",function()
                    totarget(CFrame.new(2302.19019, 15.1778421, 663.811035))
                end)
                tab3:Button("Green Zone",function()
                    totarget(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
                end)
                tab3:Button("Cafe",function()
                    totarget(CFrame.new(-385.250916, 73.0458984, 297.388397))
                end)
                tab3:Button("Factroy",function()
                    totarget(CFrame.new(430.42569, 210.019623, -432.504791))
                end)
                tab3:Button("Colosseum",function()
                    totarget(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
                end)
                tab3:Button("GraveIsland",function()
                    totarget(CFrame.new(-5411.47607, 48.8234024, -721.272522))
                end)
                tab3:Button("Snow Mountain",function()
                    totarget(CFrame.new(511.825226, 401.765198, -5380.396))
                end)
                tab3:Button("Cold Island",function()
                    totarget(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
                end)
                tab3:Button("Hot Island",function()
                    totarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                end)
                tab3:Button("Cursed Ship",function()
                    totarget(CFrame.new(902.059143, 124.752518, 33071.8125))
                end)
                tab3:Button("IceCastle",function()
                    totarget(CFrame.new(5400.40381, 28.21698, -6236.99219))
                end)
                tab3:Button("Forgotten Island",function()
                    totarget(CFrame.new(-3043.31543, 238.881271, -10191.5791))
                end)
                tab3:Button("Usoapp Island",function()
                    totarget(CFrame.new(4748.78857, 8.35370827, 2849.57959))
                end)
                tab3:Button("Minisky Island",function()
                    totarget(CFrame.new(-260.358917, 49325.7031, -35259.3008))
                end)
            end
            if OldWorld then
                tab3:Button("Stop Tween", function()
                    Clip = false
                    totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end)
                tab3:Button("Start Island",function()
                    totarget(CFrame.new(1071.2832, 16.3085976, 1426.86792))
                end)
                tab3:Button("Marine Start",function()
                    totarget(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
                end)
                tab3:Button("Middle Town",function()
                    totarget(CFrame.new(-655.824158, 7.88708115, 1436.67908))
                end)
                tab3:Button("Jungle",function()
                    totarget(CFrame.new(-1249.77222, 11.8870859, 341.356476))
                end)
                tab3:Button("Pirate Village",function()
                    totarget(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
                end)
                tab3:Button("Desert",function()
                    totarget(CFrame.new(1094.14587, 6.47350502, 4192.88721))
                end)
                tab3:Button("Frozen Village",function()
                    totarget(CFrame.new(1198.00928, 27.0074959, -1211.73376))
                end)
                tab3:Button("MarineFord",function()
                    totarget(CFrame.new(-4505.375, 20.687294, 4260.55908))
                end)
                tab3:Button("Colosseum",function()
                    totarget(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
                end)
                tab3:Button("Sky island 1 ",function()
                    totarget(CFrame.new(-4970.21875, 717.707275, -2622.35449))
                end)
                tab3:Button("Sky island 2 ",function()
                    totarget(CFrame.new(-4813.0249, 903.708557, -1912.69055))
                end)
                tab3:Button("Sky island 3 ",function()
                    totarget(CFrame.new(-7952.31006, 5545.52832, -320.704956))
                end)
                tab3:Button("Sky island 4 ",function()
                    totarget(CFrame.new(-7793.43896, 5607.22168, -2016.58362))
                end)
                tab3:Button("Prison",function()
                    totarget(CFrame.new(4854.16455, 5.68742752, 740.194641))
                end)
                tab3:Button("Magma Village",function()
                    totarget(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
                end)
                tab3:Button("UndeyWater City",function()
                    totarget(CFrame.new(61163.8516, 11.7796879, 1819.78418))
                end)
                tab3:Button("Fountain City",function()
                    totarget(CFrame.new(5132.7124, 4.53632832, 4037.8562))
                end)
                tab3:Button("House Cyborg's",function()
                    totarget(CFrame.new(6262.72559, 71.3003616, 3998.23047))
                end)
                tab3:Button("Shank's Room",function()
                    totarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                end)
                tab3:Button("Mob Island",function()
                    totarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                end)
            end   
            if ThreeWorld then
                tab3:Button("Stop Tween", function()
                    Clip = false
                    totarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end)
                tab3:Button("Port Towen",function()
                    totarget(CFrame.new(-610.309692, 57.8323097, 6436.33594))
                end)

                tab3:Button("Peanut Island",function()
                    totarget(CFrame.new(-2095.82104, 278.583313, -10116.792, 0.435701221, 2.93796685e-08, -0.90009135, -9.92336657e-10, 1, 3.21604077e-08, 0.90009135, -1.3119136e-08, 0.435701221))
                end)

                tab3:Button("Ice Cream Island",function()
                    totarget(CFrame.new(-737.148499, 408.530151, -10863.1143, 0.788067162, 5.04712361e-08, 0.615589261, -7.3823645e-09, 1, -7.25377092e-08, -0.615589261, 5.26200843e-08, 0.788067162))
                end)


                tab3:Button("Hydra Island",function()
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(5742.9599609375, 613.96917724609, -283.685546875)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                end)
                tab3:Button("Great Tree",function()
                    totarget(CFrame.new(2174.94873, 28.7312393, -6728.83154))
                end)
                tab3:Button("Castle on the Sea",function()
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-5089.6645507813, 318.50231933594, -3146.1267089844)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                end)
                tab3:Button("Floating Turtle",function()
                    totarget(CFrame.new(-10919.2998, 331.788452, -8637.57227))
                end)
                tab3:Button("Mansion",function()

                local args = {
                [1] = "requestEntrance",
                [2] = Vector3.new(-12463.602539063, 378.32705688477, -7566.0830078125)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                end)
                tab3:Button("kuyheemen",function()

                    local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-5089.60986, 316.481018, -3148.10742, -0.716968596, 1.02278594e-08, 0.697105467, -4.4688746e-09, 1, -1.92681071e-08, -0.697105467, -1.69299046e-08, -0.716968596)
                }
        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
                    end)
                tab3:Button("Secret Temple",function()
                    totarget(CFrame.new(5217.35693, 6.56511116, 1100.88159))
                end)
                tab3:Button("Friendly Arena",function()
                    totarget(CFrame.new(5220.28955, 72.8193436, -1450.86304))
                end)
                tab3:Button("Beautiful Pirate Domain",function()
                    totarget(CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
                end)
                tab3:Button("Teler Park",function()
                    totarget(CFrame.new(-9512.3623046875, 142.13258361816, 5548.845703125))
                end)
            end
            buy:Label("Event")
            buy:Toggle("Auto Random Bone",false,function(e)
                _G.RandomBone = e
            end)
        
            spawn(function()
                while wait() do
                    if _G.RandomBone then
                        local args = {
                            [1] = "Bones",
                            [2] = "Buy",
                            [3] = 1,
                            [4] = 1
                        }
        
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)

            buy:Toggle("Random Candies",false,function(Candies)
                _G.RandomCandies = Candies
            end)
        
            spawn(function()
                while wait() do
                    if _G.RandomCandies then
                    local args = {
                    [1] = "Candies",
                    [2] = "Buy",
                    [3] = 1,
                    [4] = 1
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)

        buy:Button("Race Random", function()
            local args = {
                [1] = "Candies",
                [2] = "Buy",
                [3] = 1,
                [4] = 3
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Stats Random", function()
            local args = {
                [1] = "Candies",
                [2] = "Buy",
                [3] = 1,
                [4] = 2
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Sleigh", function()
            local args = {
                [1] = "Candies",
                [2] = "Buy",
                [3] = 3,
                [4] = 3
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Santa Hat", function()
            local args = {
                [1] = "Candies",
                [2] = "Buy",
                [3] = 3,
                [4] = 2
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)





        buy:Line()

        buy:Button("Refund Stat [2500 F]", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
    end)

    buy:Button("Reroll Race [3000 F]", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
    end)

    buy:Line()

            buy:Label("Auto Buy")
            buy:Toggle("Random Devil Fruit",false,function(v)
            DevilAutoBuy = v
        end)
        spawn(function()
            while wait() do
                if DevilAutoBuy then wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end
            end
        end)
        buy:Button("Random Devil Fruit",function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
        end)

        buy:Toggle("Auto Store Fruit", false, function(vu)
            AutoStoreFruit = vu
        end)
        
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if AutoStoreFruit then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soul Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul")
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon")
                        end
                    end
                end
            end)
        end)

        buy:Toggle("Auto Drop Fruit", false, function(vu)
            Drop = vu
        end)
        
        spawn(function()
            while wait() do
                if Drop then
                    pcall(function()
                        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                EquipWeapon(v.Name)
                                SelectFruit = v.Name
                                wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                                end
                                EquipWeapon(v.Name)
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                            end
                        end
                        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                EquipWeapon(v.Name)
                                SelectFruit = v.Name
                                wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                                end
                                EquipWeapon(v.Name)
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                            end
                        end
                    end)
                end
            end
        end)

        buy:Toggle("Bring Fruit ",_G.BringFruit,function(value)
            BringFruit = value
        end)
        
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if BringFruit then
                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                if v:IsA("Tool") then
                                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    wait(.2)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                                end
                            end
                        end
                    end
                end
            end)
        end)

        buy:Line()



        buy:Button("Geppo ",function()
            local args = {
                [1] = "BuyHaki",
                [2] = "Geppo"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Buso Haki",function()
            local args = {
                [1] = "BuyHaki",
                [2] = "Buso"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Ken Haki",function()
            local args = {
                [1] = "KenTalk",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Soru",function()
            local args = {
                [1] = "BuyHaki",
                [2] = "Soru"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Line()
        buy:Label("Fighting Style")

        buy:Line()

        buy:Button("Buy all Fighting Style",function()
            local args = {
                [1] = "BuyBlackLeg"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "1"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuySuperhuman"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyDragonTalon"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyElectricClaw"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyDeathStep"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuySharkmanKarate",
                [2] = true
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "BuySharkmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Line()

        buy:Button("Black Leg",function()
            local args = {
                [1] = "BuyBlackLeg"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Electro",function()
            local args = {
                [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Fishman Karate",function()
            local args = {
                [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Dragon Claw",function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "1"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Superhuman",function()
            local args = {
                [1] = "BuySuperhuman"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Death Step",function()
            local args = {
                [1] = "BuyDeathStep"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Sharkman Karate",function()
            local args = {
                [1] = "BuySharkmanKarate",
                [2] = true
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "BuySharkmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Electric Claw",function()
            local args = {
                [1] = "BuyElectricClaw"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("DragonTalon",function()
            local args = {
                [1] = "BuyDragonTalon"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        
        buy:Line()
        buy:Label("Sword")

        buy:Line()

        buy:Button("Buy all Sword",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Bisento"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Dual-Headed Blade"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Soul Cane"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Triple Katana"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Iron Mace"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Pipe"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            local args = {
                [1] = "BuyItem",
                [2] = "Dual Katana"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Line()

        buy:Button("Bisento",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Bisento"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Dual-Headed Blade",function()
            local args = {
                [1] = "BuyItem",
                [2] = "Dual-Headed Blade"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Soul Cane",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Soul Cane"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Triple Katana",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Triple Katana"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Pipe",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Pipe"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Dual Katana",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Dual Katana"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Iron Mace",function()
            -- Script generated by SimpleSpy - credits to exx#9394

            local args = {
                [1] = "BuyItem",
                [2] = "Iron Mace"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Line()
        buy:Label("Accessories")

        buy:Button("Black Cape",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Black Cape"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Swordsman Hat",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Swordsman Hat"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Tomoe Ring",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Tomoe Ring"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Line()
        buy:Label("Ectoplasm")

        buy:Button("Race Ghoul",function()
            local args = {
                [1] = "Ectoplasm",
                [2] = "BuyCheck",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "Ectoplasm",
                [2] = "Change",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Race Cyborg",function()
            local args = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Line()
        buy:Label("Fragment")
        buy:Button("Random Race",function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Reroll",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Reset Stats",function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Refund",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)



        buy:Button("Microchip [ Raw ]",function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Microchip",
                [3] = "2"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Line()
        buy:Label("GUN")

        buy:Button("Slingshot",function()
            local args = {
                [1] = "BuyItem",
                [2] = "Slingshot"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)

        buy:Button("Musket",function()
            local args = {
                [1] = "BuyItem",
                [2] = "Musket"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        buy:Button("Refined Slingshot",function()

            local args = {
                [1] = "BuyItem",
                [2] = "Refined Slingshot"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)


        buy:Button("Cannon",function()
            local args = {
                [1] = "BuyItem",
                [2] = "Cannon"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)


        buy:Button("Bizarre Rifle",function()
            local args = {
                [1] = "Ectoplasm",
                [2] = "Buy",
                [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        spawn(function()
            while true do
                UpdateTime()
                game:GetService("RunService").RenderStepped:Wait()
            end
        end)
        Raid:Label("Raid")
        
        Raid:Toggle("Kill Aura",false,function(value)
            RaidsArua = value
        end)
        Raid:Toggle("Auto Next Island",false,function(value)
            NextIsland = value
        end)
        Raid:Toggle("Auto Awake",false,function(value)
            Awakener = value
        end)
        if NewWorld then
            Raid:Button("Teleport to Lab",function()
                totarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
        end
        if ThreeWorld then
            Raid:Button("Teleport to Lab",function()
                totarget(CFrame.new(-5017.40869, 314.844055, -2823.0127))
            end)
        end
        Raid:Button("Awakening Room",function()
            totarget(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
        spawn(function()
            while wait(.1) do
                if Awakener then
                    local args = {
                        [1] = "Awakener",
                        [2] = "Check"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "Awakener",
                        [2] = "Awaken"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)

        game:GetService("RunService").RenderStepped:Connect(function()
            if NextIsland then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)

        game:GetService("RunService").RenderStepped:Connect(function()
            if NextIsland then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)

        spawn(function()
            pcall(function()
                while game:GetService("RunService").Heartbeat:wait() do
                    if NextIsland or RaidSuperhuman or _G.AutoRaid then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,80,0))
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,80,0))
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,80,0))
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,80,0))
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,80,0))
                            end
                        elseif New_World then
                            totarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                        elseif Three_World then
                            totarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                        end
                    end
                end
            end)
        end)

        spawn(function()
            while wait() do
            if NextIsland then
                    local NextIsland = Instance.new('Part',workspace)
                    NextIsland.Name = "NextIsland"
                    NextIsland.CanCollide = true
                    NextIsland.Anchored = true
                    NextIsland.Size = Vector3.new(30,0,30)
                    NextIsland.Transparency = 1
                    game:GetService("Workspace")["NextIsland"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
                end
            end
        end)

        spawn(function()
            while wait(.1) do
                if RaidsArua then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                            pcall(function()
                                repeat wait(.1)
                                    if setsimulationradius then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CanCollide = false
                                    if v.Humanoid.Health > 0 then
                                        v.Humanoid.Health = 0 
                                    elseif v.Humanoid.Health == 0 then
                                        v.Humanoid.Health = v.Humanoid.MaxHealth
                                    else
                                        v.Humanoid.Health = 0 
                                    end
                                until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                end
            end
        end)

        Raid:Drop("Select Microchip",false,{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand"},function(t)
    _G.CHIP = t
    end)

    Raid:Toggle("Auto Raid",_G.autoraid,function(t)
    _G.autoraid = t
    end)

    Raid:Toggle("Auto Buy Chip Raid",false,function(vu)
        AutoBuychip = vu
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if AutoBuychip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
                        end
                    end
                end
            end
        end)
    end)

    game:GetService("RunService").RenderStepped:Connect(function()
    if _G.autoraid then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)

    if NewWorld then
    spawn(function()
        while wait(.1) do
            if _G.autoraid then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    end
                end

                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
                    end
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    end
                end
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                        pcall(function()
                            repeat wait(.1)
                                if setsimulationradius then
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                                v.HumanoidRootPart.Transparency = 70
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CanCollide = false
                                if v.Humanoid.Health > 0 then
                                    v.Humanoid.Health = 0 
                                elseif v.Humanoid.Health == 0 then
                                    v.Humanoid.Health = v.Humanoid.MaxHealth
                                else
                                    v.Humanoid.Health = 0 
                                end
                            until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
                spawn(function()
                    while wait() do
                        pcall(function()
                            if _G.autoraid then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end) 
                    end
                end)
                if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
                    if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then

                        totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,80,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,80,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,80,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,80,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,80,0))
                        end
                end
                local args = {
                    [1] = "Awakener",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Awakener",
                    [2] = "Awaken"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    end

    spawn(function()
        while wait() do
        if _G.autoraid then
                local KUYHEEMENKUY = Instance.new('Part',workspace)
                KUYHEEMENKUY.Name = "KUYHEEMENKUY"
                KUYHEEMENKUY.CanCollide = true
                KUYHEEMENKUY.Anchored = true
                KUYHEEMENKUY.Size = Vector3.new(30,0,30)
                KUYHEEMENKUY.Transparency = 1
                game:GetService("Workspace")["KUYHEEMENKUY"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
            end
        end
    end)

    if ThreeWorld then
    spawn(function()
        while wait(.1) do
            if _G.autoraid then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    end
                end
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
                    end
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
                        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                        pcall(function()
                            repeat wait(.1)
                                if setsimulationradius then
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                                v.HumanoidRootPart.Transparency = 70
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CanCollide = false
                                if v.Humanoid.Health > 0 then
                                    v.Humanoid.Health = 0 
                                elseif v.Humanoid.Health == 0 then
                                    v.Humanoid.Health = v.Humanoid.MaxHealth
                                else
                                    v.Humanoid.Health = 0 
                                end
                            until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
                spawn(function()
                    while wait() do
                        pcall(function()
                            if _G.autoraid then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end) 
                    end
                end)
                if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
                    if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then

                        totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,80,0))

                    elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then

                        totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,80,0))

                    elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

                        totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,80,0))

                    elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then

                        totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,80,0))

                    elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then



                    end
                end
                local args = {
                    [1] = "Awakener",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Awakener",
                    [2] = "Awaken"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    end




    Distance = 1000

    tab4:TextBox("Web Hook","Link Webhook you",function(x)
            _G.WebHook = x
        end)

        tab4:Toggle("Send Webhook",false,function(a)
            _G.Kaitun = a
        end)
        
        game:GetService("Players").LocalPlayer.Data.Level.Changed:connect(function()
            if _G.Kaitun then
                local url = tostring(_G.WebHook)
                RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)


                local data = {
                    ["content"] = "Webhook"..tostring(_G.discordId).."",
                    ["embeds"] = {
                        {
                            ["title"] = "**Webhook**",
                            ["description"] = "Username : ||".. game.Players.LocalPlayer.Name.."|| \n Level :"..game:GetService("Players").LocalPlayer.Data.Level.Value.."\n Weapon : ".. tostring(RigC.activeController.currentWeaponModel),
                            ["type"] = "rich",
                            ["color"] = tonumber(0xFF0000),
                        }
                    }
                } 
                local newdata = game:GetService("HttpService"):JSONEncode(data)

                local headers = {
                    ["content-type"] = "application/json"
                }
                request = http_request or request or HttpPost or syn.request
                local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                request(abcdef)
            end
        end)

        tab4:Line()

        tab4:Label("Music")

        tab4:TextBox("Textbox","ID Music", function(value)
            _G.Music = value
            end)
            tab4:Toggle("Playing",false, function(value)
            PlayingMusic = value
            _G.Playing = value
            end)
            tab4:Toggle("Loop",false,function(value)
            Looping = value
            end)
            tab4:Slider("Volume",true,true,0,100,10,false,VolumeMusic,VolumeMusic,function(value)
            VolumeMusic = value
            end)
            
            spawn(function()
            if PlayingMusic then
            local Song = Instance.new("Sound",game.Workspace)
            Song.Name = "MusicFunction"
            Song.SoundId = _G.Music
            Song.Playing = _G.Playing
            Song.Looped = Looping
            Song.Volume = VolumeMusic
            end
            end)

            tab4:Line()

        tab4:Toggle("SARAN", nil, function(value)
            _G.MUSIC = value
                    Music = 7244372791
                    a = Instance.new("Sound", game:GetService("Workspace"))
                    a.Name = "MUSIC_FUNCTION"
                    a.Volume = 1
                    a.Looped = false
                    a.SoundId = "rbxassetid://" .. Music
                    a.Playing = _G.MUSIC
                end)

                tab4:Toggle("2TFLOW", nil, function(value)
                    _G.MUSIC = value
                            Music = 3391276370
                            a = Instance.new("Sound", game:GetService("Workspace"))
                            a.Name = "MUSIC_FUNCTION"
                            a.Volume = 1
                            a.Looped = false
                            a.SoundId = "rbxassetid://" .. Music
                            a.Playing = _G.MUSIC
                        end)

                        tab4:Toggle("Saran 2", nil, function(value)
                            _G.MUSIC = value
                                    Music = 5970404076
                                    a = Instance.new("Sound", game:GetService("Workspace"))
                                    a.Name = "MUSIC_FUNCTION"
                                    a.Volume = 1
                                    a.Looped = false
                                    a.SoundId = "rbxassetid://" .. Music
                                    a.Playing = _G.MUSIC
                                end)

                                tab4:Toggle("Sunkissed", nil, function(value)
                                    _G.MUSIC = value
                                            Music = 6828061003
                                            a = Instance.new("Sound", game:GetService("Workspace"))
                                            a.Name = "MUSIC_FUNCTION"
                                            a.Volume = 1
                                            a.Looped = false
                                            a.SoundId = "rbxassetid://" .. Music
                                            a.Playing = _G.MUSIC
                                        end)

                                        tab4:Toggle("Saran 3", nil, function(value)
                                            _G.MUSIC = value
                                                    Music = 7192487662
                                                    a = Instance.new("Sound", game:GetService("Workspace"))
                                                    a.Name = "MUSIC_FUNCTION"
                                                    a.Volume = 1
                                                    a.Looped = false
                                                    a.SoundId = "rbxassetid://" .. Music
                                                    a.Playing = _G.MUSIC
                                                end)

                                                tab4:Toggle("Saran 4", nil, function(value)
                                                    _G.MUSIC = value
                                                            Music = 6820835116
                                                            a = Instance.new("Sound", game:GetService("Workspace"))
                                                            a.Name = "MUSIC_FUNCTION"
                                                            a.Volume = 1
                                                            a.Looped = false
                                                            a.SoundId = "rbxassetid://" .. Music
                                                            a.Playing = _G.MUSIC
                                                        end)

        
        tab4:Line()
        
        tab4:Label("Team")
            tab4:Button("Join Pirates Team",function()
                local args = {
                    [1] = "SetTeam",
                    [2] = "Pirates"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                local args = {
                    [1] = "BartiloQuestProgress"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            tab4:Button("Join Marines Team",function()
                local args = {
                    [1] = "SetTeam",
                    [2] = "Marines"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "BartiloQuestProgress"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            tab4:Label("Game")
            tab4:Button("Fruit Inventory",function()
                local args = {
                    [1] = "getInventoryFruits"
                }
        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.FruitInventory.Visible = true
            end)
        
            tab4:Button("Devil Fruit Shop",function()
                local args = {
                    [1] = "GetFruits"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
            end)
        
            tab4:Button("Inventory",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
            end)
        
            tab4:Button("Color Haki",function()
                game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
            end)
            tab4:Button("Awakening",function()
                local args = {
                    [1] = "getAwakenedAbilities"
                }
        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
            end)
        
            tab4:Button("Title Name",function()
                local args = {
                    [1] = "getTitles"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
            end)
        
            tab4:Toggle("Hide UI",false,function(value)
                Hide = value
                if Hide == true then
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Enabled = false
                elseif Hide == false then
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Enabled = true
                end
            end)
            
        
            tab4:Line()

            local ScreenGui = Instance.new("ScreenGui")
            local TextLabel = Instance.new("TextLabel")
            local UIGradient = Instance.new("UIGradient")

            ScreenGui.Parent = game.CoreGui
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            TextLabel.Parent = ScreenGui
            TextLabel.Active = true
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 121, 3)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(255, 121, 3)
            TextLabel.Position = UDim2.new(0.424812019, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 200, 0, 50)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = "Server Time"
            TextLabel.TextColor3 = Color3.fromRGB(255, 121, 3)
            TextLabel.TextSize = 25.000
            TextLabel.TextTransparency = 1
            TextLabel.TextStrokeTransparency = 300.000

            UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 72, 72)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
            UIGradient.Parent = TextLabel

            local function UpdateTime()
                local GameTime = math.floor(workspace.DistributedGameTime+0.5)
                local Hour = math.floor(GameTime/(60^2))%24
                local Minute = math.floor(GameTime/(60^1))%60
                local Second = math.floor(GameTime/(60^0))%60
                TextLabel.Text = ("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
            end

            spawn(function()
                while true do
                    UpdateTime()
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)


            tab4:Toggle("Server Time",false,function(value)
                ServerTime = value
                if ServerTime == true then
                    TextLabel.TextTransparency = 0
                elseif ServerTime == false then
                    TextLabel.TextTransparency = 1
                end
            end)


            tab4:Toggle("Bring All fruits",false,function(value)
                TPF = t
        while wait() do
            if TPF then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA ("Tool") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                    end
                end
            end
        end
    end)






















    tab4:Toggle("Invisble Mob",false,function(value)
        _G.invmob = value
        while _G.invmob do wait()
            pcall(function()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
        if v.ClassName == "MeshPart" then
        v.Transparency = 1
    end
    end
    for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
        if v.Name == "Head" then
        v.Transparency = 1
    end
    end
        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
            if v.ClassName == "Accessory" then
                v.Handle.Transparency = 1
            end
        end
        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
            if v.ClassName == "Decal" then
            v.Transparency = 1
            end
    end
    end)
    end
    end)

















        
            
            tab4:Toggle("Walk On Water",false,function(value)
                local part = Instance.new("Part",workspace)
                local RunService = game:GetService("RunService")
                part.Name = "Ez nabe"
                part.Anchored = true
                part.Size = Vector3.new(0.1,0.05,0.1)
                part.Transparency = 1
                part.CanCollide = true
                WalkWater = value
        
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        pcall(function()
                            if WalkWater == true then
                                part.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x,-4.2,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z)
                            elseif	WalkWater == false then
                                part:Destroy()
                            end
                        end)
                    end)
                end)
            end)

            tab4:Toggle("Walk on Water ice fruits",true,function(Value)
                _G.WalkWater = Value
                if _G.WalkWater == true then
                    game.Players.LocalPlayer.Data.DevilFruit.Value = ("Ice-Ice")
                elseif _G.WalkWater == false then
                    game.Players.LocalPlayer.Data.DevilFruit.Value = ("")
                end
                end)

                tab4:Toggle("No Clip (Syn x) ",false,function(value)
                    game.Players.LocalPlayer:Kick("function Not yet available.")
        end)
            

            tab4:Toggle("Fly",false,function(value)
                Fly = value
                activatefly()
            end)
        
            speedSET = 25
            local FlySpeedb = tab4:Slider("Fly Speed 25 - 500",false,false,0, 500, 25, 25,false,function(value)
                speedSET = value
            end)

            -----Fly--------
    Fly = false
    function activatefly()
        local mouse=game.Players.LocalPlayer:GetMouse''
        localplayer=game.Players.LocalPlayer
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="WEEE"
            gyro.Name = "WEEE"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed= 1
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                end
                if speed>speedSET then
                    speed=speedSET
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until not Fly
            if gyro then
                gyro:Destroy()
            end
            if pos then
                pos:Destroy()
            end
            flying = false
            localplayer.Character.Humanoid.PlatformStand=false
            speed= 0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then
                flying=false e1:disconnect() e2:disconnect() return
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
            
            local ChangeState = tab4:Drop("Select Change State Haki",false,{"0","1","2","3","4","5"},function(value)
                ChangeState2 = value
            end)
        
            tab4:Button("Change State Haki",function()
                local args = {
                    [1] = "ChangeBusoStage",
                    [2] = tonumber(ChangeState2)
                }
        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
        
            end)

            function isnil(thing)
                return (thing == nil)
            end
            local function round(n)
                return math.floor(tonumber(n) + 0.5)
            end
            Number = math.random(1, 1000000)
            function UpdateChestChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if string.find(v.Name,"Chest") then
                            if ChestESP then
                                if string.find(v.Name,"Chest") then
                                    if not v:FindFirstChild('NameEsp'..Number) then
                                        local bill = Instance.new('BillboardGui',v)
                                        bill.Name = 'NameEsp'..Number
                                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                        bill.Size = UDim2.new(1,200,1,30)
                                        bill.Adornee = v
                                        bill.AlwaysOnTop = true
                                        local name = Instance.new('TextLabel',bill)
                                        name.Font = "GothamBold"
                                        name.FontSize = "Size14"
                                        name.TextWrapped = true
                                        name.Size = UDim2.new(1,0,1,0)
                                        name.TextYAlignment = 'Top'
                                        name.BackgroundTransparency = 1
                                        name.TextStrokeTransparency = 0.5
                                        if v.Name == "Chest1" then
                                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                        if v.Name == "Chest2" then
                                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                        if v.Name == "Chest3" then
                                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                    else
                                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    end
                                end
                            else
                                if v:FindFirstChild('NameEsp'..Number) then
                                    v:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end
                    end)
                end
            end
            function UpdateDevilChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if DevilFruitESP then
                            if string.find(v.Name, "Fruit") then   
                                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Handle)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Handle
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                else
                                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                end
                            end
                        else
                            if v.Handle:FindFirstChild('NameEsp'..Number) then
                                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                            end
                        end
                    end)
                end
            end
            function UpdateFlowerChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if v.Name == "Flower2" or v.Name == "Flower1" then
                            if FlowerESP then 
                                if not v:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                    if v.Name == "Flower1" then 
                                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                                    end
                                    if v.Name == "Flower2" then
                                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                    end
                                else
                                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                            else
                                if v:FindFirstChild('NameEsp'..Number) then
                                    v:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end   
                    end)
                end
            end

            function UpdatePlayerChams()
                for i,v in pairs(game:GetService'Players':GetChildren()) do
                    pcall(function()
                        if not isnil(v.Character) then
                            if ESPPlayer then
                                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Character.Head)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Character.Head
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "SourceSansBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    if v.Team == game.Players.LocalPlayer.Team then
                                        name.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
                                    else
                                        name.TextColor3 = Color3.new(1, 0.333333, 0.498039)
                                    end
                                else
                                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                end
                            else
                                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end
                    end)
                end
            end

            if NewWorld then
                tab4:Line()            
                tab4:Button("TP Flower Red",function()
                    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "Flower2" then
                            totarget(v.CFrame)
                        end
                    end
                end)
        
                tab4:Button("TP Flower Blue",function()
                    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "Flower1" then
                            totarget(v.CFrame)
                        end
                    end
                end)
            end


            tab4:Button("TP To evo",function()
                totarget(CFrame.new(-2778.68457, 72.9661179, -3572.52563, -0.669889748, 2.12564775e-08, -0.742460608, -1.54122777e-08, 1, 4.25355964e-08, 0.742460608, 3.99371665e-08, -0.669889748))
            end)

            tab4:Button("TP evo",function()
                totarget(CFrame.new(-1993.69421, 125.49334, -71.5170288, -0.148183078, 6.42784954e-08, -0.988959968, -1.65872347e-08, 1, 6.74814373e-08, 0.988959968, 2.64037183e-08, -0.148183078))
            end)

            


            Misc:Toggle("Esp Player ",false,function(a)
                ESPPlayer = a
                while ESPPlayer do wait()
                    UpdatePlayerChams()
                end
            end)


            Misc:Toggle("ESP Chest",false,function(a)
                ChestESP = a
                while ChestESP do wait()
                    UpdateChestChams() 
                end
            end)
            Misc:Toggle("ESP Devil Fruit",false,function(a)
                DevilFruitESP = a
                while DevilFruitESP do wait()
                    UpdateDevilChams() 
                end
            end)
            Misc:Toggle("ESP Flower",false,function(a)
                FlowerESP = a
                while FlowerESP do wait()
                    UpdateFlowerChams() 
                end
            end)


            Misc:Label("Misc",0)

            Misc:Button("No Fog",function()
                spawn(function()
                    pcall(function()
                        game.Lighting.FogEnd = math.huge
                        game:GetService("Lighting").FantasySky:Destroy()
                    end)
                end)
            end)

            Misc:Button("Invisible", function()
                game.Players.LocalPlayer.Character.LowerTorso:Destroy()
            end)

            Misc:Button("Graphic", function()
                    getgenv().mode = "Autumn" -- Choose from Summer and Autumn
                    local a = game.Lighting
                    a.Ambient = Color3.fromRGB(33, 33, 33)
                    a.Brightness = 0.3
                    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
                    a.EnvironmentDiffuseScale = 0.105
                    a.EnvironmentSpecularScale = 0.522
                    a.GlobalShadows = true
                    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
                    a.ShadowSoftness = 0.04
                    a.GeographicLatitude = -15.525
                    a.ExposureCompensation = 0.75
                    local b = Instance.new("BloomEffect", a)
                    b.Enabled = true
                    b.Intensity = 0.04
                    b.Size = 1900
                    b.Threshold = 0.915
                    local c = Instance.new("ColorCorrectionEffect", a)
                    c.Brightness = 0.176
                    c.Contrast = 0.39
                    c.Enabled = true
                    c.Saturation = 0.2
                    c.TintColor = Color3.fromRGB(217, 145, 57)
                    if getgenv().mode == "Summer" then
                        c.TintColor = Color3.fromRGB(255, 220, 148)
                    elseif getgenv().mode == "Autumn" then
                        c.TintColor = Color3.fromRGB(242, 193, 79)
                    end
                    local d = Instance.new("DepthOfFieldEffect", a)
                    d.Enabled = true
                    d.FarIntensity = 0.077
                    d.FocusDistance = 21.54
                    d.InFocusRadius = 20.77
                    d.NearIntensity = 0.277
                    local e = Instance.new("ColorCorrectionEffect", a)
                    e.Brightness = 0
                    e.Contrast = -0.07
                    e.Saturation = 0
                    e.Enabled = true
                    e.TintColor = Color3.fromRGB(255, 247, 239)
                    local e2 = Instance.new("ColorCorrectionEffect", a)
                    e2.Brightness = 0.2
                    e2.Contrast = 0.45
                    e2.Saturation = -0.1
                    e2.Enabled = true
                    e2.TintColor = Color3.fromRGB(255, 255, 255)
                    local s = Instance.new("SunRaysEffect", a)
                    s.Enabled = true
                    s.Intensity = 0.01
                    s.Spread = 0.146
        end)
            
            local transparent = false -- xray
            function x(v)
                if v then
                    for _,i in pairs(workspace:GetDescendants()) do
                        if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                            i.LocalTransparencyModifier = 0.7
                        end
                    end
                else
                    for _,i in pairs(workspace:GetDescendants()) do
                        if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                            i.LocalTransparencyModifier = 0
                        end
                    end
                end
            end

            Misc:Button("Max Zoom", function()
                while wait() do
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
                    end
            end)
        
            Misc:Toggle("Xray",false,function(value)
                NoWorld = value
                if NoWorld == true then
                    transparent = true
                    x(transparent)
                elseif NoWorld == false then
                    transparent = false
                    x(transparent)
                end
            end)

            local LocalPlayer = game:GetService'Players'.LocalPlayer
        local originalstam = LocalPlayer.Character.Energy.Value
        function infinitestam()
            LocalPlayer.Character.Energy.Changed:connect(function()
                if InfinitsEnergy then
                    LocalPlayer.Character.Energy.Value = originalstam
                end 
            end)
        end
        spawn(function()
            while wait(.1) do
                if InfinitsEnergy then
                    wait(0.3)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
        nododgecool = false
        function NoDodgeCool()
            if nododgecool then
                for i,v in next, getgc() do
                    if game.Players.LocalPlayer.Character.Dodge then
                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                            for i2,v2 in next, getupvalues(v) do
                                if tostring(v2) == "0.4" then
                                    repeat wait(.1)
                                        setupvalue(v,i2,0)
                                    until not nododgecool
                                end
                            end
                        end
                    end
                end
            end
        end

    Misc:Toggle("Dodge No Cooldown",false,function(value)
            nododgecool = value
            NoDodgeCool()
        end)
    Misc:Toggle("infinitiy Energy",false,function(value)
            InfinitsEnergy = value
            originalstam = LocalPlayer.Character.Energy.value
        end)
            
        
            ---- [RainbowHaki]
            spawn(function()
                while wait() do
                    if RainbowHaki then
                        pcall(function()
                            if game.Players.LocalPlayer.Character.HasBuso then
                                for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
                                    if v.Name == "RightLowerArm_BusoLayer1" or v.Name == "RightLowerArm_BusoLayer2" or v.Name == "RightHand_BusoLayer1" or v.Name == "RightHand_BusoLayer2" or v.Name == "LeftLowerArm_BusoLayer1" or v.Name == "LeftLowerArm_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "LeftHand_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer2" or v.Name == "LeftUpperArm_BusoLayer1" or v.Name == "LeftUpperArm_BusoLayer2" or v.Name == "UpperTorso_BusoLayer1" or v.Name == "UpperTorso_BusoLayer2" or v.Name == "LowerTorso_BusoLayer1" or v.Name == "LowerTorso_BusoLayer2" or v.Name == "Head_BusoLayer1" or v.Name == "Head_BusoLayer2" or v.Name == "RightUpperLeg_BusoLayer1" or v.Name == "RightUpperLeg_BusoLayer2" or v.Name == "LeftUpperLeg_BusoLayer1" or v.Name == "LeftUpperLeg_BusoLayer2" or v.Name == "RightLowerLeg_BusoLayer1" or v.Name == "RightLowerLeg_BusoLayer2" or v.Name == "LeftLowerLeg_BusoLayer1" or v.Name == "LeftLowerLeg_BusoLayer2" or v.Name == "LeftFoot_BusoLayer1" or v.Name == "LeftFoot_BusoLayer2" or v.Name == "RightFoot_BusoLayer1" or v.Name == "RightFoot_BusoLayer2" then
                                        v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            Misc:Toggle("Rainbow Haki",false,function(value)
                RainbowHaki = value
            end)

            Misc:Toggle("Rainbow Water",false,function(value)
                RainbowWater = value
            end)
        
            Misc:Toggle("Rainbow Yoru",false,function(value)
                RainbowYoru = value
            end)



            ---- [RainbowYoru]

    spawn(function()
        while wait() do
            if RainbowYoru then
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right:GetChildren()) do
                        if v.Name == "Runes" or v.Name == "Hold" or v.Name == "Bottom" or v.Name == "Gems" or v.Name == "Wings" or v.Name == "Blade" or v.Name == "Tape" then
                            v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                            v.Material = "Neon"
                        end

                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait(1) do
            if RainbowYoru then
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle:GetChildren()) do
                        if v.Name == "Trail" then
                            v.LightEmission = 1
                        end

                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait(1) do
            if RainbowYoru then
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle.Attachment0:GetChildren()) do
                        if v.Name == "Beam" then
                            v.LightEmission = 1 v.Texture = 0 v.Width0 = 0 v.Width1 = 0
                        end

                    end
                end)
            end
        end
    end)

    ---- [RainbowWater]
    spawn(function()
        while wait() do
            if RainbowWater then
                pcall(function()
                    for i,v in pairs(game.Workspace.Camera:GetChildren()) do
                        if v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" or v.Name == "Water;" then
                            v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                        end
                    end
                end)
            end
        end
    end)


                        Misc:Line()
                        Misc:Label("Fake ")
                        Misc:TextBox("FakeBounty","Fake",function(fakeBounty)
                            game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = fakeBounty
                        end)
                        Misc:TextBox("FakeBeli","Fake",function(FakeBeli)
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value = FakeBeli
                                end)
                                Misc:TextBox("FakeLevel","Fake",function(FakeLevel)
                                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = FakeLevel
                                end)
                                Misc:TextBox("FakeExp","Fake",function(FakeExp)
                                    game:GetService("Players")["LocalPlayer"].Data.Exp.Value = FakeExp
                                end)
                                Misc:TextBox("FakeFragments","Fake",function(FakeFragments)
                                    game:GetService("Players")["Localplayer"].Data.Fragments.Value = FakeFragments
                                end)
                                Misc:Line()
                                Misc:Label("Fake Stats")
                                Misc:TextBox("FakeMelee","Fake",function(FakeMelee)
                                    game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value = FakeMelee
                                end)
                                Misc:TextBox("FakeDefense","Fake",function(FakeDefense)
                                    game:GetService("Players")["localPlayer"].Data.Stats.Defense.Level.Value = FakeDefense
                                end)
                                Misc:TextBox("FakeSword","Fake",function(FakeSword)
                                    game:GetService("Players")["LocalPlayer"].Data.Stats.Sword.Level.Value = FakeSword
                                end)
                                Misc:TextBox("FakeGun","Fake",function(FakeGun)
                                    game:GetService("Players")["LocalPlayer"].Data.Stats.Gun.Level.Value = FakeGun
                                end)
                                Misc:TextBox("FakeFruit","Fake",function(FakeFruit)
                                    game:GetService("Players")["LocalPlayer"].Data.Stats["Demon Fruit"].Level.Value = FakeFruit
                                end)

            Misc:Line()
            
            Misc:Drop("Change Race",false,{"Mink","Fishman","Skypien"},function(value)
                Changea = value
                spawn(function()
                    pcall(function()
                        while wait() do
                            game:GetService("Players")["LocalPlayer"].Data.Race.Value = Changea
                        end
                    end)
                end)
            end)

            

            
            function infAb()
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                end
                wait(.1)
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0.2,0.2)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                inf.RotSpeed = NumberRange.new(999, 9999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(360,360)
                inf.Texture = "rbxassetid://243098098"
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(222, 0, 31),Color3.fromRGB(104, 0, 15))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        
            Misc:Toggle("Inf Ability",false,function(inf)
                if inf == true then
                    infAb()
                elseif inf == false then
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                    end
                else
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                    end
                end
            end)

            
            Misc:Line("Redeem Code")
            Misc:Button("Redeem Code x2", function()

                local string_1 = "fudd10_v2";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "3BVISITS";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "UPD16";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "2BILLION";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "UPD15";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "Sub2OfficialNoobie";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "FUDD10";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "THEGREATACE";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "SUB2NOOBMASTER123";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "Sub2Daigrock";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "Axiore";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);
                
                local string_1 = "TantaiGaming ";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);
                
                local string_1 = "STRAWHATMAINE";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

            end)
            Misc:Button("Redeem ReStats Code", function()

                local string_1 = "SUB2GAMERROBOT_RESET1";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "THIRDSEA";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "1MLIKES_RESET";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

                local string_1 = "SUB2UNCLEKIZARU";
                local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
                Target:InvokeServer(string_1);

            end)

            Misc:Button("FPS Boost", function()
                if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
            if hookfunction and setreadonly then
                local mt = getrawmetatable(game)
                local old = mt.__newindex
                setreadonly(mt, false)
                local sda
                sda = hookfunction(old, function(t, k, v)
                    if k == "Material" then
                        if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
                    elseif k == "TopSurface" then v = "Smooth"
                    elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
                    elseif k == "WaterTransparency" then v = 1
                    elseif k == "GlobalShadows" then v = false end
                    return sda(t, k, v)
                end)
                setreadonly(mt, true)
            end
            local g = game
            local w = g.Workspace
            local l = g:GetService"Lighting"
            local t = w:WaitForChild"Terrain"
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 1
            l.GlobalShadows = false
            
            function change(v)
                pcall(function()
                    if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
                        pcall(function() v.Reflectance = 0 end)
                        pcall(function() v.Material = Enum.Material.Plastic end)
                        pcall(function() v.TopSurface = "Smooth" end)
                    end
                end)
            end
            
            game.DescendantAdded:Connect(function(v)
                pcall(function()
                    if v:IsA"Part" then change(v)
                    elseif v:IsA"MeshPart" then change(v)
                    elseif v:IsA"TrussPart" then change(v)
                    elseif v:IsA"UnionOperation" then change(v)
                    elseif v:IsA"CornerWedgePart" then change(v)
                    elseif v:IsA"WedgePart" then change(v) end
                end)
            end)
            for i, v in pairs(game:GetDescendants()) do
                pcall(function()
                    if v:IsA"Part" then change(v)
                    elseif v:IsA"MeshPart" then change(v)
                    elseif v:IsA"TrussPart" then change(v)
                    elseif v:IsA"UnionOperation" then change(v)
                    elseif v:IsA"CornerWedgePart" then change(v)
                    elseif v:IsA"WedgePart" then change(v) end
                end)
            end
            end)

            Misc:Button("Super FPS boost", function()
                for i,v in pairs(game.Workspace.Map:GetDescendants()) do

                    if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then

                        v:Destroy()

                    end

                end 

                for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do

                    if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then

                        v:Destroy()

                    end

                end

                for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do

                    if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then

                        v:Destroy()

                    end

                end

                local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.

                local g = game

                local w = g.Workspace

                local l = g.Lighting

                local t = w.Terrain

                t.WaterWaveSize = 0

                t.WaterWaveSpeed = 0

                t.WaterReflectance = 0

                t.WaterTransparency = 0

                l.GlobalShadows = false

                l.FogEnd = 9e9

                l.Brightness = 0

                settings().Rendering.QualityLevel = "Level01"

                for i, v in pairs(g:GetDescendants()) do

                    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then

                        v.Material = "Plastic"

                        v.Reflectance = 0

                    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then

                        v.Transparency = 1

                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then

                        v.Lifetime = NumberRange.new(0)

                    elseif v:IsA("Explosion") then

                        v.BlastPressure = 1

                        v.BlastRadius = 1

                    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then

                        v.Enabled = false

                    elseif v:IsA("MeshPart") then

                        v.Material = "Plastic"

                        v.Reflectance = 0

                        v.TextureID = 10385902758728957

                    end

                end

                for i, e in pairs(l:GetChildren()) do

                    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then

                        e.Enabled = false

                    end

                end

            end)

        function TPS(P1)
            Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 250 then
                Speed = 600
            elseif Distance < 500 then
                Speed = 400
            elseif Distance < 1000 then
                Speed = 350
            elseif Distance >= 1000 then
                Speed = 200
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P1}
            ):Play()
        end        

        function TPSA(P1)
            Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 250 then
                Speed = 600
                --wait(1.5)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = P1
            elseif Distance < 500 then
                Speed = 400
                --wait(1.5)
                --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = P1
            elseif Distance < 1000 then
                Speed = 350
                --wait(1.5)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = P1
            elseif Distance >= 1000 then
                Speed = 200
                --wait(1.5)
                --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = P1
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P1}
            ):Play()
        end     

        function TPSS(a,b)
            local Distance = (a - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 250 then
                Speed = 5000
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = b
            elseif Distance >= 250 then
                Speed = 275
                if Distance < 250 then
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = b
                end
            end
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = b}):Play()
            end

        function TP()
        local mob = game:GetService("Workspace").Enemies:GetChildren()
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            for i,v in pairs(mob) do
                for l,e in pairs(mob) do
                    if v.Name == Ms and v:FindFirstChild("Humanoid") then
                        if e.Name == Ms and e:FindFirstChild("Humanoid") then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    e.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    EquipWeapon(SelectToolWeapon)
                                    e.Humanoid.WalkSpeed = 0
                                    e.HumanoidRootPart.CanCollide = false
                                    e.HumanoidRootPart.Transparency = 1
                                    PosMon = v.HumanoidRootPart.CFrame
                                    e.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    TPS(e.HumanoidRootPart.CFrame * CFrame.new(0,55,0))
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    -- if not game:GetService("Workspace").Enemies:FindFirstChild(v.Name == Ms) then
                                    if v.Humanoid.Health == 0 or v.Humanoid.Health <= 0 then
                                        --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                        TPSA(CFrameMon)
                                    end
                                    -- end
                                else 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end

                            else
                                --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                TPSA(CFrameMon)
                            end
                        end
                    end
                end
            end
        end
        end
        function AutoClick()
        local VU = game:GetService('VirtualUser')
        local q = game.Players.LocalPlayer.PlayerGui.Main.Quest
            if q.Visible == true then
                Rig.activeController.hitboxMagnitude = 60
                Rig.activeController.increment = 3
                VU:CaptureController()
                VU:Button1Down(Vector2.new(1280, 672))
            end
        end
        spawn(function()
            while wait() do
                if _G.Set then
                pcall(function()
                    local args = {
                    [1] = "SetSpawnPoint"
                    }
        
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
                    end)
                end
            end
        end)
        
        Misc:Button("Remove Lava",function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
            for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
        end)

        Misc:Line()
        Misc:Button(
                "Rejoin Server",
                function()
                    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                end
            )
        Misc:Button(
                    "Server Hop",
                    function()
                        local PlaceID = game.PlaceId
                        local AllIDs = {}
                        local foundAnything = ""
                        local actualHour = os.date("!*t").hour
                        local Deleted = false
                        local File =
                            pcall(
                            function()
                                AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
                            end
                        )
                        if not File then
                            table.insert(AllIDs, actualHour)
                            writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                        end
                        function TPReturner()
                            local Site
                            if foundAnything == "" then
                                Site =
                                    game.HttpService:JSONDecode(
                                    game:HttpGet(
                                        "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                                    )
                                )
                            else
                                Site =
                                    game.HttpService:JSONDecode(
                                    game:HttpGet(
                                        "https://games.roblox.com/v1/games/" ..
                                            PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                                    )
                                )
                            end
                            local ID = ""
                            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                                foundAnything = Site.nextPageCursor
                            end
                            local num = 0
                            for i, v in pairs(Site.data) do
                                local Possible = true
                                ID = tostring(v.id)
                                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                                    for _, Existing in pairs(AllIDs) do
                                        if num ~= 0 then
                                            if ID == tostring(Existing) then
                                                Possible = false
                                            end
                                        else
                                            if tonumber(actualHour) ~= tonumber(Existing) then
                                                local delFile =
                                                    pcall(
                                                    function()
                                                        delfile("NotSameServers.json")
                                                        AllIDs = {}
                                                        table.insert(AllIDs, actualHour)
                                                    end
                                                )
                                            end
                                        end
                                        num = num + 1
                                    end
                                    if Possible == true then
                                        table.insert(AllIDs, ID)
                                        wait()
                                        pcall(
                                            function()
                                                writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                                                wait()
                                                game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                    PlaceID,
                                                    ID,
                                                    game.Players.LocalPlayer
                                                )
                                            end
                                        )
                                        wait(4)
                                    end
                                end
                            end
                        end

                        function Teleport()
                            while wait() do
                                pcall(
                                    function()
                                        TPReturner()
                                        if foundAnything ~= "" then
                                            TPReturner()
                                        end
                                    end
                                )
                            end
                        end

                        Teleport()
                    end
                )

                Misc:Button("Teleport To Lower Sever",function ()
                    local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                    if not _G.FailedServerID then _G.FailedServerID = {} end
            
                    local function serversearch()
                        data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
                        for _, v in pairs(data_table.data) do
                            pcall(function()
                                if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
                                    maxplayers = v.playing
                                    goodserver = v.id
                                end
                            end)
                        end
                    end
            
                    function getservers()
                        pcall(serversearch)
                        for i, v in pairs(data_table) do
                            if i == "nextPageCursor" then
                                if gamelink:find"&cursor=" then
                                    local a = gamelink:find"&cursor="
                                    local b = gamelink:sub(a)
                                    gamelink = gamelink:gsub(b, "")
                                end
                                gamelink = gamelink .. "&cursor=" .. v
                                pcall(getservers)
                            end
                        end
                    end
            
                    pcall(getservers)
                    wait()
                    if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
                    end
                    table.insert(_G.FailedServerID, goodserver)
                    game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
                end)

                spawn(function()
                    while wait() do
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if _G.FarmLevel and MagnetActive and Magnet then
                                    if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Factory Staff [Lv. 800]" then
                                            if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CFrame = PosMon
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == Ms then
                                            if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CFrame = PosMon
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        end
                                    end
                                    elseif _G.Auto_Bone and BoneMagnet and Magnet then
                                    if (v.Name == "Peanut Scout [Lv. 2075]" or v.Name == "Peanut President [Lv. 2100]" or v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 500 then 
                                        if sethiddenproperty then 
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  10000)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = MainMonBone
                                    end
                                elseif _G.AutoFarmCandy and BoneMagnet and Magnet then
                                    if (v.Name == "Peanut Scout [Lv. 2075]" or v.Name == "Peanut President [Lv. 2100]" or v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 500 then 
                                        if sethiddenproperty then 
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  10000)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = MainMonBone
                                    end
                end
                end
                end)
                end
                end)


                spawn(function()
                    while wait() do
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if _G.AutoFarm and MagnetActive and Magnet then
                                    if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Factory Staff [Lv. 800]" then
                                            if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CFrame = PosMon
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == Ms then
                                            if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CFrame = PosMon
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        end
                                    end
                                    elseif _G.AutoBone and BoneMagnet and Magnet then
                                    if (v.Name == "Peanut Scout [Lv. 2075]" or v.Name == "Peanut President [Lv. 2100]" or v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 500 then 
                                        if sethiddenproperty then 
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  10000)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = MainMonBone
                                    end
                end
                end
                end)
                end
                end)

                
