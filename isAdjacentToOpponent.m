function adjacent=isAdjacentToOpponent(board,turn)
adjacent=false;
head=turn*10+turn;
[hRow hCol]=find(board==head);
turn=changeTurn(turn);
opponent=turn*10+turn;
[oRow oCol]=find(board==opponent);
rowDiff=abs(hRow-oRow);
colDiff=abs(hCol-oCol);
    if ( ((rowDiff==1) && (rowDiff == 0)) || ((colDiff == 1) && (colDiff==0)) )
        adjacent = true;
    end

end