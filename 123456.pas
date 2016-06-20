PROGRAM PNUMBER;
VAR a: ARRAY[1..20000] OF BOOLEAN;
    i, z, b: LONGINT;
PROCEDURE sang(i: LONGINT);
  VAR k: LONGINT;
  BEGIN
       k:= 2;
       WHILE i * k <= b DO
         BEGIN
              a[i*k]:= FALSE;
              k:= k + 1;
         END;
  END;

BEGIN 
    write('b');
    readln(b);
         fillchar(a, sizeof(a), TRUE);
     readln(z, b);
     a[1]:= FALSE;
     FOR i:= 2 TO b DO sang(i);
     FOR i:= z TO b DO
        IF a[i] THEN writeln(i);
END.