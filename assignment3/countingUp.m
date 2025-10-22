function countingUp(in1,in2)
% Displays the numbers in between the two inputs along with the input.

% This checks to see if in1 is bigger than in2 and vice versa. This way the
% order the user enters the input does not matter. Everytime the loop runs, the
% smaller input is updated. Once the smaller input is equal to the larger
% one, the loop will stop running.
while in1 < in2
    disp(in1)
    in1 = in1 + 1;
end
while in2 <= in1
    disp(in2)
    in2 = in2 +1;
end
