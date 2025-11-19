% Fatimata N'diaye
% Kine 6203
% 19 November 2025

% The purpose of this script is to import Isokinetic testing data and
% calculate the mean for the specified variables. After finding the means,
% a table is created with the newly found variables and
% exported as a CSV file.

% Imports the data as column vectors instead of a table. Because of how the
% function was created, the user just has to call it and the data
% automatically goes into column vectors. No additional work is needed.

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3]...
    = importfile("isok_data_6803.csv", [2, Inf]);

% Provides the individual means for each sex and the mean for each
% group based on the individual means. 
 [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]...
     = genderIsoCalc(Gender, Day1, Day2, Day3);

% Lists the subject IDs for the participants who improved from day 1 to day
% 2 and day 2 to day 3.
[day1toDay2] = dayComparer(SubjectID, Day1, Day2);
[day2toDay3] = dayComparer(SubjectID, Day2, Day3);

% Provides the group mean across the three days with normalized data.
[normDay1mean] = weightNormalized(Weight, Day1);
[normDay2mean] = weightNormalized(Weight, Day2);
[normDay3mean] = weightNormalized(Weight, Day3);

% Fills in the empty spaces for variables with a smaller amount of rows
femaleIsoIndMeans = paddata(femaleIsoIndMeans, 25);
day1toDay2 = paddata(day1toDay2, 25);
day2toDay3 = paddata(day2toDay3, 25);
maleGroupIsoMean = paddata(maleGroupIsoMean, [25,1]);
femaleGroupIsoMean = paddata(femaleGroupIsoMean,[25,1]);
normDay1mean = paddata(normDay1mean, [25, 1]);
normDay2mean = paddata(normDay2mean, [25, 1]);
normDay3mean = paddata(normDay3mean, [25, 1]);

% Creates a new table of the variables
isoTable = table(femaleIsoIndMeans, maleIsoIndMeans, femaleGroupIsoMean,...
    maleGroupIsoMean, day1toDay2, day2toDay3,normDay1mean, normDay2mean, ...
    normDay3mean);

% Saves the table of variables into a csv file
writetable(isoTable,'iso_results.csv');