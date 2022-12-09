function onCreatePost() 
  makeLuaText("message", "Note: This song is VERY unfinished \nChart by epic, tweaked by FrogB | Song by EpicRandomness11", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Upheaval (Old and Unfinished) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end


local defaultNotePos = {};
local spin = true;
local modchartX = 0;
local modchartY = 0;
local startMod = false;
local increaseChartY = false;
local unfairnessChart = false;
local increaseChartX = false;
local a_bop = false;
local b_bop = false;
 local windowX = 0;
 local windowY = 0;
 local windowXPerm = 0;
 local windowYPerm = 0;
 local windowXscale
 local windowYscale
 local windowXscalePerm
 local windowYscalePerm

 local switch = false;
 local switchScale = false;
 local switchScaleY = false;
function onCreate()
  windowXPerm = getPropertyFromClass('openfl.Lib', 'application.window.x')
  windowYPerm = getPropertyFromClass('openfl.Lib', 'application.window.y')
  windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
  windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')


  windowXscalePerm = 1280
  windowYscalePerm = 720
  windowXscale = 1280
  windowYscale = 720


  setProperty('camGame.zoom', 2)
  doTweenZoom('BEGIN', 'camGame', '0.7', 3, 'quadOut')
  setProperty('camHUD.zoom', 3)
  doTweenZoom('BEGIN2', 'camHUD', '1', 7, 'quadOut')
  spin = false
end


function onUpdate(elapsed)
  if curStep == 448 then
    windowMove()
  end
end


function windowMove()
  function opponentNoteHit()
  if windowXPerm - 200 > windowX then
  switch = true
  end
  if windowXPerm + 200 < windowX then 
  switch = false
  end
  if switch == false then
  windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
  setPropertyFromClass('openfl.Lib','application.window.x',windowX - 4)
  end
  if switch == true then
  windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
  setPropertyFromClass('openfl.Lib','application.window.x',windowX + 4)
  end
end
end


function windowZooming()
    if windowXscalePerm - 300 > windowXscale then
      switchScale = true
    end
    if windowXscalePerm + 300 < windowXscale then 
      switchScale = false
    end
    if windowYscalePerm - 300 > windowYscale then
      switchScaleY = true
    end
    if windowYscalePerm + 300 < windowYscale then 
      switchScaleY = false
    end

        
        if switchScale == false then
        windowXscale = windowXscale - 3
        end
        if switchScale == true then
        windowXscale = windowXscale + 3
        end
        if switchScaleY == false then
        windowYscale = windowYscale - 3
        end
        if switchScaleY == true then
        windowYscale = windowYscale + 3
        end

        resizeWindow(windowXscale, windowYscale)
end

function windowShake()
  windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
  windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
  setPropertyFromClass('openfl.Lib','application.window.x',windowX + math.random(-5,5))
  setPropertyFromClass('openfl.Lib','application.window.y',windowY + math.random(-5,5))
end

        