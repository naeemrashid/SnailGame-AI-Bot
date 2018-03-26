function blocked=opponentBlocked(board,turn)
blocked=true;
turn=changeTurn(turn);
for i=1:length(board)
    for j=1:length(board)
        if (board(i,j)==0 && isLegal(i,j,board,turn))
            blocked=false;
        end
    end
end
end