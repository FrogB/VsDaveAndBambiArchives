function onCreate()
	-- background shit
	makeLuaSprite('redTunnel', 'redTunnel', -500, -300);
	setScrollFactor('redTunnel', 0.9, 0.9);
	
	addLuaSprite('redTunnel', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end