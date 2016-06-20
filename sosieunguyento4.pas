USES crt;
VAR d,n,i,j: LONGINT;
    a,b:ARRAY[1..5]OF INTEGER;
    c:ARRAY[1..100]OF LONGINT;
FUNCTION kt(n:LONGINT):BOOLEAN;
VAR i:LONGINT;
BEGIN
  kt:=TRUE;
   IF n<2 THEN BEGIN kt:=FALSE; exit; END;
   IF NOT((n MOD 6)IN[5,1]) THEN BEGIN kt:=FALSE; exit; END;
   FOR i:=2 TO round(sqrt(n)) DO
    IF n MOD i=0 THEN BEGIN kt:=FALSE; exit; END;
END;
PROCEDURE deq(i:LONGINT);
VAR j:LONGINT;
    s:STRING;
BEGIN
str(i,s);
 IF  length(S)=n THEN BEGIN write(i,' '); inc(d); END
  ELSE
    FOR j:=1 TO 4 DO
     BEGIN
        IF kt(i*10+b[j]) THEN  deq(i*10+b[j]);
     END;
END;
BEGIN
clrscr;
readln(n);
a[2]:=2;a[3]:=3;a[4]:=5;a[5]:=7;
b[1]:=1;b[2]:=3;b[3]:=7;b[4]:=9;
IF n>8 THEN write('khong co so nao') ELSE
BEGIN
FOR i:=2 TO 5 DO
 deq(a[i]);
writeln;
write('co ',d,' so sieu nguyen to co ',n,' chu so');
END;
readln
END.