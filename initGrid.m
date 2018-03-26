function grid=initGrid(board,p1,p2)
gap=50;
grid=drawBoundry(board,50);
grid(1:48,351:398)=p1;
grid(351:398,1:48)=p2;
end