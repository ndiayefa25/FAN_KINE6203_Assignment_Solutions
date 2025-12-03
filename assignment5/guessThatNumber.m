function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  
    % Bug: The code claims the level input is not valid and redirects the
    % user to re-enter their level of play. To fix this, I replaced the ||
    % with &&.
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner 
    % Bug: I found this when running the code and receiving an error
    % message. The error was an incorrect use of =. To fix this, I added an
    % additional = to compare level and beginner instead of assigning level
    % to beginner. 

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; 
    % Bug: The H in advancedHighest was lowercase instead of uppercase.
    % This causes the computer to look for a different variable named
    % advancedhighest. To fix this, I made the H uppercase.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1 highest]); 
    % Bug: The original code set the secret number to the highest number
    % depending on the level the user is playing at. To fix this, I used
    % the randi function and set the min and max to 1 and whatever the
    % highest number is for the level. This allows for a single interger to
    % be chosen from the range you specify.

% initialize number of guesses and User_guess

numOfTries = 1;
    % Bug: numOfTries was originally set to 0. When guessing the correct
    % number, it stated that the user got it correct in one less try than
    % it actually took. I changed this by setting the numOfTries to 1. 
userGuess = 0; 

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');


while userGuess < 1 || userGuess > highest
    % Bug: The original code excludes the highest number from being a guess
    % for the user. To fix this, I removed the =. This allows for the user
    % to enter the highest number as a guess and excludes any number
    % greater than it.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
userGuess = input('');

end % of guess validation loop


% report whether the user's guess was high, low, or correct

if userGuess < secretNumber 
    % Bug: The original code had the wrong sign. To fix this, I put <
    % instead of >. The original code would tell the user that the guess
    % was too low when the guess is greater than the secret number.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1 && userGuess == secretNumber
    % Bug: The original code only takes the numOfTries into consideration.
    % It doesn't have anything about the secret number. To fix this, I
    % added a condition comparing userGuess and secretNumber. Both
    % conditions need to be true for the string to be printed.
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries);
    % Bug: The original code only displayed secretNumber instead of both
    % secretNumber and numOfTries. To fix this, I included numOfTries in the
    % condition.
end 
    % Bug: If statement was missing an end.

 numOfTries = numOfTries + 1; % add 1 to the number of guesses the user has made
    % Bug: numOfTries was in the wrong place. I moved it to the end of the
    % if statement. This allows for it to update everytime the user
    % guesses.
end  % of guessing while loop

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
    % Bug: It was in the wrong place. I moved it to outside of the guessing
    % while loop. This prints the string after the user guesses the secret
    % number.

% end of game