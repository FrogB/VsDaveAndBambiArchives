local allowCountdown = false
local mechanic = 'mechanic' -- the image needs to be in mods/images
local confirmed = 0

function onCreate()
    makeLuaSprite('mechanic', mechanic, 0, 0)
    screenCenter('mechanic', 'xy')
    setObjectCamera('mechanic', 'other')

    addLuaSprite('mechanic', true)
end

function onStartCountdown()
    if not allowCountdown then
        return Function_Stop
    end
    if allowCountdown then
        return Function_Continue
    end
end

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and confirmed == 0 then
        allowCountdown = true
        startCountdown();
        doTweenAlpha('nomorewarningimage', 'mechanic', 0, 1, sineOut);
        playSound('confirmMenu');
        confirmed = 1
    end
end

function onCreatePost() 
    makeLuaText("message", "By ThatPizzaTowerFan", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Screwed - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

