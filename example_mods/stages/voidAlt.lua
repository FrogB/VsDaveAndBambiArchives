function onCreate()
	-- background shit
	makeLuaSprite('3dFucked', '3dFucked', -900, -275);
	setScrollFactor('3dFucked', 0.9, 0.9);
	
	addGlitchEffect('3dFucked', 2,5,0.09)
	addLuaSprite('3dFucked', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end