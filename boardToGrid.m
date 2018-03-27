function grid=boardToGrid(board,p1,p2,pv1,pv2)
gap=50;
grid=drawBoundry(board,gap);
[rows cols]=size(board);
    for i=1:rows
        for j=1:cols
            if board(i,j)==11
                %fprintf('i: %d j: %d',i,j);
                grid=placePicture(i,j,grid,p1);
            elseif board(i,j)==22
                grid=placePicture(i,j,grid,p2);
            elseif board(i,j)==1
                grid=placePicture(i,j,grid,pv1);
            elseif board(i,j)==2
                grid=placePicture(i,j,grid,pv2);
            end
        end

    end
end