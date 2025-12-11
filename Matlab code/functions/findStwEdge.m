function [farPts,area] = findStwEdge(img)
    [bw,~] = FindStrawberry(img);
    se = strel('disk',10);
    clearBw = imerode(bw,se);
    stats = regionprops(clearBw, 'Centroid', 'PixelList');
    farPts = [];
    if ~(isempty(stats))
        C = stats.Centroid;                   % [x, y]
        pxs = stats.PixelList;
        dx = pxs(:,1) - C(1);
        dy = pxs(:,2) - C(2);
        dist = sqrt(dx.^2 + dy.^2);
        [mDist, idx] = max(dist);

        farPts = [pxs(idx,1),pxs(idx,2)];
        area = sum(clearBw(:));
    end

end