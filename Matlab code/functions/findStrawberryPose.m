function stwPos = findStrawberryPose(structPos)
    camPos = [structPos(~cellfun(@isempty,{structPos.posRay})).camPos];
    posRay = [structPos(~cellfun(@isempty,{structPos.posRay})).posRay];

    startPos = camPos(1:2,:);
    endPos = posRay(1:2,:);
    stwPos = intersectLinesLS(startPos,endPos);
end