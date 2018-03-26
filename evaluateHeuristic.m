function heuristic=evaluateHeuristic(board,turn)
heuristic=0;
 adjacent=isAdjacentToOpponent(board,turn);
 adjacentToVis=adjacentToVisited(board,turn);
 atEdge=isAtEdge(board,turn);
 blocked=opponentBlocked(board,turn);
 if blocked 
     heuristic=heuristic+100;
 end
 if adjacent && atEdge 
     heuristic=heuristic+90;
 end
 if adjacent
     heuristic=heuristic+80;
 end
 if adjacentToVis
     heuristic=heuristic+70;
 end
end