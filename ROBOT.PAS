PROGRAM robot;
VAR A:ARRAY[0..30,0..30] OF BYTE;
F:ARRAY[0..30,0..30] OF LONGINT;
m,n:INTEGER;

PROCEDURE Enter;
VAR i,j:INTEGER;
BEGIN
readln(input,m,n);
FOR i:=1 TO m DO
BEGIN
FOR j:=1 TO n DO read(input,A[i,j]);
readln;
END;


END;

FUNCTION Min(a,b:LONGINT):LONGINT;
BEGIN
IF (a<b) THEN Min:=a ELSE Min:=b;
END;

PROCEDURE Optimize;
VAR i,j:INTEGER;
BEGIN
FOR i:=0 TO m DO F[i,0]:=-1;
FOR j:=0 TO n DO F[0,j]:=-1;
F[0,1]:=0;

FOR i:=1 TO m DO
FOR j:=1 TO n DO
F[i,j]:=2*Min(F[i,j-1],F[i-1,j])+A[i,j];
END;

PROCEDURE Trace(i,j:INTEGER);
BEGIN
IF (i=1) AND (j=1) THEN
writeln(F[m,n])
ELSE
BEGIN
IF F[i,j-1]>F[i-1,j] THEN
Trace(i,j-1)
ELSE
Trace(i-1,j);
writeln(i,' ',j);
END;
END;

BEGIN
Assign(Input,'Robot.inp'); Reset(Input);
Assign(Output,'Robot.out'); Rewrite(Output);
Enter;
Optimize;
Trace(m,n);
close(Input);
close(Output);
END.

