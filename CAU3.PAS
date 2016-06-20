program timso;
uses crt;
var i,n, max,min:integer;
a:array[1..100] of integer;
begin
clrscr;
write('nhap n');
readln(n);
for i:=1 to n do
begin
write('a[',i,']');
readln(a[i]);
end;
max:=a[1];
min:=a[1];
for i:= 2 to n do
begin
if max<a[i] then max:=a[i];
if min>a[i] then min:=a[i];
end;
write('so lon nhat',max);
write('so be nhat',min);
readln
end.