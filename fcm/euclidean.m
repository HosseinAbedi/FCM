% A function for calculation of euclidean distance of a point x(e.g. [3, 2, 1, 1]) from... 
% ...a set of points in matrix format Y(e.g. [3, 2, 1, 2; 4, 3, 2, 1])
function [d] = euclidean(x, Y)
           S = size(Y);
           d = sum((repmat(x, [S(1),1])-Y).^2, 2);
           d = sqrt(d);
end