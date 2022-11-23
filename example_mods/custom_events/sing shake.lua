function onEvent(name,value1,value2)
    if value1 == 'on' then
        function opponentNoteHit(id, noteData, noteType, isSustainNote)
            characterPlayAnim('gf', 'scared', false);
            triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');
        end
    end
    if value1 == 'off' then
        function opponentNoteHit(id, noteData, noteType, isSustainNote)
            triggerEvent('Screen Shake', '0, 0', '0, 0');
        end
    end
end