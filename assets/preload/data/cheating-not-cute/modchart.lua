krunkthing = 60
opponentArrowsX = {92, 204, 316, 428}
names = {'opponentStrums'}
local angley = 0

function onCreatePost()
  strumY = 560

  if not downscroll then
    strumY = 60
  end
end

function onUpdate()
  songPos = getSongPosition()
  currentBeat = (songPos/5000)*(curBpm/60)
  if not inGameOver then
    for i=1,2,1 do
      local daName = names[i]
      local daStrums = i == 2 and playerArrowsX or opponentArrowsX
      for i=0,3,1 do
        local huh = math.fmod(i, 2) == 0 and 1 or -1
        setPropertyFromGroup(daName, i, 'x', daStrums[i+1] + math.sin(currentBeat) * huh * krunkthing)
        setPropertyFromGroup(daName, i, 'y', strumY + math.sin(currentBeat - 5) * huh * krunkthing)

        setPropertyFromGroup(daName, i, 'scale.x', math.abs(math.sin(currentBeat - 5) * huh) / 4)
        setPropertyFromGroup(daName, i, 'scale.y', math.abs(math.sin(currentBeat) * huh) / 2)

        setPropertyFromGroup(daName, i, 'scale.x', getPropertyFromGroup(daName, i, 'scale.x') + 0.2)
        setPropertyFromGroup(daName, i, 'scale.y', getPropertyFromGroup(daName, i, 'scale.y') + 0.2)

        setPropertyFromGroup(daName, i, 'scale.x', getPropertyFromGroup(daName, i, 'scale.x') * 1.5)
        setPropertyFromGroup(daName, i, 'scale.y', getPropertyFromGroup(daName, i, 'scale.y') * 1.5)
      end
    end
end
end

function onCountdownTick(counter)
    if counter == 0 then
        noteTweenAngle('swoosh4', 4, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh5', 5, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh6', 6, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh7', 7, angley + 2075, 3, 'cubeInOut')
    end
end

function onTweenCompleted(tag)
    if tag == 'swoosh4' then
        angley = angley + 2075
        noteTweenAngle('swoosh4', 4, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh5', 5, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh6', 6, angley + 2075, 3, 'cubeInOut')
        noteTweenAngle('swoosh7', 7, angley + 2075, 3, 'cubeInOut')
    end
end
