function [nextMove, value,score]=minmax(board,grid,depth,isMax)
agentTurn=1;
playerTurn=2;
[rows cols]=size(board);
if(depth==0 || evaluateBoard(board,agentTurn)==10 || evaluateBoard(board,playerTurn)||evaluateBoard(board,agentTurn)==5 )
    score=evaluateHeruistic(board,agentTurn);
    return;
else
    depth=depth-1
    
end
    if isMax
         %fprintf('else \n');
        bestMove=-20;
        moves=getChildren(board,grid,agentTurn);
        [r,c,w] = size(moves);
        %fprintf('Total movesS: %d \n',w);
            for i=1:w
              tempBoard=moves(:,:,i);
              bestMove= max(bestMove,minmax(tempBoard,grid,depth+1,~isMax));
            end
        return;
    else
       bestMove=20;
     moves=getChildren(board,grid,playerTurn);
        [r,c,w] = size(moves);
            for i=1:w
              tempBoard=moves(:,:,i);
              bestMove= max(bestMove,minmax(tempBoard,grid,depth+1,~isMax));
              
            end
        return;
    end   
end