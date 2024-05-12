-- Landscape demo by XDuskAshes
-- MIT License
-- <https://github.com/XDuskAshes/dusk-demos/">

local scenery = { "_|_","/-\\","_-_" }
local defaultRoad = "___"

while true do
	local rollingScape = {}
	local lastRandom
	for i = 1,17 do

		local chooseScene = math.random(1,#scenery+1)
		
		if chooseScene == lastRandom then
			table.insert(rollingScape,"___")
		elseif chooseScene > #scenery then 
			table.insert(rollingScape,"___")
		else
			table.insert(rollingScape,scenery[chooseScene])
		end

		lastRandom = chooseScene
	end

	local tx,_ = term.getSize()
	term.clear()
	term.setCursorPos(1,1)
	print("Random Landscape by Dusk")
	term.setCursorPos(1,18)
	print("-----------------------------------------")
	write("https://github.com/XDuskAshes/dusk-demos/")
	
	term.setCursorPos(1,10)
	for k,v in pairs(rollingScape) do
		local cx,_ = term.getCursorPos()
		if cx == 51 then
			write(v)
			break
		else
			write(v)
		end
	end
	sleep(0.7)
end
