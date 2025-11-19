function [out1] = dayComparer(subID, d1, d2)
% The purpose of this function is to list the subject IDs of the
% individuals who improved from one day to another. It requires 3 inputs
% and has 1 output.

% Syntax example: [day1toDay2]= dayComparer(SubjectID, Day1, Day2)

% Sets the output to an empty matrix. Prevents the size from changing
% everytime the loop runs.
out1 = zeros(1,12)';

% Looks at the length of subjectID and pulls the value for each subject. If
% the value for day 2 is greater than day 2, the ID will be included in the
% output. The loop runs until the end of subjectID.
for i = 1:length(subID)
    if d2(i) > d1(i)
        out1(i) = subID(i)';
    end
end
    
end

