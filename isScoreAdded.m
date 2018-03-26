function scoreAdded=isScoreAdded(board,childBoard)
    if(length(find(~board))>length(find(~childBoard)))
       scoreAdded=true;
    else
       scoreAdded=false;
    end
end