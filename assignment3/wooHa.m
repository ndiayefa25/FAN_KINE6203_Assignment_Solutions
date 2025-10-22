function [result] = wooHa(in1, in2)
% Determines if the sum of the inputs is even or odd. Displays Woo if the
% sum is even and Hah if the sum is odd. Two inputs are needed and there is
% one output.

%   Uses the mod function to check remainder of the sum divided by 2 is 0.
%   The sum is even if the remainder is 0 and odd if the remainder is not
%   0.
if mod(in1 + in2, 2) == 0
    result = 'Woo';
elseif mos(in1 + in2, 2) ~= 0
    result = 'Hah';
end

end