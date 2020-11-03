  
function plotv3(v_start, v_end, v_size, v_color)
% This function is used to plot 3d vectors.
%
% Parameters:
%   v_start: the start point of a vector
%   v_end: the end point of a vector
%   v_size: the vector line width, optional
%   v_color: the vector's color, optional
%
% Examples:
%   plotv3([0,0,0],[1,1,1]), plot a vector
%   plotv3(p1, p2, 2), plot a vector,line width is 2
%   plotv3(p1, p2, 2, 'g'), plot a vector, line width is 2, color is green
%
% @Author: luoqi 
% @Date: 2020-11-03 20:25:48 

    v_style = quiver3(v_start(1),v_start(2),v_start(3), ...
                      v_end(1), v_end(2), v_end(3));
    v_style.MaxHeadSize = 0.3;
    v_style.LineWidth = 1.5;
    if nargin > 2
       v_style.LineWidth = v_size;
    end
    if nargin >3
        v_style.Color = v_color;
    end
    if nargin > 4 
        fprintf("Most 4 inputs\n");
    end
    
end

