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
  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 220-50*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

end

function onCreatePost()
    if not lowQuality then
        makeLuaSprite('keyboard', 'keyboard',-600, -300) 
        addLuaSprite('keyboard')
    addGlitchEffect('keyboard',2,2)
    end 
end

function onCreatePost() 
    makeLuaText("message", "", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Keyboard (Old) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end
