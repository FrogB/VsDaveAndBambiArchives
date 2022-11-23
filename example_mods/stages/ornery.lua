function onCreate()
	-- background shit
	makeLuaSprite('ornery', 'ornery', -600, -300);
	setScrollFactor('ornery', 0.9, 0.9);


	addLuaSprite('ornery', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end