function onCreatePost() 
    makeLuaText("message", "Song by ShredBoi", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Disposition - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    cameraShake(game, 0.009, 0.1)
    cameraSetTarget('dad')
    health = getProperty('health')
    if health > 0.01 then
        setProperty('health', health - 0.01);	
      end
  end
