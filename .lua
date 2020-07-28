--Fortress master
adminlist = {"Person299","Player"}--Put the names of the people you want to get the tools in here

tools = {}
for a,b in ipairs(game.Lighting.AdminTools:GetChildren()) do
if b.className == "Tool" or b.className == "HopperBin" then
table.insert(tools,b:clone())
end end 
game.Players.ChildAdded:connect(function(guy)
if guy.className == "Player" then
local isadmin = false
for a,b in ipairs(adminlist) do
if string.lower(b) == string.lower(guy.Name) then
isadmin = true
end end
if isadmin == false then return end
guy.Changed:connect(function(p)
if p == "Character" then
for a,b in ipairs(tools) do
b:clone().Parent = guy.Backpack
end end end)
end end)
