function isValid=validateSelection(x,y,board,turn)
head=turn*10+turn;
gap=50;
x=floor(x/gap)+1;
y=floor(y/gap)+1;
fprintf('Validation x: %d y: %d',x,y);
isValid=false;
[hRow hCol]=find(board==head,1);
if hRow==y && hCol==x
    isValid=true;
end
end