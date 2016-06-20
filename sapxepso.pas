PROGRAM sapxep;
VAR tg,i,j,n:INTEGER;
a:ARRAY[1..100] OF INTEGER;
BEGIN
write('nhap n');
readln(n);
FOR i:=1 TO n DO BEGIN
write('phan tu thu',i);
readln(a[i]);
END;
FOR i:=1 TO n-1 DO
FOR j:=i+1 TO n DO
IF a[i]>a[j] THEN BEGIN
 tg:=a[i];
 a[i]:=a[j];
 a[j]:=tg;
END;
write('day moi');
FOR i:=1 TO n DO write(a[i]);
readln;
END. 