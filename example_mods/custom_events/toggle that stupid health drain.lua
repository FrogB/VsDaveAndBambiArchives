function onEvent(name, v1, v2)
	if name == 'toggle that stupid health drain' then
		if v1 == 'on' then
			function opponentNoteHit()
				health = getProperty('health')
				if getProperty('health') > 0.1 then
					setProperty('health', health- 0.0025);
				end
			end
		end
		if v1 == 'off' then  
			function opponentNoteHit()
				health = getProperty('health')
				if getProperty('health') > 0.1 then
					setProperty('health', health- 0);
				end
			end
		end
	end
end