program jhj;
uses crt;
var tong,i,n:longint;
procedure  nhap(n:longint);
var i,tong:integer;
begin
tong:=0;
for i:=1 to n do tong:=tong+i;
writeln('tong la',tong);
end;
begin
clrscr;
write('nhap n');
readln(n);
nhap(n);
readln
end.