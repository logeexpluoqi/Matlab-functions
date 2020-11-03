  
function plotmv3(m)
% This function is used to plot 3d column vectors of a 3xn matrix.
%
% Parameters:
%   m: a 3xn matrix.
%
% Examples:
%   plotmv3(m);
%
% @Author: luoqi 
% @Date: 2020-11-03 21:25:28 

    [row, col] = size(m);
    
    if row ~= 3
       fprintf("error! not 3 dimention");
    end
    
    for i=1:col
        v_style = quiver3(0,0,0, m(1,i), m(2,i), m(3,i));
        v_style.MaxHeadSize = 0.3;
        v_style.LineWidth = 1.5;
        hold on;
    end  
end

