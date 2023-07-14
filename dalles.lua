local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Cria a janela principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScriptHub"
ScreenGui.Parent = LocalPlayer.PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "Main"
MainFrame.Size = UDim2.new(0, 200, 0, 200)
MainFrame.Position = UDim2.new(0, 10, 0, 10)
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BorderColor3 = Color3.new(1, 1, 1)
MainFrame.BorderSizePixel = 2
MainFrame.Parent = ScreenGui

-- Cria os botões do menu
local function createButton(name, position)
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Text = name
    Button.Size = UDim2.new(0, 150, 0, 30)
    Button.Position = position
    Button.BackgroundColor3 = Color3.new(0, 0, 0)
    Button.BorderColor3 = Color3.new(1, 1, 1)
    Button.BorderSizePixel = 2
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.Parent = MainFrame
end

createButton("Olá Seja Bem-Vindo", UDim2.new(0, 25, 0, 20))
createButton("Attack", UDim2.new(0, 25, 0, 60))
createButton("Fruta", UDim2.new(0, 25, 0, 100))
createButton("Misc.", UDim2.new(0, 25, 0, 140))

-- Cria o botão de minimizar
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Text = "-"
MinimizeButton.Size = UDim2.new(0, 20, 0, 20)
MinimizeButton.Position = UDim2.new(0.95, -20, 0, 0)
MinimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
MinimizeButton.BorderColor3 = Color3.new(1, 1, 1)
MinimizeButton.BorderSizePixel = 2
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.Parent = ScreenGui

-- Função para alternar a visibilidade do menu
local function toggleMenu()
    MainFrame.Visible = not MainFrame.Visible
end

-- Evento de clique do botão de minimizar
MinimizeButton.MouseButton1Click:Connect(toggleMenu)

-- Esconde o menu quando o jogador minimiza a janela do Roblox
GuiService.MinimizeButtonPressed:Connect(toggleMenu)
