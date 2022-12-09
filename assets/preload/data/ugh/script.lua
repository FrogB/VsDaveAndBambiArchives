function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
end

function onCreatePost() 
    makeLuaText("message", "Original Song made by KawaiSprite", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Ugh (Origin Bandu Cover) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end
