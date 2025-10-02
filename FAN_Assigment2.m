% Fatimata N'diaye
% 1 October 2025
% This script is intended for the user to play the game Tic Tac Toe against
% the computer

disp('Welcome');
disp('Would you like to play a game?');
userResponse = input("Enter your response (Y/N):", "s");
board = zeros(3,3);

if lower(userResponse) == "y" 
   disp('Great! Let''s get started');
   disp(board)
elseif lower(userResponse) == "n" 
   disp('Maybe next time');
end

activePlayer = 1;
compPlayer = 2;
empty = find(board==0); %variable to find the availabe spaces on the board
count = 0;  
if lower(userResponse)== "y"
    while true % the user is able to override the computer move
               % based on how they input their move. hopefully they chose to be honest and not cheat :)
    row = input('Enter a row 1-3:');
    col = input('Enter a col 1-3:');
        while row > 3 || col > 3 % redirects the user to enter a number within the available range if the enter a number greater than 3.
            disp('Error: Row  and Col must be between 1 and 3')
            row = input('Enter a row 1-3:'); % row and col allows for the user to chose a spot for their move
            col = input('Enter a col 1-3:');
        end
    board(row,col) = activePlayer;
    disp(board) % updates the board to match the move that the user makes
    compMoveIndex = randi(length(empty)); % generates a move for the computer to make from the empty spaces available.
    % the computer does sometimes override the user move. i couldn't figure out how to completely get rid of the issue :/  
    compMove = empty(compMoveIndex);
    board(row,col) = compPlayer;
    [row,col] = ind2sub(size(board), compMove);
    count = count + 1;
            if compMove == 2
                row = 1;
                col = 2;
            elseif compMove == 3
                row = 1;
                col = 3;
            elseif compMove == 4
                row = 2;
                col = 1;
            elseif compMove == 5
                row = 2;
                col = 2;
            elseif compMove == 6
                row = 2;
                col = 3;
            elseif compMove == 7
                row = 3;
                col = 1;
            elseif compMove == 8
                row = 3;
                col = 2;
            elseif compMove == 9
                row = 3;
                col = 3;
            end
    disp(board) % updates the board to match the move the computer makes
    empty= find(board==0); % this should update everytime a move is made, allowing the computer to make a move based on the spaces that are free.
                if count >= 3 % checks for a win or draw based on the coordinates of the player
                    if (board(1,1) == board (1,2)) && (board (1,2) == board(1,3)) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(2,1) == board(2,2)) && (board(2,2) == board(2,3)) && board(2,1) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(3,1) == board(3,2)) && (board(3,2) == board(3,3)) && board(3,1) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(1,1) == board(2,1)) && (board(2,1) == board(3,1)) && board(1,1) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(1,2) == board(2,2)) && (board(2,2) == board(3,2)) && board(1,2) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(1,3) == board(2,3)) && (board(2,3) == board(3,3)) && board(1,3) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(1,1) == board(2,2)) && (board(2,2) == board(3,3)) && board(1,1) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif (board(1,3) == board(2,2)) && (board(2,2) == board(3,1)) && board(1,3) == 1
                        disp('Congrats! You Win');
                        break;
                    elseif ~any(board(:) == 0)
                        disp('It''s a draw!');
                        break;
                    end
                        if count >= 6
                             % checks for a win or draw based on the coordinates of the player
                                if (board(1,1) == board (1,2)) && (board (1,2) == board(1,3)) == 2
                                    disp('Computer wins');
                                    break;
                                elseif (board(2,1) == board(2,2)) && (board(2,2) == board(2,3)) && board(2,1) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(3,1) == board(3,2)) && (board(3,2) == board(3,3)) && board(3,1) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(1,1) == board(2,1)) && (board(2,1) == board(3,1)) && board(1,1) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(1,2) == board(2,2)) && (board(2,2) == board(3,2)) && board(1,2) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(1,3) == board(2,3)) && (board(2,3) == board(3,3)) && board(1,3) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(1,1) == board(2,2)) && (board(2,2) == board(3,3)) && board(1,1) == 2
                                       disp('Computer wins');
                                       break;
                                elseif (board(1,3) == board(2,2)) && (board(2,2) == board(3,1)) && board(1,3) == 2
                                       disp('Computer wins');
                                       break;
                                elseif ~any(board(:) == 0)
                                       disp('It''s a draw!');
                                       break;
                                end
                         end
                end   
    end      
end
      


 




  



    







