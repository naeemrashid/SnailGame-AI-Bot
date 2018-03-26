function isLegal=isLegal(x,y,board,turn)
[rows cols]=size(board);
isLegal=false;
    currentPos=turn*10+turn;
    [cRow cCol]=find(board==currentPos,1);
    if(board(x,y)==0)
        if ((x-1==cRow || x+1==cRow)&& y==cCol)
            isLegal=true;
        elseif((y-1==cCol || y+1==cCol)&& x==cRow)
            isLegal=true;
        end
    elseif(board(x,y)==turn)
        if x==cRow
            %fprintf('Entered row: \n');
            st=0;en=0;
            if(cCol>y)
                st=y;
                en=cCol;
            else
                st=cCol;
                en=y;
            end
            for i=st:en
                if(board(x,i)~=turn && board(x,i)~=currentPos)
                    isLegal=false;
                    return;
                end
            end
            if y-1>0 && y+1<cols+1
                %fprintf('coming \n');
                if (board(x,y-1)==turn || board(x,y-1)==currentPos) && (board(x,y+1)==turn || board(x,y+1)==currentPos)
                    isLegal=false;
                    return;
                else
                    isLegal=true;
                end
            else
                isLegal=true;
            end
        elseif y==cCol
            %fprintf('Entered col: \n');
            diff=x-cRow;
            %fprintf('Entered col in diff: %d \n',diff);
            st=0;en=0;
            if(cRow>x)
                st=x;
                en=cRow;
            else
                st=cRow;
                en=x;
            end
            %fprintf('st: %d en: %d \n',st,en);
            for i=st:en
                if(board(i,y)~=turn && board(i,y)~=currentPos)
                    isLegal=false;
                    %fprintf('i: %d y: %d\n',i,y);
                    return;
                end
            end
            if x-1>0 && x+1<rows+1
                %fprintf('coming \n');
                if (board(x-1,y)==turn || board(x-1,y)==currentPos) && (board(x+1,y)==turn || board(x+1,y)==currentPos)
                    isLegal=false;
                    return;
                else
                    isLegal=true;
                end
            else
                isLegal=true;
            end
            
        end
    else
        isLegal=false;
    end     
end
%fprintf('isLegal %d: %d \n',turn,isLegal);
