USES crt;
VAR
  n,dem:BYTE;
  k,i:LONGINT;
{-------------------------------------------}
FUNCTION NT(n:LONGINT):BOOLEAN;
VAR
  i:LONGINT;
BEGIN
  NT:=FALSE;
  IF n<2 THEN Exit;
  FOR i:=2 TO round(sqrt(n)) DO
    IF n MOD i=0 THEN Exit;
  NT:=TRUE;
END;
{-------------------------------------------}
PROCEDURE Find(x:LONGINT);
VAR
  i:LONGINT;
BEGIN
  IF NT(x) THEN
    IF x>k THEN
      BEGIN
        Write(x:10);
        dem:=dem+1;
      END
    ELSE
      FOR i:=1 TO 9 DO
        IF (i<>5) AND (i MOD 2<>0) THEN Find(10*x+i);
END;
{-------------------------------------------}
BEGIN
  Clrscr;
  Write('Nhap so n:');
  Readln(n);
  k:=1;
  FOR i:=1 TO (n-1) DO
    k:=10*k;
  Find(1); Find(2); Find(3); Find(5); Find(7);
  Writeln;
  Writeln('Co ',dem,' so sieu nguyen to co ',n,' chu so.');
  Readln;
END.