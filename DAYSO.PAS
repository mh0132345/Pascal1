program tinh;
uses crt;
var n,m,i,j,tg: integer;
a: array [1..100] of integer;
begin
clrscr;
write('nhap n,m');
readln(n,m);
for i:= 1 to n do begin
write(' a[',i,']');
readln(a[i]);
end;
write('day so ban dau');
for i:=1 to n do write(a[i]);
for i:= 1 to n do
for j:=1 to n do
if a[i]<a[j] then
begin
 tg:=a[i];
 a[i]:=a[j];
 a[j]:=tg;
 end;
 write('day sap xep');
 for i:= 1 to n do write(a[i]);
 i:=1;
 while (m>a[i]) and (i<n) do i:=i+1;
 write('vi tri', i);
 if i>n then
 begin
 a[i+1]:=m;
 n:=n+1;
 end
 else begin
 for i:=n downto i do a[i+1]:=a[i];
 a[i+1]:=m;
 n:=n+1;
 end;
 write('day moi');
 for i:=1 to n do write(a[i]);
 readln
 end.