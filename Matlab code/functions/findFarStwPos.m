function farPos = findFarStwPos(structFar)
    camPos = [structFar(~cellfun(@isempty,{structFar.farRay})).camPos];
    farRay = [structFar(~cellfun(@isempty,{structFar.farRay})).farRay];
    startPos = camPos(1:2,:);
    endPos = farRay(1:2,:);
    farPos = intersectLinesLS(startPos,endPos);
end