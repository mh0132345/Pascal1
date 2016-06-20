program tinh;
var n,i,tong: integer;
a:array [1..100] of integer;
begin
write('nhap n');
readln(n);
for i:=1 to n do
begin
write('a[',i,']');
readln(a[i]);
end;
tong:=0;
for i:=1 to n do tong:=tong+a[i];
write('tong la',tong);
writeln('trung binh cong',tong/n:6:2);
readln end.
