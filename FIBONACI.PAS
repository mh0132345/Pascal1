PROGRAM fibonaci;
VAR n,f1,f2,f3,i:int64;
BEGIN
write('nhap n');
readln(n);
f1:=1;
f2:=1;
WHILE f3<n DO
BEGIN
f3:=f1+f2;
IF f3<n THEN write(f3);
f1:=f2;
f2:=f3;
END;
readln
 END.




