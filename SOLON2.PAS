program solonthu2;
procedure nhapvao;
var a:array[1..100] of integer;
n,i,j,tg:integer;
begin
write('nhap so phan tu');
readln(n);
for i:=1 to n do
begin
write('nhap phan tu thu',i);
readln(a[i]);
end;
for i:= 1 to n do
for j:=i+1 to n do
if a[i]>a[j] then
begin
tg:=a[i];
a[i]:=a[j];
a[j]:=tg;
end;
write('so lon thu hai');
writeln(a[i-1]);
end;
begin
nhapvao;
readln;
end.