function onUpdate(elapsed)
    if bfName == 'bf' or 'bf-3d' or 'bf-winner' or 'tunnel-bf' or 'bandu night' then --replace the name for your character name
        for i=0,4,1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')
        end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
            end
        end
    end
    songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
    doTweenX('opponentmoves', 'dad', -250 + 250*math.sin((currentBeat+1)*math.pi), 4)
	doTweenY('opponentmove', 'dad', 150 + 200*math.sin((currentBeat+1)*math.pi), 4)
	doTweenAngle('opponentmovess', 'dad', 0 + 30*math.cos((currentBeat+1)*math.pi), 4)
end

function onCreatePost() 
    makeLuaText("message", "Charted by Chardery | Song by Cynda", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Cotton Candy - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function onStartCountdown()
	doTweenAngle('anglelele', 'redTunnel', 14040, 1250, 'linear');
end
