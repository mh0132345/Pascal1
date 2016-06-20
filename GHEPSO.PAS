PROGRAM ghepso;
VAR a:ARRAY[1..100] OF INTEGER;
VAR n,i,x,j:INTEGER;
b:ARRAY [1..100] OF STRING; 
tg,st:STRING;
PROCEDURE input;
BEGIN
write('nhap n');
readln(n);
FOR i:=1 TO n DO
BEGIN
write('nhap phan tu thu',i);
readln(a[i]);
str(a[i],st);
b[i]:=st;
END;
END;
PROCEDURE sosanh;
BEGIN
FOR i:=1 TO n DO
FOR j:=i+1 TO n DO
IF b[i]<b[j] THEN
BEGIN
tg:=b[i];
b[i]:=b[j];
b[j]:=tg;
END;
END;
BEGIN
input;
sosanh;
FOR i:=1 TO n DO write(b[i]);
readln
END.


