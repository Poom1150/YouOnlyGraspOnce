function [camPose,posRay] = mapStwRay(robot,jPos,centroid,camParam)
[o_C,d_C] = pixelToRayCamera(centroid(1),centroid(2),camParam);
rayPos = se3([0,0,0],"eul",d_C');
posCam = getTransform(robot,jPos,"cam",'world');
onCam = posCam*rayPos.tform;
posRay = onCam(1:3,4);
camPose = posCam(1:3,4);
end