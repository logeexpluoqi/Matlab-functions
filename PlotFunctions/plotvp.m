function plotvp(v1, v2, p_color, p_alpha, p_edge_color)
% This function is used to plot a plane formed by to vectors.
%
% Parameter:
%   v1: vector 1
%   v2: vector 2
%   p_color: plane color, optional
%   p_alpha: plane transparency, optional
%   p_edge_color: plane grid color, optional
%
% Examples:
%   plotvp([1,2,3],[2,3,4]), plot a plane formed by [1,2,3]' and [2,3,4];
%   plotvp(v1,v2,'r'), the plane is red;
%   plotvp(v1,v2,'r','0.5'), the red plane's alpha is 0.5;
%   plotvp(v1,v2,'r','0.5','g'), the plane with green grids.
%
% @Author: luoqi
% @Date: 2020-11-03 20:25:48 

    syms x y z;
    n = cross(v1,v2);
    z = (-n(1)*x - n(2)*y)/n(3);
    fs = fsurf(x,y,z);
    fs.FaceColor = '#cdcdcd';
    fs.FaceAlpha = 0.5;
    fs.EdgeColor = 'none';
    
    if nargin > 2
        fs.FaceColor = p_color;
    end
    if nargin > 3
        fs.FaceAlpha = p_alpha;
    end
    if nargin > 4
        fs.EdgeColor = p_edge_color;
    end
    if nargin > 5
        fprintf("Most 5 inputs\n");
    end
end