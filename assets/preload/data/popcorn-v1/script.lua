function onCreatePost() 
    makeLuaText("message", "Charted by joolian | Song by Cotiles", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")
  
    makeLuaText("engineText", "Popcorn (Version 1) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")
  
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end