PROGRAM So_sieu_nguyen_to;
USES crt;
VAR
  a,b:ARRAY[1..3000] OF LONGINT;
  ka,kb,n,i,k,cs:LONGINT;
{------------------------------------------------------------------------}
FUNCTION NT(n:LONGINT):BOOLEAN;
VAR
  i:LONGINT;
BEGIN
    NT:=FALSE;
  IF n<2 THEN exit;
     FOR i:=1 TO round(sqrt(n)) DO
     IF n MOD i=0 THEN exit;
     NT:=TRUE
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