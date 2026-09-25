--========================================================
-- 🎵 MINH ANH DZ MUSIC - COMPACT FULL
--========================================================

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- XÓA BẢN CŨ
local oldGui = PlayerGui:FindFirstChild("MINH_ANH_DZ_MUSIC")
if oldGui then oldGui:Destroy() end

local oldSound = SoundService:FindFirstChild("MINH_ANH_DZ_SOUND")
if oldSound then oldSound:Destroy() end

--========================================================
-- 🎵 NHẠC
--========================================================

local MUSIC = {
	{"Quốc Ca Việt Nam","1845922899"},
	{"See Tình","121242950842428"},
	{"Ai Đưa Em Về","110919391228823"},
	{"Anh Cứ Đi Đi","103475172398501"},
	{"Ngày Em Đẹp Nhất","88813570339536"},
	{"Mất Anh Rồi","118574601343022"},
	{"Người Đến Sau","114580872442958"},
	{"Mưa Đợi Chờ","82627558368623"},
	{"Chạy Về Với Anh","127667093795280"},
	{"Khuê Mộc Lan","98361989582185"},
	{"Chỉ Còn Là Giấc Mơ","121051113937228"},
	{"Phố Cũ Còn Anh","107810773290624"},
	{"Lạc Chốn Hồng Trần","116260601379194"},
	{"Gió Nổi Lên","89965851084527"},
	{"Trái Đất Yêu Mặt Trời","140553267266985"},
	{"Vạn Vật Thay Đổi","108477308631109"},
	{"Chuyện Nàng Trinh Nữ Tên Thi","119526323504077"},
	{"Tinh Vệ","134140709844049"},
	{"Trả Lại Cho Anh","110396752508363"},
	{"Cứ Thế Mong Chờ","73423580532746"},
	{"Tuyển Vợ","139968910103444"},
	{"2 Phút Hơn","124166975687737"},
	{"Anh Là Cmn Địch","110404768256690"},
	{"Chữ Nghĩa Chữ Tiền","100551543792666"},
	{"Cùng Anh","71716020610625"},
	{"DJ Hối Hận Trong Anh","80415307715259"},
	{"Thế Gian Xoay Vòng","113675312413032"},
	{"Phía Sau Một Cô Gái","109743636792463"},
	{"Katy Katy","95300067259927"},
	{"Sóng Và Gió","90113853563664"},
	{"Chill Việt Nam","139561041840996"},
	{"DJ Cố Giang Tình","103038059531764"},
	{"CMW-2008 EIKAYY","94035074626747"},
}

--========================================================
-- GUI
--========================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "MINH_ANH_DZ_MUSIC"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = PlayerGui

--========================================================
-- SOUND
--========================================================

local Sound = Instance.new("Sound")
Sound.Name = "MINH_ANH_DZ_SOUND"
Sound.Volume = 0.7
Sound.Parent = SoundService

--========================================================
-- MAIN NHỎ HƠN
--========================================================

local Main = Instance.new("Frame")
Main.Name = "MusicMenu"
Main.Size = UDim2.fromOffset(300,390)
Main.Position = UDim2.new(0.5,-150,0.5,-195)
Main.BackgroundColor3 = Color3.fromRGB(28,28,40)
Main.BorderSizePixel = 0
Main.Parent = Gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,12)
MainCorner.Parent = Main

--========================================================
-- HEADER
--========================================================

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1,0,0,48)
Header.BackgroundColor3 = Color3.fromRGB(92,60,205)
Header.BorderSizePixel = 0
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0,12)
HeaderCorner.Parent = Header

--========================================================
-- TIÊU ĐỀ
--========================================================

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,-100,1,0)
Title.Position = UDim2.fromOffset(10,0)
Title.BackgroundTransparency = 1
Title.Text = "🎵 MINH ANH DZ"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextSize = 16
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

--========================================================
-- ➖ NÚT THU NHỎ
--========================================================

local Minimize = Instance.new("TextButton")
Minimize.Name = "MinimizeButton"
Minimize.Size = UDim2.fromOffset(32,32)
Minimize.Position = UDim2.new(1,-78,0,8)
Minimize.BackgroundColor3 = Color3.fromRGB(70,45,160)
Minimize.Text = "−"
Minimize.TextColor3 = Color3.new(1,1,1)
Minimize.TextSize = 22
Minimize.Font = Enum.Font.GothamBold
Minimize.AutoButtonColor = true
Minimize.Parent = Header

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(1,0)
MinCorner.Parent = Minimize

--========================================================
-- ❌ X
--========================================================

local Close = Instance.new("TextButton")
Close.Name = "CloseButton"
Close.Size = UDim2.fromOffset(32,32)
Close.Position = UDim2.new(1,-40,0,8)
Close.BackgroundColor3 = Color3.fromRGB(190,50,60)
Close.Text = "X"
Close.TextColor3 = Color3.new(1,1,1)
Close.TextSize = 15
Close.Font = Enum.Font.GothamBold
Close.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1,0)
CloseCorner.Parent = Close

--========================================================
-- ĐANG PHÁT
--========================================================

local Now = Instance.new("TextLabel")
Now.Size = UDim2.new(1,-16,0,38)
Now.Position = UDim2.fromOffset(8,56)
Now.BackgroundColor3 = Color3.fromRGB(45,45,60)
Now.Text = "🎵 Chưa phát nhạc"
Now.TextColor3 = Color3.new(1,1,1)
Now.TextSize = 12
Now.Font = Enum.Font.Gotham
Now.Parent = Main

local NowCorner = Instance.new("UICorner")
NowCorner.CornerRadius = UDim.new(0,8)
NowCorner.Parent = Now

--========================================================
-- BỘ LỌC
--========================================================

local AllSongs = Instance.new("TextButton")
AllSongs.Size = UDim2.fromOffset(82,30)
AllSongs.Position = UDim2.fromOffset(8,100)
AllSongs.BackgroundColor3 = Color3.fromRGB(92,60,205)
AllSongs.Text = "🎵 Tất cả"
AllSongs.TextColor3 = Color3.new(1,1,1)
AllSongs.TextSize = 11
AllSongs.Font = Enum.Font.GothamBold
AllSongs.Parent = Main

local AllCorner = Instance.new("UICorner")
AllCorner.CornerRadius = UDim.new(0,7)
AllCorner.Parent = AllSongs

local FavFilter = Instance.new("TextButton")
FavFilter.Size = UDim2.fromOffset(95,30)
FavFilter.Position = UDim2.fromOffset(96,100)
FavFilter.BackgroundColor3 = Color3.fromRGB(55,55,72)
FavFilter.Text = "⭐ Yêu thích"
FavFilter.TextColor3 = Color3.new(1,1,1)
FavFilter.TextSize = 11
FavFilter.Font = Enum.Font.GothamBold
FavFilter.Parent = Main

local FavCorner = Instance.new("UICorner")
FavCorner.CornerRadius = UDim.new(0,7)
FavCorner.Parent = FavFilter

--========================================================
-- DANH SÁCH
--========================================================

local List = Instance.new("ScrollingFrame")
List.Size = UDim2.new(1,-16,0,200)
List.Position = UDim2.fromOffset(8,136)
List.BackgroundColor3 = Color3.fromRGB(36,36,49)
List.BorderSizePixel = 0
List.ScrollBarThickness = 4
List.CanvasSize = UDim2.new(0,0,0,0)
List.Parent = Main

local ListCorner = Instance.new("UICorner")
ListCorner.CornerRadius = UDim.new(0,8)
ListCorner.Parent = List

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0,4)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
Layout.Parent = List

Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	List.CanvasSize = UDim2.new(
		0,0,
		0,
		Layout.AbsoluteContentSize.Y + 8
	)
end)

--========================================================
-- FOOTER
--========================================================

local Previous = Instance.new("TextButton")
Previous.Size = UDim2.fromOffset(42,34)
Previous.Position = UDim2.fromOffset(8,344)
Previous.BackgroundColor3 = Color3.fromRGB(55,55,72)
Previous.Text = "⏮"
Previous.TextColor3 = Color3.new(1,1,1)
Previous.TextSize = 16
Previous.Parent = Main

local PC = Instance.new("UICorner")
PC.CornerRadius = UDim.new(0,7)
PC.Parent = Previous

local Play = Instance.new("TextButton")
Play.Size = UDim2.fromOffset(42,34)
Play.Position = UDim2.fromOffset(54,344)
Play.BackgroundColor3 = Color3.fromRGB(92,60,205)
Play.Text = "▶"
Play.TextColor3 = Color3.new(1,1,1)
Play.TextSize = 16
Play.Parent = Main

local PlayC = Instance.new("UICorner")
PlayC.CornerRadius = UDim.new(0,7)
PlayC.Parent = Play

local Next = Instance.new("TextButton")
Next.Size = UDim2.fromOffset(42,34)
Next.Position = UDim2.fromOffset(100,344)
Next.BackgroundColor3 = Color3.fromRGB(55,55,72)
Next.Text = "⏭"
Next.TextColor3 = Color3.new(1,1,1)
Next.TextSize = 16
Next.Parent = Main

local NextC = Instance.new("UICorner")
NextC.CornerRadius = UDim.new(0,7)
NextC.Parent = Next

--========================================================
-- ÂM LƯỢNG
--========================================================

local VolDown = Instance.new("TextButton")
VolDown.Size = UDim2.fromOffset(32,34)
VolDown.Position = UDim2.fromOffset(150,344)
VolDown.BackgroundColor3 = Color3.fromRGB(55,55,72)
VolDown.Text = "−"
VolDown.TextColor3 = Color3.new(1,1,1)
VolDown.TextSize = 17
VolDown.Parent = Main

local VDC = Instance.new("UICorner")
VDC.CornerRadius = UDim.new(0,7)
VDC.Parent = VolDown

local VolText = Instance.new("TextLabel")
VolText.Size = UDim2.fromOffset(48,34)
VolText.Position = UDim2.fromOffset(184,344)
VolText.BackgroundTransparency = 1
VolText.Text = "70%"
VolText.TextColor3 = Color3.new(1,1,1)
VolText.TextSize = 11
VolText.Font = Enum.Font.GothamBold
VolText.Parent = Main

local VolUp = Instance.new("TextButton")
VolUp.Size = UDim2.fromOffset(32,34)
VolUp.Position = UDim2.fromOffset(232,344)
VolUp.BackgroundColor3 = Color3.fromRGB(55,55,72)
VolUp.Text = "+"
VolUp.TextColor3 = Color3.new(1,1,1)
VolUp.TextSize = 17
VolUp.Parent = Main

local VUC = Instance.new("UICorner")
VUC.CornerRadius = UDim.new(0,7)
VUC.Parent = VolUp

--========================================================
-- 🔵 NÚT TRÒN
--========================================================

local Mini = Instance.new("TextButton")
Mini.Name = "RotatingMiniButton"
Mini.Size = UDim2.fromOffset(60,60)
Mini.Position = UDim2.new(0,25,0.5,-30)
Mini.BackgroundColor3 = Color3.fromRGB(92,60,205)
Mini.Text = "🎵"
Mini.TextColor3 = Color3.new(1,1,1)
Mini.TextSize = 27
Mini.Font = Enum.Font.GothamBold
Mini.Visible = false
Mini.Parent = Gui

local MiniCorner = Instance.new("UICorner")
MiniCorner.CornerRadius = UDim.new(1,0)
MiniCorner.Parent = Mini

local MiniStroke = Instance.new("UIStroke")
MiniStroke.Thickness = 3
MiniStroke.Color = Color3.fromRGB(180,140,255)
MiniStroke.Parent = Mini

--========================================================
-- KÉO MENU
--========================================================

local function DragObject(Object, Handle)

	local dragging = false
	local dragStart
	local startPos
	local dragInput

	Handle.InputBegan:Connect(function(input)

		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then

			dragging = true
			dragStart = input.Position
			startPos = Object.Position

			input.Changed:Connect(function()

				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end

			end)
		end

	end)

	Handle.InputChanged:Connect(function(input)

		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then

			dragInput = input
		end

	end)

	UIS.InputChanged:Connect(function(input)

		if dragging and input == dragInput then

			local delta = input.Position - dragStart

			Object.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)

		end

	end)

end

DragObject(Main,Header)

--========================================================
-- KÉO NÚT TRÒN
--========================================================

local miniDragging = false
local miniMoved = false
local miniStart
local miniStartPos

Mini.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		miniDragging = true
		miniMoved = false
		miniStart = input.Position
		miniStartPos = Mini.Position

		input.Changed:Connect(function()

			if input.UserInputState == Enum.UserInputState.End then

				miniDragging = false

				if not miniMoved then

					Main.Visible = true
					Mini.Visible = false

				end

			end

		end)

	end

end)

UIS.InputChanged:Connect(function(input)

	if not miniDragging then return end

	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		local delta = input.Position - miniStart

		if math.abs(delta.X) > 6
			or math.abs(delta.Y) > 6 then

			miniMoved = true

		end

		Mini.Position = UDim2.new(
			miniStartPos.X.Scale,
			miniStartPos.X.Offset + delta.X,
			miniStartPos.Y.Scale,
			miniStartPos.Y.Offset + delta.Y
		)

	end

end)

--========================================================
-- 🔄 XOAY LIÊN TỤC
--========================================================

local rotation = 0

RunService.RenderStepped:Connect(function(dt)

	if Mini.Visible then

		rotation = rotation + (100 * dt)

		if rotation >= 360 then
			rotation = rotation - 360
		end

		Mini.Rotation = rotation

	end

end)

--========================================================
-- PHÁT NHẠC
--========================================================

local Current = 1
local Volume = 0.7
local Favorites = {}
local ShowingFavorites = false

local function PlaySong(index)

	if not MUSIC[index] then return end

	Current = index

	local data = MUSIC[index]

	Sound:Stop()
	Sound.SoundId = "rbxassetid://" .. data[2]
	Sound.Volume = Volume

	Now.Text = "🎵 " .. data[1]

	Sound:Play()

	Play.Text = "⏸"

end

local function NextSong()

	Current = Current + 1

	if Current > #MUSIC then
		Current = 1
	end

	PlaySong(Current)

end

local function PreviousSong()

	Current = Current - 1

	if Current < 1 then
		Current = #MUSIC
	end

	PlaySong(Current)

end

--========================================================
-- TẠO LIST
--========================================================

local function RefreshList()

	for _,v in ipairs(List:GetChildren()) do

		if v:IsA("Frame") then
			v:Destroy()
		end

	end

	for index,data in ipairs(MUSIC) do

		if not ShowingFavorites or Favorites[index] then

			local Row = Instance.new("Frame")
			Row.Size = UDim2.new(1,-8,0,38)
			Row.BackgroundColor3 = Color3.fromRGB(55,55,70)
			Row.BorderSizePixel = 0
			Row.Parent = List

			local RC = Instance.new("UICorner")
			RC.CornerRadius = UDim.new(0,7)
			RC.Parent = Row

			local Button = Instance.new("TextButton")
			Button.Size = UDim2.new(1,-38,1,0)
			Button.BackgroundTransparency = 1
			Button.Text = "▶  " .. data[1]
			Button.TextColor3 = Color3.new(1,1,1)
			Button.TextSize = 12
			Button.Font = Enum.Font.Gotham
			Button.TextXAlignment = Enum.TextXAlignment.Left
			Button.Parent = Row

			Button.Activated:Connect(function()
				PlaySong(index)
			end)

			local Star = Instance.new("TextButton")
			Star.Size = UDim2.fromOffset(38,38)
			Star.Position = UDim2.new(1,-38,0,0)
			Star.BackgroundTransparency = 1

			if Favorites[index] then
				Star.Text = "⭐"
			else
				Star.Text = "☆"
			end

			Star.TextSize = 18
			Star.Parent = Row

			Star.Activated:Connect(function()

				Favorites[index] = not Favorites[index]

				RefreshList()

			end)

		end

	end

end

RefreshList()

--========================================================
-- NÚT
--========================================================

AllSongs.Activated:Connect(function()

	ShowingFavorites = false

	AllSongs.BackgroundColor3 =
		Color3.fromRGB(92,60,205)

	FavFilter.BackgroundColor3 =
		Color3.fromRGB(55,55,72)

	RefreshList()

end)

FavFilter.Activated:Connect(function()

	ShowingFavorites = true

	FavFilter.BackgroundColor3 =
		Color3.fromRGB(92,60,205)

	AllSongs.BackgroundColor3 =
		Color3.fromRGB(55,55,72)

	RefreshList()

end)

Play.Activated:Connect(function()

	if Sound.IsPlaying then

		Sound:Pause()
		Play.Text = "▶"

	else

		if Sound.SoundId == "" then
			PlaySong(Current)
		else
			Sound:Resume()
			Play.Text = "⏸"
		end

	end

end)

Next.Activated:Connect(NextSong)
Previous.Activated:Connect(PreviousSong)

Sound.Ended:Connect(function()

	NextSong()

end)

VolDown.Activated:Connect(function()

	Volume = math.max(0,Volume - 0.1)
	Sound.Volume = Volume

	VolText.Text =
		math.floor(Volume * 100) .. "%"

end)

VolUp.Activated:Connect(function()

	Volume = math.min(1,Volume + 0.1)
	Sound.Volume = Volume

	VolText.Text =
		math.floor(Volume * 100) .. "%"

end)

--========================================================
-- ➖ THU NHỎ
--========================================================

Minimize.Activated:Connect(function()

	Main.Visible = false
	Mini.Visible = true

end)

--========================================================
-- ❌ ĐÓNG
--========================================================

Close.Activated:Connect(function()

	Sound:Stop()
	Gui:Destroy()

end)

print("🎵 MINH ANH DZ MUSIC COMPACT ĐÃ CHẠY!")
