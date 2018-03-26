function adjacent=adjacentToVisited(board,turn)
adjacent=false;
head=turn*10+turn;
visited=changeTurn(turn);
[row col]=find(board==head)
if row~=1 && col~=1
    if board(row-1,col)==visited || board(row,col-1)==visited || board(row-1,col-1)==visited
        adjacent=true;
    end
elseif col~=8 && row~=8
    if board(row+1,col)==visited || board(row,col+1)==visited || board(row+1,col+1)==visited
    adjacent=true;
    end
end