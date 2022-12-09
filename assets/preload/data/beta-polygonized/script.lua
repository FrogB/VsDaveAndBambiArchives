function onCreatePost() 
    makeLuaText("message", "", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Polygonized (Beta Version) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function opponentNoteHit()
	health = getProperty('health')
if getProperty('health') > 0.05 then
   setProperty('health', health- 0.008
);
end
end