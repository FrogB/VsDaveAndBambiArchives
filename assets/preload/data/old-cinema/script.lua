--Floating Arrows
function onStepHit()
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenY('tween1', 'dad', 200 - -400*math.sin((currentBeat+12*12)*math.pi), 1.4)

doTweenX('tween2', 'dad', 100 - -200*math.sin((currentBeat+12*12)*math.pi), 0.2)
if curStep >= 1088 then
doTweenY('tween3', 'boyfriend', 400 - -400*math.sin((currentBeat+12*12)*math.pi), 1.3)

doTweenX('tween4', 'boyfriend', 800 - 50*math.sin((currentBeat+12*12)*math.pi), 0.3)
noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 - 50*math.sin((currentBeat+0*0.15)*math.pi), 0.2)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 - 50*math.sin((currentBeat+1*0.15)*math.pi), 0.2)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 - 50*math.sin((currentBeat+2*0.15)*math.pi), 0.2)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 - 50*math.sin((currentBeat+3*0.15)*math.pi), 0.2)
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 50*math.sin((currentBeat+4*0.15)*math.pi), 0.2)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 50*math.sin((currentBeat+5*0.15)*math.pi), 0.2)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 50*math.sin((currentBeat+6*0.15)*math.pi), 0.2)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 50*math.sin((currentBeat+7*0.15)*math.pi), 0.2)
noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 - 50*math.sin((currentBeat+0*0.25)*math.pi), 0.2)
noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 - 50*math.sin((currentBeat+1*0.25)*math.pi), 0.2)
noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 - 50*math.sin((currentBeat+2*0.25)*math.pi), 0.2)
noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 - 50*math.sin((currentBeat+3*0.25)*math.pi), 0.2)
noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.2)
noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - 50*math.sin((currentBeat+5*0.25)*math.pi), 0.2)
noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+6*0.25)*math.pi), 0.2)
noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - 50*math.sin((currentBeat+7*0.25)*math.pi), 0.2)
	end
end

function onCreatePost() 
    makeLuaText("message", "Original HE Mod by EvanOrSomething | Song by Cotiles", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Cinema (Old) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end
