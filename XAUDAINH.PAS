program ten;
var n,m,i,j,max:integer;
a:array[1..10,1..10]of string;
st:string;
begin
write('nhap n,m');
readln(n,m);
for i:=1 to m do
for j:=1 to n do
begin
write('a[',i,j,']');
readln(a[i,j]);
end;
st:=a[1,1];
max:=length(a[1,1]);
for i:=1 to m do
for j:=1 to n do
if max<length(a[i,j]) then
begin
st:=a[i,j];
max:=length(a[i,j]);
end;
write('xau dai nhat',st);
write('do dai',max);
readln
end.
