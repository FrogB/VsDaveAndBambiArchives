function onEvent(n,v1,v2)
    if n == "Chromatic Hit 1" then
        triggerEvent('Chromatic Hit'); 
        triggerEvent('Screen Shake', '0.002, 0.02','0.004, 0.02'); 
    end
end