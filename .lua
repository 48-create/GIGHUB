local correctKey = "GIG-KEY-84X2-PL9Q"
local keyLink = "https://link-hub.net/4189353/fTnXV0QqiO95"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "GigHubKey"
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,320,0,190)
Frame.Position = UDim2.new(0.5,-160,0.5,-95)
Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
Frame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0,12)

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,45)
Title.BackgroundTransparency = 1
Title.Text = "GIG HUB KEY"
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(57,255,20)
Title.TextScaled = true

local TextBox = Instance.new("TextBox")
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0.8,0,0,35)
TextBox.Position = UDim2.new(0.1,0,0.35,0)
TextBox.PlaceholderText = "ENTER KEY..."
TextBox.Text = ""
TextBox.Font = Enum.Font.Gotham
TextBox.TextColor3 = Color3.fromRGB(255,255,255)
TextBox.BackgroundColor3 = Color3.fromRGB(25,25,25)
TextBox.BorderSizePixel = 0

Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0,8)

local Verify = Instance.new("TextButton")
Verify.Parent = Frame
Verify.Size = UDim2.new(0.8,0,0,35)
Verify.Position = UDim2.new(0.1,0,0.6,0)
Verify.Text = "GIG VERIFY"
Verify.Font = Enum.Font.GothamBold
Verify.TextColor3 = Color3.fromRGB(0,0,0)
Verify.TextScaled = true
Verify.BackgroundColor3 = Color3.fromRGB(57,255,20)
Verify.BorderSizePixel = 0

Instance.new("UICorner", Verify).CornerRadius = UDim.new(0,8)

local GetKey = Instance.new("TextButton")
GetKey.Parent = Frame
GetKey.Size = UDim2.new(0.8,0,0,25)
GetKey.Position = UDim2.new(0.1,0,0.82,0)
GetKey.Text = "GET KEY"
GetKey.Font = Enum.Font.Gotham
GetKey.TextColor3 = Color3.fromRGB(57,255,20)
GetKey.BackgroundColor3 = Color3.fromRGB(20,20,20)
GetKey.BorderSizePixel = 0

Instance.new("UICorner", GetKey).CornerRadius = UDim.new(0,8)

GetKey.MouseButton1Click:Connect(function()
    setclipboard(keyLink)
    GetKey.Text = "LINK COPIED"
end)

Verify.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/48-create/MAINGIG-HUB/refs/heads/main/Hub.lua", true))()
    else
        TextBox.Text = "WRONG KEY"
    end
end)
