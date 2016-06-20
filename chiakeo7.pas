VAR k,j,i,n,n1,tong,tong1,tong2,c:LONGINT;
a,b,d:ARRAY[0..100] OF INTEGER;
PROCEDURE nhap;
BEGIN
Write('Nhap n= ');Readln(n);
tong:=0;
FOR i:=1 TO n DO
BEGIN
Write('a[',i,']= ');
Readln(a[i]);
tong:=tong+a[i];
END;
END;
PROCEDURE Print;
VAR i:INTEGER;
BEGIN
tong1:=0;
FOR i:=1 TO k DO tong1:=tong1+a[b[i]];
IF (c> abs((tong-tong1)-tong1 )) THEN
BEGIN
c:=abs((tong-tong1)-tong1 );
d:=b;
n1:=k;
tong2:=tong1;
END;
END;
PROCEDURE Deq(i:INTEGER);
VAR j:INTEGER;
BEGIN
FOR j:=b[i-1]+1 TO n-k+i DO
BEGIN
b[i]:=j;
IF i=k THEN Print
ELSE Deq(i+1);
END;
END;
{in mang ra}
PROCEDURE in_;
VAR i:INTEGER;
BEGIN
FOR i:=1 TO n1 DO
BEGIN
write(a[d[i]],' ');
a[d[i]]:=-1;
END;
write('Tong : ',tong2);
writeln;
FOR i:=1 TO n DO
IF a[i]>0 THEN
write(a[i],' ');
write('Tong : ',tong - tong2);
END;
BEGIN
nhap;
b[0]:=0;
c:=tong;
FOR k:=1 TO n-1 DO Deq(1);
in_;
readln;
END.