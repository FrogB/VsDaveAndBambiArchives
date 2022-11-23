function onCreate()
	-- background shit
	makeLuaSprite('glitchGREEN', 'glitchGREEN', -650, -300);
	setScrollFactor('glitchGREEN', 0.9, 0.9);
	
	addGlitchEffect('glitchGREEN', 2,5,0.09)
	addLuaSprite('glitchGREEN', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end