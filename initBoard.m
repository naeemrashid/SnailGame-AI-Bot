function board=initBoard(rows,column)
board=zeros(rows,column);
board(1,8)=11;
board(8,1)=22;
end