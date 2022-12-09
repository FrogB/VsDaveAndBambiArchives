local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  650.0;
local yy =  500;
local xx2 = 650.0;
local yy2 = 500;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
end

function onCreatePost() 
    makeLuaText("message", "Freedom Dive by Xi", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")
  
    makeLuaText("engineText", "secret 3 - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")
  
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
  end
