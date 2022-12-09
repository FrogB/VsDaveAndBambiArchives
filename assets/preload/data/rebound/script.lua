function onUpdate(elapsed)
    if curStep >= 0 then
        songPos = getSongPosition()
        local currentBeat = (songPos/400)*(bpm/100)
        doTweenY(dadTweenY, 'dad', 30-50*math.sin((currentBeat*0.15)*math.pi),0.01)
    end
end

function onCreatePost() 
    makeLuaText("message", "Song by ShredBoi", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Rebound - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end