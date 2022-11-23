function onCreate()
	makeLuaSprite('uglyHB', 'RoundhealthBar', 0, 0)
	setObjectCamera('uglyHB', 'hud')
	setScrollFactor('uglyHB', 0.9, 0.9)
	
	addLuaSprite('uglyHB', true)

	makeLuaSprite('uglyTB', 'RoundtimerBar', 0, 0)
	setObjectCamera('uglyTB', 'hud')
	setScrollFactor('uglyTB', 0.9, 0.9)
	
	addLuaSprite('uglyTB', true)
end

function onCreatePost()

    setProperty('uglyHB.alpha', 1)

	setProperty('healthBarBG.visible', false)

    setProperty('uglyHB.x', getProperty('healthBar.x')-5)

    setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    setProperty('uglyHB.y', getProperty('healthBar.y')-5)
    setProperty('uglyHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('uglyHB.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('uglyHB', 4)
	setObjectOrder('healthBar', 3)

    setProperty('uglyTB.alpha', 0)

	setProperty('timeBarBG.visible', false)
	scaleObject('timeBar', 1.51, 1);

    setProperty('uglyTB.x', getProperty('healthBar.x')-5)

    if downscroll then
        setProperty('uglyTB.y', getProperty('healthBar.y')+601)
    else
        setProperty('uglyTB.y', getProperty('healthBar.y')-618)
    end

    setProperty('uglyTB.angle', getProperty('healthBar.angle'))
    setProperty('uglyTB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('uglyTB.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('uglyTB', 4)
	setObjectOrder('timeBar', 3)

    screenCenter('timeBar', 'x')

    setProperty('timeTxt.visible', false)

    --add this song name and timer text
    makeLuaText('timeAugh', 'rip', 0, 0)
    setObjectCamera('timeAugh', 'hud', true)
    setProperty('timeAugh.alpha', 0)
    setTextSize('timeAugh', 15)
    addLuaText('timeAugh', true)
    setTextFont('timeAugh', 'comic.ttf')
    scaleObject('timeAugh', 1.05, 0.9);
    setProperty('timeAugh.y', getProperty('timeBar.y')-8)
end

function onUpdate()
    screenCenter('timeAugh', 'x')
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end

function onUpdatePost(elapsed)
    setTextString('timeAugh', songName..' ('..formatTime(getSongPosition() - noteOffset)..' / '..formatTime(getProperty('songLength'))..')')

    if (botPlay) then
        setProperty('botplayTxt.visible', true)
    end
end

function onSongStart()
    doTweenAlpha('timeAughTween', 'timeAugh', 1, 0.25, circIn)
    doTweenAlpha('uglyTBTween', 'uglyTB', 1, 0.25, circIn)
end