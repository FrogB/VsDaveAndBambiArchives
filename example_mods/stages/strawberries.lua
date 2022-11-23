function onCreate()
	-- background shit
	makeLuaSprite('strawberries', 'strawberries', -700, -300);
	setScrollFactor('strawberries', 0.9, 0.9);

	addGlitchEffect('strawberries', 2,5,0.09)
	addLuaSprite('strawberries', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end