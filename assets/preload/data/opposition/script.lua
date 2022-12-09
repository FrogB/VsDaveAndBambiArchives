function onCreatePost() 
    makeLuaText("message", "Charting by the Purgatory Team | Song by Maevings", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Opposition - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function onCreate()
    setProperty('health', 2) -- Good Night :)
    setProperty('timeTxt.color', getColorFromHex('FF0000'))
    setProperty('botplayTXT.color', getColorFromHex('FF0000')); 
    makeLuaText('texto', "Fuck you. You're done.", 0, 0, 700)
    addLuaText('texto')
    setTextSize('texto', '17.5')
    setTextColor('texto', 'ff0000')
    end
    
    function onUpdatePost()
           setProperty('timeBar.alpha', false)
           if curStep == 768 then
              doTweenAlpha('dadAlpha', 'dad', 0, 24, 'linear') -- expunged on the end just vine boom and invisible
           end
    end
    
    function opponentNoteHit(id, direction, noteType, isSustainNote)
        health = getProperty('health')
        if health > 0.05 then
            setProperty('health', health - 0.002);	
       if dadName == "expunged-tilt" then
        setProperty('camGame.angle', getProperty('camGame.angle')+1)    
        setProperty('camHUD.angle', getProperty('camHUD.angle')+1)      
          end 
       end
    end
    function onGameOver()
    restartSong(true)
    return Function_Stop
    end

function onUpdate(elapsed)

	if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
		
	end
end