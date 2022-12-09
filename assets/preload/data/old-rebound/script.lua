--i said i wouldnt use lua but i forgot how to make this shit in haxe lmao
local angleshit = 2;
local anglevar = 2;
local anglefunny = false
local poopoop = false
local uhh = false
local defaultNotePos = {}
local spin = 3 -- how much it moves before going the other direction

function onBeatHit()
	if uhh then    
		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end

		setProperty('camHUD.angle',angleshit*0.05)
		setProperty('camGame.angle',angleshit*0.02)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.0005, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*0.05, crochet*0.0003, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.0005, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*0.02, crochet*0.0003, 'linear')
    end
end

function onUpdate()
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000 --How long it will take.
    
    if curStep >= 0 and curStep < 50000 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    
    if curStep == 50000 then
        setProperty("camHUD.angle", 0)
    end
end

function onStepHit()
	if poopoop then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -0.3, stepCrochet*0.0005, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 0.1, stepCrochet*0.0003, 'sineIn')
            cameraShake('hud', 0.003, 0.2);
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.0005, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.0003, 'sineIn')
            cameraShake('hud', 0.003, 0.2);
		end
	end

    if curStep == 512 then
        anglefunny = true
        poopoop = false
        uhh = false
        print('fortnite battle pass')
    end

    if curStep == 767 then
        anglefunny = false
        poopoop = true
        uhh = true
        print('i just shit, out my ass')
    end

    if curStep == 1023 then
        anglefunny = true
        poopoop = false
        uhh = false
    end

    if curStep == 1280 then
        anglefunny = false
        poopoop = true
        uhh = true
    end

    if curStep == 1408 then
        anglefunny = true
        poopoop = false
        uhh = false
    end

    if curStep == 1920 then
        anglefunny = false
        poopoop = true
        uhh = true
    end

    if curStep == 2176 then
        anglefunny = false
        poopoop = false
        uhh = false
        print('bootin up my pc cuz i need need to get that fortnite battle pass')
    end

    if curStep == 2178 then
        stupid = false
        print('iyhufghsdbyiugfdighfedsru')
    end
end

function onCreatePost() 
    makeLuaText("message", "Song by Shredboi", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Old Rebound - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end