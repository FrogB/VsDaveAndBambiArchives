function onCreate()
    botTexts = {
        'you will still not outsmart your death',
        'hey guys, this bitch is in botplay',
        'mald',
        'd',
        'cope',
        'skill issue',
        'CHEATER',
        'i killed seven kids',
        'OENIS',
        'oenis ball cock',
        'you are as dumb as a turtle head',
        'bambi say: FUCK YOU',
        'ok what else do i say? i kinda forgot my lines :(((((',
        'why. just why.',
        '75.246.192.1',
        'YOU MOTHERF-',
        'stop moldy hes dead MOLDY HES DEAD',
        'imagine having to use botplay, cant be me.',
        'sillyfangirl is better than u',
        'youre fat',
        'you mad?',
        'cereal cheater'
    }
    botTxt = tostring(botTexts[getRandomInt(1, #(botTexts))])
end

function onUpdate()
    setTextString("botplayTxt", botTxt)
end
