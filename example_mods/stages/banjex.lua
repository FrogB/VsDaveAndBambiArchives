function onCreate()
	-- background shit
	makeLuaSprite('banjexbg', 'banjexbg', -600, -300);
	setScrollFactor('banjexbg', 0.9, 0.9);

	addGlitchEffect('banjexbg', 2,5, 0.09)
	addLuaSprite('banjexbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end