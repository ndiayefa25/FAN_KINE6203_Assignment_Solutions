function [normDaymean] = weightNormalized(weight, day)
% This function normalizes the isokinetic data to weight. It divides the
% individual day data by the subject's weight. It takes two inputs and has
% one output.

% Syntax example: [normDay2Mean] = weightNormalized(Weight, Day) 

% Sets the output to an empty matrix. Prevents the size from changing
% everytime the loop runs.
normalizedDay = zeros(1,25)';

% Looks at the length of weight and pulls the value for each subject. It
% takes the subject's value for the day and divides it by their weight. The
% mean function is used to calculate the average.
for r = 1:length(weight)
    normalizedDay(r) = day(r)/weight(r);
    normDaymean = mean(normalizedDay)';
end
