function onCreate()
	-- background shit
	makeLuaSprite('graysky', 'graysky', -600, -300);
	setScrollFactor('graysky', 0.9, 0.9);

	makeLuaSprite('3d_Objects', '3d_Objects', -600, -300);
	setScrollFactor('3d_Objects', 0.7, 0.7);

	makeLuaSprite('3dBG_Objects', '3dBG_Objects', -600, -300);
	setScrollFactor('3dBG_Objects', 1.0, 1.0);
	
	addLuaSprite('graysky', false);
	addLuaSprite('3dBG_Objects', false);
	addLuaSprite('3d_Objects', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end