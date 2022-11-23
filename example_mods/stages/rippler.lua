function onCreate()
	-- background shit
	makeLuaSprite('rippler', 'rippler', -900, -300);
	setScrollFactor('rippler', 0.9, 0.9);
	
	addGlitchEffect('rippler', 2,5,0.09)
	addLuaSprite('rippler', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end