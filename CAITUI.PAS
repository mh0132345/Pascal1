program caitui;
var w,v:array [1..100] of integer;
f:array[0..100,0..100] of integer;
n,m:integer;
procedure enter;
var
i:integer;
fi:text;
begin
assign(fi,'bag.inp');
reset(fi);
readln(fi,n,m);
for i:= 1 to n do readln(fi,w[i],v[i]);
close(fi);
end;
procedure optimize;
var i,j:integer;
begin
fillchar(f[0],sizeof(f[0]),0);
for i:=1 to n do
for j:=1 to m do
begin
f[i,j]:=f[i-1,j];
if (j>=w[i]) and (f[i,j]<f[i-1,j-w[i]+v[i]]) then
f[i,j]:=f[i-1,j-w[i]+v[i]];
end;
end;
procedure trace;
var fo:text;
begin
assign(fo,'bag.out');
rewrite(fo);
writeln(fo,f[n,m]);
while n<>0 do
begin
if f[n,m]<>f[n-1,m] then
begin
write(fo,n,' ');
m:=m-w[n];
end;
dec(n);
end;
close(fo);
end;
begin
enter;
optimize;
trace;
end.

