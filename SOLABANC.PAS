program timban;
function uoc(k:integer):integer;
var i,tong:integer;
begin
tong:=0;
for i:=1 to k div 2 do
if k mod i =0 then tong:=tong+i;
uoc:=tong;
end;
var m,n:integer;
begin
for m:=1 to 10001 do
for n:=1 to 10001 do
if (uoc(m)=n) and (uoc(n)=m) then writeln(m,'va',n,'la ban cua nhau');
readln
end.
