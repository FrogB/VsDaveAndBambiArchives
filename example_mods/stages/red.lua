function onCreate()
	-- background shit
	makeLuaSprite('red', 'red', -600, -300);
	setScrollFactor('red', 0.9, 0.9);
	
	addGlitchEffect('red', 2,5,0.09)
	addLuaSprite('red', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end