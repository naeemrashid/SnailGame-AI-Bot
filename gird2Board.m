function board=gird2Board(board,x,y,turn)
gap=50;
agentTurn=2;
head=turn*10+turn;
[pRow pCol]=find(board==head,1);
board(pRow,pCol)=turn;
%if turn~=agentTurn
%    x=floor(x/gap)+1;
%    y=floor(y/gap)+1;
%end
board(x,y)=head;
end