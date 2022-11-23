function onCreate()
	-- background shit
	makeLuaSprite('rsod', 'rsod', -30, 250);
	setScrollFactor('rsod', 0.9, 0.9);
	
	addLuaSprite('rsod', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end