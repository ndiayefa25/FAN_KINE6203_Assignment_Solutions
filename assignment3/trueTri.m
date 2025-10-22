function [triSum] = trueTri(in1)
% Use to determine if a triangle is true or not. There is one input (which
% should be the sides of the triangle) and one output. Assign the array to
% a variable prior to calling the function in the command window. The
% variable can now be using in place of the input.
% Example: tri = [3 4 5]. trueTri(tri)

% Sorts the input in order from smallest to largest. 
in1 = sort(in1);
% Assigns the sides of the triangle to a variable. Because the input is
% sorted, a and b will always be the smaller values and c will always be
% the largest value.
a = in1(1);
b = in1(2);
c = in1(3);
if (a + b) < c
    triSum = false;
elseif (a + b) > c
    triSum = true;
end
% The statement above checks to see if the sum of a and b is great than c.
% If it is greater than c, the triangle is true and the function will
% return true (1). If the sum is less than c, the triangle is not true and the
% function will return false (0).
end