function onCreate()
	-- background shit
	makeLuaSprite('betaFarm', 'betaFarm', -600, -300);
	setScrollFactor('betaFarm', 0.9, 0.9);
	
	addLuaSprite('betaFarm', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end