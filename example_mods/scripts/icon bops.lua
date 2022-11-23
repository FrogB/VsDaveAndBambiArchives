local anglecrap = -1

function onBeatHit()
    if getProperty('curBeat') % 4 == 0 then
		setProperty('iconP1.angle',anglecrap*30)
		setProperty('iconP2.angle',anglecrap*-30)
		setProperty('animatedicon.angle',anglecrap*-30)
		doTweenAngle('hr', 'iconP1', 0, 0.5, 'circOut')
		doTweenAngle('hrr', 'iconP2', 0, 0.5, 'circOut')
		doTweenAngle('hrrr', 'animatedicon', 0, 0.5, 'circOut')
	end

	if getProperty('curBeat') % 4 == 2 then
		setProperty('iconP1.angle',anglecrap*30)
		setProperty('iconP2.angle',anglecrap*-30)
		setProperty('animatedicon.angle',anglecrap*-30)
		doTweenAngle('hr', 'iconP1', 0, 0.5, 'circOut')
		doTweenAngle('hrr', 'iconP2', 0, 0.5, 'circOut')
		doTweenAngle('hrrr', 'animatedicon', 0, 0.5, 'circOut')
	end
end
 
function onUpdatePost()
	setProperty("iconP1.scale.y", (getProperty("iconP1.scale.y") - 1) / -2 + 1)
	setProperty("iconP2.scale.y", (getProperty("iconP2.scale.y") - 1) / -2 + 1)
	setProperty("iconP1.y", 500 + (getProperty("iconP1.scale.y") * 75))
	setProperty("iconP2.y", 500 + (getProperty("iconP2.scale.y") * 75))
   
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
	setProperty("iconP1.y", -65 + (getProperty("iconP1.scale.y") * 75))
	setProperty("iconP2.y", -65 + (getProperty("iconP2.scale.y") * 75))
	end
end
