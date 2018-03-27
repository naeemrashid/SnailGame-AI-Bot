function [r c weight]=getCenter(board,turn)
head=turn*10+turn;
mid=floor(length(board)/2);
weight=0;
r=mid;
c=mid;
[hRow hCol]=find(board==head);
if (abs(hRow-mid)>0 || abs(hCol-mid)>0)
    weight=10;
    r=mid;
    c=mid;
    return;
end