function onCreate()
	-- background shit
	makeLuaSprite('hamburger', 'hamburger', -600, -300);
	setScrollFactor('hamburger', 0.9, 0.9);
	
	addGlitchEffect('hamburger', 2,5,0.09)
	addLuaSprite('hamburger', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end