local defaultNotePos = {}
local spin = 5 -- how much it moves before going the other direction

function onCreatePost() 
    makeLuaText("message", "Song by Null_y34r | Charted by DeltaTheJ", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "LACUNA - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000 --How long it will take.
    local songPos2 = getPropertyFromClass('Conductor', 'songPosition') / 85 --go faster lol
    
    if curStep >= 0 and curStep < 128 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end

    if curStep >= 128 and curStep < 10000 then
        setProperty("camHUD.angle", spin * math.sin(songPos2))
    end

    if curStep == 10000 then
        setProperty("camHUD.angle", 0)
    end

    if curStep >= 0 then
  
      songPos = getSongPosition()
  
      local currentBeat = (songPos/1000)*(bpm/80)
  
      doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
    
    end
  end