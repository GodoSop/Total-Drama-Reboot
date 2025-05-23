loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Disable-adonis-anti-cheat-19754"))()

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "Godo Hub - Total Drama: Reboot",
   Icon = 0,
   LoadingTitle = "GodoHub",
   LoadingSubtitle = "by GodoSop",
   Theme = "Default",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local BasicTab = Window:CreateTab("Basic", nil) -- Title, Image
local Section = BasicTab:CreateSection("Basic functions")   

local Idol = BasicTab:CreateButton({
   Name = "Find Idol",
   Callback = function()
  local player = game.Players.LocalPlayer

            local SafetyStatue = workspace:WaitForChild("Idol", 100)
            local Bag = workspace:WaitForChild("Bag", 100)
            local startingpos = workspace:WaitForChild(tostring(player)).HumanoidRootPart.CFrame

            -- Move the models using their PrimaryPart
            if SafetyStatue then
               SafetyStatue.CFrame = startingpos.CFrame
            end
            if Bag then
               Bag.CFrame = startingpos.CFrame
            end
      end)
   end,
})

local WinObby = BasicTab:CreateButton({
   Name = "Win Obby",
   Callback = function()
      local WinPart = workspace:GetChildren()
      local Player = workspace:WaitForChild(tostring(game.Players.LocalPlayer)):WaitForChild("HumanoidRootPart")
      local finishPart = nil
      local assetsFolder = game.Workspace

      for _, item in pairs(assetsFolder:GetDescendants()) do
         if item:IsA("Part") and item.Name == "Finish" then
            finishPart = item
            break
         end
      end

      Player.CFrame = CFrame.new(finishPart.Position)
   end,
})

local VoteOut = BasicTab:CreateInput({
   Name = "Vote anyone out",
   CurrentValue = "",
   PlaceholderText = "Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
    for i = 1, 20 do
    local args = {
    Text
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vote"):FireServer(unpack(args))
    end
   end,
})

local FreezeGame = BasicTab:CreateButton({
   Name = "Freeze game(Press during challenge)",
   Callback = function()
   local args = {
	"End"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Challenge"):FireServer(unpack(args))
   end,
})

