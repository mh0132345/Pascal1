PROGRAM subseq;
TYPE mang= ARRAY [1..100] OF INTEGER;
VAR n,dau, cuoi, d,min:LONGINT;
max, T,i,j:LONGINT;
FUNCTION getmax(a:mang):INTEGER;
BEGIN
    min:=a[1];
    FOR i:=1 TO n DO
    IF a[i]<max THEN max:=a[i];
    getmax:= max;
END;
PROCEDURE input;
BEGIN
Readln(n);
FOR i:=1 TO n DO
BEGIN
readln(j); T:=T + j ;
END;
END;
PROCEDURE solve;
BEGIN
dau:=1; cuoi:=1; d:=1;
max:=-maxlongint; T:=0;
FOR i:=1 TO n DO
BEGIN
IF T> max THEN 
BEGIN
max:=T;
dau:=d; cuoi:=i;
END;
IF T<0 THEN BEGIN T:=0; d:=i+1; END;
END;
END;
PROCEDURE output;
BEGIN
writeln(dau);
writeln(cuoi);
writeln(max);
END;
BEGIN
input;
solve;
output;
readln
END. 