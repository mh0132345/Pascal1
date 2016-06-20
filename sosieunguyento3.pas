PROGRAM thutukila;
TYPE mang= ARRAY[1..100] OF LONGINT;
VAR i,j,m,n:INTEGER;
   a:mang;
   st:STRING;
PROCEDURE Init;
  BEGIN
    Write('A[1]= ');Readln(A[1]);
    Write('Nhap n= ');Readln(n);
   END;
  FUNCTION Tongcs(m:INTEGER):LONGINT;
  VAR n,j,sum,x:INTEGER;
      F:mang;
    BEGIN
     n:=m;
    str(n,st);
     sum:=0;
      FOR i:=1 TO length(st) DO
      BEGIN
        val(st[i],j,x);
        sum:=sum+j
       END;
     Tongcs:=sum;
    END;
PROCEDURE Install;
VAR kt:BOOLEAN;
 BEGIN
  i:=2;
 REPEAT
 A[i]:=A[i-1];
  inc(A[i]);
    REPEAT
      kt:=FALSE;
      IF ( Tongcs(a[i])=Tongcs(4*a[i-1]) ) THEN kt:=TRUE
      ELSE inc(A[i]);
    UNTIL kt=TRUE;
   inc(i);
 UNTIL i>n;
  Writeln(A[n]);
 END;
 BEGIN
  Init;
  Install;
  Readln
  END.