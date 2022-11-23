function onCreate()
	-- background shit
	makeLuaSprite('hadephobia', 'hadephobia', -600, -300);
	setScrollFactor('hadephobia', 0.9, 0.9);
	
	addGlitchEffect('hadephobia', 2,5,0.09)
	addLuaSprite('hadephobia', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end