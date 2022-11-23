function onCreate()
	-- background shit
	makeLuaSprite('hills', 'hills', -600, -300);
	setScrollFactor('hills', 0.9, 0.9);
	
	addLuaSprite('hills', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end