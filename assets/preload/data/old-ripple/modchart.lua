krunkthing = 60
playerArrowsX = {732, 844, 956, 1068}
opponentArrowsX = {92, 204, 316, 428}
names = {'opponentStrums', 'playerStrums'}

function onCreatePost()
   if(getPropertyFromClass('ClientPrefs', 'downScroll')) then
  strumY = getPropertyFromClass('clientPrefs', 'downscroll') == false and 560 or 550
   else if not(getPropertyFromClass('ClientPrefs', 'downScroll')) then
  strumY = getPropertyFromClass('clientPrefs', 'downscroll') == false and 560 or 40
    end
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
    for i = 0, getProperty('notes.length')-1 do
      local daName = getPropertyFromGroup('notes', i, 'mustPress') == true and names[1] or names[2]
    	setPropertyFromGroup('notes', i, 'scale.x', getPropertyFromGroup(daName, getPropertyFromGroup('notes', i, 'noteData'), 'scale.x'));
      setPropertyFromGroup('notes', i, 'scale.y', getPropertyFromGroup(daName, getPropertyFromGroup('notes', i, 'noteData'), 'scale.y'));
    end
  end
end