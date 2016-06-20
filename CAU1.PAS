 program cau1;
 uses crt;
 var i,n,tg,x,y:integer;
 a: array [1..100] of integer;
 begin
 write('nhap n');
 readln(n);
 for i:=1 to n do begin
 write('a[',i,']');
 readln(a[i]);
 end;
 x:=0;
 for i:=1 to n do
 begin
 if (a[i] mod 3 = 0) and (a[i] mod 2<>0) then
 begin
 x:= x+1;
 tg:=a[i];
 a[i]:=a[x];
 a[x]:=tg;
 end;
 end;
 y:=x;
 for i:=y to n do
 begin
 if a[i] mod 3 <>0 then
 begin
 x:=x+1;
 tg:=a[i];
 a[i]:=a[x];
 a[x]:=tg;
 end;
 end;
 write('day moi');
 for i:=1 to n do write(a[i]);
 readln
 end.