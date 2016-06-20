program solon;
var st,s1,s2,s:string;i,x,y,n1,n2,tg:integer;
tong:array [1..100] of string;
procedure them;
begin
if length(s1)>length(s2) then
begin
s1:='0'+s1;
for i:=1 to length(s1)-length(s2)+1 do
s2:='0'+s2;
end;
if length(s1)=length(s2) then
begin
s1:='0'+s1;
s2:='0'+s2;
end
else begin
s2:='0'+s2;
for i:=1 to length(s2)-length(s1)+1 do
s1:='0'+s1;
end;
end;
begin
write('nhap gia tri');
readln(s1,s2);
them;
s:='';
fillchar(tong,sizeof(tong), '');
for i:=length(s1) downto 1 do
begin
val(s1[i],n1,x);
val(s2[i],n2,y);
tg:=n1+n2;
str(tg,st);
tong[i]:=st;
end;
for i:=1 to length(s1) do
s:=s+tong[i];
writeln(s);
readln
end.


