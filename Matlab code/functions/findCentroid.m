function [centroid,area] = findCentroid(img)
    [bw,~] = FindStrawberry(img);
    bw = imfill(bw,"holes");
    bw = bwareafilt(bw,1);
    state = regionprops(bw, 'Centroid');
    centroid = [];
    if ~(isempty(state))
        centroid = state.Centroid;
    end
    area = sum(bw(:));
end