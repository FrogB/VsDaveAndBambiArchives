function onCreate()

	makeLuaSprite('Hellbg','graysky',-600,-200)
	addLuaSprite('graysky',false)
	setLuaSpriteScrollFactor('graysky', 1, 1)

	makeLuaSprite('Grid_BG','Grid_BG',-600,-200)
	addLuaSprite('Grid_BG',false)
	setLuaSpriteScrollFactor('Grid_BG', 1, 1)

	makeLuaSprite('3dBG_Objects','3dBG_Objects',-600,-200)
	addLuaSprite('3dBG_Objects',false)
	setLuaSpriteScrollFactor('3dBG_Objects', 1, -2)

	makeLuaSprite('3d_Objects','3d_Objects',-600,-200)
	addLuaSprite('3d_Objects',false)
	setLuaSpriteScrollFactor('3d_Objects', 1, 2)

	makeLuaSprite('gray_ground','gray_ground',-600,-200)
	addLuaSprite('gray_ground',false)
	setLuaSpriteScrollFactor('gray_ground', 1, 1)
end