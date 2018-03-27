function result=evaluateBoard(board,turn)
[row col]=size(board);
   if(length(find(board==turn))+1>32) 
        result=10;
        return;
    end
    for i=1:row
        for j=1:col
            if board(i,j)==0
                result=0;
                return
            end
        end
    end
    result=5;
    fprintf('score of %d: %d \n',turn,result);
end