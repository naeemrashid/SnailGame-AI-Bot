function atEdge=isAtEdge(board,turn)
head=turn*10+turn;
atEdge=false;
[row col]=find(board==head);
if (row==1 || row==8 || col==1 || col==8)
    atEdge=true;
end
end