program chusotrongxau;
var st,s:string;dem,i,j:integer;
begin
write('nhap xau');
readln(st);
dem:=0;
for i:=1 to 9 do
begin
str(i,s);
for j:=1 to length(st) do
if st[j]=s then dem:=dem+1;
end;
write(dem);
readln
end.
