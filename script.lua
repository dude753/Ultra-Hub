local START_TIME = os.clock()
getgenv().DeleteWait = true
local runservice = game:GetService("RunService")
local ws = game:GetService("Workspace")
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

mainHolder = Instance.new("ScreenGui", plr.PlayerGui)
essential = Instance.new("Frame", mainHolder)
--vpHolder = Instance.new("ViewportFrame", mainHolder)
Folder = Instance.new("Folder", ws)
partHolder = Instance.new("Part", Holder)

Folder.Name = "Essential"
partHolder.CFrame = plr.Character.HumanoidRootPart.CFrame
partHolder.Size = Vector3.new(2.75, 2.75, 2.75)
partHolder.Anchored = true
partHolder.CanCollide = false
mouse.Move:Connect(function()
	local target = mouse.Target
	
	for _, v in pairs(ws.Essential:GetDescendants()) do
		if target == v then
			print("well")
		end
	end
end)

mainHolder.IgnoreGuiInset = true
mainHolder.DisplayOrder = 2147483647
mainHolder.Enabled = true
mainHolder.ResetOnSpawn = false

--vpHolder.CurrentCamera = ws.Camera
--vpHolder.Position = UDim2.new(0, 0, 0, 0)



local END_TIME = os.clock()
local EXECUTION_TIME = END_TIME - START_TIME
print("Essential was successfully executed")
if EXECUTION_TIME < 0.001 then
	local millsEXT = EXECUTION_TIME * 1000
	print("EXECUTION TIME " .. millsEXT .. "ms")
	else
		print("EXECUTION TIME " .. EXECUTION_TIME .. "s")
end
if getgenv().DeleteWait then
	task.wait(3)
	Folder:Destroy()
	mainHolder:Destroy()
	warn("DEBUG: SUCCESSFULLY DELETED ESSENTIAL")
end
