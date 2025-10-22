function [sum, difference, product, maxVal] = basicInfo(in1,in2)
% This function will find the sum, difference, max, and product of the input
% values. Two inputs are needed for this function and they need to be
% intergers.

sum = in1 + in2; % The inputs are added together to find the sum.

% This if statement, subtracts the smallest number from the largest number.
% It checks to see if input 1 is larger than input 2 and vice versa. This
% way the order of input does not matter and the correct operation is done.
% The maximum value is also determined within the if statement because of
% the conditional used.
if in1 > in2   
    difference = in1 - in2;
    maxVal= in1;
elseif in2 > in1
    difference = in2 - in1;
    maxVal = in2;
end 

product = in1 * in2;
end