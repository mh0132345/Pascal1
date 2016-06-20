PROGRAM ngto;
USES crt;
VAR j,i,m,a,b,t:LONGINT;
 {----------------------}
   FUNCTION kt(n:LONGINT):BOOLEAN;
 VAR i,d:INTEGER;
  BEGIN
  kt:=FALSE;
  d:=0;
   FOR i:=1 TO n DO
    IF n MOD i=0 THEN inc(d);
  IF d=2 THEN kt:=TRUE;
 END;
   {----------------------}
BEGIN
 clrscr;
 Write('Nhap m= ');
 readln(m);
 a:=0;
 b:=1;
  REPEAT
   a:=a+b;
   b:=a+b;
  UNTIL (a>=m) AND (b>=m);
   IF a<b THEN BEGIN t:=a;a:=b;b:=t;END;
  REPEAT
   a:=a-b;
   b:=b-a;
  UNTIL ((kt(a)) AND (a<m))  OR ((kt(b)) AND (b<m));
IF a>b THEN writeln(a);
 IF b>a THEN writeln(b);
{----------------------}
  readln
 END.