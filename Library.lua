local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local InputService = game:GetService("UserInputService")

local UILibrary ={
	["Options"] = {
		["Size"] = 0.9
	}
}

for i,v in next,game.CoreGui:GetChildren() do
	if v.Name == "Library" then
		v:Destroy()
	end
end

function UILibrary.Main(PrjName,HideKey)
	local Library = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local HideMain = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local LeftPart = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ProjectName = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local Line_2 = Instance.new("Frame")
	local Line_3 = Instance.new("Frame")
	local ButtonsTab = Instance.new("Frame")
	local List = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Ignore = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Pages = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")

	--Properties:

	Library.Name = "Library"
	Library.Parent = game.CoreGui
	Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Library
	Main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.25, 0, 0.25, 0)
	Main.Size = UDim2.new(0,725,0,450)
	Main.Visible = false

	HideMain.Name = "Main"
	HideMain.Parent = Main
	HideMain.BackgroundColor3 = Color3.fromRGB(1, 124, 255)
	HideMain.BorderSizePixel = 0
	HideMain.ClipsDescendants = true
	HideMain.Position = UDim2.new(0, 0, 0, 0)
	HideMain.Size = UDim2.new(1, 0, 1, 0)
	HideMain.ZIndex = 100
	TweenService:Create(HideMain,TweenInfo.new(0.5),{BackgroundTransparency = 0}):Play()
	wait(0.5)
	TweenService:Create(HideMain,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
	Main.Visible = true
	UICorner.Parent = Main
	UICorner.CornerRadius = UDim.new(0,8)

	local FadeBackgroundFrame = Instance.new("Frame")

	FadeBackgroundFrame.Name = "FadeBackgroundFrame"
	FadeBackgroundFrame.Parent = Main
	FadeBackgroundFrame.BackgroundColor3 = Color3.fromRGB(27,27, 27)
	FadeBackgroundFrame.BackgroundTransparency = 1.000
	FadeBackgroundFrame.BorderSizePixel = 0
	FadeBackgroundFrame.Size = UDim2.new(1, 0, 1, 0)
	FadeBackgroundFrame.ZIndex = 3

	LeftPart.Name = "LeftPart"
	LeftPart.Parent = Main
	LeftPart.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	LeftPart.BorderSizePixel = 0
	LeftPart.Size = UDim2.new(0, 218, 0, 451)

	UICorner_2.Parent = LeftPart
	UICorner_2.CornerRadius = UDim.new(0,8)

	ProjectName.Name = "ProjectName"
	ProjectName.Parent = LeftPart
	ProjectName.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	ProjectName.BackgroundTransparency = 1
	ProjectName.BorderSizePixel = 0
	ProjectName.Size = UDim2.new(0, 218, 0, 40)
	ProjectName.Font = Enum.Font.GothamBold
	ProjectName.Text = PrjName
	ProjectName.TextColor3 = Color3.fromRGB(255, 255, 255)
	ProjectName.TextSize = 20.000

	Line.Name = "Line"
	Line.Parent = ProjectName
	Line.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, 0)
	Line.Size = UDim2.new(1, 0, 0, 1)

	Line_2.Name = "Line"
	Line_2.Parent = LeftPart
	Line_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
	Line_2.BorderSizePixel = 0
	Line_2.Position = UDim2.new(0, 0, 0.182, 0)
	Line_2.Size = UDim2.new(1, 0, 0, 1)

	Line_3.Name = "Line"
	Line_3.Parent = LeftPart
	Line_3.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
	Line_3.BorderSizePixel = 0
	Line_3.Position = UDim2.new(1, 0, 0, 0)
	Line_3.Size = UDim2.new(0, 1, 1, 0)

	ButtonsTab.Name = "ButtonsTab"
	ButtonsTab.Parent = LeftPart
	ButtonsTab.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	ButtonsTab.BorderSizePixel = 0
	ButtonsTab.Position = UDim2.new(0, 0, 0.184829056, 0)
	ButtonsTab.Size = UDim2.new(0, 218, 0, 362)

	List.Name = "List"
	List.Parent = ButtonsTab
	List.Active = true
	List.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	List.BackgroundTransparency = 1.000
	List.BorderSizePixel = 0
	List.Size = UDim2.new(0.998000026, 0, 1, 0)
	List.AutomaticCanvasSize = Enum.AutomaticSize.Y
	List.ScrollBarThickness = 2
	List.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 255)
	List.ScrollBarImageTransparency = 0.5
	List.CanvasSize = UDim2.new(0,0,0,0)

	UIListLayout.Parent = List
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	Ignore.Name = "Ignore"
	Ignore.Parent = List
	Ignore.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ignore.BackgroundTransparency = 1.000
	Ignore.BorderSizePixel = 0
	Ignore.LayoutOrder = -999

	UICorner_3.Parent = ButtonsTab

	local IsMenuOpened = true

	local LastPos = Main.Position

	InputService.InputBegan:Connect(function(Input,IsTyping)
		if Input.KeyCode == Enum.KeyCode[HideKey] and not IsTyping then
			IsMenuOpened = not IsMenuOpened
			if IsMenuOpened then
				LastPos = Main.Position
				wait()
				Main:TweenPosition(UDim2.new(0.25,0,-1.5,0),"In","Quint",0.5,true)
				TweenService:Create(HideMain,TweenInfo.new(0.15),{BackgroundTransparency = 0}):Play()
			else
				Main:TweenPosition(LastPos,"Out","Quint",0.5,true)
				wait(0.25)
				TweenService:Create(HideMain,TweenInfo.new(0.15),{BackgroundTransparency = 1}):Play()
			end
		end
	end)

	local dragging
	local dragInput
	local dragStart
	local startPos
	local off = Vector3.new(0,0,0)


	local function update(input)
		local delta = input.Position - dragStart
		pcall(function()
			Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),"Out","Quad",0.1,true,nil)
		end)
	end
	Main.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	Main.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input

		end
	end)

	InputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	Pages.Name = "Pages"
	Pages.Parent = Main
	Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pages.BackgroundTransparency = 1.000
	Pages.BorderSizePixel = 0
	Pages.Position = UDim2.new(0.307838351, -4, 0, 10)
	Pages.Size = UDim2.new(0, 506, 1, -10)
	Pages.ClipsDescendants = true

	UIPageLayout.Parent = Pages
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.Out
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quint
	UIPageLayout.Padding = UDim.new(0, 25)
	UIPageLayout.TweenTime = 0
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.Animated = false

	local UISizer = Instance.new("UIScale")
	UISizer.Parent = Library
	UISizer.Scale = UILibrary["Options"]["Size"]

	local Tabs = {}
	function Tabs.Loader()
		local Circles = Instance.new("Frame")
		local obj = {}

		Circles.Name = "Circles"
		Circles.Parent = Main
		Circles.AnchorPoint = Vector2.new(0.5, 0.5)
		Circles.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
		Circles.BackgroundTransparency = 1
		Circles.BorderSizePixel = 0
		Circles.ClipsDescendants = false
		Circles.Position = UDim2.new(0.5, 0, 0.5, 0)
		Circles.Size = UDim2.new(0, 50, 0, 50)
		Circles.ZIndex = 4
		TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.1),{BackgroundTransparency = 0}):Play()

		for i = 1,4 do
			local Circle = Instance.new("Frame")
			local CircleCorner = Instance.new("UICorner")

			Circle.Name = "Circle"
			Circle.Parent = Circles
			Circle.AnchorPoint = Vector2.new(0, 0.5)
			Circle.BackgroundColor3 = Color3.fromRGB(1, 124, 255)
			Circle.BorderSizePixel = 0
			Circle.Position = UDim2.new(0, (i - 1) * 13, 0.5, 0)
			Circle.Size = UDim2.new(0, 12, 0, 12)

			CircleCorner.CornerRadius = UDim.new(0, 100)
			CircleCorner.Name = "CircleCorner"
			CircleCorner.Parent = Circle

			table.insert(obj, Circle)
		end

		spawn(function()
			for _ = 1,5 do wait(0.7)
				local el = table.remove(obj)
				table.insert(obj, 1, el)
				for i, v in pairs(obj) do
					if i == 1 then
						v:TweenSize(UDim2.new(0,12,0,12),"Out","Linear",0.15,true)
					elseif i == 4 then
						v:TweenSize(UDim2.new(0,0,0,0),"Out","Linear",0.15,true)
						wait(0.15)
						v:TweenPosition(UDim2.new(0,0,0.5,0),"Out","Quad",0)
					end
					v:TweenPosition(UDim2.new(0,i * 13,0.5,0),"Out","Quad",0.35)
					if _ == 5 then
						TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
						TweenService:Create(v,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					end
				end
			end
		end)
	end
	
	function Tabs.Nofitication(Text)


		local Nofitication = Instance.new("Frame")
		local NofiticationLabel = Instance.new("TextLabel")
		local NofiticationButton = Instance.new("TextButton")
		local NofiticationButtonCorner = Instance.new("UICorner")


		Nofitication.Name = "Nofitication"
		Nofitication.Parent = Main
		Nofitication.AnchorPoint = Vector2.new(0.5, 0.5)
		Nofitication.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Nofitication.BackgroundTransparency = 1
		Nofitication.BorderSizePixel = 0
		Nofitication.Position = UDim2.new(0.3, 0, 0.5, 0)
		Nofitication.Size = UDim2.new(0, 350, 0, 100)
		Nofitication.ZIndex = 3
		TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.3),{BackgroundTransparency = 0.5}):Play()
		TweenService:Create(Nofitication,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
		Nofitication:TweenPosition(UDim2.new(0.5,0,0.5,0),"In","Quad",0.3,true)

		NofiticationLabel.Name = "NofiticationLabel"
		NofiticationLabel.Parent = Nofitication
		NofiticationLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NofiticationLabel.BackgroundTransparency = 1.000
		NofiticationLabel.BorderSizePixel = 0
		NofiticationLabel.Position = UDim2.new(0, 0, 0.0599999987, 0)
		NofiticationLabel.Size = UDim2.new(0, 350, 0, 25)
		NofiticationLabel.Font = Enum.Font.GothamSemibold
		NofiticationLabel.Text = Text
		NofiticationLabel.TextColor3 = Color3.fromRGB(41, 127, 255)
		NofiticationLabel.TextSize = 22.000
		NofiticationLabel.TextWrapped = true
		NofiticationLabel.TextTransparency = 1
		NofiticationLabel.AutomaticSize = Enum.AutomaticSize.Y

		NofiticationButton.Name = "NofiticationButton"
		NofiticationButton.Parent = Nofitication
		NofiticationButton.AnchorPoint = Vector2.new(0.5, 0)
		NofiticationButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NofiticationButton.BackgroundTransparency = 1.000
		NofiticationButton.BorderSizePixel = 0
		NofiticationButton.Position = UDim2.new(0.5, 0, 0.560000002, 0)
		NofiticationButton.Size = UDim2.new(0, 330, 0, 36)
		NofiticationButton.AutoButtonColor = false
		NofiticationButton.Font = Enum.Font.GothamSemibold
		NofiticationButton.Text = "OK"
		NofiticationButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		NofiticationButton.TextSize = 16.000
		NofiticationButton.TextTransparency = 1
		
		NofiticationButton.MouseButton1Click:Connect(function()
			TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
			for i,v in next,Nofitication:GetDescendants() do
				pcall(function()
					TweenService:Create(Nofitication,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					Nofitication:TweenPosition(UDim2.new(0.3,0,0.5,0),"Out","Quad",0.3,true)
					TweenService:Create(v,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					TweenService:Create(v,TweenInfo.new(0.3),{TextTransparency = 1}):Play()
				end)
			end
			wait(0.5)
			Nofitication:Destroy()
		end)
		
		
		
		NofiticationButton.MouseEnter:Connect(function()
			TweenService:Create(NofiticationButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.95}):Play()
		end)
		
		NofiticationButton.MouseLeave:Connect(function()
			TweenService:Create(NofiticationButton,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
		end)
		
		NofiticationButton.MouseButton1Down:Connect(function()
			TweenService:Create(NofiticationButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.85}):Play()
		end)

		NofiticationButtonCorner.CornerRadius = UDim.new(0, 5)
		NofiticationButtonCorner.Name = "NofiticationButtonCorner"
		NofiticationButtonCorner.Parent = NofiticationButton
		
		for i,v in next,Nofitication:GetDescendants() do
			if v.ClassName == "TextButton" or v.ClassName == "TextLabel" then
				TweenService:Create(v,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
				TweenService:Create(v,TweenInfo.new(0.3),{TextTransparency = 0}):Play()
			end
		end
	end
	function Tabs.NewTab(TabName)

		local Frame = Instance.new("Frame")
		local TabLabel = Instance.new("TextLabel")
		local Elements = Instance.new("ScrollingFrame")
		local FadeFrame = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		UIListLayout.Name = "ff"
		UIListLayout.Parent = Elements
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)


		Frame.Parent = Pages
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(1, 0, 1, 0)
		Frame.Name = TabName

		TabLabel.Name = "SectionLabel"
		TabLabel.Parent = Frame
		TabLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabLabel.BackgroundTransparency = 1.000
		TabLabel.BorderSizePixel = 0
		TabLabel.Position = UDim2.new(0, 7, 0, 7)
		TabLabel.Size = UDim2.new(0, 127, 0, 18)
		TabLabel.Font = Enum.Font.GothamBold
		TabLabel.Text = TabName
		TabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabLabel.TextSize = 21
		TabLabel.TextXAlignment = Enum.TextXAlignment.Left

		Elements.Name = "Elements"
		Elements.Parent = Frame
		Elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Elements.BackgroundTransparency = 1
		Elements.BorderSizePixel = 0
		Elements.Position = UDim2.new(0.0178926438, 0, 0, 37)
		Elements.Size = UDim2.new(1, -20, 0, 385)
		Elements.CanvasSize = UDim2.new(0,0,0,0)
		Elements.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Elements.ScrollBarThickness = 2
		Elements.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 255)
		Elements.ScrollBarImageTransparency = 0.5

		FadeFrame.Name = "FadeFrame"
		FadeFrame.Parent = Frame
		FadeFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		FadeFrame.BackgroundTransparency = 0
		FadeFrame.BorderSizePixel = 0
		FadeFrame.Position = UDim2.new(0, 0, 0, 0)
		FadeFrame.Size = UDim2.new(1, 0, 1, 0)
		FadeFrame.ZIndex = 19

		local TabButton = Instance.new("TextButton")
		local TabButtonText = Instance.new("TextLabel")
		local TabCorner = Instance.new("UICorner")
		local IsTabOpened = Instance.new("BoolValue")

		IsTabOpened.Parent = TabButton
		for index,page in next,Pages:GetChildren() do
			if page.Name ~= "UIPageLayout" and (page.Name == Frame.Name and index == 2) then
				IsTabOpened.Value = true
				TweenService:Create(FadeFrame,TweenInfo.new(1.3),{BackgroundTransparency = 1}):Play()
				TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.3,BackgroundColor3 = Color3.fromRGB(1, 124, 255)}):Play()	
			elseif page.Name ~= "UIPageLayout" and (page.Name == Frame.Name and index ~= 2) then
				IsTabOpened.Value = false
			end
		end
		IsTabOpened.Name = "bd"
		--Properties:

		TabButton.Name = TabName
		TabButton.Parent = List
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.BorderSizePixel = 0
		TabButton.Position = UDim2.new(0.0412844047, 0, 0, 0)
		TabButton.Size = UDim2.new(0, 200, 0, 38)
		TabButton.AutoButtonColor = false
		TabButton.Font = Enum.Font.SourceSansSemibold
		TabButton.Text = ""
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.TextSize = 19.000

		TabButtonText.Name = "TabButtonText"
		TabButtonText.Parent = TabButton
		TabButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonText.BackgroundTransparency = 1.000
		TabButtonText.BorderSizePixel = 0
		TabButtonText.Position = UDim2.new(0.0799999982, 0, 0, 0)
		TabButtonText.Size = UDim2.new(0.920000017, 0, 1, 0)
		TabButtonText.Font = Enum.Font.SourceSansSemibold
		TabButtonText.Text = TabName
		TabButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonText.TextSize = 23.000
		TabButtonText.TextWrapped = true
		TabButtonText.TextXAlignment = Enum.TextXAlignment.Left

		TabCorner.Parent = TabButton
		TabCorner.CornerRadius = UDim.new(0,8)

		local function ReColorOtherBtns()
			for _,Button in next,List:GetDescendants() do
				if Button.Name == "bd" and Button.Parent.Name ~= TabButton.Name then
					TweenService:Create(Button.Parent,TweenInfo.new(0.1),{BackgroundTransparency = 1,BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					Button.Value = false	
				end
			end
			for _,Page in next,Pages:GetChildren() do
				if Page.Name ~= "UIPageLayout" and Page.Name ~= TabName then
					TweenService:Create(Page.FadeFrame,TweenInfo.new(0.1),{BackgroundTransparency = 0}):Play()
				end
			end

		end

		TabButton.MouseButton1Click:Connect(function()
			IsTabOpened.Value = true
			UIPageLayout:JumpTo(Frame)
			TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.3,BackgroundColor3 = Color3.fromRGB(1, 124, 255)}):Play()
			TweenService:Create(FadeFrame,TweenInfo.new(0.5),{BackgroundTransparency = 1}):Play()
			ReColorOtherBtns()
		end)

		TabButton.MouseEnter:Connect(function()
			if not IsTabOpened.Value then
				TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.96}):Play()
			else
				TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.25}):Play()
			end
		end)

		TabButton.MouseLeave:Connect(function()
			if not IsTabOpened.Value then
				TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 1}):Play()
			else
				TweenService:Create(TabButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.3}):Play()
			end
		end)

		local ElementsLib = {}

		function ElementsLib.NewSection(SectionName)
			local Section = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local SectionLabel = Instance.new("TextLabel")
			local SectionElements = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			--Properties:

			Section.Name = SectionName
			Section.Parent = Elements
			Section.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Section.BackgroundTransparency = 1
			Section.BorderSizePixel = 0
			Section.Size = UDim2.new(0, 482, 0, 18)
			Section.AutomaticSize = Enum.AutomaticSize.Y

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = SectionElements

			SectionLabel.Name = "SectionLabel"
			SectionLabel.Parent = Section
			SectionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionLabel.BackgroundTransparency = 1.000
			SectionLabel.BorderSizePixel = 0
			SectionLabel.Position = UDim2.new(0, 7, 0, 7)
			SectionLabel.Size = UDim2.new(0, 127, 0, 18)
			SectionLabel.Font = Enum.Font.GothamBold
			SectionLabel.Text = SectionName
			SectionLabel.TextColor3 = Color3.fromRGB(209, 209, 209)
			SectionLabel.TextSize = 16.000
			SectionLabel.TextXAlignment = Enum.TextXAlignment.Left

			SectionElements.Name = "SectionElements"
			SectionElements.Parent = Section
			SectionElements.BackgroundColor3 = Color3.fromRGB(30,30,30)
			SectionElements.BackgroundTransparency = 0
			SectionElements.BorderSizePixel = 0
			SectionElements.ClipsDescendants = true
			SectionElements.Position = UDim2.new(0, 7, 0, 33)
			SectionElements.Size = UDim2.new(0, 469, 0, 0)
			SectionElements.AutomaticSize = Enum.AutomaticSize.Y

			UIListLayout.Parent = SectionElements
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			local InSection = {}

			function InSection.NewToggle(ToggleText,UserFunc,defbool)

				local Toggle = Instance.new("TextButton")
				local ToggleLabel = Instance.new("TextLabel")
				local ToggleCorner = Instance.new("UICorner")
				local Checker = Instance.new("Frame")
				local CheckerCorner = Instance.new("UICorner")
				local CheckerStroke = Instance.new("UIStroke")
				local HideChecker = Instance.new("Frame")
				local HideCheckerCorner = Instance.new("UICorner")
				local DownLine = Instance.new("Frame")

				--Properties:

				Toggle.Name = ToggleText
				Toggle.Parent = SectionElements
				Toggle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.286780387, 0, 0, 0)
				Toggle.Size = UDim2.new(1, 0, 0, 40)
				Toggle.AutoButtonColor = false
				Toggle.Font = Enum.Font.SourceSans
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.TextSize = 14.000


				DownLine.Parent = Toggle
				DownLine.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				DownLine.BorderSizePixel = 0
				DownLine.Size = UDim2.new(1,0,0,1)
				DownLine.AnchorPoint = Vector2.new(0.5,0)
				DownLine.Position = UDim2.new(0.53,0,1,0)

				ToggleLabel.Name = "ToggleLabel"
				ToggleLabel.Parent = Toggle
				ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleLabel.BackgroundTransparency = 1.000
				ToggleLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
				ToggleLabel.BorderSizePixel = 0
				ToggleLabel.Position = UDim2.new(0.0500000007, 0, 0, 0)
				ToggleLabel.Size = UDim2.new(0.949999988, 0, 1, 0)
				ToggleLabel.Font = Enum.Font.GothamSemibold
				ToggleLabel.Text = ToggleText
				ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleLabel.TextSize = 16.000
				ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

				ToggleCorner.CornerRadius = UDim.new(0, 5)
				ToggleCorner.Name = "ToggleCorner"
				ToggleCorner.Parent = Toggle

				Checker.Name = "Checker"
				Checker.Parent = Toggle
				Checker.AnchorPoint = Vector2.new(0, 0.5)
				Checker.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
				Checker.BorderSizePixel = 0
				Checker.Position = UDim2.new(0.935, 0, 0.5, 0)
				Checker.Size = UDim2.new(0, 22, 0, 22)

				CheckerStroke.Parent = Checker
				CheckerStroke.Color = Color3.fromRGB(42, 42, 42)
				CheckerStroke.LineJoinMode = Enum.LineJoinMode.Round
				CheckerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				CheckerStroke.Thickness = 1.55

				CheckerCorner.CornerRadius = UDim.new(0, 5)
				CheckerCorner.Name = "CheckerCorner"
				CheckerCorner.Parent = Checker

				HideChecker.Name = "HideChecker"
				HideChecker.Parent = Checker
				HideChecker.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				HideChecker.BorderSizePixel = 0
				HideChecker.AnchorPoint = Vector2.new(0.5,0.5)
				HideChecker.Position = UDim2.new(0.5,0,0.5,0)
				local IsToggled = false
				IsToggled = defbool or false
				if not defbool then
					HideChecker.Size = UDim2.new(1, 0, 1, 0)
				else
					HideChecker.Size = UDim2.new(0, 0, 0, 0)
				end

				HideCheckerCorner.CornerRadius = UDim.new(0, 5)
				HideCheckerCorner.Name = "HideCheckerCorner"
				HideCheckerCorner.Parent = HideChecker


				Toggle.MouseButton1Click:Connect(function()
					if IsToggled then
						IsToggled = false
						HideChecker:TweenSize(UDim2.new(1,0,1,0),"Out","Sine",0.1,true)
					else
						IsToggled = true
						HideChecker:TweenSize(UDim2.new(0,0,0,0),"In","Sine",0.1,true)
					end
					spawn(function() UserFunc(IsToggled) end)
				end)

				Toggle.MouseEnter:Connect(function()
					if not IsToggled then
						HideChecker:TweenSize(UDim2.new(0,18,0,18),"Out","Sine",0.2,true)
					else
						HideChecker:TweenSize(UDim2.new(0,16,0,16),"Out","Sine",0.2,true)
					end
				end)

				Toggle.MouseLeave:Connect(function()
					if not IsToggled then
						HideChecker:TweenSize(UDim2.new(1,0,1,0),"Out","Sine",0.2,true)
					else
						HideChecker:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",0.2,true)
					end
				end)
				return Toggle;
			end

			function InSection.NewLabel(LabelText,IsScaled,LabelTextSize,LabelTextColor)
				local Label = Instance.new("TextLabel")

				Label.Name = LabelText
				Label.Parent = SectionElements
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0.0500000007, 0, 0, 0)
				Label.Size = UDim2.new(0.949999988, 0, 0, 40)
				Label.Font = Enum.Font.GothamSemibold
				Label.Text = LabelText
				Label.TextSize = LabelTextSize or 14
				Label.TextColor3 = LabelTextColor or Color3.fromRGB(255, 255, 255)
				Label.TextScaled = IsScaled or false
				Label.TextXAlignment = Enum.TextXAlignment.Left
				return Label;
			end

			function InSection.NewLabelWithComment(LabelText,CommentText,IsScaled,LabelTextSize,LabelTextColor)
				local Label = Instance.new("TextLabel")
				local DateMes = Instance.new("TextLabel")

				Label.Name = LabelText
				Label.Parent = SectionElements
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0.0500000007, 0, 0, 0)
				Label.Size = UDim2.new(0.949999988, 0, 0, 40)
				Label.Font = Enum.Font.GothamSemibold
				Label.Text = LabelText
				Label.TextSize = LabelTextSize or 14
				Label.TextColor3 = LabelTextColor or Color3.fromRGB(255, 255, 255)
				Label.TextScaled = IsScaled or false
				Label.TextXAlignment = Enum.TextXAlignment.Left
				Label.TextYAlignment = Enum.TextYAlignment.Top

				DateMes.Name = "DateMes"
				DateMes.Parent = Label
				DateMes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DateMes.BackgroundTransparency = 1.000
				DateMes.BorderSizePixel = 0
				DateMes.Position = UDim2.new(0, 0, 0.76, 0)
				DateMes.Size = UDim2.new(0.970777929, 0, -0.0263157897, 17)
				DateMes.Font = Enum.Font.GothamSemibold
				DateMes.Text = CommentText
				DateMes.TextColor3 = Color3.fromRGB(197, 197, 197)
				DateMes.TextSize = 12.000
				DateMes.TextXAlignment = Enum.TextXAlignment.Left
				return Label;
			end

			function InSection.NewSlider(SliderText,min,max,precise,UserFunc,defvalue)

				local Slider = Instance.new("TextButton")
				local Frame = Instance.new("Frame")
				local SliderLabel = Instance.new("TextLabel")
				local SliderCorner = Instance.new("UICorner")
				local Sliding = Instance.new("Frame")
				local SlidingCorner = Instance.new("UICorner")
				local Circle = Instance.new("Frame")
				local HideColor = Instance.new("Frame")
				local HideColorCorner = Instance.new("UICorner")
				local CircleCorner = Instance.new("UICorner")
				local Progress = Instance.new("Frame")
				local ProgressCorner = Instance.new("UICorner")
				local CircleStroke = Instance.new("UIStroke")
				local ValueLabel = Instance.new("TextLabel")

				--Properties:

				Slider.Name = SliderText
				Slider.Parent = SectionElements
				Slider.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.286780387, 0, 0, 0)
				Slider.Size = UDim2.new(1, 0, 0, 40)
				Slider.AutoButtonColor = false
				Slider.Font = Enum.Font.SourceSans
				Slider.Text = ""
				Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
				Slider.TextSize = 14.000

				Frame.Parent = Slider
				Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				Frame.BorderSizePixel = 0
				Frame.AnchorPoint = Vector2.new(0.5,0)
				Frame.Position = UDim2.new(0.53, 0, 1, 0)
				Frame.Size = UDim2.new(1, 0, 0, 1)

				SliderLabel.Name = "SliderLabel"
				SliderLabel.Parent = Slider
				SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderLabel.BackgroundTransparency = 1.000
				SliderLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
				SliderLabel.BorderSizePixel = 0
				SliderLabel.Position = UDim2.new(0.0500000007, 0, 0, 0)
				SliderLabel.Size = UDim2.new(0.949999988, 0, 1, 0)
				SliderLabel.Font = Enum.Font.GothamSemibold
				SliderLabel.Text = SliderText
				SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderLabel.TextSize = 16.000
				SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

				SliderCorner.CornerRadius = UDim.new(0, 5)
				SliderCorner.Name = "SliderCorner"
				SliderCorner.Parent = Slider

				Sliding.Name = "Sliding"
				Sliding.Parent = Slider
				Sliding.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				Sliding.BorderSizePixel = 0
				Sliding.Position = UDim2.new(0.58, 0, 0.421052635, 0)
				Sliding.Size = UDim2.new(0, 166, 0, 6)

				SlidingCorner.CornerRadius = UDim.new(0, 15)
				SlidingCorner.Name = "SlidingCorner"
				SlidingCorner.Parent = Sliding

				Circle.Name = "Circle"
				Circle.Parent = Progress
				Circle.AnchorPoint = Vector2.new(0, 0.5)
				Circle.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
				Circle.BorderSizePixel = 0
				Circle.Position = UDim2.new(1, 0, 0.5, 0)
				Circle.Size = UDim2.new(0, 12, 0, 12)
				Circle.ZIndex = 2

				CircleStroke.Parent = Circle
				CircleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				CircleStroke.Thickness = 2
				CircleStroke.Color = Color3.fromRGB(43,43,43)

				ValueLabel.Name = "ValueLabel"
				ValueLabel.Parent = Circle
				ValueLabel.AnchorPoint = Vector2.new(0.5, 0)
				ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueLabel.BackgroundTransparency = 1.000
				ValueLabel.BorderSizePixel = 0
				ValueLabel.Position = UDim2.new(0.5, 0, -1.49128079, 0)
				ValueLabel.Size = UDim2.new(0, 25, 0, 18)
				ValueLabel.Font = Enum.Font.GothamSemibold
				ValueLabel.Text = (precise and string.format("%.1f", tostring(defvalue))) or (math.floor(defvalue))
				ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ValueLabel.TextSize = 14.000

				HideColor.Name = "HideColor"
				HideColor.Parent = Circle
				HideColor.AnchorPoint = Vector2.new(0.5, 0.5)
				HideColor.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				HideColor.BorderSizePixel = 0
				HideColor.Position = UDim2.new(0.5, 0, 0.5, 0)
				HideColor.Size = UDim2.new(1, 1, 1, 1)
				HideColor.ZIndex = 2

				HideColorCorner.CornerRadius = UDim.new(0, 100)
				HideColorCorner.Name = "HideColorCorner"
				HideColorCorner.Parent = HideColor

				CircleCorner.CornerRadius = UDim.new(0, 100)
				CircleCorner.Name = "CircleCorner"
				CircleCorner.Parent = Circle

				Progress.Name = "Progress"
				Progress.Parent = Sliding
				Progress.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
				Progress.BorderSizePixel = 0
				Progress.Size = UDim2.new(0.5, 0, 1, 0)

				ProgressCorner.CornerRadius = UDim.new(0, 15)
				ProgressCorner.Name = "ProgressCorner"
				ProgressCorner.Parent = Progress

				local Mouse = game.Players.LocalPlayer:GetMouse()

				local function UpdateSlider(val)
					local percent = (Mouse.X - Progress.AbsolutePosition.X) / Progress.AbsoluteSize.X

					if val then
						percent = (val - min) / (max - min)
					end

					percent = math.clamp(percent, 0, 1)

					Progress:TweenSize(UDim2.new(percent, 0, 1, 0),"Out","Sine",0.3,true)
				end

				UpdateSlider(defvalue)

				local IsSliding,Dragging = false
				local RealValue = defvalue
				local value
				local function move(Pressed)
					IsSliding = true;
					local pos = UDim2.new(math.clamp((Pressed.Position.X - Sliding.AbsolutePosition.X) / Sliding.AbsoluteSize.X, 0, 1), 0, 1, 0)
					local size = UDim2.new(math.clamp((Pressed.Position.X - Sliding.AbsolutePosition.X) / Sliding.AbsoluteSize.X, 0, 1), 0, 1, 0)
					Progress:TweenSize(size, "Out", "Quart", 0.2,true);
					RealValue = (((pos.X.Scale * max) / max) * (max - min) + min)
					value = (precise and string.format("%.1f", tostring(RealValue))) or (math.floor(RealValue))
					ValueLabel.Text = tostring(value)
					UserFunc(value)
				end

				Slider.InputBegan:Connect(function(Pressed)
					if Pressed.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = true
						IsSliding = false
						move(Pressed)
					end
				end)

				Slider.InputEnded:Connect(function(Pressed)
					if Pressed.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = false
						IsSliding = false
						move(Pressed)
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(Pressed)
					if Dragging and Pressed.UserInputType == Enum.UserInputType.MouseMovement then
						move(Pressed)
					end
				end)

				Slider.MouseEnter:Connect(function()
					HideColor:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",0.2,true)
				end)

				Slider.MouseLeave:Connect(function()
					if not Dragging then
						HideColor:TweenSize(UDim2.new(1,1,1,1),"In","Sine",0.2,true)
					end
				end)
				return Slider;
			end


			function InSection.NewDropdown(placeholder,Selectables,func,IsMulti)
				local Dropdown = Instance.new("TextButton")
				local Frame = Instance.new("Frame")
				local DropdownCorner = Instance.new("UICorner")
				local DropdownBox = Instance.new("TextButton")
				local Frame_2 = Instance.new("Frame")
				local ImageLabel = Instance.new("ImageLabel")
				local DropdownList = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")
				local ignd = Instance.new("Frame")
				local ignd2 = Instance.new("Frame")
				local Tsd = Instance.new("Frame")
				local DropdownListCorner = Instance.new("UICorner")
				local DropdownListHeader = Instance.new("TextLabel")
				local DropdownListHeaderCorner = Instance.new("UICorner")

				--Properties:

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionElements
				Dropdown.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Dropdown.BorderSizePixel = 0
				Dropdown.ClipsDescendants = true
				Dropdown.Position = UDim2.new(0.286780387, 0, 0, 0)
				Dropdown.Size = UDim2.new(1, 0, 0, 40)
				Dropdown.AutoButtonColor = false
				Dropdown.Font = Enum.Font.GothamSemibold
				Dropdown.Text = ""
				Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.TextSize = 14.000

				Frame.Parent = Dropdown
				Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0, 5, 1, -1)
				Frame.Size = UDim2.new(1.10000002, 0, 0, 1)
				Frame.ZIndex = 2

				DropdownCorner.CornerRadius = UDim.new(0, 5)
				DropdownCorner.Name = "DropdownCorner"
				DropdownCorner.Parent = Dropdown

				DropdownBox.Name = "DropdownBox"
				DropdownBox.Parent = Dropdown
				DropdownBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownBox.BackgroundTransparency = 1.000
				DropdownBox.BorderSizePixel = 0
				DropdownBox.Position = UDim2.new(0.05, 0, 0, 0)
				DropdownBox.Size = UDim2.new(0.95, 0, 0, 40)
				DropdownBox.Font = Enum.Font.GothamSemibold
				DropdownBox.Text = placeholder
				DropdownBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownBox.TextSize = 15.000
				DropdownBox.TextXAlignment = Enum.TextXAlignment.Left

				Frame_2.Parent = DropdownBox
				Frame_2.AnchorPoint = Vector2.new(0.5, 0)
				Frame_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				Frame_2.BorderSizePixel = 0
				Frame_2.Position = UDim2.new(0.53, 0, 1, 0)
				Frame_2.Size = UDim2.new(1, 0, 0, 1)

				ImageLabel.Parent = DropdownBox
				ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(0.910000026, 0, 0.5, 0)
				ImageLabel.Size = UDim2.new(0, 40, 0, 35)
				ImageLabel.Image = "rbxassetid://3926305904"
				ImageLabel.ImageColor3 = Color3.fromRGB(136, 136, 136)
				ImageLabel.ImageRectOffset = Vector2.new(44, 404)
				ImageLabel.ImageRectSize = Vector2.new(36, 36)
				ImageLabel.Rotation = 90

				Tsd.Name = placeholder
				Tsd.Parent = Main
				Tsd.AnchorPoint = Vector2.new(0.5, 0.5)
				Tsd.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				Tsd.BorderSizePixel = 0
				Tsd.Position = UDim2.new(0.5, 0, 1.5, 0)
				Tsd.Size = UDim2.new(0, 360, 0, 270)
				Tsd.ZIndex = 4
				Tsd.Visible = true

				local CloseButton = Instance.new("TextButton")

				CloseButton.Name = "CloseButton"
				CloseButton.Parent = Tsd
				CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				CloseButton.BackgroundTransparency = 1.000
				CloseButton.BorderSizePixel = 0
				CloseButton.Position = UDim2.new(0.82035929, 0, 0, 0)
				CloseButton.Size = UDim2.new(0, 60, 0, 39)
				CloseButton.Font = Enum.Font.GothamSemibold
				CloseButton.Text = "Close"
				CloseButton.TextColor3 = Color3.fromRGB(0, 124, 255)
				CloseButton.TextSize = 15.000
				CloseButton.ZIndex = 4

				CloseButton.MouseButton1Click:Connect(function()
					TweenService:Create(ImageLabel,TweenInfo.new(0.3),{Rotation = 90}):Play()
					TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					Tsd:TweenPosition(UDim2.new(0.5,0,1.5,0),"Out","Quart",0.3)
				end)

				DropdownListCorner.Name = "DropdownListCorner"
				DropdownListCorner.Parent = Tsd
				DropdownListCorner.CornerRadius = UDim.new(0,5)

				DropdownListHeader.Name = "DropdownListHeader"
				DropdownListHeader.Parent = Tsd
				DropdownListHeader.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
				DropdownListHeader.BackgroundTransparency = 1
				DropdownListHeader.Size = UDim2.new(0, 334, 0, 39)
				DropdownListHeader.Font = Enum.Font.GothamSemibold
				DropdownListHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownListHeader.TextSize = 17.000
				DropdownListHeader.Text = "  " .. placeholder
				DropdownListHeader.TextXAlignment = Enum.TextXAlignment.Left

				DropdownListHeaderCorner.Name = "DropdownListHeaderCorner"
				DropdownListHeaderCorner.Parent = DropdownListHeader
				DropdownListHeaderCorner.CornerRadius = UDim.new(0,5)

				DropdownList.Name = "DropdownList"
				DropdownList.Parent = Tsd
				DropdownList.Active = true
				DropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownList.BackgroundTransparency = 1
				DropdownList.BorderSizePixel = 0
				DropdownList.Position = UDim2.new(0, 0, 0, 55)
				DropdownList.Size = UDim2.new(1, 0, 0, 210)
				DropdownList.CanvasSize = UDim2.new(0, 0, 0, 0)
				DropdownList.ScrollBarThickness = 3
				DropdownList.AutomaticCanvasSize = Enum.AutomaticSize.Y

				local DropdownLineTop = Instance.new("Frame")

				local DropdownLineBottom = Instance.new("Frame")

				DropdownLineTop.Parent = Tsd
				DropdownLineTop.AnchorPoint = Vector2.new(0.5, 0)
				DropdownLineTop.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				DropdownLineTop.BorderSizePixel = 0
				DropdownLineTop.Position = UDim2.new(0.5, 0, 0, 54)
				DropdownLineTop.Size = UDim2.new(1, 0, 0, 1)

				DropdownLineBottom.Parent = Tsd
				DropdownLineBottom.AnchorPoint = Vector2.new(0.5, 0)
				DropdownLineBottom.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				DropdownLineBottom.BorderSizePixel = 0
				DropdownLineBottom.Position = UDim2.new(0.5, 0, 0, 265)
				DropdownLineBottom.Size = UDim2.new(1, 0, 0, 1)


				UIListLayout.Parent = DropdownList
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 0)
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

				ignd.Name = "ignd"
				ignd.Parent = DropdownList
				ignd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ignd.BackgroundTransparency = 1.000
				ignd.BorderSizePixel = 0
				ignd.LayoutOrder = -999

				ignd2.Name = "ignd2"
				ignd2.Parent = DropdownList
				ignd2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ignd2.BackgroundTransparency = 1.000
				ignd2.BorderSizePixel = 0
				ignd2.LayoutOrder = 9999

				DropdownBox.MouseButton1Click:Connect(function()
					TweenService:Create(ImageLabel,TweenInfo.new(0.3),{Rotation = 180}):Play()
					TweenService:Create(FadeBackgroundFrame,TweenInfo.new(0.3),{BackgroundTransparency = 0.3}):Play()
					Tsd:TweenPosition(UDim2.new(0.5,0,0.5,0),"Out","Quart",0.3)
				end)

				local Drop = {}
				local function NewSelectable(Text,val)

					local SelectableButton = Instance.new("TextButton")
					local SecFrame = Instance.new("Frame")
					local SelectableText = Instance.new("TextLabel")
					local SelectableCorner = Instance.new("UICorner")
					local IsSelectableChoosed = Instance.new("BoolValue",SelectableButton)

					SelectableButton.Name = Text
					SelectableButton.Parent = DropdownList
					SelectableButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SelectableButton.BackgroundTransparency = 1
					SelectableButton.BorderSizePixel = 0
					SelectableButton.Position = UDim2.new(0.0412844047, 0, 0, 0)
					SelectableButton.Size = UDim2.new(1, 0, 0, 40)
					SelectableButton.AutoButtonColor = false
					SelectableButton.Font = Enum.Font.SourceSansSemibold
					SelectableButton.Text = ""
					SelectableButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					SelectableButton.TextSize = 16.000

					SelectableText.Name = "SelectableText"
					SelectableText.Parent = SelectableButton
					SelectableText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SelectableText.BackgroundTransparency = 1.000
					SelectableText.BorderSizePixel = 0
					SelectableText.Position = UDim2.new(0.0799999982, 0, 0, 0)
					SelectableText.Size = UDim2.new(0.920000017, 0, 1, 0)
					SelectableText.Font = Enum.Font.SourceSansSemibold
					SelectableText.Text = "    " .. Text
					SelectableText.TextColor3 = Color3.fromRGB(255, 255, 255)
					SelectableText.TextSize = 18.000
					SelectableText.TextWrapped = true
					SelectableText.TextXAlignment = Enum.TextXAlignment.Left

					SelectableCorner.Parent = SelectableButton
					SelectableCorner.CornerRadius = UDim.new(0,3)

					SecFrame.Parent = SelectableButton
					SecFrame.AnchorPoint = Vector2.new(0.5, 0)
					SecFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					SecFrame.BorderSizePixel = 0
					SecFrame.Position = UDim2.new(0.5, 24, 1, 0)
					SecFrame.Size = UDim2.new(1, 0, 0, 1)



					local ChoosedCircle = Instance.new("Frame")
					local InnerCircle = Instance.new("ImageButton")
					local ChoosedCircleCorner = Instance.new("UICorner")
					local ChoosedCircleStroke = Instance.new("UIStroke")

					ChoosedCircle.Name = "ChoosedCircle"
					ChoosedCircle.Parent = SelectableButton
					ChoosedCircle.AnchorPoint = Vector2.new(0,0.5)
					ChoosedCircle.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
					ChoosedCircle.BackgroundTransparency = 1.000
					ChoosedCircle.BorderSizePixel = 0
					ChoosedCircle.Position = UDim2.new(0, 5, 0.5, 0)
					ChoosedCircle.Size = UDim2.new(0, 16, 0, 16)

					InnerCircle.Name = "InnerCircle"
					InnerCircle.Parent = ChoosedCircle
					InnerCircle.AnchorPoint = Vector2.new(0.5, 0.5)
					InnerCircle.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
					InnerCircle.BackgroundTransparency = 1.000
					InnerCircle.BorderSizePixel = 0
					InnerCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
					InnerCircle.Size = UDim2.new(0, 0, 0, 0)
					InnerCircle.Image = "rbxassetid://3926305904"
					InnerCircle.ImageRectOffset = Vector2.new(204, 484)
					InnerCircle.ImageRectSize = Vector2.new(36, 36)
					InnerCircle.ImageTransparency = 0


					ChoosedCircleCorner.CornerRadius = UDim.new(0, 100)
					ChoosedCircleCorner.Name = "ChoosedCircleCorner"
					ChoosedCircleCorner.Parent = ChoosedCircle

					ChoosedCircleStroke.Parent = ChoosedCircle
					ChoosedCircleStroke.Name = "CircleStroke"
					ChoosedCircleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					ChoosedCircleStroke.LineJoinMode = Enum.LineJoinMode.Round
					ChoosedCircleStroke.Thickness = 1.3
					ChoosedCircleStroke.Transparency = 0
					ChoosedCircleStroke.Color = Color3.fromRGB(44, 44, 44)


					IsSelectableChoosed.Name = "IsChoosedVal"

					SelectableButton.MouseButton1Click:Connect(function()
						if not IsMulti then
							IsSelectableChoosed.Value = true
							spawn(function() func(Text,val) end)
							InnerCircle:TweenSize(UDim2.new(0,12,0,12),"In","Sine",0.15,true)
							TweenService:Create(ChoosedCircle,TweenInfo.new(0.15),{BackgroundTransparency = 0}):Play()
							TweenService:Create(ChoosedCircleStroke,TweenInfo.new(0.15),{Thickness = 0}):Play()
							for i,v in next,DropdownList:GetDescendants() do
								if v.Name == "IsChoosedVal" and v.Parent.Name ~= Text then
									v.Value = nil
									TweenService:Create(v.Parent.ChoosedCircle.CircleStroke,TweenInfo.new(0.15),{Thickness = 1.3}):Play()
									TweenService:Create(v.Parent.ChoosedCircle,TweenInfo.new(0.15),{BackgroundTransparency = 1}):Play()
									v.Parent.ChoosedCircle.InnerCircle:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",0.15,true)
									TweenService:Create(v.Parent,TweenInfo.new(0.25),{BackgroundTransparency = 1,BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
								end
							end
						else
							spawn(function() func(Text,IsSelectableChoosed.Value) end)
							if IsSelectableChoosed.Value then
								IsSelectableChoosed.Value = false
								InnerCircle:TweenSize(UDim2.new(0,0,0,0),"In","Sine",0.15,true)
								TweenService:Create(ChoosedCircle,TweenInfo.new(0.15),{BackgroundTransparency = 1}):Play()
								TweenService:Create(ChoosedCircleStroke,TweenInfo.new(0.15),{Thickness = 1.3}):Play()
							else
								IsSelectableChoosed.Value = true
								InnerCircle:TweenSize(UDim2.new(0,12,0,12),"In","Sine",0.15,true)
								TweenService:Create(ChoosedCircle,TweenInfo.new(0.15),{BackgroundTransparency = 0}):Play()
								TweenService:Create(ChoosedCircleStroke,TweenInfo.new(0.15),{Thickness = 0}):Play()
							end
						end
					end)

					SelectableButton.MouseEnter:Connect(function()
						TweenService:Create(SelectableButton,TweenInfo.new(0.25),{BackgroundTransparency = 0.96}):Play()
					end)

					SelectableButton.MouseLeave:Connect(function()
						TweenService:Create(SelectableButton,TweenInfo.new(0.25),{BackgroundTransparency = 1}):Play()
					end)
				end

				for _,str in next,Selectables do
					if not IsMulti then
						NewSelectable(tostring(_),str)
					else
						NewSelectable(tostring(_))
					end
				end

				function Drop.Refresh(TableToRefresh)
					print('updated')
					for i,v in next,DropdownList:GetChildren() do
						if v.ClassName ~= "UIListLayout" then
							v:Destroy()
						end
					end
					if not IsMulti then
						NewSelectable(tostring(_),str)
					else
						NewSelectable(tostring(_))
					end
				end
				return Drop;
			end
			function InSection.NewButton(btnText,func)

				local Button = Instance.new("TextButton")
				local SecFrame = Instance.new("Frame")
				local ButtonText = Instance.new("TextLabel")
				local ButtonCorner = Instance.new("UICorner")

				Button.Name = btnText
				Button.Parent = SectionElements
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0.0412844047, 0, 0, 0)
				Button.Size = UDim2.new(1, 0, 0, 40)
				Button.AutoButtonColor = false
				Button.Font = Enum.Font.SourceSansSemibold
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 19.000

				ButtonText.Name = "ButtonText"
				ButtonText.Parent = Button
				ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonText.BackgroundTransparency = 1.000
				ButtonText.BorderSizePixel = 0
				ButtonText.Position = UDim2.new(0.05,0, 0, 0)
				ButtonText.Size = UDim2.new(1, 0, 1, 0)
				ButtonText.Font = Enum.Font.SourceSansSemibold
				ButtonText.Text = btnText
				ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonText.TextSize = 18
				ButtonText.TextWrapped = true
				ButtonText.TextXAlignment = Enum.TextXAlignment.Left

				ButtonCorner.Parent = Button
				ButtonCorner.CornerRadius = UDim.new(0,3)

				SecFrame.Parent = Button
				SecFrame.AnchorPoint = Vector2.new(0.5, 0)
				SecFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				SecFrame.BorderSizePixel = 0
				SecFrame.Position = UDim2.new(0.53, 0, 1, 0)
				SecFrame.Size = UDim2.new(1, 0, 0, 1)

				local IsMouseOn = false

				Button.MouseButton1Click:Connect(function()
					spawn(function() func() end)
					if not IsMouseOn then
						TweenService:Create(Button,TweenInfo.new(0.25),{BackgroundTransparency = 1,BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					else
						TweenService:Create(Button,TweenInfo.new(0.25),{BackgroundTransparency = 0.98,BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					end
				end)

				Button.MouseButton1Down:Connect(function()
					TweenService:Create(Button,TweenInfo.new(0.25),{BackgroundTransparency = 0.3,BackgroundColor3 = Color3.fromRGB(1, 124, 255)}):Play()
				end)

				Button.MouseEnter:Connect(function()
					IsMouseOn = true
					TweenService:Create(Button,TweenInfo.new(0.25),{BackgroundTransparency = 0.98}):Play()
				end)

				Button.MouseLeave:Connect(function()
					IsMouseOn = false
					TweenService:Create(Button,TweenInfo.new(0.25),{BackgroundTransparency = 1}):Play()
				end)
			end

			local Ignore_2 = Instance.new("Frame")

			Ignore_2.Name = "ign"
			Ignore_2.Parent = SectionElements
			Ignore_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Ignore_2.Size = UDim2.new(0, 0, 0, 3)
			Ignore_2.BackgroundTransparency = 1
			Ignore_2.BorderSizePixel = 0
			Ignore_2.LayoutOrder = 9999

			local Ignore_3 = Instance.new("Frame")

			Ignore_3.Name = "ign"
			Ignore_3.Parent = SectionElements
			Ignore_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Ignore_3.Size = UDim2.new(0, 0, 0, 0)
			Ignore_3.BackgroundTransparency = 1
			Ignore_3.BorderSizePixel = 0
			Ignore_3.LayoutOrder = -9999
			return InSection;
		end
		return ElementsLib;
	end
	return Tabs;
end
return UILibrary;
