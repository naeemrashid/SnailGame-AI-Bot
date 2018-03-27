function nextBoard=findBestMove(board,turn)
moves=getChildren(board,turn);
nextBoard=board;
head=turn*10+turn;
[r,c,index] = size(moves);
scores = zeros(1,index);
    for i=1:index
        hArea=0;
        vArea=0;
        temp = moves(:,:,i);
        for j=1:length(temp)
            if length(find(temp(:,j)==turn))>0 || length(find(temp(:,j)==head))>0
                hArea = hArea + 1;
            end
             if length(find(temp(j,:)==turn))>0 || length(find(temp(j,:)==head))>0
                vArea = vArea + 1;
             end
        end
        scores(i) = hArea*vArea;
        fprintf('hArea: %d vArea: %d \n',hArea,vArea);
        nearestToOpponent=evaluateHeuristic(board,turn);
        if nearestToOpponent>scores(i)
            scores(i)=nearestToOpponent;
            fprintf('Near to Opponent: \n');
        end
        if(isScoreAdded(board,temp))
            scores(i)=scores(i)+10;
        end
    %[chase index]=chaseOpponent(board,turn);
%    fprintf('Got you nigga: %d , best move: %d',chase,index);
    [value,ind] = max(scores);
    %if(index)
    %    ind=index;
    %end
    nextBoard = moves(:,:,ind);
    end
end