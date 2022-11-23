function onCreate()
	-- background shit
	makeLuaSprite('BG', 'OppositonLol', -600, -300);
	setScrollFactor('BG', 0.9, 0.9);

	makeLuaSprite('Ground', 'ThanosGround', -600, -300);
	setScrollFactor('Ground', 1, 1);
	
	addLuaSprite('BG', false);
	addLuaSprite('Ground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end