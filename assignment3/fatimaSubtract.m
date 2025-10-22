function [out1] = fatimaSubtract(in1,in2)
% Subtracts the smaller input from the larger input. Two inputs are needed
% and there is one output

% This statement checks to see if in1 is larger than in2 and vice versa.
% The smaller input is subracted from the larger input. The difference is
% assigned to out1.
if in1 >= in2
    out1= in1-in2;
elseif in2 >= in1
    out1= in2- in1;
end
end