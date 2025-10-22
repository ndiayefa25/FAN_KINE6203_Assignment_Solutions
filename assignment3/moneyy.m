function [dollars] = moneyy(pennies,nickels,dimes,quarters)
% Converts cents to dollars based on the amount of entered. Inputs should
% be the amount of each coin the user has. 
dollars = (pennies * 0.01) + (nickels * 0.05) + (dimes * 0.10) + ...
    (quarters * 0.25);
% The amount of coins is multiplied by the value of the coin. The value of
% the amount of coin is added up to give the dollar amount.
end