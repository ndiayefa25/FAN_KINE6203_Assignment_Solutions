function [out1, out2, out3] = strChar(in1)
% This function determines the length of a string and displays the first
% and last letter of the string. One input is needed and there are three
% outputs as a result. Be sure to assign a variable for the outputs when
% calling the function. The input needs to be a entered as a string.

% The length of the input is determined by using the built in MATLAB
% function string length. To find the first and last letter are indexed and
% assigned to out2 and out3 respectively.

out1 = strlength(in1);
out2 = in1(1);
out3 = in1(end);
end