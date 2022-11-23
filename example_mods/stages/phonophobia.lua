function onCreate()
	-- background shit
	makeLuaSprite('phonophobia', 'phonophobia', -600, -300);
	setScrollFactor('phonophobia', 0.9, 0.9);
	
	addGlitchEffect('phonophobia', 2,5,0.09)
	addLuaSprite('phonophobia', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end