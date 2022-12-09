function onUpdate(elapsed)
  if dadName == 'bombu' then
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(bpm/60)
    doTweenX('opponentmovex', 'dad', -50 - 150*math.cos((currentBeat+12*12)*math.pi), 2)
    doTweenY('opponentmovey', 'dad', 100 - 300*math.sin((currentBeat+12*12)*math.pi), 2)
  end

	if curStep >= 0 and dadName == 'Imgoingtostealyourliver' then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
		
	end
end
