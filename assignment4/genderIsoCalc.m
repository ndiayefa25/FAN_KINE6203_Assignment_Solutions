function [mensMeanIso,womensMeanIso,mensMean,womensMean] = genderIsoCalc(gen, D1, D2, D3)
% This function will calculate the mean for each individual across the three
% days of trial along with the group mean based on the individual means.
% There are four outputs and four inputs. 

% Syntax example: [mensIndIso, femaleIndIso, menGroup, womenGroup] =
% genderIsoCalc(Gender, Day1, Day2, Day3)

% Sets the output to an empty matrix to prevent the size from changing
% every time the loop runs.
mensMeanIso = zeros(1,14)';
womensMeanIso = zeros(1,14)';

% Looks at the length of gen and pulls the value for each subject from each
% input. If the gender is male, it will pull the data for that subject and
% add them up and divide it by three.
for i = 1:length (gen)
    if gen(i) == 'M'
        mensMeanIso(i) = (D1(i) + D2(i) + D3(i)) / 3';
    elseif gen(i) == 'F'
        womensMeanIso(i)= (D1(i) + D2(i) + D3(i)) / 3';
    end    
end

% Uses the mean function to determine the average of the individual gender means.
% Nonzeros tells the function to use the values that are not zeros to
% calculate the mean.

mensMean = mean (nonzeros(mensMeanIso))';
womensMean = mean (nonzeros(womensMeanIso))';

