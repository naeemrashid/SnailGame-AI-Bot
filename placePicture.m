function grid=placePicture(x,y,grid,I)
%x=floor((x-1)/50)*50;
%y=floor((y-1)/50)*50;
gap=50;
%x=x*gap;
%y=y*gap;
%fprintf('x is :%i\n', x);
%fprintf('y is :%i\n', y);
%fprintf('RS: %d RE: %d CS: %d CE: %d \n',x*gap-48,x*gap-2,y*gap-48,y*gap-2);
grid((x*gap-49:x*gap-2),(y*gap-49:y*gap-2))=I;
%grid(y+1:y+48,x+1:x+48)=I;

end
