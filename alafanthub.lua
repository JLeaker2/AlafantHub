local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local ScrollFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "AlafantHub"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 600)
MainFrame.Active = true
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Alafant Hub"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)
CloseButton.Position = UDim2.new(0, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 50, 0, 50)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 24
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Parent = MainFrame
ScrollFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollFrame.Position = UDim2.new(0, 0, 0, 50)
ScrollFrame.Size = UDim2.new(1, 0, 1, -50)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollFrame.ScrollBarThickness = 10
ScrollFrame.ScrollBarImageColor3 = Color3.new(1, 1, 1)

UIGridLayout.Parent = ScrollFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 450, 0, 50)
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)  -- Espacio entre los botones

local scripts = {
    ["Arsenal"] = "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal",
    ["Btools"] = "https://cdn.wearedevs.net/scripts/BTools.txt",
    ["Dex Explorer"] = "https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt",
    ["Debuggers"] = "https://raw.githubusercontent.com/yofriendfromschool1/debugnation/main/decompilers%20and%20debugging/Debuggers.txt",
    ["Dex v3 (Bypass)"] = "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua",
    ["Dex v4"] = "https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4",
    ["Descargar Codigo Fuente"] = "https://pastebin.com/raw/fPP8bZ8Z",
    ["Dupetools"] = "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Dupe%20Tools%20Main%20Script.md",
    ["Filtershark (Spy)"] = "https://gist.githubusercontent.com/MrClownAKAItsOk/d45e1b205aca321f352c08a03866c409/raw/ee7112d59e1f14bcb99ea30ae22026ca6815cd46/rsv3luau.lua",
    ["InfiniteYield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["OwlHub"] = "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt",
    ["PrisionLife"] = "https://zygomorphic-jobyna-impacthub-3d96c239.koyeb.app/main.lua",
    ["RedLightGreenLight"] = "https://raw.githubusercontent.com/faustinuuu/robloxscripts/main/redlight.lua",
    ["RemoteSpy"] = "https://pastebin.com/raw/BGF4F8kU",
    ["Sharkbite2"] = "https://raw.githubusercontent.com/ghostapustaja/legionhub/main/sharkbite2",
    ["Sharkbite2Best"] = "https://scriptblox.com/raw/STEALTH-SharkBite-2-script-13895",
    ["Sirius"] = "https://sirius.menu/script",
    ["Sky Hub"] = "https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt",
}

for name, url in pairs(scripts) do
    local button = Instance.new("TextButton")
    button.Parent = ScrollFrame
    button.Text = name
    button.BackgroundColor3 = Color3.new(0.8, 0, 0)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.Size = UDim2.new(0, 450, 0, 50)
    button.TextWrapped = true
    button.BorderSizePixel = 0
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)  -- Bordes redondeados
    corner.Parent = button
    
    button.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(url))()
    end)
end
