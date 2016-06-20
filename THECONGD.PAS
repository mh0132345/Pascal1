program thecongdan;
var a,s,n,i:longint;st:string;ch:char;X:integer;
function xacdinh(a:longint):integer;
begin
s:=0;
str(a,st);
for i:=1 to length(st) do
begin
     val(st[i],n,x);
     case i of
     1: n:=n*2;
     2: n:=n*7;
     3: n:=n*6;
     4: n:=n*5;
     5: n:=n*4;
     6: n:=n*3;
     7: n:=n*2;
     end;
    s:=s+n;
end;
xacdinh:=s mod 11;
end;
begin
write('nhap a');
readln(a);
case xacdinh(a) of
     0: ch:='J';
     1: ch:='A';
     2: ch:='B';
     3: ch:='C';
     4: ch:='D';
     5: ch:='E';
     6: ch:='f';
     7: ch:='G';
     8: ch:='H';
     9: ch:='I';
     10: ch:='Z';
end;
write(a,ch);
readln
end.

