USES crt;
VAR n, dem, mu10, k :LONGINT;
FUNCTION IsPrime(x:LONGINT):BOOLEAN;
VAR i,j:LONGINT;
BEGIN
IsPrime:=FALSE;
IF (x = 3) OR (x =2) THEN IsPrime:= TRUE;
IF (x MOD 3= 0) OR (x MOD 2=0) THEN exit;
i:=-1; j:=trunc(sqrt(x));
REPEAT
Inc(i,6);
UNTIL (x MOD i=0) OR (x MOD(i+2)=0) OR(i>j);
IsPrime:=i>j;
END;
PROCEDURE vet(i,x:LONGINT);
VAR j:BYTE;
BEGIN
mu10:=mu10*10;
IF i>N THEN inc(dem)
ELSE
FOR j:=1 TO 9 DO
IF IsPrime(x+j*mu10) THEN vet(i+1,x+j*mu10);
mu10:=mu10 DIV 10;
END;
BEGIN
clrscr;
writeln('Nhap so N (2<=N<=9) !');{Khong xet voi N = 1}
write('N= '); readln(N);
mu10:=10;dem:=0;
FOR k:=11 TO 99 DO
IF IsPrime(k) THEN vet(3,k);
write(dem); readln
END.