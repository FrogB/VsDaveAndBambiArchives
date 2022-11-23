function onCreate()
	-- background shit
	makeLuaSprite('automate', 'automate', -600, -300);
	setScrollFactor('automate', 0.9, 0.9);
	
	addGlitchEffect('automate', 2,5,0.09)
	addLuaSprite('automate', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end