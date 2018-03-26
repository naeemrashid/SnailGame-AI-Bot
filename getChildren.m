function children=getChildren(board,turn)
[row col]=size(board);
head=turn*10+turn;
[hRow hCol]=find(board==head);
 moveCount = 0;
 if hRow+1<=8 && (board(hRow+1,hCol)==0 || board(hRow+1,hCol)==turn)
     moveCount=moveCount+1;
 end
 if hRow-1>0 && (board(hRow-1,hCol)==0 || board(hRow-1,hCol)==turn)
     moveCount=moveCount+1;
 end
 if hCol+1<=8 && (board(hRow,hCol+1)==0 || board(hRow,hCol+1)==turn)
     moveCount=moveCount+1;
 end
 if hCol-1>0 && ( board(hRow,hCol-1)==0 || board(hRow,hCol-1)==turn)
     moveCount=moveCount+1;
 end
 if moveCount==0
     children=[];
     return;
 else
     children=zeros(row,col,moveCount);
 end
 temp=1;
 for i=1:row
     for j=1:col
         if isLegal(i,j,board,turn)
             children(:,:,temp)=board;
              children(i,j,temp)=head;
              children(hRow,hCol,temp)=turn;
              temp=temp+1;
         end
     end
 end
end