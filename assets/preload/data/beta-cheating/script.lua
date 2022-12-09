function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
    noteTweenX(defaultPlayerStrumX3, 4, defaultPlayerStrumX3 - 330 + 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
    noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 330 + 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
    noteTweenX(defaultPlayerStrumX0, 6, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
    noteTweenX(defaultPlayerStrumX2, 7, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
    noteTweenX(defaultOpponentStrumX3, 0, defaultOpponentStrumX3 + 330 - 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
    noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 330 - 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
    noteTweenX(defaultOpponentStrumX0, 2, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
    noteTweenX(defaultOpponentStrumX2, 3, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
end

function onCreatePost() 
    makeLuaText("message", "", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Cheating (Beta Version) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end
