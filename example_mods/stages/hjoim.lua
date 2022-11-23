function onCreate()
	-- background shit
	makeLuaSprite('hjoimbg', 'hjoimbg', -600, -300);
	setScrollFactor('hjoimbg', 0.9, 0.9);
	
	addLuaSprite('hjoimbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end