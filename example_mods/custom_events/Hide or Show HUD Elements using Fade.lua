-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Hide or Show HUD Elements using Fade' then
			doTweenAlpha('Goodbye HUD', 'camHUD', value1, value2, 'circIn')
	end
end