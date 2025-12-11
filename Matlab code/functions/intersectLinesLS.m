function xy = intersectLinesLS(P, D)
% P : 2xN จุดเริ่มต้นของเส้น
% D : 2xN จุดสิ้นสุดของเส้น

N = size(P,2);
A = zeros(2,2);
b = zeros(2,1);

for i = 1:N
    p = P(:,i);
    q = D(:,i);
    d = q - p;            % ทิศทาง = จุดสิ้นสุด - จุดเริ่มต้น
    d = d / norm(d);      % normalize
    
    n = [-d(2); d(1)];    % เวกเตอร์ตั้งฉาก (unit normal)
    
    A = A + n*n';
    b = b + n*(n' * p);
end

xy = A \ b;
end