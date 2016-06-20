program cau2b;
var i,n,x,y,dem:integer;
a:array [1..100] of integer;
begin
write('nhap n');
readln(n);
for i:=1 to n do
begin
write('a[',i,']');
readln(a[i]);
end;
dem:=0;
x:=0;
y:=0;
for i:=1 to n do
begin
if a[i] mod 2<>0 then x:=x+a[i]
  else
  begin
  dem:=dem+1;
  y:=y+a[i];
end;
end;
write('tong cac so le',x);
writeln('trung binh cong cac so chan',y/dem);
readln
end.
