
board=initBoard(8,8);
p1=imread('PlayerOne.bmp');
p1 = imresize(p1,[48, 48]);
%p1 = rgb2gray(p1);

p2=imread('PlayerTwo.bmp');
p2=imresize(p2,[48, 48]);

pv1=imread('splash1.png');
pv1=imresize(pv1,[48, 48]);
pv1 = rgb2gray(pv1);
pv2=imread('splash2.png');
pv2=imresize(pv2,[48, 48]);
pv2 = rgb2gray(pv2);
grid=initGrid(board,p1,p2);
gap = 50;
%updating backend matirix
imshow(grid);

turn=1;
agentTurn=2;
result=evaluateBoard(board,turn);
    while result==0
        if turn~=agentTurn
            %[x,y]= ginput(1);
            %while ~validateSelection(x,y,board,turn);
            %    [x,y]= ginput(1);
            %end
            %fprintf('Selected: ');
            [x,y]= ginput(1);
             x=floor(x/gap)+1;
             y=floor(y/gap)+1;
            while (x<1 || x>8 || y<1 || y>8) || ~isLegal(y,x,board,turn);
                [x,y]= ginput(1);
                 x=floor(x/gap)+1;
                 y=floor(y/gap)+1;
            end
            board=gird2Board(board,y,x,turn); 
        else
            board=findBestMove(board,turn);
        end
        grid=boardToGrid(board,p1,p2,pv1,pv2);
        imshow(grid)
        result=evaluateBoard(board,turn);
        turn=changeTurn(turn);
    end
    if result==10
        turn=changeTurn(turn);
        message=['Player ',num2str(turn),' Wins'];
        msgbox(message,'Game End');
    elseif result==5
        msgbox('Game Draw','Game End');
    end