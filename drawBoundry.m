function grid=drawBoundry(board,gap)
[rows,cols]=size(board);
grid=ones(rows*gap,cols*gap);
grid(:,50)=0;
grid(:,100)=0;
grid(:,150)=0;
grid(:,200)=0;
grid(:,250)=0;
grid(:,300)=0;
grid(:,350)=0;
grid(50,:)=0;
grid(100,:)=0;
grid(150,:)=0;
grid(200,:)=0;
grid(250,:)=0;
grid(300,:)=0;
grid(350,:)=0;
end