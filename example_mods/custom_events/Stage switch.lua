function onCreate() -- put the stuff here
	makeLuaSprite('graysky', 'graysky', -600, -300);
	setScrollFactor('graysky', 0.9, 0.9);

	makeLuaSprite('Grid_BG', 'Grid_BG', -600, -300);
	setScrollFactor('Grid_BG', 0.9, 0.9);

	makeLuaSprite('3d_Objects', '3d_Objects', -600, -300);
	setScrollFactor('3d_Objects', 0.7, 0.7);

	makeLuaSprite('3dBG_Objects', '3dBG_Objects', -600, -300);
	setScrollFactor('3dBG_Objects', 1.0, 1.0);

	makeLuaSprite('3d_Objects2', '3d_Objects', -600, -300);
	setScrollFactor('3d_Objects2', 0.7, 0.7);

	makeLuaSprite('3dBG_Objects2', '3dBG_Objects', -600, -300);
	setScrollFactor('3dBG_Objects2', 1.0, 1.0);

	makeLuaSprite('gray_ground', 'gray_ground', -600, -300);
	setScrollFactor('gray_ground', 1.0, 1.0);

	addLuaSprite('graysky', false);
	addLuaSprite('3dBG_Objects', false);
	addLuaSprite('3d_Objects', false);
end

function onEvent(name, value1, value2)
	if name == 'Stage switch' then 
		if value1 == 'upheaval' then
			addLuaSprite('Grid_BG', false);
			addLuaSprite('3dBG_Objects2', false);
			addLuaSprite('3d_Objects2', false);
			addLuaSprite('gray_ground', false);
		end
	end
end