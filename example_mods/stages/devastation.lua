function onCreate()
	-- background shit
	makeLuaSprite('3dFucked', '3dFucked', -900, -275);
	setScrollFactor('3dFucked', 0.9, 0.9);

	makeLuaSprite('red', 'red', -900, -275);
	setScrollFactor('red', 0.9, 0.9);

	makeLuaSprite('hamburger', 'hamburger', -900, -275);
	setScrollFactor('hamburger', 0.9, 0.9);
	
	addGlitchEffect('3dFucked', 2,5,0.09)
	addLuaSprite('3dFucked', false);
	
	addGlitchEffect('red', 2,5,0.09)
	addLuaSprite('red', false);

	addGlitchEffect('hamburger', 2,5,0.09)
	addLuaSprite('hamburger', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end