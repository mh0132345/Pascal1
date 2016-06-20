PROGRAM So_sieu_nguyen_to;
USES crt;
VAR
  a,b:ARRAY[1..50000] OF Qword;
  ka,kb:Qword;n,i,k,cs:LONGINT;
{------------------------------------------------------------------------}
FUNCTION NT(n:LONGINT):BOOLEAN;
VAR
  i:LONGINT;
BEGIN
  IF n<2 THEN NT:=FALSE
  ELSE
    BEGIN
      i:=2;
      WHILE (n MOD i<>0) AND (i<=sqrt(n)) DO i:=i+1;
      IF i>sqrt(n) THEN NT:=TRUE
      ELSE NT:=FALSE;
    END;
END;
{------------------------------------------------------------------------}
BEGIN
  Clrscr;
  Write('Nhap so n:');
  Readln(n);
  ka:=1;
  a[ka]:=0;
  FOR i:=1 TO n DO                                                                                                          
   BEGIN
      kb:=0;
      FOR k:=1 TO ka DO
        FOR cs:=0 TO 9 DO
          IF NT(a[k]*10+cs) THEN
            BEGIN
              kb:=kb+1;
              b[kb]:=a[k]*10+cs;
            END;
      ka:=kb;
      FOR k:=1 TO ka DO
        a[k]:=b[k];
    END;
  FOR k:=1 TO ka DO
    Write(a[k]:10);
  Writeln;
  Writeln('Co tat ca ',ka,' so sieu nguyen to co ',n,' chu so.');
  Readln;
END.