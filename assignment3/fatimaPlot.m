function fatimaPlot(vec1,vec2)
% This function plots a graph based on the data the user inputs using built in MATLAB functions.
% Assign vectors to variables in the command window.
% When using the function, use the variables as the inputs.
% Example: vec1 = [2 3 4 6 8] vec2= [4 7 8 3 5]. fatimaPlot(vec1, vec2)

% The MATLAB plot function requires the vectors to be the same length in
% order for it to work. This error will pop up if the vector lengths are
% different. The user will be reminded to check their inputs and make sure
% they are the same length
if length(vec1) ~= length(vec2)
    error(['Vectors need to be the same length in order to move forward.' ...
        ' Make sure vectors have the same number of elements '])
end 

figure
plot(vec1,vec2);
title('Vec2-Vec1 graph')
xlabel('Vec1')
ylabel('Vec2')
end